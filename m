Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EDBFED4B3
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 21:35:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q7XcR5S6QphspdMmFsYsCplOq16/ymU9WorOWGa7oPE=; b=ZDQkTaRF7oxS63
	YhtjNg2kBKPdP8brmX9trxfvlH9YPnjZSMrIUDALoQ35s54WHkm5IHJxrX4JwrcqH911B7k/rB6MH
	4s+ZEvm5Vir6TQhCIvKJMpctZ2IjQOtEQB636KglFOhby3zQ8ZI0xBPEpkfMK+3R9TNr49PgzWZGi
	fFge8ce3pISrHrP+j3x+0ebpnD/iqdgYU9ROeo5d2WQi2S1A0GwMDNhgyCuMBOVI1Y5bcUzHCUg7A
	pa7eNZMuoyMylZ6bWFx56z8ZnMxSt8jKvsb/knpvb+sq1ThB96bty8b/JHmC3KqJeADZ+0Z/zVRuz
	ngVwUFoN1iakLL9coBjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRMaL-0006wB-OJ; Sun, 03 Nov 2019 20:34:53 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRMZK-0006FH-SM
 for linux-arm-kernel@lists.infradead.org; Sun, 03 Nov 2019 20:33:53 +0000
Received: by mail-wm1-x344.google.com with SMTP id q70so14525101wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 Nov 2019 12:33:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=z3v88dggHcBZfZorIEJteI6G3MHHzRcAhgG+sL5blC4=;
 b=K7kfdeNHzvQ40s6dcM9hHjArKts5wA8WUiKHKpUWwDoPJBJhex1hsOvcQ0ZAmJOW8R
 4r55bIj1j3IJT/LDEUuqbOlTVx3+Ies1MjK3Ww3J/Fs9jYPrWVfL71znvG7qW0UMu44S
 xAGy2mkKurbJDZCBMAGabvomD/5tdtZHWwkvVGssSR1LQUl84QQd08RI1IyBRkrdgP7z
 VT2SJMwQE1zRdaIPsTUv7Uv2mcjIqG9/pgQHpI8Pb8g6zcb5zv3uGbnwlONJAOQfb8jK
 1cpBsyMzKutPMbfndQJS9gLyHl4bMNNI3pe2lNx7262yiCW69nUZfY7pekQKYG8wKj6e
 531A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=z3v88dggHcBZfZorIEJteI6G3MHHzRcAhgG+sL5blC4=;
 b=dI3qOwTX3xxoHCaXCbf9+0PDC9TOk8Obws4iIej0oGNk1tckoAkNEUY+CWsZUBCa7L
 JsUt0MSmaZ6CKCCECTCPkPLp2MLb1BYmZDJLft7vNVd0+93dBxB+5KbCYe1vbbrdFyim
 jGpeDcpjrQkxUOSHRwMdOSnyb831HjoHuQJ5r7ajdk1CG4PQaA4WpHYeQL81/AtvxJ5B
 isuPXeDjr8bemGXiBrlCcgQodafDV1bE5diL+waAx9ilrpVN5Qigd6BH0KRwRvSvVYx0
 COelt8UD1Dz8N/gEm9HhkPwgrVraVEOaXU9/fNY7T9ukqzMHKFZbsX3CP2T8wwHtgQBz
 8pSA==
X-Gm-Message-State: APjAAAUK4DIfx6NsJ9vF9qxmQs1wnw76rLt+cU3UMWuUTngmnTf6sOCz
 n5tiOUvYkh7zsSCwaEtLm+g=
X-Google-Smtp-Source: APXvYqxxRy+dDdp1/OTkUzEr3GeLcZ8EdB08MeKikBoxu1k9woxDDCw5VwhiwFzmSR9s41YYf+0zHA==
X-Received: by 2002:a1c:39c1:: with SMTP id g184mr19877719wma.75.1572813229504; 
 Sun, 03 Nov 2019 12:33:49 -0800 (PST)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id x16sm13644026wrp.91.2019.11.03.12.33.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 Nov 2019 12:33:48 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?=27Uwe=20Kleine-K=C3=B6nig=27?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v2 4/7] pwm: sun4i: Add support to output source clock directly
Date: Sun,  3 Nov 2019 21:33:31 +0100
Message-Id: <20191103203334.10539-5-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191103203334.10539-1-peron.clem@gmail.com>
References: <20191103203334.10539-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_123350_924456_C9E7A2F9 
X-CRM114-Status: GOOD (  18.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-pwm@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKUFdNIGNvcmUg
aGFzIGFuIG9wdGlvbiB0byBieXBhc3Mgd2hvbGUgbG9naWMgYW5kIG91dHB1dCB1bmNoYW5nZWQg
c291cmNlCmNsb2NrIGFzIFBXTSBvdXRwdXQuIFRoaXMgaXMgYWNoaWV2ZWQgYnkgZW5hYmxpbmcg
YnlwYXNzIGJpdC4KCk5vdGUgdGhhdCB3aGVuIGJ5cGFzcyBpcyBlbmFibGVkLCBubyBvdGhlciBz
ZXR0aW5nIGhhcyBhbnkgbWVhbmluZywgbm90CmV2ZW4gZW5hYmxlIGJpdC4KClRoaXMgbW9kZSBv
ZiBvcGVyYXRpb24gaXMgbmVlZGVkIHRvIGFjaGlldmUgaGlnaCBlbm91Z2ggZnJlcXVlbmN5IHRv
CnNlcnZlIGFzIGNsb2NrIHNvdXJjZSBmb3IgQUMyMDAgY2hpcCwgd2hpY2ggaXMgaW50ZWdyYXRl
ZCBpbnRvIHNhbWUKcGFja2FnZSBhcyBINiBTb0MuCgpTaWduZWQtb2ZmLWJ5OiBKZXJuZWogU2ty
YWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+ClNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDD
qXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Ci0tLQogZHJpdmVycy9wd20vcHdtLXN1bjRpLmMg
fCAzOSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0KIDEgZmlsZSBjaGFu
Z2VkLCAzOCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9wd20vcHdtLXN1bjRpLmMgYi9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYwppbmRleCBiNWU3YWMz
NjRmNTkuLjI0NDE1NzQ2NzRkOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMK
KysrIGIvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKQEAgLTMsNiArMywxMCBAQAogICogRHJpdmVy
IGZvciBBbGx3aW5uZXIgc3VuNGkgUHVsc2UgV2lkdGggTW9kdWxhdGlvbiBDb250cm9sbGVyCiAg
KgogICogQ29weXJpZ2h0IChDKSAyMDE0IEFsZXhhbmRyZSBCZWxsb25pIDxhbGV4YW5kcmUuYmVs
bG9uaUBmcmVlLWVsZWN0cm9ucy5jb20+CisgKgorICogTGltaXRhdGlvbnM6CisgKiAtIFdoZW4g
b3V0cHV0aW5nIHRoZSBzb3VyY2UgY2xvY2sgZGlyZWN0bHksIHRoZSBQV00gbG9naWMgd2lsbCBi
ZSBieXBhc3NlZAorICogICBhbmQgdGhlIGN1cnJlbnRseSBydW5uaW5nIHBlcmlvZCBpcyBub3Qg
Z3VhcmFudGVkIHRvIGJlIGNvbXBsZXRlZAogICovCiAKICNpbmNsdWRlIDxsaW51eC9iaXRvcHMu
aD4KQEAgLTczLDYgKzc3LDcgQEAgc3RhdGljIGNvbnN0IHUzMiBwcmVzY2FsZXJfdGFibGVbXSA9
IHsKIAogc3RydWN0IHN1bjRpX3B3bV9kYXRhIHsKIAlib29sIGhhc19wcmVzY2FsZXJfYnlwYXNz
OworCWJvb2wgaGFzX2RpcmVjdF9tb2RfY2xrX291dHB1dDsKIAl1bnNpZ25lZCBpbnQgbnB3bTsK
IH07CiAKQEAgLTExOCw2ICsxMjMsMjAgQEAgc3RhdGljIHZvaWQgc3VuNGlfcHdtX2dldF9zdGF0
ZShzdHJ1Y3QgcHdtX2NoaXAgKmNoaXAsCiAKIAl2YWwgPSBzdW40aV9wd21fcmVhZGwoc3VuNGlf
cHdtLCBQV01fQ1RSTF9SRUcpOwogCisJLyoKKwkgKiBQV00gY2hhcHRlciBpbiBINiBtYW51YWwg
aGFzIGEgZGlhZ3JhbSB3aGljaCBleHBsYWlucyB0aGF0IGlmIGJ5cGFzcworCSAqIGJpdCBpcyBz
ZXQsIG5vIG90aGVyIHNldHRpbmcgaGFzIGFueSBtZWFuaW5nLiBFdmVuIG1vcmUsIGV4cGVyaW1l
bnQKKwkgKiBwcm92ZWQgdGhhdCBhbHNvIGVuYWJsZSBiaXQgaXMgaWdub3JlZCBpbiB0aGlzIGNh
c2UuCisJICovCisJaWYgKCh2YWwgJiBCSVRfQ0goUFdNX0JZUEFTUywgcHdtLT5od3B3bSkpICYm
CisJICAgIGRhdGEtPmhhc19kaXJlY3RfbW9kX2Nsa19vdXRwdXQpIHsKKwkJc3RhdGUtPnBlcmlv
ZCA9IERJVl9ST1VORF9DTE9TRVNUX1VMTChOU0VDX1BFUl9TRUMsIGNsa19yYXRlKTsKKwkJc3Rh
dGUtPmR1dHlfY3ljbGUgPSBzdGF0ZS0+cGVyaW9kIC8gMjsKKwkJc3RhdGUtPnBvbGFyaXR5ID0g
UFdNX1BPTEFSSVRZX05PUk1BTDsKKwkJc3RhdGUtPmVuYWJsZWQgPSB0cnVlOworCQlyZXR1cm47
CisJfQorCiAJaWYgKChQV01fUkVHX1BSRVNDQUwodmFsLCBwd20tPmh3cHdtKSA9PSBQV01fUFJF
U0NBTF9NQVNLKSAmJgogCSAgICBzdW40aV9wd20tPmRhdGEtPmhhc19wcmVzY2FsZXJfYnlwYXNz
KQogCQlwcmVzY2FsZXIgPSAxOwpAQCAtMjAzLDcgKzIyMiw4IEBAIHN0YXRpYyBpbnQgc3VuNGlf
cHdtX2FwcGx5KHN0cnVjdCBwd21fY2hpcCAqY2hpcCwgc3RydWN0IHB3bV9kZXZpY2UgKnB3bSwK
IHsKIAlzdHJ1Y3Qgc3VuNGlfcHdtX2NoaXAgKnN1bjRpX3B3bSA9IHRvX3N1bjRpX3B3bV9jaGlw
KGNoaXApOwogCXN0cnVjdCBwd21fc3RhdGUgY3N0YXRlOwotCXUzMiBjdHJsOworCXUzMiBjdHJs
LCBjbGtfcmF0ZTsKKwlib29sIGJ5cGFzczsKIAlpbnQgcmV0OwogCXVuc2lnbmVkIGludCBkZWxh
eV91czsKIAl1bnNpZ25lZCBsb25nIG5vdzsKQEAgLTIxOCw2ICsyMzgsMTYgQEAgc3RhdGljIGlu
dCBzdW40aV9wd21fYXBwbHkoc3RydWN0IHB3bV9jaGlwICpjaGlwLCBzdHJ1Y3QgcHdtX2Rldmlj
ZSAqcHdtLAogCQl9CiAJfQogCisJLyoKKwkgKiBBbHRob3VnaCBpdCB3b3VsZCBtYWtlIG11Y2gg
bW9yZSBzZW5zZSB0byBjaGVjayBmb3IgYnlwYXNzIGluCisJICogc3VuNGlfcHdtX2NhbGN1bGF0
ZSgpLCB2YWx1ZSBvZiBieXBhc3MgYml0IGFsc28gZGVwZW5kcyBvbiAiZW5hYmxlZCIuCisJICog
UGVyaW9kIGlzIGFsbG93ZWQgdG8gYmUgcm91bmRlZCB1cCBvciBkb3duLgorCSAqLworCWNsa19y
YXRlID0gY2xrX2dldF9yYXRlKHN1bjRpX3B3bS0+Y2xrKTsKKwlieXBhc3MgPSAoKHN0YXRlLT5w
ZXJpb2QgKiBjbGtfcmF0ZSA+PSBOU0VDX1BFUl9TRUMgJiYKKwkJICAgc3RhdGUtPnBlcmlvZCAq
IGNsa19yYXRlIDwgTlNFQ19QRVJfU0VDICsgY2xrX3JhdGUpICYmCisJCSAgc3RhdGUtPmVuYWJs
ZWQpOworCiAJc3Bpbl9sb2NrKCZzdW40aV9wd20tPmN0cmxfbG9jayk7CiAJY3RybCA9IHN1bjRp
X3B3bV9yZWFkbChzdW40aV9wd20sIFBXTV9DVFJMX1JFRyk7CiAKQEAgLTI2NSw2ICsyOTUsMTMg
QEAgc3RhdGljIGludCBzdW40aV9wd21fYXBwbHkoc3RydWN0IHB3bV9jaGlwICpjaGlwLCBzdHJ1
Y3QgcHdtX2RldmljZSAqcHdtLAogCQljdHJsICY9IH5CSVRfQ0goUFdNX0NMS19HQVRJTkcsIHB3
bS0+aHdwd20pOwogCX0KIAorCWlmIChzdW40aV9wd20tPmRhdGEtPmhhc19kaXJlY3RfbW9kX2Ns
a19vdXRwdXQpIHsKKwkJaWYgKGJ5cGFzcykKKwkJCWN0cmwgfD0gQklUX0NIKFBXTV9CWVBBU1Ms
IHB3bS0+aHdwd20pOworCQllbHNlCisJCQljdHJsICY9IH5CSVRfQ0goUFdNX0JZUEFTUywgcHdt
LT5od3B3bSk7CisJfQorCiAJc3VuNGlfcHdtX3dyaXRlbChzdW40aV9wd20sIGN0cmwsIFBXTV9D
VFJMX1JFRyk7CiAKIAlzcGluX3VubG9jaygmc3VuNGlfcHdtLT5jdHJsX2xvY2spOwotLSAKMi4y
MC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
