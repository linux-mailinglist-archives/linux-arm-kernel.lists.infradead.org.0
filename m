Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD2D16EB04
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 17:12:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HpTUUgxBrsypk2bbXg8yGygBB9hZBC09CC6Fni45Y2k=; b=AP610wfiyM/VNL
	N5iPQpwMfPvPbpPHW20V/bOIxljvFcOfT4Me3srf5EMznVLRra0MfNFMWpIhxCvzlu3S9Uzi38AMt
	PGbFVuPuSCs34JW4KQ7nzzBLJnDVThd5cyQmfUHXGEFT2LSR50ZsYNSWL87EHd8ZiV8ugbBea4qBW
	HdXh1SN4aJpA0UCaTLRDqi4pstBdAuJqupC7DtD2lYjLWA5dQv9PEjoB2n22t2S7fI9XJ4E05irac
	vcTFVZFryxV3vwjjG8oAxtOFyxE7tb1ixNqEdcJfIac9KyP2mvNt3FVUB44Y2AP+rCFZ7cyiwsh9S
	AZ8g+hSgft3raJzhPgkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6cpJ-0005oR-3Q; Tue, 25 Feb 2020 16:12:53 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6cob-0005Ku-5v
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 16:12:10 +0000
Received: by mail-wr1-f66.google.com with SMTP id j7so2874018wrp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 08:12:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fC8IWNnAE99VUOqzzszcLhSt7LoIGXK7nF3gE1G09Bs=;
 b=uNVHl94ma/isemhD2sDV3sHEvf3ClkIaG2hYoehyPTqomaVP+2UvDPOneVe3+JsbtZ
 TIDJdgIy6jqbakVP6Q+AqSJcMfiRosC8XhdX/H6bggmdJcRxDLt5WSpu9gct0PdIda+N
 fv0xBIImNNBh5fskIde1KoGolHBkaj1NZRLfp7de+rHBlMYNFWYF4RNRbclZSjaaTXfi
 VOVaoAt1kDhI7aOldrSkDhbtoZJ52dUfQ6M1UU547PE8WcQHYUicifYD9Ty8c7nrhcFQ
 lZpOHqaUsQf5welrtbSRJIdjheTJ63KliYJXCm5UUWglWGzZKebDh1m9NNWtp2lV2joH
 wz6w==
X-Gm-Message-State: APjAAAURm6+5q7TBbs5g7uCmm97hwegxzLu7RWudrdYZSKy5S2y1skNS
 6Lfm0MDtrv9cJEkHJl3Qgtk=
X-Google-Smtp-Source: APXvYqzUizPxXdhLVFH8Pc8TvFvpiyM7nhjaoxaFjP0/A4WKAcCtx2U92Y02Qne8XBL3nyKovvTJ3A==
X-Received: by 2002:a5d:4584:: with SMTP id p4mr78175875wrq.25.1582647126645; 
 Tue, 25 Feb 2020 08:12:06 -0800 (PST)
Received: from 1aq-andre.garage.tyco.com ([77.107.218.170])
 by smtp.gmail.com with ESMTPSA id h10sm4757339wml.18.2020.02.25.08.12.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 08:12:06 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/6] arm64: dts: imx8mm: add snvs clock to pwrkey
Date: Tue, 25 Feb 2020 16:11:58 +0000
Message-Id: <20200225161201.1975-3-git@andred.net>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20200225161201.1975-1-git@andred.net>
References: <20200225161201.1975-1-git@andred.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_081209_216728_98C2AE46 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andre.draszik[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
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
aC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1tLmR0c2kgfCAyICsrCiAxIGZpbGUgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9m
cmVlc2NhbGUvaW14OG1tLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4
bW0uZHRzaQppbmRleCAzZDk1YjY2YTJkNzEuLjgwNDAzMTAxMGE4YSAxMDA2NDQKLS0tIGEvYXJj
aC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1tLmR0c2kKKysrIGIvYXJjaC9hcm02NC9i
b290L2R0cy9mcmVlc2NhbGUvaW14OG1tLmR0c2kKQEAgLTQ2MCw2ICs0NjAsOCBAQAogCQkJCQlj
b21wYXRpYmxlID0gImZzbCxzZWMtdjQuMC1wd3JrZXkiOwogCQkJCQlyZWdtYXAgPSA8JnNudnM+
OwogCQkJCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgNCBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKKwkJ
CQkJY2xvY2tzID0gPCZjbGsgSU1YOE1NX0NMS19TTlZTX1JPT1Q+OworCQkJCQljbG9jay1uYW1l
cyA9ICJzbnZzLXB3cmtleSI7CiAJCQkJCWxpbnV4LGtleWNvZGUgPSA8S0VZX1BPV0VSPjsKIAkJ
CQkJd2FrZXVwLXNvdXJjZTsKIAkJCQkJc3RhdHVzID0gImRpc2FibGVkIjsKLS0gCjIuMjMuMC5y
YzEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
