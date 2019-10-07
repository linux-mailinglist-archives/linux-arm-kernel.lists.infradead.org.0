Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 487A6CE97C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 18:42:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MmPUTX8Co/0V+WdDiAMe6VMtvgZ+VObHFdm6PhxQboM=; b=ijUCYDkTRS6nxe
	7n/jCHFxurtjnGjTFOgRD/KHbMUMK9Gnh3IgFZs5OUgC9bLbK0TOypw56EB3770P/SXCsey+p/Va8
	FQRMJtcfceqLewlwm3hMC9lZHLAo4uox4ONBPJ3pMx4oGNPzSlfIb94y6Lt9kG6ObyPGrgh8ejwXG
	ETWAXzp7EU7MpiNqd2iwjYypYQRN6WJq4WTe+Idse1/cIp+sJYdJYqo+UqiKrbiA0XGN3pl0VLXyU
	ELicWkbIiBcBfwzrWy0rPoDPlRmPkxrvkGmQUwqfEtj9ODY9+n0WIpowsYOO25moDp61Y7MYU4Luk
	YRyLR/h0pGCRMY/lG7HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHW5E-0001gF-Sl; Mon, 07 Oct 2019 16:42:04 +0000
Received: from mail.andi.de1.cc ([2a01:238:4321:8900:456f:ecd6:43e:202c])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHW57-0001fL-Tp
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 16:41:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=kemnade.info; s=20180802; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vcGbSzQpd1TeTGagYBxvd1qotNo5UEYywORlC/ZOCyk=; b=MLzWT1osbcLQsxYkuVhd/rxpPR
 0bGgrA/3eWQKRd02P+O8Yu0i9tyCdMXzkY4f9GZvYZnA6JqZa+XvFu7jER3oWKHdoQy3xyJA1pMtP
 azjWe5s6eyzus7uwxGCZJLJfAhRINe8h9qJuvf4ptL0cjTuhn2BkgT0X6ZoxlcG3EfS8=;
Received: from p200300ccff0a88001a3da2fffebfd33a.dip0.t-ipconnect.de
 ([2003:cc:ff0a:8800:1a3d:a2ff:febf:d33a] helo=aktux)
 by mail.andi.de1.cc with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <andreas@kemnade.info>)
 id 1iHW4t-0000lS-29; Mon, 07 Oct 2019 18:41:43 +0200
Received: from andi by aktux with local (Exim 4.92)
 (envelope-from <andreas@kemnade.info>)
 id 1iHW4s-0008Fy-MJ; Mon, 07 Oct 2019 18:41:42 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
 daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, omi Valkeinen <tomi.valkeinen@ti.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 Tony Lindgren <tony@atomide.com>, Jyri Sarha <jsarha@ti.com>,
 Linux-OMAP <linux-omap@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH] drm: panels: fix spi aliases of former omap panels
Date: Mon,  7 Oct 2019 18:41:30 +0200
Message-Id: <20191007164130.31534-1-andreas@kemnade.info>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Score: -1.0 (-)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_094158_260477_49A5E253 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andreas Kemnade <andreas@kemnade.info>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V2hlbiB0aGUgcGFuZWxzIHdlcmUgbW92ZWQgZnJvbSBvbWFwL2Rpc3BsYXlzLyB0byBwYW5lbC8K
b21hcGRzcyBwcmVmaXggd2FzIHN0cmlwcGVkLCB3aGljaCBjYXVzZSBzcGkgbW9kYWxpYXMKdG8g
bm90IGNvbnRhaW4gdGhlIHZlbmRvci1wcmVmaXggYW55bW9yZS4KCnNvIHdlIGhhZCBlLmcuIGlu
IGZvcm1lciB0aW1lczoKY29tcGF0aWJsZT1vbWFwZHNzLHRwbyx0ZDAyOHR0ZWMxIC0+IG1vZGFs
aWFzPXNwaTp0cG8sdGQwMjh0dGVjMQpub3c6CmNvbXBhdGlibGU9dHBvLHRkMDI4dHRlYzEgLT4g
bW9kYWxpYXM9c3BpOnRkMDI4dHRlYzEKClRoaXMgaXMgY29uc2lzdGVudCB3aXRoIG90aGVyIGRy
aXZlcnMuIFRlc3RlZCB0aGUgdGQwMjh0dGVjLmMKb25seSwgYnV0IHRoZSBwYXR0ZXJuIGxvb2tz
IHRoZSBzYW1lIGZvciB0aGUgb3RoZXIgb25lcy4KCkZpeGVzOiA0NWYxNmM4MmRiN2U4ICgiZHJt
L29tYXA6IGRpc3BsYXlzOiBSZW1vdmUgdW51c2VkIHBhbmVsIGRyaXZlcnMiKQpTaWduZWQtb2Zm
LWJ5OiBBbmRyZWFzIEtlbW5hZGUgPGFuZHJlYXNAa2VtbmFkZS5pbmZvPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9wYW5lbC9wYW5lbC1sZy1sYjAzNXEwMi5jICAgICAgIHwgMiArLQogZHJpdmVycy9n
cHUvZHJtL3BhbmVsL3BhbmVsLW5lYy1ubDgwNDhobDExLmMgICAgfCAyICstCiBkcml2ZXJzL2dw
dS9kcm0vcGFuZWwvcGFuZWwtc2hhcnAtbHMwMzd2N2R3MDEuYyB8IDIgKy0KIGRyaXZlcnMvZ3B1
L2RybS9wYW5lbC9wYW5lbC1zb255LWFjeDU2NWFrbS5jICAgIHwgMiArLQogZHJpdmVycy9ncHUv
ZHJtL3BhbmVsL3BhbmVsLXRwby10ZDAyOHR0ZWMxLmMgICAgfCAzICstLQogZHJpdmVycy9ncHUv
ZHJtL3BhbmVsL3BhbmVsLXRwby10ZDA0M210ZWExLmMgICAgfCAyICstCiA2IGZpbGVzIGNoYW5n
ZWQsIDYgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vcGFuZWwvcGFuZWwtbGctbGIwMzVxMDIuYyBiL2RyaXZlcnMvZ3B1L2RybS9wYW5l
bC9wYW5lbC1sZy1sYjAzNXEwMi5jCmluZGV4IGZjODJhNTI1YjA3MWIuLjg0MjM2ODRhMDU1N2Ug
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9wYW5lbC9wYW5lbC1sZy1sYjAzNXEwMi5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9wYW5lbC9wYW5lbC1sZy1sYjAzNXEwMi5jCkBAIC0yMzEsNyAr
MjMxLDcgQEAgc3RhdGljIHN0cnVjdCBzcGlfZHJpdmVyIGxiMDM1cTAyX2RyaXZlciA9IHsKIAog
bW9kdWxlX3NwaV9kcml2ZXIobGIwMzVxMDJfZHJpdmVyKTsKIAotTU9EVUxFX0FMSUFTKCJzcGk6
bGdwaGlsaXBzLGxiMDM1cTAyIik7CitNT0RVTEVfQUxJQVMoInNwaTpsYjAzNXEwMiIpOwogTU9E
VUxFX0FVVEhPUigiVG9taSBWYWxrZWluZW4gPHRvbWkudmFsa2VpbmVuQHRpLmNvbT4iKTsKIE1P
RFVMRV9ERVNDUklQVElPTigiTEcuUGhpbGlwcyBMQjAzNVEwMiBMQ0QgUGFuZWwgZHJpdmVyIik7
CiBNT0RVTEVfTElDRU5TRSgiR1BMIik7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcGFu
ZWwvcGFuZWwtbmVjLW5sODA0OGhsMTEuYyBiL2RyaXZlcnMvZ3B1L2RybS9wYW5lbC9wYW5lbC1u
ZWMtbmw4MDQ4aGwxMS5jCmluZGV4IDI5OWIyMTdjODNlMTguLjcxYjA3ZWYyYTYyZGQgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9wYW5lbC9wYW5lbC1uZWMtbmw4MDQ4aGwxMS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9wYW5lbC9wYW5lbC1uZWMtbmw4MDQ4aGwxMS5jCkBAIC0yNDIsNyAr
MjQyLDcgQEAgc3RhdGljIHN0cnVjdCBzcGlfZHJpdmVyIG5sODA0OF9kcml2ZXIgPSB7CiAKIG1v
ZHVsZV9zcGlfZHJpdmVyKG5sODA0OF9kcml2ZXIpOwogCi1NT0RVTEVfQUxJQVMoInNwaTpuZWMs
bmw4MDQ4aGwxMSIpOworTU9EVUxFX0FMSUFTKCJzcGk6bmw4MDQ4aGwxMSIpOwogTU9EVUxFX0FV
VEhPUigiRXJpayBHaWxsaW5nIDxrb25rZXJzQGFuZHJvaWQuY29tPiIpOwogTU9EVUxFX0RFU0NS
SVBUSU9OKCJORUMtTkw4MDQ4SEwxMSBEcml2ZXIiKTsKIE1PRFVMRV9MSUNFTlNFKCJHUEwiKTsK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9wYW5lbC9wYW5lbC1zaGFycC1sczAzN3Y3ZHcw
MS5jIGIvZHJpdmVycy9ncHUvZHJtL3BhbmVsL3BhbmVsLXNoYXJwLWxzMDM3djdkdzAxLmMKaW5k
ZXggNDZjZDlhMjUwMTI5OC4uODM4ZDM5YTI2M2Y1MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL3BhbmVsL3BhbmVsLXNoYXJwLWxzMDM3djdkdzAxLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L3BhbmVsL3BhbmVsLXNoYXJwLWxzMDM3djdkdzAxLmMKQEAgLTIwNCw3ICsyMDQsNyBAQCBzdGF0
aWMgaW50IGxzMDM3djdkdzAxX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQog
fQogCiBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBsczAzN3Y3ZHcwMV9vZl9tYXRj
aFtdID0gewotCXsgLmNvbXBhdGlibGUgPSAic2hhcnAsbHMwMzd2N2R3MDEiLCB9LAorCXsgLmNv
bXBhdGlibGUgPSAibHMwMzd2N2R3MDEiLCB9LAogCXsgLyogc2VudGluZWwgKi8gfSwKIH07CiAK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9wYW5lbC9wYW5lbC1zb255LWFjeDU2NWFrbS5j
IGIvZHJpdmVycy9ncHUvZHJtL3BhbmVsL3BhbmVsLXNvbnktYWN4NTY1YWttLmMKaW5kZXggMzA1
MjU5YjU4NzY3MC4uYThhZjkzNDBmODllZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3Bh
bmVsL3BhbmVsLXNvbnktYWN4NTY1YWttLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3BhbmVsL3Bh
bmVsLXNvbnktYWN4NTY1YWttLmMKQEAgLTY5NSw3ICs2OTUsNyBAQCBzdGF0aWMgc3RydWN0IHNw
aV9kcml2ZXIgYWN4NTY1YWttX2RyaXZlciA9IHsKIAogbW9kdWxlX3NwaV9kcml2ZXIoYWN4NTY1
YWttX2RyaXZlcik7CiAKLU1PRFVMRV9BTElBUygic3BpOnNvbnksYWN4NTY1YWttIik7CitNT0RV
TEVfQUxJQVMoInNwaTphY3g1NjVha20iKTsKIE1PRFVMRV9BVVRIT1IoIk5va2lhIENvcnBvcmF0
aW9uIik7CiBNT0RVTEVfREVTQ1JJUFRJT04oIlNvbnkgQUNYNTY1QUtNIExDRCBQYW5lbCBEcml2
ZXIiKTsKIE1PRFVMRV9MSUNFTlNFKCJHUEwiKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9wYW5lbC9wYW5lbC10cG8tdGQwMjh0dGVjMS5jIGIvZHJpdmVycy9ncHUvZHJtL3BhbmVsL3Bh
bmVsLXRwby10ZDAyOHR0ZWMxLmMKaW5kZXggZDdiMmUzNDYyNmVmZS4uM2FiNjZiNGQzZWEyNyAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3BhbmVsL3BhbmVsLXRwby10ZDAyOHR0ZWMxLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL3BhbmVsL3BhbmVsLXRwby10ZDAyOHR0ZWMxLmMKQEAgLTM3
NSw4ICszNzUsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCB0ZDAyOHR0ZWMx
X29mX21hdGNoW10gPSB7CiBNT0RVTEVfREVWSUNFX1RBQkxFKG9mLCB0ZDAyOHR0ZWMxX29mX21h
dGNoKTsKIAogc3RhdGljIGNvbnN0IHN0cnVjdCBzcGlfZGV2aWNlX2lkIHRkMDI4dHRlYzFfaWRz
W10gPSB7Ci0JeyAidHBvLHRkMDI4dHRlYzEiLCAwfSwKLQl7ICJ0b3Bwb2x5LHRkMDI4dHRlYzEi
LCAwIH0sCisJeyAidGQwMjh0dGVjMSIsIDB9LAogCXsgLyogc2VudGluZWwgKi8gfQogfTsKIApk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3BhbmVsL3BhbmVsLXRwby10ZDA0M210ZWExLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vcGFuZWwvcGFuZWwtdHBvLXRkMDQzbXRlYTEuYwppbmRleCA4NDM3
MDU2MjkxMGZmLi43ZTZjZjA4OTA2MDBjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcGFu
ZWwvcGFuZWwtdHBvLXRkMDQzbXRlYTEuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vcGFuZWwvcGFu
ZWwtdHBvLXRkMDQzbXRlYTEuYwpAQCAtNTAzLDcgKzUwMyw3IEBAIHN0YXRpYyBzdHJ1Y3Qgc3Bp
X2RyaXZlciB0ZDA0M210ZWExX2RyaXZlciA9IHsKIAogbW9kdWxlX3NwaV9kcml2ZXIodGQwNDNt
dGVhMV9kcml2ZXIpOwogCi1NT0RVTEVfQUxJQVMoInNwaTp0cG8sdGQwNDNtdGVhMSIpOworTU9E
VUxFX0FMSUFTKCJzcGk6dGQwNDNtdGVhMSIpOwogTU9EVUxFX0FVVEhPUigiR3Jhxb52eWRhcyBJ
Z25vdGFzIDxub3Rhc2FzQGdtYWlsLmNvbT4iKTsKIE1PRFVMRV9ERVNDUklQVElPTigiVFBPIFRE
MDQzTVRFQTEgUGFuZWwgRHJpdmVyIik7CiBNT0RVTEVfTElDRU5TRSgiR1BMIik7Ci0tIAoyLjIw
LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
