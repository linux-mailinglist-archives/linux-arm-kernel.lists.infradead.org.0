Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B543534D7D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 18:32:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3K4yLnsGIwIPrpCbtmNwQbZFE2NJeKsldnC3TqWFDrk=; b=PAUraI8Y7+cYa5
	rXiCrIp9ep0R3PmKR/aJ5AaoWZPTI/k7TK/EB78hYgHDZ3iR2wM72nIXxRawW+aZe4LcvFDjXeqfF
	VGPku5vVOj6xE8GrzOM8MGNVBbUuZr8o44911TphdmG2C1AUr9U/sUnoHEEPlaFltgEN/QTQ4q17C
	pFM9p7x8d0KTJhwmZeYN9eMSrVF4DJvfXQDfAjsOX9fDdY0kkyBYDpHzwQP/PrdUmQN8Db+OvC+WL
	1tkstKlLqaWkWZzpobT6WShxN+1bRkfv5QWA5pQobdmxJWJM7BNtpPd0jL9vdWAM5qclHDWz3p32N
	ZkwGU1QcOEHw++8VMpaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYCMH-0000MP-5L; Tue, 04 Jun 2019 16:32:21 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYCKI-0006Ts-7E
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 16:30:23 +0000
Received: by mail-wr1-x444.google.com with SMTP id h1so16526170wro.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 09:30:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=erM6d71aChyl+Iyy/eqYauRUQ2nKHoueD7cmlIRiQZ8=;
 b=t3oo40ApkJgetlJtClCQocXnUUmTkChlEdex6UlC3GQ80y0fNWmq8Zq5ODNWVqaf9d
 wEEg6WTDrN9IVgZ3qMRTAPpKucL/N8LUNJUgxAPKTv3CfDB614ZwfhCZh1EzLcn365hg
 pWxKV/lSDFYDTpdmpZVoiKZ2Rdnt0oS8wbyt9gDkGNd/di1UImBajKdgIvjjl+aBuJt1
 o8bV/bviUis1U/5Kg2A+rXQY3RK9KAXKKMwqzWA0FJcxVaBk9bNRYPdPVnh1k1V/X1Z8
 MCrhx6gOKaluW5Lw1qOzUMpXPqMMFm3FTa6S9hUjuPAsqcRyAsdTeiWkDUTBDil25PxA
 r+eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=erM6d71aChyl+Iyy/eqYauRUQ2nKHoueD7cmlIRiQZ8=;
 b=bWqC1wqj3b94VsAHoKXQ8GWVg0a9rouQVaVzQSnOi4QJNbSUXRel9JlD23WWpjbGZ9
 8qB1KIQH76FOB9cWLTmi8rU4AkEcPNdCtOLvROOCIP6RwTFrFH5c2dIKgX7VlzYr8crC
 GUJOMgJwQeyoq8bKvMZbP5HN2KIB1y/YvEkrkcxAR2aTeUmGDL8PToy8C4qtNqd16JjW
 omvHPqNGFGM3ssU4TEy3TZb+dEEhtL8Oq7pnFPzo5CqOrZ1YiHx3rQtvyy6V4dw1FqP6
 VDXTDb7B5x+nLG7Qkz/NagZbsC7n2ByYGAXK6/sVmdFMN1pPTmwIsE7vMWaQm3zvY11Y
 OP3g==
X-Gm-Message-State: APjAAAWzCu9ZflLfU2Q38ydxkv0OhaaIL/Q2Bl7dfBySvZ8e/+KEgoxs
 93LoKOR3Fkshb/MnJt8F55o=
X-Google-Smtp-Source: APXvYqyZpeeM6tRlWGZbyX1HHA8ZW9ZHAAJzRT1YwNT/f8zYzZwm/vpcR2lGLwlfXCCR+K/roxWZxg==
X-Received: by 2002:adf:f00d:: with SMTP id j13mr21905812wro.178.1559665816776; 
 Tue, 04 Jun 2019 09:30:16 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id y12sm15108176wrh.40.2019.06.04.09.30.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 04 Jun 2019 09:30:16 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v4 09/13] arm64: dts: allwinner: a64: Enable IR on Orange Pi
 Win
Date: Tue,  4 Jun 2019 18:29:55 +0200
Message-Id: <20190604162959.29199-10-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190604162959.29199-1-peron.clem@gmail.com>
References: <20190604162959.29199-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_093018_881385_88FCEAAA 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Sean Young <sean@mess.org>, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKT3JhbmdlUGkg
V2luIGJvYXJkIGNvbnRhaW5zIElSIHJlY2VpdmVyLiBFbmFibGUgaXQuCgpTaWduZWQtb2ZmLWJ5
OiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+ClNpZ25lZC1vZmYtYnk6
IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+CkFja2VkLWJ5OiBTZWFuIFlv
dW5nIDxzZWFuQG1lc3Mub3JnPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1
bjUwaS1hNjQtb3JhbmdlcGktd2luLmR0cyB8IDQgKysrKwogMSBmaWxlIGNoYW5nZWQsIDQgaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1
bjUwaS1hNjQtb3JhbmdlcGktd2luLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVy
L3N1bjUwaS1hNjQtb3JhbmdlcGktd2luLmR0cwppbmRleCA1MTBmNjYxMjI5ZGMuLmUwNTE5MWI3
MWFkZiAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWE2
NC1vcmFuZ2VwaS13aW4uZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1
bjUwaS1hNjQtb3JhbmdlcGktd2luLmR0cwpAQCAtMTgwLDYgKzE4MCwxMCBAQAogCXN0YXR1cyA9
ICJva2F5IjsKIH07CiAKKyZyX2lyIHsKKwlzdGF0dXMgPSAib2theSI7Cit9OworCiAmcl9yc2Ig
ewogCXN0YXR1cyA9ICJva2F5IjsKIAotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
