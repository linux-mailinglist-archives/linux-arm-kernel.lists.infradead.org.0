Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 206382AC6F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 00:26:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CIKnLdKk5zgj3U30v71bEzahSJ+5aKJmbsbwpqbI0zI=; b=Z3AAq9Gby0qx3P
	GGcunO++FpXyxDd7ymdpbgTuRc8qOgq/KeUvi6JWtGoenWii/XIXS0PwOH+zoLdWbU849XYQ44Tyr
	uj93Oe4FVijYP2Qsa7uOlZuLYYLWd4QwL/vReC1rH+ob/P7EUxz2yetld2H+zyWccodNdov/xTLCv
	JayIVm+Muoc/PTk8DZKqWR3Gcr4wUB5XP3fVoXcDXrJ+e606C1mOSeNiImoe+OZxM1EjYuGupq01M
	tKx+asirwH5Uf6NvmdjtssOHnEF9bFHZ1iJdAEjogKipZ7V8F12+2Ckm14QVp7zgQ9cMbw8bkQofE
	+YWAhj7w2+XgQRBp+mJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV1ak-0003wa-IK; Sun, 26 May 2019 22:26:10 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV1aQ-0003eL-9y
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 22:25:53 +0000
Received: by mail-wm1-x343.google.com with SMTP id 7so13953308wmo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 May 2019 15:25:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tSjq6cIX1DBnOadzNlGlYQSWPqtvc5vqU2shjVT0VqA=;
 b=DyTp61SP0Ajg+qJr5HMvRFP8uWUstjPCGfpVpH1DtwYvX6E8jkV3KDuQ7XAKg0rHPJ
 kwFIoJheoQUBARMO10TNkMWn53v7M7fEhyxHghmvvaFptYKopQQkHvf5nsEsVHpK1JJA
 8Zp/vwbQdBxS5KiY14QdI5A5noMG1ipZLgb97xgv+RdmHuenldFZhp1EL639uWmc9zd6
 Ea58bLdfhEfG+KgE5EXgFphIwd/8hz4SBhzo1q0AUMzAZw4p7JtwLvaA/iUO+El/jUb4
 RA23qWDcUOTs1/LVYXkSlFjfyF6WjGd5G25vzWCYpl4o/U2yyymxSbN/qf/SnHVNulmc
 CoJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tSjq6cIX1DBnOadzNlGlYQSWPqtvc5vqU2shjVT0VqA=;
 b=kJPKneSe0utaYFWU3Odwo6D4iV4ZgraFnJyHwmgpiimCol0H+s5IeOTg7bZgirirp9
 w69pTIg0SJCd+mmV7FxPvM+dEg97cBHLfDfLSHqznP1/8fYvQ6rhCVDfakbVzw3CulVO
 9RL62rjeQe7otI3mvlAvYY4QAntGmRRzfptiwaIwoXsaZFH06h6pRX7+g84GkbP5k1yj
 aHmeIwWelyoOqZNWlHxqtfuFgrZqK9vkK7T0So/ZEL9dBbKBKPpHZXpCdkPM804zbsEv
 6+CPI1Jy8VHKUrC3ExX4OGV4Bkuswkn9lr37dKRIOb6Ra6xAwKBPfFM/k686Ed79HsMT
 GaeA==
X-Gm-Message-State: APjAAAX2ihDzEUT8tc4zMZNIjmCVwRNQ50gwU6XZMWQgsYiVEfBPnbrL
 BjOnfehsh4QZmr6wgyiVnRo=
X-Google-Smtp-Source: APXvYqyD4ft6i0D2tWp18wsIxIDnCCerDip6b9YYpNjRi+NTD88o8jCyOH5HkT8sp25ZVDrosHjoPA==
X-Received: by 2002:a1c:1947:: with SMTP id 68mr7674843wmz.171.1558909545865; 
 Sun, 26 May 2019 15:25:45 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id o20sm10368398wro.2.2019.05.26.15.25.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 26 May 2019 15:25:45 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v2 02/10] media: rc: sunxi: Add A31 compatible
Date: Mon, 27 May 2019 00:25:28 +0200
Message-Id: <20190526222536.10917-3-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190526222536.10917-1-peron.clem@gmail.com>
References: <20190526222536.10917-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_152550_642108_45D25306 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsd2luZXIgQTMxIGhhcyBhIGRpZmZlcmVudCBtZW1vcnkgbWFwcGluZyBzbyBhZGQgdGhlIGNv
bXBhdGlibGUKd2Ugd2lsbCBuZWVkIGl0IGxhdGVyLgoKU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQg
UMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL21lZGlhL3JjL3N1bnhp
LWNpci5jIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL21lZGlhL3JjL3N1bnhpLWNpci5jIGIvZHJpdmVycy9tZWRpYS9yYy9zdW54aS1j
aXIuYwppbmRleCAzMDdlNDQ3MTRlYTAuLjI5YWMzM2I2ODU5NiAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9tZWRpYS9yYy9zdW54aS1jaXIuYworKysgYi9kcml2ZXJzL21lZGlhL3JjL3N1bnhpLWNpci5j
CkBAIC0zMTksNiArMzE5LDcgQEAgc3RhdGljIGludCBzdW54aV9pcl9yZW1vdmUoc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqcGRldikKIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHN1
bnhpX2lyX21hdGNoW10gPSB7CiAJeyAuY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuNGktYTEw
LWlyIiwgfSwKIAl7IC5jb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW41aS1hMTMtaXIiLCB9LAor
CXsgLmNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjZpLWEzMS1pciIsIH0sCiAJe30sCiB9Owog
TU9EVUxFX0RFVklDRV9UQUJMRShvZiwgc3VueGlfaXJfbWF0Y2gpOwotLSAKMi4yMC4xCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
