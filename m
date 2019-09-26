Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B0DBEBDA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 08:05:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qpD7293KbbI4tz0FHqtr7TzMNDS2tgAz0/ItTKucO6k=; b=dBrQZBB2XE7S/M
	MIqzgZT+E3/DYO10YGXOddkTuhuPkW2NxNYD/rGEm8y2gVGHjeBbAE9QiwrwxS+bIE6B0Aqkrmbwc
	WObc7GuiBAjsjfQ6YPx/XUTZO9RF70Pwpu1i1vdAvCozGBJYiQB4jRntkXQTDgtxxEz7Jik2APCgQ
	h3xM84QBK563Fs73Ndh8GgMgxr7U2n2ttjcVoS84K4FUufLw+71Gxmus3rhoYgn0lXV1xMt6yGAuo
	jX4PLN+AeNG3fliS4i0K1lgBD7kV8ZJvLZPKPBCGORnckCuJRWk4L+OV6Qg1tfb58W34XGXym4NqP
	HKbn30BGAzY54CgrlpfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDMuF-0004Rz-LU; Thu, 26 Sep 2019 06:05:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDMt1-0002GD-7B
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 06:04:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4A3CC1597;
 Wed, 25 Sep 2019 23:04:16 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5AE803F836;
 Wed, 25 Sep 2019 23:06:50 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] arm64: vdso32: Fix compilation warning
Date: Thu, 26 Sep 2019 07:03:52 +0100
Message-Id: <20190926060353.54894-4-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190926060353.54894-1-vincenzo.frascino@arm.com>
References: <20190920142738.qlsjwguc6bpnez63@willie-the-truck>
 <20190926060353.54894-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_230419_328004_0D519A32 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
bWFyaW5hc0Bhcm0uY29tPgoKU2lnbmVkLW9mZi1ieTogVmluY2Vuem8gRnJhc2Npbm8gPHZpbmNl
bnpvLmZyYXNjaW5vQGFybS5jb20+Ci0tLQogYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9tZW1vcnku
aCB8IDUgKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQg
YS9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL21lbW9yeS5oIGIvYXJjaC9hcm02NC9pbmNsdWRlL2Fz
bS9tZW1vcnkuaAppbmRleCBiNjFiNTBiZjY4YjEuLmIxYzhjNDMyMzRjNSAxMDA2NDQKLS0tIGEv
YXJjaC9hcm02NC9pbmNsdWRlL2FzbS9tZW1vcnkuaAorKysgYi9hcmNoL2FybTY0L2luY2x1ZGUv
YXNtL21lbW9yeS5oCkBAIC0yMjgsMTEgKzIyOCwxNiBAQCBzdGF0aWMgaW5saW5lIHVuc2lnbmVk
IGxvbmcga2FzbHJfb2Zmc2V0KHZvaWQpCiAjZGVmaW5lIF9fdGFnX2dldChhZGRyKQkJMAogI2Vu
ZGlmIC8qIENPTkZJR19LQVNBTl9TV19UQUdTICovCiAKKyNpZmRlZiBfX2FhcmNoNjRfXwogc3Rh
dGljIGlubGluZSBjb25zdCB2b2lkICpfX3RhZ19zZXQoY29uc3Qgdm9pZCAqYWRkciwgdTggdGFn
KQogewogCXU2NCBfX2FkZHIgPSAodTY0KWFkZHIgJiB+X190YWdfc2hpZnRlZCgweGZmKTsKIAly
ZXR1cm4gKGNvbnN0IHZvaWQgKikoX19hZGRyIHwgX190YWdfc2hpZnRlZCh0YWcpKTsKIH0KKyNl
bHNlCisvKiBVbnVzZWQgaW4gMzIgYml0IG1vZGUgKi8KKyNkZWZpbmUgX190YWdfc2V0KGFkZHIs
IHRhZykgMAorI2VuZGlmCiAKIC8qCiAgKiBQaHlzaWNhbCB2cyB2aXJ0dWFsIFJBTSBhZGRyZXNz
IHNwYWNlIGNvbnZlcnNpb24uICBUaGVzZSBhcmUKLS0gCjIuMjMuMAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
