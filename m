Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0E216EB03
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 17:12:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+FcrcHdUBIQr96Esl2+q0S20/Gw9qQM6ZsTbUDdKtbQ=; b=IKhO5cZGhz1DAM
	40hN1Q/KdXpIjrIJwqOvRo+Bq0S900Txa7pULvzzLehtbsLnedKP8IN4v9dKS3XZ/TnTgvOCIlxtV
	bPH6FN9BrODeZ42/AzNXIwLX/GkO361DRHeHh3t/Cxc3lasf23X6CQw90BYZEfu2Q9EaCBX/CHG6f
	ej/EZPh4TNTjFlKift/RYMpMT5wJg9gZpXrf+Q56bmn0P/gL+IHGwKi35gOBSzQ1Dgwtxeu6ISuQZ
	unorbfxy9gajC4lACTs91AmbmcpQGlNIAzThzu0IEqxZsX0KwTPhf5b162JJOedXEH+yc/IdTT+Zm
	Qr77kyUqSRcM5MCTOITg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6cp4-0005XB-TP; Tue, 25 Feb 2020 16:12:38 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6coZ-0005Kk-HM
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 16:12:08 +0000
Received: by mail-wm1-f67.google.com with SMTP id m3so3539452wmi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 08:12:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sdeifxeE4hzWYWIT9laRsQZ2w7d8/CJoVsmACfUBNlY=;
 b=UUkawDAVUuNNTfyMHluahGX16kzGo+GFZnd0BlhJCnlmI6ld36U0l574EqGkJyAxrB
 hApIXCKDPuNSgXWrPtUbbUj51a1YJntbPEiR+XawWVqEg9Rewpk2pgTxyaC10bQpvynG
 Y4yx1xm2SFc//g839h+DTV/4n1YG2MhZ2UO6kdOHNreQXY5PSK2rJyLeWeQa/tCu4YW0
 p941qlKVRGrCfhbTfqk59wCOAHOy7mk3seiBVenVfRAXgz2YqzfywaokeWsevVfyu2r0
 lYh/Jbil6Mq8zqjd5O5lDaosUYvI5C03mxpGwwmQXkC8zggBWWGiW5LHtG9b7NlkHFIc
 9p/Q==
X-Gm-Message-State: APjAAAXpEpcf5rB6+hgwxvUqN7AOqllJ5vsuJY3FaiYDumfOpxlXCxVm
 oV1ooJMR0Wvr3gBkPMl2ccA=
X-Google-Smtp-Source: APXvYqw+HC3E0o+9joAk3gJaqGZqzCQ72Gyh2WWimQ2jitq2NlTC1r9f2qBIs5dB+oJPxlIClsMSyg==
X-Received: by 2002:a1c:6189:: with SMTP id v131mr6270952wmb.185.1582647125537; 
 Tue, 25 Feb 2020 08:12:05 -0800 (PST)
Received: from 1aq-andre.garage.tyco.com ([77.107.218.170])
 by smtp.gmail.com with ESMTPSA id h10sm4757339wml.18.2020.02.25.08.12.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 08:12:05 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/6] ARM: dts: imx7s: add snvs clock to pwrkey
Date: Tue, 25 Feb 2020 16:11:57 +0000
Message-Id: <20200225161201.1975-2-git@andred.net>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20200225161201.1975-1-git@andred.net>
References: <20200225161201.1975-1-git@andred.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_081207_570915_E855DB34 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andre.draszik[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Aymen Sghaier <aymen.sghaier@nxp.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 =?UTF-8?q?Horia=20Geant=C4=83?= <horia.geanta@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>,
 =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-input@vger.kernel.org,
 Robin Gong <yibin.gong@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gaS5NWDcsIHRoZSBTTlZTIHJlcXVpcmVzIGEgY2xvY2suIFRoaXMgaXMgc2ltaWxhciB0byB0
aGUgY2xvY2sKYm91bmQgdG8gdGhlIFNOVlMgUlRDIG5vZGUsIGJ1dCBpZiB0aGUgU05WUyBSVEMg
ZHJpdmVyIGlzbid0IGVuYWJsZWQsCnRoZW4gU05WUyBkb2Vzbid0IHdvcmssIGFuZCBhcyBzdWNo
IHRoZSBwd3JrZXkgZHJpdmVyIGRvZXNuJ3QKd29yayAoaS5lLiBoYW5ncyB0aGUga2VybmVsLCBh
cyB0aGUgY2xvY2sgaXNuJ3QgZW5hYmxlZCkuCgpBbHNvIHNlZSBjb21taXQgZWMyYTg0NGVmN2Mx
CigiQVJNOiBkdHM6IGlteDdzOiBhZGQgc252cyBydGMgY2xvY2siKQpmb3IgYSBzaW1pbGFyIGZp
eC4KClNpZ25lZC1vZmYtYnk6IEFuZHLDqSBEcmFzemlrIDxnaXRAYW5kcmVkLm5ldD4KQWNrZWQt
Ynk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+CkNjOiAiSG9yaWEgR2VhbnTEgyIgPGhv
cmlhLmdlYW50YUBueHAuY29tPgpDYzogQXltZW4gU2doYWllciA8YXltZW4uc2doYWllckBueHAu
Y29tPgpDYzogSGVyYmVydCBYdSA8aGVyYmVydEBnb25kb3IuYXBhbmEub3JnLmF1PgpDYzogIkRh
dmlkIFMuIE1pbGxlciIgPGRhdmVtQGRhdmVtbG9mdC5uZXQ+CkNjOiBSb2IgSGVycmluZyA8cm9i
aCtkdEBrZXJuZWwub3JnPgpDYzogTWFyayBSdXRsYW5kIDxtYXJrLnJ1dGxhbmRAYXJtLmNvbT4K
Q2M6IFNoYXduIEd1byA8c2hhd25ndW9Aa2VybmVsLm9yZz4KQ2M6IFNhc2NoYSBIYXVlciA8cy5o
YXVlckBwZW5ndXRyb25peC5kZT4KQ2M6IFBlbmd1dHJvbml4IEtlcm5lbCBUZWFtIDxrZXJuZWxA
cGVuZ3V0cm9uaXguZGU+CkNjOiBGYWJpbyBFc3RldmFtIDxmZXN0ZXZhbUBnbWFpbC5jb20+CkNj
OiBOWFAgTGludXggVGVhbSA8bGludXgtaW14QG54cC5jb20+CkNjOiBEbWl0cnkgVG9yb2tob3Yg
PGRtaXRyeS50b3Jva2hvdkBnbWFpbC5jb20+CkNjOiBBbnNvbiBIdWFuZyA8QW5zb24uSHVhbmdA
bnhwLmNvbT4KQ2M6IFJvYmluIEdvbmcgPHlpYmluLmdvbmdAbnhwLmNvbT4KQ2M6IGxpbnV4LWNy
eXB0b0B2Z2VyLmtlcm5lbC5vcmcKQ2M6IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnCkNjOiBs
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKQ2M6IGxpbnV4LWlucHV0QHZnZXIu
a2VybmVsLm9yZwoKLS0tCnYyOgoqIHNwbGl0IGRvY3VtZW50YXRpb24gYW5kIGkuTVg3IGR0cyB1
cGRhdGUgaW50byB0d28gcGF0Y2hlcwotLS0KIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDdzLmR0c2kg
fCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJj
aC9hcm0vYm9vdC9kdHMvaW14N3MuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDdzLmR0c2kK
aW5kZXggMTM5YWI5Yjk4NDcyLi5lZGM4YzU0MmRhN2UgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jv
b3QvZHRzL2lteDdzLmR0c2kKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14N3MuZHRzaQpAQCAt
NjExLDYgKzYxMSw4IEBACiAJCQkJCWNvbXBhdGlibGUgPSAiZnNsLHNlYy12NC4wLXB3cmtleSI7
CiAJCQkJCXJlZ21hcCA9IDwmc252cz47CiAJCQkJCWludGVycnVwdHMgPSA8R0lDX1NQSSA0IElS
UV9UWVBFX0xFVkVMX0hJR0g+OworCQkJCQljbG9ja3MgPSA8JmNsa3MgSU1YN0RfU05WU19DTEs+
OworCQkJCQljbG9jay1uYW1lcyA9ICJzbnZzLXB3cmtleSI7CiAJCQkJCWxpbnV4LGtleWNvZGUg
PSA8S0VZX1BPV0VSPjsKIAkJCQkJd2FrZXVwLXNvdXJjZTsKIAkJCQkJc3RhdHVzID0gImRpc2Fi
bGVkIjsKLS0gCjIuMjMuMC5yYzEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
