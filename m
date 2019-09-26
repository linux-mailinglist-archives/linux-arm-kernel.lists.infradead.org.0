Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 804A8BFB1A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 23:45:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Hk564sYCHCZuVFnjA2nn+Wy9cJXEQjCPnkH6kHU93o=; b=n0FYbdELSoa0oU
	bKcMg0bJSyu2jTKVzsBofv9mnJmSvDyq4WI/TmYSe5vGJ94t9z6INaifwjJ802rJjKeGPC1sO6oig
	uk5hIhMCA7vNiZ1UvUdfjqrBORcKSeHNH7OA7bj6JmhcMJmhO+/yAjRSNuWqHOiNFeHvqd/O36DBN
	TlNznQNH54TZ4BE7Ap6C7DNNvsgcGgjxJJBI4JF0zybLcIIiw4jAogxjYTlu+kxy37eYEtm4Vb50+
	GX/jQn+re6uDazcJGwsTi8vuJHRzLood3KNnmfxgA9gqZCJpH7dzxl2U6Y329jHxMSahSKg5zYfZh
	Ze6BWVkg7iTfVqpAuAEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDbZT-0007be-CD; Thu, 26 Sep 2019 21:45:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDbYN-0006uB-I5
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 21:44:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0024B1596;
 Thu, 26 Sep 2019 14:43:59 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D64FE3F739;
 Thu, 26 Sep 2019 14:43:57 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/5] arm64: vdso32: Fix compilation warning
Date: Thu, 26 Sep 2019 22:43:40 +0100
Message-Id: <20190926214342.34608-4-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190926214342.34608-1-vincenzo.frascino@arm.com>
References: <20190920142738.qlsjwguc6bpnez63@willie-the-truck>
 <20190926214342.34608-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_144359_660914_AC39D1C9 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: ard.biesheuvel@linaro.org, catalin.marinas@arm.com, ndesaulniers@google.com,
 tglx@linutronix.de, vincenzo.frascino@arm.com, will@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QXMgcmVwb3J0ZWQgYnkgV2lsbCBEZWFjb24gdGhlIGZvbGxvd2luZyBjb21waWxhdGlvbiB3YXJu
aW5nIGFwcGVhcnMKZHVyaW5nIHRoZSBjb21waWxhdGlvbiBvZiB0aGUgdmRzbzMyOgoKSW4gZmls
ZSBpbmNsdWRlZCBmcm9tIC4vYXJjaC9hcm02NC9pbmNsdWRlL2FzbS90aHJlYWRfaW5mby5oOjE3
OjAsCiAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGludXgvdGhyZWFkX2luZm8uaDoz
OCwKICAgICAgICAgICAgICAgICBmcm9tIC4vYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9wcmVlbXB0
Lmg6NSwKICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9wcmVlbXB0Lmg6Nzgs
CiAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGludXgvc3BpbmxvY2suaDo1MSwKICAg
ICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9zZXFsb2NrLmg6MzYsCiAgICAgICAg
ICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGludXgvdGltZS5oOjYsCiAgICAgICAgICAgICAgICAg
ZnJvbSAuLi4vd29yay9saW51eC9saWIvdmRzby9nZXR0aW1lb2ZkYXkuYzo3LAogICAgICAgICAg
ICAgICAgIGZyb20gPGNvbW1hbmQtbGluZT46MDoKLi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL21l
bW9yeS5oOiBJbiBmdW5jdGlvbiDigJhfX3RhZ19zZXTigJk6Ci4vYXJjaC9hcm02NC9pbmNsdWRl
L2FzbS9tZW1vcnkuaDoyMzM6MTU6IHdhcm5pbmc6IGNhc3QgZnJvbSBwb2ludGVyIHRvCmludGVn
ZXIgb2YgZGlmZmVyZW50IHNpemUgWy1XcG9pbnRlci10by1pbnQtY2FzdF0KICB1NjQgX19hZGRy
ID0gKHU2NClhZGRyICYgfl9fdGFnX3NoaWZ0ZWQoMHhmZik7CiAgICAgICAgICAgICAgIF4KSW4g
ZmlsZSBpbmNsdWRlZCBmcm9tIC4vYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9wZ3RhYmxlLWh3ZGVm
Lmg6ODowLAogICAgICAgICAgICAgICAgIGZyb20gLi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL3By
b2Nlc3Nvci5oOjM0LAogICAgICAgICAgICAgICAgIGZyb20gLi9hcmNoL2FybTY0L2luY2x1ZGUv
YXNtL2VsZi5oOjExOCwKICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9lbGYu
aDo1LAogICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4L2VsZm5vdGUuaDo2MiwK
ICAgICAgICAgICAgICAgICBmcm9tIGFyY2gvYXJtNjQva2VybmVsL3Zkc28zMi9ub3RlLmM6MTE6
Ci4vYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9tZW1vcnkuaDogSW4gZnVuY3Rpb24g4oCYX190YWdf
c2V04oCZOgouL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vbWVtb3J5Lmg6MjMzOjE1OiB3YXJuaW5n
OiBjYXN0IGZyb20gcG9pbnRlciB0bwppbnRlZ2VyIG9mIGRpZmZlcmVudCBzaXplIFstV3BvaW50
ZXItdG8taW50LWNhc3RdCiAgdTY0IF9fYWRkciA9ICh1NjQpYWRkciAmIH5fX3RhZ19zaGlmdGVk
KDB4ZmYpOwogICAgICAgICAgICAgICBeCgpUaGlzIGhhcHBlbnMgYmVjYXVzZSBmZXcgNjQgYml0
IGNvbXBpbGF0aW9uIGhlYWRlcnMgYXJlIGluY2x1ZGVkIGR1cmluZwp0aGUgZ2VuZXJhdGlvbiBv
ZiB2ZHNvMzIuCgpGaXggdGhlIGlzc3VlIHJlZGVmaW5pbmcgdGhlIF9fdGFnX3NldCBmdW5jdGlv
bi4KCk5vdGU6IFRoaXMgZml4IGlzIG1lYW50IHRvIGJlIHRlbXBvcmFyeSwgYSBtb3JlIGNvbXBy
ZWhlbnNpdmUgc29sdXRpb24KYmFzZWQgb24gdGhlIHJlZmFjdG9yaW5nIG9mIHRoZSBnZW5lcmlj
IGhlYWRlcnMgd2lsbCBiZSBwcm92aWRlZCB3aXRoIGEKZnV0dXJlIHBhdGNoIHNldC4gQXQgdGhh
dCBwb2ludCBpdCB3aWxsIGJlIHBvc3NpYmxlIHRvIHJldmVydCB0aGlzIHBhdGNoLgoKQ2M6IFdp
bGwgRGVhY29uIDx3aWxsQGtlcm5lbC5vcmc+CkNjOiBDYXRhbGluIE1hcmluYXMgPGNhdGFsaW4u
bWFyaW5hc0Bhcm0uY29tPgpTaWduZWQtb2ZmLWJ5OiBWaW5jZW56byBGcmFzY2lubyA8dmluY2Vu
em8uZnJhc2Npbm9AYXJtLmNvbT4KLS0tCiBhcmNoL2FybTY0L2luY2x1ZGUvYXNtL21lbW9yeS5o
IHwgMyArKysKIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9h
cmNoL2FybTY0L2luY2x1ZGUvYXNtL21lbW9yeS5oIGIvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9t
ZW1vcnkuaAppbmRleCBiNjFiNTBiZjY4YjEuLmM2MWIyZWI1MGEzYiAxMDA2NDQKLS0tIGEvYXJj
aC9hcm02NC9pbmNsdWRlL2FzbS9tZW1vcnkuaAorKysgYi9hcmNoL2FybTY0L2luY2x1ZGUvYXNt
L21lbW9yeS5oCkBAIC0yMjgsMTEgKzIyOCwxNCBAQCBzdGF0aWMgaW5saW5lIHVuc2lnbmVkIGxv
bmcga2FzbHJfb2Zmc2V0KHZvaWQpCiAjZGVmaW5lIF9fdGFnX2dldChhZGRyKQkJMAogI2VuZGlm
IC8qIENPTkZJR19LQVNBTl9TV19UQUdTICovCiAKKyNpZmRlZiBfX2FhcmNoNjRfXworLyogRG8g
bm90IGF0dGVtcHQgdG8gY29tcGlsZSB0aGlzIGNvZGUgd2l0aCBjb21wYXQgdmRzbyAqLwogc3Rh
dGljIGlubGluZSBjb25zdCB2b2lkICpfX3RhZ19zZXQoY29uc3Qgdm9pZCAqYWRkciwgdTggdGFn
KQogewogCXU2NCBfX2FkZHIgPSAodTY0KWFkZHIgJiB+X190YWdfc2hpZnRlZCgweGZmKTsKIAly
ZXR1cm4gKGNvbnN0IHZvaWQgKikoX19hZGRyIHwgX190YWdfc2hpZnRlZCh0YWcpKTsKIH0KKyNl
bmRpZgogCiAvKgogICogUGh5c2ljYWwgdnMgdmlydHVhbCBSQU0gYWRkcmVzcyBzcGFjZSBjb252
ZXJzaW9uLiAgVGhlc2UgYXJlCi0tIAoyLjIzLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
