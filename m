Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 839C01F90F5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 10:04:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JeHzsWZgdMBOZ2Ulk+DdWV1SAD5F6h2qybygrO4bWCI=; b=AdGmGFvH1ec1Me
	th23Uyuzlw0Z9cH/vKYES3LWgN/u86tt3a5CAdeTNC1TdTCIuSaICvR7PMp2SfizOJitSc7TGgVMb
	ofw1Y+d2zr5esNzF/BnKIprr3dMao71/kOrXYGtgqtp6+9a947i0ykxvgpv5URhUDwA5Vsd0ezHYc
	ZacZdXdjue37dSXlLtUGiFmreFPygMzvhFYnRVFHDGbbGvFWwMoKIhTjpUYHtUUIQU83wtKu07TfR
	foP0zxiIf2paMKkFwtiFWcW7usGPCINXfKrRaKKatMjgWIN3YLnf1VlIf/bBGiGEJ9OJ+s/HsaVDo
	8AfNzuG2AoQsoMcknEgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkk5y-0007Xq-Vr; Mon, 15 Jun 2020 08:03:54 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkk5K-00079V-PX
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 08:03:16 +0000
Received: by mail-wr1-x441.google.com with SMTP id x14so16050623wrp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 01:03:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9j15buHhd4MKiI4Z3W6luNAtm0Ob/ZJTryZmnMV59NY=;
 b=tuxtRsJpBCC8hJ2ghKhM7f9YV3ySoYO4eBPB/Y4VIPmWwyaVL9hiX9POpvkdaHrw0y
 J7WmzDSdaWFgcz9vrNERXvOUtplVmkQzQAGgxeyKMTpSlUt6wi3jO+/UqtFFzFs07SGW
 tTxgd9WT7riJQ8rse1SaO0n4DfkBv2gpVERAPg6ygOnKi0xInK6VnS/SgRESLQN3nVRE
 iW85QSm8caxEXuBqMJZHgpsoLgIwnJgE7Te6HkeJaccvKV64qug/03RrOoW9qPtl93MF
 EcL9bLCWm+U1mHtWOV8KpN8e5AWNBiBowFxRSGss+hxdBylEVP8/JYcj3BM5cn3A3JLh
 JB0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9j15buHhd4MKiI4Z3W6luNAtm0Ob/ZJTryZmnMV59NY=;
 b=nh/pEax4SQiL/kXupDAH6+dOlqOIjGj5dB71b0Ip6plXKyxGfYMItCYaJpspxPOCfI
 X1ffVghaiA38tptW/MKQ3vrZVjNdNIeXuFtmIIY06+GvmM7GyYPVaqMTpdMLeztHVBM3
 POe5mwZRB1vXtrt1AuJl8CdQtB95YhmEnORklS/qzUbH8ZAFnAnAH5akPOnzu1dVAc46
 1XoC4OSJUwP9cj+pxWIriSETeLtSufcrfy8+vyoiXjmclDwNQEPB2my0K/otvaFgJg3J
 XfFHZ+ltXpoDzlIgBzX7mEvBYguWfJW1blvML0Iv0al6ig3UDjHsMhOC6AmCtw+68D2t
 IgNQ==
X-Gm-Message-State: AOAM533aX9tRgSOVRSbliGlL9pxm9CNWLbpmKjLTSxXiAK13KDVKkTYN
 3UzthHIwTDSh4ZNYhDFNZdw=
X-Google-Smtp-Source: ABdhPJyeyKfGDyTdOzNRz2x3lHRjgrXZmAham+P818HmOVjjddX+R87QLRQVlvHCPqimUKeT3cJ7DQ==
X-Received: by 2002:a5d:4a89:: with SMTP id o9mr26527669wrq.267.1592208192924; 
 Mon, 15 Jun 2020 01:03:12 -0700 (PDT)
Received: from skynet.lan (168.red-88-20-188.staticip.rima-tde.net.
 [88.20.188.168])
 by smtp.gmail.com with ESMTPSA id d9sm23107054wre.28.2020.06.15.01.03.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 01:03:12 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: broonie@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/4] spi: bcm63xx-spi: allow building for BMIPS
Date: Mon, 15 Jun 2020 10:03:07 +0200
Message-Id: <20200615080309.2897694-3-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200615080309.2897694-1-noltari@gmail.com>
References: <20200615080309.2897694-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_010314_823309_14353998 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
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
w4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIDxub2x0YXJpQGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJz
L3NwaS9LY29uZmlnIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRl
bGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zcGkvS2NvbmZpZyBiL2RyaXZlcnMvc3Bp
L0tjb25maWcKaW5kZXggOGYxZjhmY2E3OWUzLi5hOTg5NmUzODgzNTUgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvc3BpL0tjb25maWcKKysrIGIvZHJpdmVycy9zcGkvS2NvbmZpZwpAQCAtMTQ5LDcgKzE0
OSw3IEBAIGNvbmZpZyBTUElfQkNNMjgzNUFVWAogCiBjb25maWcgU1BJX0JDTTYzWFgKIAl0cmlz
dGF0ZSAiQnJvYWRjb20gQkNNNjN4eCBTUEkgY29udHJvbGxlciIKLQlkZXBlbmRzIG9uIEJDTTYz
WFggfHwgQ09NUElMRV9URVNUCisJZGVwZW5kcyBvbiBCQ002M1hYIHx8IEJNSVBTX0dFTkVSSUMg
fHwgQ09NUElMRV9URVNUCiAJaGVscAogCSAgRW5hYmxlIHN1cHBvcnQgZm9yIHRoZSBTUEkgY29u
dHJvbGxlciBvbiB0aGUgQnJvYWRjb20gQkNNNjN4eCBTb0NzLgogCi0tIAoyLjI3LjAKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
