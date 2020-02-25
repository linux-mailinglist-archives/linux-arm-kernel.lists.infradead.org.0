Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6804216EB05
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 17:13:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w0eJ9MVHKmXnAzPCYsqQzmAhyagnsYjAxLjbDDtaUV4=; b=nDrV8H2jVndb3g
	TU1c8eomoC8CFi67gXYtaW9O11elQHGmwzqnfY8ZxslL6vj7mbPud2RfyzD4gTVv6inivw89JRv+J
	1sn3F2bipiqWcSX1U26jVxxn6Lwy29ZQsEPSRWGAkXWOfzR1flkEnc4FIut5gSsKuP394NpPf7KgV
	G3SVhd4ylKd9cCleBvKkjHGGSqqAcrz/6y0DOvX6MMXlG2NudeD/8WDl2SL8ukoETVX15KXP2vjFY
	IpDb2tdUvPViaXZLK5YFDHmD6N5cCuDw0Z9LlScGZqkFGTl5EihaphZ6zE/zJ2l8mX1pwmvZzIaV5
	TRljglhMbMHExWNyappQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6cpS-00060J-Hw; Tue, 25 Feb 2020 16:13:02 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6cob-0005LM-Fw
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 16:12:10 +0000
Received: by mail-wr1-f65.google.com with SMTP id j7so2874079wrp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 08:12:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5iVYMAf3KBBmBN8bPXGHIYJDp6KSir9PCdvRV/c4buI=;
 b=Ch1Sleeu7wM/7hZuk8z7EbIF3HtpjmzrcFp+4pmmuhuriJE3QgP7Y0OR1ynObkSelV
 OyrCj42ZdgwJS9yNFJLRZlMTCgoAyhkMmfv2j831bEN8adPRYIVNVclvBV7J6a0meV3V
 vFK/lcRxoJVCj424ML9UMobLI0OLdSseMHZuFs7yTRT8NnW4BT/Z85yW19MbVMOOxDNm
 nWVWa92th+TnpX2oxLDHjKbtThhApMFPk46lNBFkSHzXxD20KOiKeIsCfCJ8NikhQ7UB
 Do28f4HRDCJxuEQFb/eKucl6zcvAMnxcCNBDcr9I+SKNJbK8PjsovR0D9DQM2B6IHOA0
 zeNg==
X-Gm-Message-State: APjAAAWJJIKz+vp7AOyUwXXuidEy+BnRHP+weT5goWpKv+8IvPs9AALI
 WvqjtMPG7Zu396sWH30/P3Y=
X-Google-Smtp-Source: APXvYqwVFbTeK+gtM5LGRrDz4P5JBGZYNZnTL7U+Ql1eq5kiHsrnuyxsnSA9ZxfS5KEcA0Yx+tY6xw==
X-Received: by 2002:a5d:5647:: with SMTP id j7mr74240686wrw.265.1582647127853; 
 Tue, 25 Feb 2020 08:12:07 -0800 (PST)
Received: from 1aq-andre.garage.tyco.com ([77.107.218.170])
 by smtp.gmail.com with ESMTPSA id h10sm4757339wml.18.2020.02.25.08.12.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 08:12:07 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/6] arm64: dts: imx8mq: add snvs clock to pwrkey
Date: Tue, 25 Feb 2020 16:11:59 +0000
Message-Id: <20200225161201.1975-4-git@andred.net>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20200225161201.1975-1-git@andred.net>
References: <20200225161201.1975-1-git@andred.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_081209_526901_AF466692 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andre.draszik[at]gmail.com]
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

T24gaS5NWDhNTSwgdGhlIFNOVlMgcmVxdWlyZXMgYSBjbG9jay4gVGhpcyBpcyBzaW1pbGFyIHRv
IHRoZSBjbG9jawpib3VuZCB0byB0aGUgU05WUyBSVEMgbm9kZSwgYnV0IGlmIHRoZSBTTlZTIFJU
QyBkcml2ZXIgaXNuJ3QgZW5hYmxlZCwKdGhlbiBTTlZTIGRvZXNuJ3Qgd29yaywgYW5kIGFzIHN1
Y2ggdGhlIHB3cmtleSBkcml2ZXIgZG9lc24ndAp3b3JrIChpLmUuIGhhbmdzIHRoZSBrZXJuZWws
IGFzIHRoZSBjbG9jayBpc24ndCBlbmFibGVkKS4KCkFsc28gc2VlIGNvbW1pdCBlYzJhODQ0ZWY3
YzEKKCJBUk06IGR0czogaW14N3M6IGFkZCBzbnZzIHJ0YyBjbG9jayIpCmZvciBhIHNpbWlsYXIg
Zml4LgoKU2lnbmVkLW9mZi1ieTogQW5kcsOpIERyYXN6aWsgPGdpdEBhbmRyZWQubmV0PgpDYzog
IkhvcmlhIEdlYW50xIMiIDxob3JpYS5nZWFudGFAbnhwLmNvbT4KQ2M6IEF5bWVuIFNnaGFpZXIg
PGF5bWVuLnNnaGFpZXJAbnhwLmNvbT4KQ2M6IEhlcmJlcnQgWHUgPGhlcmJlcnRAZ29uZG9yLmFw
YW5hLm9yZy5hdT4KQ2M6ICJEYXZpZCBTLiBNaWxsZXIiIDxkYXZlbUBkYXZlbWxvZnQubmV0PgpD
YzogUm9iIEhlcnJpbmcgPHJvYmgrZHRAa2VybmVsLm9yZz4KQ2M6IE1hcmsgUnV0bGFuZCA8bWFy
ay5ydXRsYW5kQGFybS5jb20+CkNjOiBTaGF3biBHdW8gPHNoYXduZ3VvQGtlcm5lbC5vcmc+CkNj
OiBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+CkNjOiBQZW5ndXRyb25peCBL
ZXJuZWwgVGVhbSA8a2VybmVsQHBlbmd1dHJvbml4LmRlPgpDYzogRmFiaW8gRXN0ZXZhbSA8ZmVz
dGV2YW1AZ21haWwuY29tPgpDYzogTlhQIExpbnV4IFRlYW0gPGxpbnV4LWlteEBueHAuY29tPgpD
YzogRG1pdHJ5IFRvcm9raG92IDxkbWl0cnkudG9yb2tob3ZAZ21haWwuY29tPgpDYzogQW5zb24g
SHVhbmcgPEFuc29uLkh1YW5nQG54cC5jb20+CkNjOiBSb2JpbiBHb25nIDx5aWJpbi5nb25nQG54
cC5jb20+CkNjOiBsaW51eC1jcnlwdG9Admdlci5rZXJuZWwub3JnCkNjOiBkZXZpY2V0cmVlQHZn
ZXIua2VybmVsLm9yZwpDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCkNj
OiBsaW51eC1pbnB1dEB2Z2VyLmtlcm5lbC5vcmcKCi0tLQp2MjogbmV3IHBhdGNoCi0tLQogYXJj
aC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kgfCAyICsrCiAxIGZpbGUgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9m
cmVlc2NhbGUvaW14OG1xLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4
bXEuZHRzaQppbmRleCA3ZjkzMTk0NTJiNTguLmU0YWIwMzcxODNkNyAxMDA2NDQKLS0tIGEvYXJj
aC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kKKysrIGIvYXJjaC9hcm02NC9i
b290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kKQEAgLTUwMSw2ICs1MDEsOCBAQAogCQkJCQlj
b21wYXRpYmxlID0gImZzbCxzZWMtdjQuMC1wd3JrZXkiOwogCQkJCQlyZWdtYXAgPSA8JnNudnM+
OwogCQkJCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgNCBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKKwkJ
CQkJY2xvY2tzID0gPCZjbGsgSU1YOE1RX0NMS19TTlZTX1JPT1Q+OworCQkJCQljbG9jay1uYW1l
cyA9ICJzbnZzLXB3cmtleSI7CiAJCQkJCWxpbnV4LGtleWNvZGUgPSA8S0VZX1BPV0VSPjsKIAkJ
CQkJd2FrZXVwLXNvdXJjZTsKIAkJCQkJc3RhdHVzID0gImRpc2FibGVkIjsKLS0gCjIuMjMuMC5y
YzEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
