Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC2482BB22
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 22:11:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k2MWZkqB3kEImkuNpu3Gbs1uVRt/i6XhmDVvZXfWVOs=; b=HeBVl6tggajrbR
	Y60nDDbbeXInGnyh2yQ4hvGS0aUgTy0q3Gj/0Pa48lc+wSQ23AgH2ZlFjpG06bjN0pceg8u+xyZsm
	wpX+M/eQU60OoEjb8J2LRkS/feN4Qh1qJkg10L6qNTKO4WhwI5SrapolrCq0E7ao2m7vUaL8jhUEc
	kU+Z378oxlsbaFnn0e8XLPj16nXXovvBaoj/h+h5detrCanugm7jcsiZds/p+gYefH58p/Wl65Gsx
	AA+y/Sw8rqmwbWAUn0DCo6yotPzjoApKcZmRPRfUNEjpLYPUUp0X4rvbAfBMfjhdaLxWEVly1W0Y0
	SvWVmvroF/1ilBhaCoSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVLxm-0003vD-A5; Mon, 27 May 2019 20:11:18 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVLwr-0002rE-DC
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 20:10:24 +0000
Received: by mail-wm1-x343.google.com with SMTP id i3so522593wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 13:10:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vtCxvhDjc6UIDNW85CWIxfeFRpcagFN9CHe3gjmJy+k=;
 b=aLE1iny4yG3QCT/zG491gC1RXU7vzr69elKMD8GQaEyJQ4YjjaXpQCTv/m7SwtQWTT
 qOfCWbDxi7OckkxwLbHzS3+YXZYJHdUzLuZCdP4RY/rG7w49JvzLb6LRX6jr+ph9SiqH
 BUuDczojLSivlQnaCGDi9VgWm/ZHpdc09A9RQ3/SZkDdUoPzMURenPRHR6MJQruRFDXM
 KiZCPYH4bQh0gsxm4wJMdS2ZdrnVbdtWnwuhtrTWgvBNdESrHelN/M4g/AxuEQPyJl4g
 tj8aRZtoFS2vR5rMuVcs+C+J2w7pMALclLGyJK53yhlQjHbfTpVM0sLD4a1uumOUq2nF
 9t+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vtCxvhDjc6UIDNW85CWIxfeFRpcagFN9CHe3gjmJy+k=;
 b=sjGLGNv7XnEHzFzNSfyDbMX9bcOiFlGHOnvlz4g94AjRLsVj6ndGtFCHU+YKvcZGWw
 KEbdvtALhBcDsRSjr2svM3ezvT2pYrKFXqv10cXOaWPwVHZ2TMw/eeEwKMJJjvgJnhTj
 OgVE1klw2zBCpY8oTinnadT8y9V2jA+zGd3ucH1emCsehSR/8ZX/viDKwZGW8wjtP8zG
 9fd88XO2ZCZUQf4DWDA6RPC2bxVzR+gWMUUFueOXFAxVZaQaBUC8fc9cnxeftjOnPNsS
 un72d1KAeBl1d/1fogsaYjSV0PckcyAwb9ydOtPEDLHNsjq0xqzzP1R+763v7jSklFZG
 ojgg==
X-Gm-Message-State: APjAAAVPcExYZTbYr7rlIIFG7GuJgG6h9zk1ffVbWgrftZOFMz+SVMfS
 t9gSriFFYI5mETc2GzKlalA=
X-Google-Smtp-Source: APXvYqxH3xB78DGBhf12PYNkbxwGH69xUEVnBP+LhdwkWmd176J8x+oCf/GMubBlZhUYOV/xcxXuIQ==
X-Received: by 2002:a1c:eb0c:: with SMTP id j12mr464874wmh.55.1558987819118;
 Mon, 27 May 2019 13:10:19 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id s127sm308523wmf.48.2019.05.27.13.10.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 13:10:18 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v4 5/7] arm64: dts: allwinner: Add SPDIF node for Allwinner H6
Date: Mon, 27 May 2019 22:06:25 +0200
Message-Id: <20190527200627.8635-6-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190527200627.8635-1-peron.clem@gmail.com>
References: <20190527200627.8635-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_131021_722468_334E422F 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIEFsbHdpbm5lciBINiBoYXMgYSBTUERJRiBjb250cm9sbGVyIGNhbGxlZCBPV0EgKE9uZSBX
aXJlIEF1ZGlvKS4KCk9ubHkgb25lIHBpbm11eGluZyBpcyBhdmFpbGFibGUgc28gc2V0IGl0IGFz
IGRlZmF1bHQuCgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21h
aWwuY29tPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNp
IHwgMzggKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAzOCBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2
LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQppbmRl
eCBmNGVhNTk2YzgyY2UuLmUwY2EyMzcwNDcxOSAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290
L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9h
bGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKQEAgLTgzLDYgKzgzLDI0IEBACiAJCW1ldGhvZCA9ICJz
bWMiOwogCX07CiAKKwlzb3VuZC1zcGRpZiB7CisJCWNvbXBhdGlibGUgPSAic2ltcGxlLWF1ZGlv
LWNhcmQiOworCQlzaW1wbGUtYXVkaW8tY2FyZCxuYW1lID0gIk9uLWJvYXJkIFNQRElGIjsKKwor
CQlzaW1wbGUtYXVkaW8tY2FyZCxjcHUgeworCQkJc291bmQtZGFpID0gPCZzcGRpZj47CisJCX07
CisKKwkJc2ltcGxlLWF1ZGlvLWNhcmQsY29kZWMgeworCQkJc291bmQtZGFpID0gPCZzcGRpZl9v
dXQ+OworCQl9OworCX07CisKKwlzcGRpZl9vdXQ6IHNwZGlmLW91dCB7CisJCSNzb3VuZC1kYWkt
Y2VsbHMgPSA8MD47CisJCWNvbXBhdGlibGUgPSAibGludXgsc3BkaWYtZGl0IjsKKwl9OworCiAJ
dGltZXIgewogCQljb21wYXRpYmxlID0gImFybSxhcm12OC10aW1lciI7CiAJCWludGVycnVwdHMg
PSA8R0lDX1BQSSAxMwpAQCAtMjczLDYgKzI5MSwxMSBAQAogCQkJCWJpYXMtcHVsbC11cDsKIAkJ
CX07CiAKKwkJCXNwZGlmX3R4X3Bpbjogc3BkaWYtdHgtcGluIHsKKwkJCQlwaW5zID0gIlBINyI7
CisJCQkJZnVuY3Rpb24gPSAic3BkaWYiOworCQkJfTsKKwogCQkJdWFydDBfcGhfcGluczogdWFy
dDAtcGgtcGlucyB7CiAJCQkJcGlucyA9ICJQSDAiLCAiUEgxIjsKIAkJCQlmdW5jdGlvbiA9ICJ1
YXJ0MCI7CkBAIC00MDIsNiArNDI1LDIxIEBACiAJCQl9OwogCQl9OwogCisJCXNwZGlmOiBzcGRp
ZkA1MDkzMDAwIHsKKwkJCSNzb3VuZC1kYWktY2VsbHMgPSA8MD47CisJCQljb21wYXRpYmxlID0g
ImFsbHdpbm5lcixzdW41MGktaDYtc3BkaWYiOworCQkJcmVnID0gPDB4MDUwOTMwMDAgMHg0MDA+
OworCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDIxIElSUV9UWVBFX0xFVkVMX0hJR0g+OworCQkJ
Y2xvY2tzID0gPCZjY3UgQ0xLX0JVU19TUERJRj4sIDwmY2N1IENMS19TUERJRj47CisJCQljbG9j
ay1uYW1lcyA9ICJhcGIiLCAic3BkaWYiOworCQkJcmVzZXRzID0gPCZjY3UgUlNUX0JVU19TUERJ
Rj47CisJCQlkbWFzID0gPCZkbWEgMj47CisJCQlkbWEtbmFtZXMgPSAidHgiOworCQkJcGluY3Ry
bC1uYW1lcyA9ICJkZWZhdWx0IjsKKwkJCXBpbmN0cmwtMCA9IDwmc3BkaWZfdHhfcGluPjsKKwkJ
CXN0YXR1cyA9ICJkaXNhYmxlZCI7CisJCX07CisKIAkJdXNiMm90ZzogdXNiQDUxMDAwMDAgewog
CQkJY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuNTBpLWg2LW11c2IiLAogCQkJCSAgICAgImFs
bHdpbm5lcixzdW44aS1hMzMtbXVzYiI7Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
