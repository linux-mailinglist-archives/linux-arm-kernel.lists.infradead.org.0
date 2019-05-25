Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C5F2A54F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 18:25:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2UIVy3KONoRPaQF7lU8v8rQ93MJGSahu+3G5UQELau8=; b=ViSUN7gmCVagX2
	IQTcdmyGQWc5UWmYp4nCinvW407JLSfKxBvhQM3U+LWuDrRK0MpsldnDbUHsdHjE/YRFGt7Pojglr
	g3XiVYDqp4wQW66BFIPbCDMr4ESR8R2Ebbf+mgFCyBqDUFBsY2yp9D5++dg1gWemA4UGve+WZ6YxN
	At+TQFdI+ucrLxwzYdjHtGRz5ym5/B0MW75AEnNIweAY32U7V6gZ1XYDp6yAwswddyEXW+XSRhO1R
	tMUlnhUqYFykquX99nbECnd2IfWQfZv/pBnTYoIrKLEnDbtTlncELBMTAkUyPScXx9bvKlQ4DpKLv
	9b9jBFl2v0KqwNunxQog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUZTe-0007Yy-Mh; Sat, 25 May 2019 16:24:58 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUZSP-00060Y-U0
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 16:23:43 +0000
Received: by mail-wr1-x443.google.com with SMTP id r7so12779385wrr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 May 2019 09:23:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mz71BHS9e6D0Hy+3p0/CgKuWt1VgJzq7zAM5T7mHY2o=;
 b=jUrGqIVcaMBSQcLPCUQrRz5m5HvJXlyQ468xiszvGOrzlbZiJta79v1MI4OHS9BrJw
 slJRfaQIZKHfawdD+VE64WDHAPRL8caZPMvUxY+fajXRhXJTwKAflma5EW4AsMaWbWy/
 cpt652xyVNGp12XtgtneQfp0kk6rTic5HQrz5e4nzEcg6RBBUSY+ml1QHvBDYRVmC0wT
 3GdZg17rdLHujZf4MJlVc2IGS1SceA3Aibdddsw19d5+Dd70wtQAOCVOteyeTCOaxbpg
 J+mjNfS1QZ5ksoqvUxq++X25DwHkdiBEra11GEMmjPQWPi8wHwQOPRuz9TWYguyOY4sE
 DNdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mz71BHS9e6D0Hy+3p0/CgKuWt1VgJzq7zAM5T7mHY2o=;
 b=MgQPP56KpCfRYcw0fXOOprA+VTA6WKKc2KCwhoO2BQHKSOqajPG9n2suy/aePKoi/F
 A9D/HY1Y2AqNei23mPR/+ggwuuW8HXe/5W0STQAI6l1X4qRUh65r6AkDAYcg/4CN0aFt
 t5Taopd2yoTKcHrCZLWo1muC8f6N+1w88fHGuPCCb2NT7sle3L3wDmql75oSRmGJy/mN
 ZU4gAIMnqXfreeKjDJpVk1XOs4Wil9igoLKXe6+C06aEcZytAiigu0E3fsg0eWB8VDSj
 KXCNcci/CpljlsrD1hLGUeUDG+tpjgEDYrpqxVRKNhGSf4btbGREgbkdh519CuNtG/Wv
 W+XQ==
X-Gm-Message-State: APjAAAWt4hmt6pl6vfgB4GYj1JeFIbX7gmZLBQIaeYMvcErGenGX6uZd
 DKsBloDVCg+NJVGyNivU1Ws=
X-Google-Smtp-Source: APXvYqwOH/zwDPb6sFjgA3noRqLyg0IS8DDT4t4lmVfw9uSbTr3HjpeHNuNaUkAdH15jvnlEPnlHJA==
X-Received: by 2002:adf:f9c5:: with SMTP id w5mr37265578wrr.26.1558801419314; 
 Sat, 25 May 2019 09:23:39 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id k184sm13194409wmk.0.2019.05.25.09.23.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 25 May 2019 09:23:38 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v3 7/7] arm64: defconfig: Enable Sun4i SPDIF module
Date: Sat, 25 May 2019 18:23:23 +0200
Message-Id: <20190525162323.20216-8-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190525162323.20216-1-peron.clem@gmail.com>
References: <20190525162323.20216-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_092342_114679_26D1FD80 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsd2lubmVyIEE2NCBhbmQgSDYgdXNlIHRoZSBTdW40aSBTUERJRiBkcml2ZXIuCgpFbmFibGUg
dGhpcyB0byBhbGxvdyBhIHByb3BlciBzdXBwb3J0LgoKU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQg
UMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KLS0tCiBhcmNoL2FybTY0L2NvbmZpZ3MvZGVm
Y29uZmlnIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQg
YS9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnIGIvYXJjaC9hcm02NC9jb25maWdzL2RlZmNv
bmZpZwppbmRleCBiNTM1ZjBmNDEyY2MuLmRlNWI2NWQ0NTMxMSAxMDA2NDQKLS0tIGEvYXJjaC9h
cm02NC9jb25maWdzL2RlZmNvbmZpZworKysgYi9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmln
CkBAIC01MjYsNiArNTI2LDcgQEAgQ09ORklHX1NORF9TT0NfUk9DS0NISVBfUlQ1NjQ1PW0KIENP
TkZJR19TTkRfU09DX1JLMzM5OV9HUlVfU09VTkQ9bQogQ09ORklHX1NORF9TT0NfU0FNU1VORz15
CiBDT05GSUdfU05EX1NPQ19SQ0FSPW0KK0NPTkZJR19TTkRfU1VONElfU1BESUY9bQogQ09ORklH
X1NORF9TT0NfQUs0NjEzPW0KIENPTkZJR19TTkRfU09DX0VTNzEzND1tCiBDT05GSUdfU05EX1NP
Q19FUzcyNDE9bQotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
