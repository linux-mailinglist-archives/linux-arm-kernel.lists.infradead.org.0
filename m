Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF79C2AC71
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 00:26:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3GJm8amOMTsBAhNS5IjirmDIe8eBXNurdqOfmisD2u4=; b=KLh9mw3DjWZ/Wq
	l+hw9n780ZxxQyRTDnv5iRQiqhXSUBEIDTC4oUAnX9r8GYcK22/D2C46/Q2YuAE37gH/9Ri7+jhBu
	AyfL3xZg5EUs2u79ZpualIJRAur4Cmm/HEgQXIRg+w9EV4dFnSa7Oe/HEPXp2MjxsS2KGcIyaht7F
	oyRo5v6FXfMMZBXvlxf+t32iD7P2huZa+fm684DAYHvFE4vNnewCPnKqA1mO36mHYsm99iFRhL+ib
	e/J1WkgJbz68EfszrCgeYa+uqbOdN7De0aPNDcZiQQDi/7H5MTu6rxyTprd9Ar3dyGjsyNXJZnWKz
	tVigsox93iIJpG03r2iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV1b6-0004O6-DY; Sun, 26 May 2019 22:26:32 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV1aR-0003ft-2u
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 22:25:56 +0000
Received: by mail-wr1-x444.google.com with SMTP id h1so847067wro.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 May 2019 15:25:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=q27XYokGtE0PF+e6Jf1zBq2DoW5PvxIGPkQQOfCJr1E=;
 b=RRVbu4sWt4ZxcFOTHYisTJtdivqZZowGwZPI/XaQ7zxtSBnu+8QMqs1QnGKrRM6E3O
 oJ9jcOLXnxxQbh71CsgMwIGsxntR/R+BBLtRa9dCzu+uEbg6KBVS2zQreHSzNvV4laIM
 u7dG8Lv9ZarOC733yOpZjdBIOnf8m6VhZdwIsyZyTlBzJHX9sE9l9KL8I5rZdusKY67S
 k0aEyUSKAGlVZkJcZ2NyTJMB8d9syVbtxnissO2DY3nSHDPsSuH1rjk0v41cJM56CZg8
 OnHr20kuTuk2TUkrYnE0FSkzeauTZXLd2F7pdj6ZcJCB1tx6kYmWdOE0qf8YLDiLKDQb
 PmtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=q27XYokGtE0PF+e6Jf1zBq2DoW5PvxIGPkQQOfCJr1E=;
 b=hXuiJBILozRxPKk5fRodm07/fbYiYk0Y60PH70+lbKUyP9P2x5D7PJ9er901fled+l
 7V71vuJlbYHMGy2VU4yg/eZOVS+kU6wlR609dpTtRtNTc72DJpO4v1XGdLzjMy92istH
 0VrvGNoPE831akMobc+kBJnULPFf6Yngu+OqGoe2+yrmM78t0ceoJegcbK4lZemQXz21
 XkUTbds7LhfmbjFZu7QuOGUsusOGZHYHdurenKLgFcCsI0iJ7DDelv91GLmsLN0500rT
 QsvqdrNXv2yPiPY49TMidza72YfhNBELE7WAZ8MbHpxXNQoeSLaJ0WOXyuIMnTmJTP7j
 GUOQ==
X-Gm-Message-State: APjAAAW9sGXgaPs25F7JHZFENdX1MTC8ovUgTL3+TKz2PXljOkhGTM+H
 4R2RdYTISNZ81R2njPP1Erg=
X-Google-Smtp-Source: APXvYqxb8yu+YLnqa5xxB88D8WdyrJlaqZ/IkWQ0b2ii4BOvjanFcCdF7BqfxTsFG/o1zIYIXGXAtA==
X-Received: by 2002:adf:a4d8:: with SMTP id h24mr15570038wrb.171.1558909549290; 
 Sun, 26 May 2019 15:25:49 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id o20sm10368398wro.2.2019.05.26.15.25.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 26 May 2019 15:25:48 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v2 05/10] arm64: dts: allwinner: a64: Add IR node
Date: Mon, 27 May 2019 00:25:31 +0200
Message-Id: <20190526222536.10917-6-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190526222536.10917-1-peron.clem@gmail.com>
References: <20190526222536.10917-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_152551_648536_01295974 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
