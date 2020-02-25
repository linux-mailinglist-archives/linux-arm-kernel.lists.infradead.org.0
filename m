Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A5B16EB0D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 17:13:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4p9uYtkmgPNFiu/NKzEw8TZAoYJPaAQL3SCj1TosqMc=; b=EInz0FN+pDmpCN
	hDXr48ffOLkKUIHJwb6IcO5CFRIS4+bxydm4WRDejdPwHbjgqDfmVVKEXEFq68gn/LY/plomW/ZaX
	4HInVev+q0tnSRCpXfMT7+a6b/75a0o9VeVzf87xpqXEMW6TGkm6uUeAB7Kgve0ZEg+nhJzXTRb+d
	ZjV29l0IYXHwpP4lZJoMAzrDGtOxIuuSrM/V3O75OFrumyGBbqUVBtgVB4ReUGSbI5CZe0y4MJFDx
	zA9CfbU/s8J7rtMP/xrmSgdVinZvGwB/sqFPMAiK2/lRhgofnbvgueqEY+2jq6NfJnK2RQPNBSija
	RYx1h6fOtde1tXy3hPCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6cpu-0006SG-UC; Tue, 25 Feb 2020 16:13:30 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6cod-0005Mm-HX
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 16:12:15 +0000
Received: by mail-wr1-f67.google.com with SMTP id w12so15417914wrt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 08:12:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PehnyNjd4V5FhnMmSN6y9oe+uTRnJaBKHZh2ORrfGyg=;
 b=QmhePLVzQnynj5dM6E71IKgHnnRHMH2uRio063XZL+OYQBtDJdaXbjSzpGemyBg8Sa
 xBpTWapdhNH+S8m8Wjg4yM55HsCbBrpNalZ4GwNWZQr44YGiEcmPjtzKe+KGD/RELia0
 wXzOmavNXuaFeIuWcTH/jfLeYGoXbrmOxb9r/n77Cky3d8XhYKE7k+K+LTL5tT09PBm/
 oQt3nCWQmqAcKXxrXvhqjIGEyDuNanUfJ3yVTE0469Hdf685kEP3SPEAZZhxkzz7nggM
 L2Sl9g1zxDyd3E9N58sDJwvbGppWWCH2cP9N/AytnJ1gbz5Jjjx+BYkuaFhiLAW58Q4I
 pN/A==
X-Gm-Message-State: APjAAAWvoP6TPeKWm/odL9CB8ZLJF4ZBeAKD7zuI658cniqrWueYWFWY
 vJJTXZ0LCqkDYSnAG2FWlc4=
X-Google-Smtp-Source: APXvYqxfwPA8/K18hEK9dZ/LbLLqMQ/rHwxFMS0s62Mkl/7CuOWqsdN/CRTQmIRNx5EexFElK7Lrzg==
X-Received: by 2002:adf:cd11:: with SMTP id w17mr77166388wrm.66.1582647129944; 
 Tue, 25 Feb 2020 08:12:09 -0800 (PST)
Received: from 1aq-andre.garage.tyco.com ([77.107.218.170])
 by smtp.gmail.com with ESMTPSA id h10sm4757339wml.18.2020.02.25.08.12.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 08:12:09 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 6/6] Input: snvs_pwrkey - only IRQ_HANDLED for our own
 events
Date: Tue, 25 Feb 2020 16:12:01 +0000
Message-Id: <20200225161201.1975-6-git@andred.net>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20200225161201.1975-1-git@andred.net>
References: <20200225161201.1975-1-git@andred.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_081211_609593_3B943108 
X-CRM114-Status: GOOD (  15.61  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andre.draszik[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Aymen Sghaier <aymen.sghaier@nxp.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 =?UTF-8?q?Horia=20Geant=C4=83?= <horia.geanta@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>,
 =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-input@vger.kernel.org,
 Robin Gong <yibin.gong@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIHNudnNfcHdya2V5IHNoYXJlcyB0aGUgU05WUyBMUFNSIHN0YXR1cyByZWdpc3RlciB3aXRo
IHRoZSBzbnZzX3J0Yy4KClRoaXMgZHJpdmVyIGhlcmUgc2hvdWxkIG9ubHkgcmV0dXJuIElSUV9I
QU5ETEVEIGlmIHRoZSBzdGF0dXMgcmVnaXN0ZXIKaW5kaWNhdGVzIHRoYXQgdGhlIGV2ZW50IHdl
J3JlIGhhbmRsaW5nIGluIHRoZSBpcnEgaGFuZGxlciB3YXMgZ2VudWluZWx5CmludGVuZGVkIGZv
ciB0aGlzIGRyaXZlci4gT3RoZXJpd3NlIHRoZSBpbnRlcnJ1cHQgc3Vic3lzdGVtIHdpbGwKYXNz
dW1lIHRoZSBpbnRlcnJ1cHQgd2FzIGhhbmRsZWQgc3VjY2Vzc2Z1bGx5IGV2ZW4gdGhvdWdoIGl0
IHdhc24ndAphdCBhbGwuCgpTaWduZWQtb2ZmLWJ5OiBBbmRyw6kgRHJhc3ppayA8Z2l0QGFuZHJl
ZC5uZXQ+CkNjOiAiSG9yaWEgR2VhbnTEgyIgPGhvcmlhLmdlYW50YUBueHAuY29tPgpDYzogQXlt
ZW4gU2doYWllciA8YXltZW4uc2doYWllckBueHAuY29tPgpDYzogSGVyYmVydCBYdSA8aGVyYmVy
dEBnb25kb3IuYXBhbmEub3JnLmF1PgpDYzogIkRhdmlkIFMuIE1pbGxlciIgPGRhdmVtQGRhdmVt
bG9mdC5uZXQ+CkNjOiBSb2IgSGVycmluZyA8cm9iaCtkdEBrZXJuZWwub3JnPgpDYzogTWFyayBS
dXRsYW5kIDxtYXJrLnJ1dGxhbmRAYXJtLmNvbT4KQ2M6IFNoYXduIEd1byA8c2hhd25ndW9Aa2Vy
bmVsLm9yZz4KQ2M6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4KQ2M6IFBl
bmd1dHJvbml4IEtlcm5lbCBUZWFtIDxrZXJuZWxAcGVuZ3V0cm9uaXguZGU+CkNjOiBGYWJpbyBF
c3RldmFtIDxmZXN0ZXZhbUBnbWFpbC5jb20+CkNjOiBOWFAgTGludXggVGVhbSA8bGludXgtaW14
QG54cC5jb20+CkNjOiBEbWl0cnkgVG9yb2tob3YgPGRtaXRyeS50b3Jva2hvdkBnbWFpbC5jb20+
CkNjOiBBbnNvbiBIdWFuZyA8QW5zb24uSHVhbmdAbnhwLmNvbT4KQ2M6IFJvYmluIEdvbmcgPHlp
YmluLmdvbmdAbnhwLmNvbT4KQ2M6IGxpbnV4LWNyeXB0b0B2Z2VyLmtlcm5lbC5vcmcKQ2M6IGRl
dmljZXRyZWVAdmdlci5rZXJuZWwub3JnCkNjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKQ2M6IGxpbnV4LWlucHV0QHZnZXIua2VybmVsLm9yZwoKLS0tCnYyOgoqIG5vIGNo
YW5nZXMKLS0tCiBkcml2ZXJzL2lucHV0L2tleWJvYXJkL3NudnNfcHdya2V5LmMgfCAxMiArKysr
KysrLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9pbnB1dC9rZXlib2FyZC9zbnZzX3B3cmtleS5jIGIvZHJp
dmVycy9pbnB1dC9rZXlib2FyZC9zbnZzX3B3cmtleS5jCmluZGV4IDM4MmQyYWU4MmM5Yi4uOTgw
ODY3ODg2YjM0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2lucHV0L2tleWJvYXJkL3NudnNfcHdya2V5
LmMKKysrIGIvZHJpdmVycy9pbnB1dC9rZXlib2FyZC9zbnZzX3B3cmtleS5jCkBAIC04Miw3ICs4
Miw5IEBAIHN0YXRpYyBpcnFyZXR1cm5fdCBpbXhfc252c19wd3JrZXlfaW50ZXJydXB0KGludCBp
cnEsIHZvaWQgKmRldl9pZCkKIAljbGtfZW5hYmxlKHBkYXRhLT5jbGspOwogCiAJcmVnbWFwX3Jl
YWQocGRhdGEtPnNudnMsIFNOVlNfTFBTUl9SRUcsICZscF9zdGF0dXMpOwotCWlmIChscF9zdGF0
dXMgJiBTTlZTX0xQU1JfU1BPKSB7CisJbHBfc3RhdHVzICY9IFNOVlNfTFBTUl9TUE87CisKKwlp
ZiAobHBfc3RhdHVzKSB7CiAJCWlmIChwZGF0YS0+bWlub3JfcmV2ID09IDApIHsKIAkJCS8qCiAJ
CQkgKiBUaGUgZmlyc3QgZ2VuZXJhdGlvbiBpLk1YWzZ8N10gU29DcyBvbmx5IHNlbmQgYW4KQEAg
LTk4LDE0ICsxMDAsMTQgQEAgc3RhdGljIGlycXJldHVybl90IGlteF9zbnZzX3B3cmtleV9pbnRl
cnJ1cHQoaW50IGlycSwgdm9pZCAqZGV2X2lkKQogCQkJbW9kX3RpbWVyKCZwZGF0YS0+Y2hlY2tf
dGltZXIsCiAJCQkgICAgICAgICAgamlmZmllcyArIG1zZWNzX3RvX2ppZmZpZXMoREVCT1VOQ0Vf
VElNRSkpOwogCQl9Ci0JfQogCi0JLyogY2xlYXIgU1BPIHN0YXR1cyAqLwotCXJlZ21hcF93cml0
ZShwZGF0YS0+c252cywgU05WU19MUFNSX1JFRywgU05WU19MUFNSX1NQTyk7CisJCS8qIGNsZWFy
IFNQTyBzdGF0dXMgKi8KKwkJcmVnbWFwX3dyaXRlKHBkYXRhLT5zbnZzLCBTTlZTX0xQU1JfUkVH
LCBTTlZTX0xQU1JfU1BPKTsKKwl9CiAKIAljbGtfZGlzYWJsZShwZGF0YS0+Y2xrKTsKIAotCXJl
dHVybiBJUlFfSEFORExFRDsKKwlyZXR1cm4gbHBfc3RhdHVzID8gSVJRX0hBTkRMRUQgOiBJUlFf
Tk9ORTsKIH0KIAogc3RhdGljIHZvaWQgaW14X3NudnNfcHdya2V5X2FjdCh2b2lkICpwZGF0YSkK
LS0gCjIuMjMuMC5yYzEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
