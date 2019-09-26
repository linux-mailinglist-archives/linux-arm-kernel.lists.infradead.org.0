Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8551BF43D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 15:40:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iBql/vkoV7BI+uZ2JS1dvl969e2zjsO3FPMgJXMBb/U=; b=q6On8p92cUCXqp
	J0Svt7v/0kJtmQ9+w8QYUzLCZAWRaiMhfAwqg4SyqKZF1Uo/w49hXhdOOJa8g06f9q7CZmVJE+t1p
	G7vu2Oummzv96l0PyOhCFHrvjoliAeCIYBcBQteJJmoqsQSJWCrnzKXEd8e+hZ0lROb1FRP7dQ97E
	aR1Nj0Kr0IrtPSm5hqcibVCa5NWTYoo9FY79Z8/1XGojrSlPkrKP47VfnFpTXEF+0YU/tU4ybckxj
	E6V9Vo+D9Syj2paO2QS7UGJixK8piTbZ9iTVLM4mvV/V+gjxKytybw7nRdSX3fKi4dbvS/KtzNdP3
	XH/Ii+EeE0BGnBgo93yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDU0G-0007if-66; Thu, 26 Sep 2019 13:40:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDTyr-000712-C9
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 13:38:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CBF2715A2;
 Thu, 26 Sep 2019 06:38:48 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A86023F534;
 Thu, 26 Sep 2019 06:38:47 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/4] arm64: vdso32: Fix compilation warning
Date: Thu, 26 Sep 2019 14:38:04 +0100
Message-Id: <20190926133805.52348-4-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190926133805.52348-1-vincenzo.frascino@arm.com>
References: <20190920142738.qlsjwguc6bpnez63@willie-the-truck>
 <20190926133805.52348-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_063849_469839_C11080CC 
X-CRM114-Status: GOOD (  10.41  )
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
IHwgNSArKysrKwogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBh
L2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vbWVtb3J5LmggYi9hcmNoL2FybTY0L2luY2x1ZGUvYXNt
L21lbW9yeS5oCmluZGV4IGI2MWI1MGJmNjhiMS4uY2ZhOWNkODdhZjE0IDEwMDY0NAotLS0gYS9h
cmNoL2FybTY0L2luY2x1ZGUvYXNtL21lbW9yeS5oCisrKyBiL2FyY2gvYXJtNjQvaW5jbHVkZS9h
c20vbWVtb3J5LmgKQEAgLTIyOCwxMSArMjI4LDE2IEBAIHN0YXRpYyBpbmxpbmUgdW5zaWduZWQg
bG9uZyBrYXNscl9vZmZzZXQodm9pZCkKICNkZWZpbmUgX190YWdfZ2V0KGFkZHIpCQkwCiAjZW5k
aWYgLyogQ09ORklHX0tBU0FOX1NXX1RBR1MgKi8KIAorI2lmZGVmIF9fYWFyY2g2NF9fCiBzdGF0
aWMgaW5saW5lIGNvbnN0IHZvaWQgKl9fdGFnX3NldChjb25zdCB2b2lkICphZGRyLCB1OCB0YWcp
CiB7CiAJdTY0IF9fYWRkciA9ICh1NjQpYWRkciAmIH5fX3RhZ19zaGlmdGVkKDB4ZmYpOwogCXJl
dHVybiAoY29uc3Qgdm9pZCAqKShfX2FkZHIgfCBfX3RhZ19zaGlmdGVkKHRhZykpOwogfQorI2Vs
c2UKKy8qIFVudXNlZCBpbiBjb21wYXQgdmRzbyAqLworI2RlZmluZSBfX3RhZ19zZXQoYWRkciwg
dGFnKSAwCisjZW5kaWYKIAogLyoKICAqIFBoeXNpY2FsIHZzIHZpcnR1YWwgUkFNIGFkZHJlc3Mg
c3BhY2UgY29udmVyc2lvbi4gIFRoZXNlIGFyZQotLSAKMi4yMy4wCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
