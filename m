Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7786E1FA972
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 09:03:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TdTbR1knDwlkiAo3AZjlpFgBNElUo8YM+aTy3Ql14u4=; b=TqZJorju1eZQaT
	rg4LVsbfX1z0uHHeULWdeUBhr8nX7TG7FjXjSogFyGYVZhkC4gklBe2lljyI6WThtR3mGxeGxNG9g
	K+/KduFRb+mi/Z1Lqfg7pe0tDJ9dFM2Yt+SWb7UnuWQvFc8QVE2aQdlgiO1uPRLuD2YWFZwGznPz8
	6bEkqhUVCBQQGbjt0gGUvCa8H7wlvMHBR4pEK/U+fkUcOLqC5qR87RIGMVStcHm7mNewojico84n7
	qw2ET40fWcPXugaUy+ASMEdu3cVuEIDJICGW4+9G8cqHzsZAMHFH+mdRbZ73g1V4MsGYIzd9Vu60y
	nn08klZ1Juq975j6lPoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl5cp-0000CO-Py; Tue, 16 Jun 2020 07:03:15 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl5c6-0008CK-8b
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 07:02:31 +0000
Received: by mail-wr1-x441.google.com with SMTP id q11so19550826wrp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 00:02:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hxEmWLfwHZP4Be2phdSbnhWMdtzjaR50DcbRvIkPnIU=;
 b=sLbReXaGDklVC/wmWctEFgs5Myd1hGZTKnfLn1uS976ohunN6Cl+0+lu8WOXyp2oDX
 twQjvyJQxLq8odtcTB3+FZFOHlWVO8VfgszE8GcRALNyJigwekf/QImno1yYn9xvEa0P
 0TTJTF8pgre0wCBDac6pg59WDry8+EET0q5XyvalQCL6AyrxYB4KgJRrrLCw7yfZczsQ
 0iRGjIB1637r6vtiwulMaHJenCBmMiXR3t2si280FE1yqfEWlI7o7+GQlR6TxZQ8Wgi1
 WAL0DcUr6vH+UkHjQWvR39+7847ksKHnX2JqKSzH4+9OvDx4yAdz2CbW6ql/EeXZRknq
 Ru2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hxEmWLfwHZP4Be2phdSbnhWMdtzjaR50DcbRvIkPnIU=;
 b=TQKQVPPTSlwVR7xr/zmpYQXFj76HJBbyeLQntm6z1YECFcP/sZHlv86rMkXFwyh3H0
 0NgAKCuLc4X70NQGDL/4k09Z7mXcU8q9kifTI87XSw49eS5lbVChDusDcICgMiGwVoI7
 KwZGQOza3GXEKpqTOQduZLEV8BKx3W8Ws7uS7C1ULZMuus+u18C5emAX0WTkzq0L6Z+N
 OYpTAUITaF35OwVB4hjHpXMbdxdyyySJr8wPDz2UTE2ptNzgObr0RUPhajz6GHGLSX0i
 5yZ2zC84KGFBo9JbxixsTLypan3pIGkFEh3gNONt7IpUsd3goLODFpVT+dgjRCTccKHS
 Q8ow==
X-Gm-Message-State: AOAM530ylAvCjScHtZDgX7MscPUX1U2C26jkyLEPCPOwkLa0c76Sibom
 nQNwDoJs10vzqkFuwYIyXj4=
X-Google-Smtp-Source: ABdhPJwDoaIXDyUzm7CintArNzHEB1nNJOCinL8DV2eNUbdJR0tdiWp7yguJ9LQxGl5k9phf2M3Kjg==
X-Received: by 2002:a5d:4f09:: with SMTP id c9mr1417776wru.3.1592290948741;
 Tue, 16 Jun 2020 00:02:28 -0700 (PDT)
Received: from skynet.lan (90.red-88-20-62.staticip.rima-tde.net.
 [88.20.62.90])
 by smtp.gmail.com with ESMTPSA id a81sm2792897wmd.25.2020.06.16.00.02.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 00:02:28 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: broonie@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 2/4] spi: bcm63xx-spi: allow building for BMIPS
Date: Tue, 16 Jun 2020 09:02:21 +0200
Message-Id: <20200616070223.3401282-3-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200616070223.3401282-1-noltari@gmail.com>
References: <20200616070223.3401282-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_000230_298638_8DE947D5 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

YmNtNjN4eC1zcGkgY29udHJvbGxlciBpcyBwcmVzZW50IG9uIHNldmVyYWwgQk1JUFMgU29DcyAo
QkNNNjM1OCwgQkNNNjM2MiwKQkNNNjM2OCBhbmQgQkNNNjMyNjgpLgoKU2lnbmVkLW9mZi1ieTog
w4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIDxub2x0YXJpQGdtYWlsLmNvbT4KQWNrZWQtYnk6IEZs
b3JpYW4gRmFpbmVsbGkgPGYuZmFpbmVsbGlAZ21haWwuY29tPgotLS0KIHYzOiBubyBjaGFuZ2Vz
CiB2Mjogbm8gY2hhbmdlcwoKIGRyaXZlcnMvc3BpL0tjb25maWcgfCAyICstCiAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L3NwaS9LY29uZmlnIGIvZHJpdmVycy9zcGkvS2NvbmZpZwppbmRleCA4ZjFmOGZjYTc5ZTMuLmE5
ODk2ZTM4ODM1NSAxMDA2NDQKLS0tIGEvZHJpdmVycy9zcGkvS2NvbmZpZworKysgYi9kcml2ZXJz
L3NwaS9LY29uZmlnCkBAIC0xNDksNyArMTQ5LDcgQEAgY29uZmlnIFNQSV9CQ00yODM1QVVYCiAK
IGNvbmZpZyBTUElfQkNNNjNYWAogCXRyaXN0YXRlICJCcm9hZGNvbSBCQ002M3h4IFNQSSBjb250
cm9sbGVyIgotCWRlcGVuZHMgb24gQkNNNjNYWCB8fCBDT01QSUxFX1RFU1QKKwlkZXBlbmRzIG9u
IEJDTTYzWFggfHwgQk1JUFNfR0VORVJJQyB8fCBDT01QSUxFX1RFU1QKIAloZWxwCiAJICBFbmFi
bGUgc3VwcG9ydCBmb3IgdGhlIFNQSSBjb250cm9sbGVyIG9uIHRoZSBCcm9hZGNvbSBCQ002M3h4
IFNvQ3MuCiAKLS0gCjIuMjcuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
