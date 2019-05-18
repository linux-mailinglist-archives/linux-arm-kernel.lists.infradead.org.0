Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E969223E1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 May 2019 17:24:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RkSCQ+LtQuFyllu5IiQpKt1zHndtkpi2PtA2eq395us=; b=HASvf7WFMHkD4Q
	5aE4mDhSgrYwt4z0auUObYBa4/wisrKCzVjsXqMHCM3aSXMZRVK/vqHEEBUrEvxggSvKYpx+BdNfU
	T6NsKyjWFG6nV8lp+TK6WVQ52lDz994NDGSAjSEUB2ok7VOeoLixL6X76XnUqfIK7xzw9K5g9gecd
	C+NGwuC5qSTIp5sbEa15Q7/qt9T7IcuONjCUNRxOHa+tgNY/3c1rKfnXa7ObHi83c0D6jrOH8guFX
	+aHEnh1m6mQYiurVkwVkD4ovDvsIOPBCM68tq78DeeEve22LoLjA/CpasTIK2nBRvUyAQR/7S0LxU
	eWtW5S/mZdBqiy5iBbnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hS1CA-0002eI-PC; Sat, 18 May 2019 15:24:22 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hS1Bs-0002S8-Gd
 for linux-arm-kernel@lists.infradead.org; Sat, 18 May 2019 15:24:05 +0000
Received: by mail-wr1-x444.google.com with SMTP id s17so10039124wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 May 2019 08:24:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=n6gOCeLFlJw1dbCMa6k0n84FnR1OVT/6zTLU7bYn2yk=;
 b=XgY/eJXLj1U2132csrx6KglVrYCvff28aN1+g1Occ2ZhW9TUkuhbqChLdOuLeTjuoj
 RIFEQqS6ZVcmH3JS8r/3Ny5AcHQZPbh96O+Bgf+RXGUSm6a7kjI16evOGU5KR3mMvD+y
 Dsx4yep6WTnlLQJ5Ev5132op9hB6gq0tbue5ExXkEee0Mp0XuDJqc1x9p1sgSMvpUEg+
 oCV3Lv8NAWQKJgg9iumgiZjzhHFZDw95EVywq3d5fdwQm2y3fMmZsCcBVN7ZejXToCvB
 kCA/kLk7Znf3HVosmIjEcm7Nuta58LoQ2dovkqHTILUq2cIHDFW/akI5geBgcBqd9CE9
 wB9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=n6gOCeLFlJw1dbCMa6k0n84FnR1OVT/6zTLU7bYn2yk=;
 b=pNP7shM7VZCuoR1oJaHUXqlNHpjiyU7dqMpl9vjQbpe25GpnXTeAiU1yBo95Mo2ZhT
 c6atbzLe6CiHj7LalAR788cFBK1iaQheociw1Iyj1GH5bIXHXUMpyNqFRvrfaYzI1RKE
 2nRyAgsu9hJfcV7lst3KA+kjG95dPPwq/M7nFOsJD2EsRb0kqda6VAjOxVEz5hFqNNEa
 XMCa2uoVjyvJwawjjPiT/CAgWQM/2ZDPPWnKBb9nrRHBl2wrdtJP3Yg/gA+y67ba7o0X
 wGNohw+odZOulvX65U3QMuIVap3j8/vdmI1lwotzoKM13cxdTWagx3Laog8l7QJIVceI
 m3dA==
X-Gm-Message-State: APjAAAVqbYkWV/UoTBVnAjYQgcz9dSkwphTwj6KamzTpP8vjZ5tdUjRN
 VL9eaSyNhnv0E07hKi+2Jgo=
X-Google-Smtp-Source: APXvYqz/ULh40TKoUjUVBvhF134MGZ7TX6TjgxM56mLpsK9FeRGKkgdLnG3CsM0JpzQjKGjv1Myncg==
X-Received: by 2002:adf:dc09:: with SMTP id t9mr11437844wri.69.1558193042815; 
 Sat, 18 May 2019 08:24:02 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id j190sm12934836wmb.19.2019.05.18.08.24.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 18 May 2019 08:24:02 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v3 1/4] dt-bindings: watchdog: add Allwinner H6 watchdog
Date: Sat, 18 May 2019 17:23:52 +0200
Message-Id: <20190518152355.11134-2-peron.clem@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190518152355.11134-1-peron.clem@gmail.com>
References: <20190518152355.11134-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190518_082404_549333_287A4399 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-watchdog@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsd2lubmVyIEg2IGhhcyBhIHNpbWlsYXIgd2F0Y2hkb2cgYXMgdGhlIEE2NCB3aGljaCBpcyBh
bHJlYWR5CmEgY29tcGF0aWJsZSBvZiB0aGUgQTMxLgoKVGhpcyBjb21taXQgc29ydCB0aGUgbGlu
ZXMgYW5kIGFkZCB0aGUgSDYgY29tcGF0aWJsZS4KClNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDD
qXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Ci0tLQogLi4uL2RldmljZXRyZWUvYmluZGluZ3Mv
d2F0Y2hkb2cvc3VueGktd2R0LnR4dCAgICAgICAgIHwgMTAgKysrKysrLS0tLQogMSBmaWxlIGNo
YW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvd2F0Y2hkb2cvc3VueGktd2R0LnR4dCBiL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy93YXRjaGRvZy9zdW54aS13ZHQudHh0Cmlu
ZGV4IDQ2MDU1MjU0ZThkZC4uZjQ4MTBmOGFkMWM1IDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3Mvd2F0Y2hkb2cvc3VueGktd2R0LnR4dAorKysgYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvd2F0Y2hkb2cvc3VueGktd2R0LnR4dApAQCAtMywx
MCArMywxMiBAQCBBbGx3aW5uZXIgU29DcyBXYXRjaGRvZyB0aW1lcgogUmVxdWlyZWQgcHJvcGVy
dGllczoKIAogLSBjb21wYXRpYmxlIDogc2hvdWxkIGJlIG9uZSBvZgotCSJhbGx3aW5uZXIsc3Vu
NGktYTEwLXdkdCIKLQkiYWxsd2lubmVyLHN1bjZpLWEzMS13ZHQiCi0JImFsbHdpbm5lcixzdW41
MGktYTY0LXdkdCIsImFsbHdpbm5lcixzdW42aS1hMzEtd2R0IgotCSJhbGx3aW5uZXIsc3VuaXYt
ZjFjMTAwcy13ZHQiLCAiYWxsd2lubmVyLHN1bjRpLWExMC13ZHQiCisJLSAiYWxsd2lubmVyLHN1
bjRpLWExMC13ZHQiCisJLSAiYWxsd2lubmVyLHN1bjUwaS1hNjQtd2R0IiwiYWxsd2lubmVyLHN1
bjZpLWEzMS13ZHQiCisJLSAiYWxsd2lubmVyLHN1bjUwaS1oNi13ZHQiLCJhbGx3aW5uZXIsc3Vu
NTBpLWE2NC13ZHQiLAorCSAgImFsbHdpbm5lcixzdW42aS1hMzEtd2R0IgorCS0gImFsbHdpbm5l
cixzdW42aS1hMzEtd2R0IgorCS0gImFsbHdpbm5lcixzdW5pdi1mMWMxMDBzLXdkdCIsICJhbGx3
aW5uZXIsc3VuNGktYTEwLXdkdCIKIC0gcmVnIDogU3BlY2lmaWVzIGJhc2UgcGh5c2ljYWwgYWRk
cmVzcyBhbmQgc2l6ZSBvZiB0aGUgcmVnaXN0ZXJzLgogCiBPcHRpb25hbCBwcm9wZXJ0aWVzOgot
LSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
