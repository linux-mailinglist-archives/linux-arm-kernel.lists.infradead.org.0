Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 729D52CB96
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 18:16:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3GJm8amOMTsBAhNS5IjirmDIe8eBXNurdqOfmisD2u4=; b=J6aRY80+wzfgWJ
	1PatHrUiDKWwCzuBoYf1JiTBHWtLfRj71mFLRdErzhAy5PFaXS4s151qxQYqaIW6r9R4xm1FCj4O5
	jCFsGcrGt+MRouu24AXyjgYW8X0vsk2XxxjT/PYyLIoeY8RZui/tLm51vQMSEqATNREw1Rz7mogQp
	YF5T36UWf9CNZDvONeaWM8JY+jwuDlOn/OMILCbxInJDtp+j7boOnwrHeeIFADLPlFNQN7VTx/UyP
	829NOchX1HdsVkzO/qUw9yrD6Vu1nYD/tWfDgpnsjYNt1J5at9x2fg/pvgICCpVQcDzbLZxojVbNu
	M/pP3x5pIVXuPvhxM0hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVemJ-0002hX-Vw; Tue, 28 May 2019 16:16:44 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVeki-0008QJ-2T
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 16:15:07 +0000
Received: by mail-wm1-x344.google.com with SMTP id e19so2680242wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 09:15:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=q27XYokGtE0PF+e6Jf1zBq2DoW5PvxIGPkQQOfCJr1E=;
 b=HFUvyHXx8VHztoOIZncJwhbhhwGM6/33nEZ+Dnb0ZNAZMX/HCdsLaTmJIlK2YB1rSt
 OqQIhud3nbj4bUcdGshdA0qed5SDiimDzVItGH+ythngmmlSg8CVcLNu0cdWvMYwSGSf
 u1VaunPEueoijVnZSkTPfMKjO5eDaDrheNDkoBVGXy1tKJUQI+VRPcKrAmaER3RZdsHk
 bpBii7hnK/soi9FuKOnK3OViFOI3+SH1oVxYddi0lsdwZOWncnR2odwoYpVGWbcdIRP9
 H3g34RRcBwN7JMDodaP8UniO9Re03GLcn92ezxYsaepo2xukm3EldxN/0oB93vhHE4lH
 ncKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=q27XYokGtE0PF+e6Jf1zBq2DoW5PvxIGPkQQOfCJr1E=;
 b=t+L0IvdKCo1NAo+bFaNO0pRyNzPPtl0CCl8udG/RM5xWs3mvr5Bo75NGZyrepRE3Qc
 3BAc4vZ0cu29RZoYxZYgHUZ0o83vKKYlCveXLGTFblPtDjNZ80JLFQB0ZaHgo1nDf6Sx
 tDe6tBTul+76x6FugZeRXY8rVoTwB7rE4zEfHpwgdeJIk7fqeERuoJMTvV4c/IvCXClC
 5Nl2BcIpJ3eB7H0Urg5Zb0ZA06035bX/oLvVw97ZTBS/7iX3qVrq5JVayS1YGt9hdCvm
 Hg2jP+mTducUjq30wIuDiYwTS+Q5X5r/XXQmxi+0BtMNibja1GP1g/b6ikK5YP1KxREb
 fxvw==
X-Gm-Message-State: APjAAAWD8z2ho96/n/OuYerVQUvy1pxilbJXpWD1FeRPm6Cm89Pmitj6
 mfFPIMKVLYryqyxqsTq17lg=
X-Google-Smtp-Source: APXvYqz/joxHvvODIOd7kz0qELHlGEhUT9mw5hsDYpXJzwCuo0YHwLvhkfaEYMl/b5bkaqZyM6fKBw==
X-Received: by 2002:a1c:f606:: with SMTP id w6mr4037175wmc.130.1559060102677; 
 Tue, 28 May 2019 09:15:02 -0700 (PDT)
Received: from localhost.localdomain (18.189-60-37.rdns.acropolistelecom.net.
 [37.60.189.18])
 by smtp.gmail.com with ESMTPSA id l14sm13678787wrt.57.2019.05.28.09.15.01
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 28 May 2019 09:15:01 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v3 07/12] arm64: dts: allwinner: a64: Add IR node
Date: Tue, 28 May 2019 18:14:35 +0200
Message-Id: <20190528161440.27172-8-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528161440.27172-1-peron.clem@gmail.com>
References: <20190528161440.27172-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_091504_199429_4A6CD3B9 
X-CRM114-Status: GOOD (  12.67  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 linux-kernel@vger.kernel.org, Igors Makejevs <git_bb@bwzone.com>,
 linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSWdvcnMgTWFrZWpldnMgPGdpdF9iYkBid3pvbmUuY29tPgoKSVIgcGVyaXBoZXJhbCBp
cyBjb21wbGV0ZWx5IGNvbXBhdGlibGUgd2l0aCBBMzEgb25lLgoKU2lnbmVkLW9mZi1ieTogSWdv
cnMgTWFrZWpldnMgPGdpdF9iYkBid3pvbmUuY29tPgpTaWduZWQtb2ZmLWJ5OiBKZXJuZWogU2ty
YWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+ClNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDD
qXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Ci0tLQogYXJjaC9hcm02NC9ib290L2R0cy9hbGx3
aW5uZXIvc3VuNTBpLWE2NC5kdHNpIHwgMTggKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hh
bmdlZCwgMTggaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
YWxsd2lubmVyL3N1bjUwaS1hNjQuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVy
L3N1bjUwaS1hNjQuZHRzaQppbmRleCA4YzViNTIxZTYzODkuLmIyMmIwYWE4OTUxNSAxMDA2NDQK
LS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWE2NC5kdHNpCisrKyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1hNjQuZHRzaQpAQCAtMTA3Miw2
ICsxMDcyLDE5IEBACiAJCQkjc2l6ZS1jZWxscyA9IDwwPjsKIAkJfTsKIAorCQlyX2lyOiBpckAx
ZjAyMDAwIHsKKwkJCWNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjUwaS1hNjQtaXIiLAorCQkJ
CSAgICAgImFsbHdpbm5lcixzdW42aS1hMzEtaXIiOworCQkJcmVnID0gPDB4MDFmMDIwMDAgMHg0
MDA+OworCQkJY2xvY2tzID0gPCZyX2NjdSBDTEtfQVBCMF9JUj4sIDwmcl9jY3UgQ0xLX0lSPjsK
KwkJCWNsb2NrLW5hbWVzID0gImFwYiIsICJpciI7CisJCQlyZXNldHMgPSA8JnJfY2N1IFJTVF9B
UEIwX0lSPjsKKwkJCWludGVycnVwdHMgPSA8R0lDX1NQSSAzNyBJUlFfVFlQRV9MRVZFTF9ISUdI
PjsKKwkJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CisJCQlwaW5jdHJsLTAgPSA8JnJfaXJf
cnhfcGluPjsKKwkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CisJCX07CisKIAkJcl9wd206IHB3bUAx
ZjAzODAwIHsKIAkJCWNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjUwaS1hNjQtcHdtIiwKIAkJ
CQkgICAgICJhbGx3aW5uZXIsc3VuNWktYTEzLXB3bSI7CkBAIC0xMDk5LDYgKzExMTIsMTEgQEAK
IAkJCQlmdW5jdGlvbiA9ICJzX2kyYyI7CiAJCQl9OwogCisJCQlyX2lyX3J4X3Bpbjogci1pci1y
eC1waW4geworCQkJCXBpbnMgPSAiUEwxMSI7CisJCQkJZnVuY3Rpb24gPSAic19jaXJfcngiOwor
CQkJfTsKKwogCQkJcl9wd21fcGluOiByLXB3bS1waW4gewogCQkJCXBpbnMgPSAiUEwxMCI7CiAJ
CQkJZnVuY3Rpb24gPSAic19wd20iOwotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
