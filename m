Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6355133B1A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 06:26:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m4Knv7z14lS960lr1x8Fe2dB5hbW7na3ShttahBRIh4=; b=lEICrZzBzzeJFz
	Zn4LVEBUV/CIxlmy646RXN0dSf94lyJKqiN5tYJMVNgjYjp+cVUHU2TeZ/+qJyJr2EfI1gzgnLuKt
	+zjjXM1s7hAqoqfyVetXArzxK5XwkopaxM2gTHJx8r6aKmXIP8rk5LbJ7G1S2iAgl7i4qDM2oyZVA
	xT4v4ugOx8ApVYo2nJTisFi66jR5VJGrX9Xfa3HW6anNEcfUcbEDwUIkEKTRUV1v4mKoMz9YMi7JN
	Xneo/7/w8aTJFSRzNhfzlyam27mbj5EticWhnICDb9ehzYcSteCNOKiIGc/gasmE+ZY4TL57uSTNi
	TbsxTMyxQaaHT0FSi6cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip3r1-0007il-Hi; Wed, 08 Jan 2020 05:26:03 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip3pF-0004xG-Pq
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 05:24:17 +0000
Received: by mail-pj1-x1041.google.com with SMTP id bg7so557569pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 21:24:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UOwyKJvK30gkDautsCvwyHXlhtr89ohJP+HqIMRnEEY=;
 b=QLx9yX4oKgUhsf9zqBiMKi9PC3cJUGptpG/rsIeA0xAbFDz3AFhMYQndfD4e5TiiA5
 wduA+xP76VAH3pTE/Y7N2zNP97+RQWMddxzeUn/Nf0v4LIAyD01x4QhbaispCA389giy
 7q8R+qc9ynzewq3J8aV43Z09BdUAkc5nDf8Fg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UOwyKJvK30gkDautsCvwyHXlhtr89ohJP+HqIMRnEEY=;
 b=RO9x3JEUDoipo6Wx+JAScdAYiX3EQ4ZDcgwIE29fEZH8Wht2HU1nUTCq7LlyqUZZYj
 JSIWiAWUAVhI3fTR4y1xJXjMwaMkBfuUgTEvH4ZxNbPxFgquTb+3L2hOCp+ly2kxPXKR
 CiuK6X40YvXxCJ0DJH8LYtN9rF0pOcZvptT6sjTfnOWIp0NAUQYGRN/34kgbK2aw1Qls
 TkVpdDNB0MJgZvZYs7hcaLp4IuJbZwanXbqLk4nhi6WzQ8VB7iHpGSVPjzZzI8VRlpP/
 TB5C1bsxiXJDRsADZrzrHvNxayjyYEFlM36CAiKNXRYOljrAro35V+W04zsTXTyOLd9a
 BhBw==
X-Gm-Message-State: APjAAAVqclJgBt/qDzBdXlgM+wpK5+TFmvNoCuOUy+mBaFc+xc3fAivL
 /0rvYRs8yYO9DElQZiIAdIvBBQ==
X-Google-Smtp-Source: APXvYqyP94Ucu5iILCPq19i7mowizjkSB4O/xb8qsx3dYRf/q3ysQY9apimu4OZEq+YRXwTIHiTnjQ==
X-Received: by 2002:a17:902:265:: with SMTP id
 92mr3326908plc.188.1578461052777; 
 Tue, 07 Jan 2020 21:24:12 -0800 (PST)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id n24sm387505pff.12.2020.01.07.21.24.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 21:24:12 -0800 (PST)
From: Nicolas Boichat <drinkcat@chromium.org>
To: Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 6/7, RFC] drm/panfrost: Add bifrost compatible string
Date: Wed,  8 Jan 2020 13:23:36 +0800
Message-Id: <20200108052337.65916-7-drinkcat@chromium.org>
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
In-Reply-To: <20200108052337.65916-1-drinkcat@chromium.org>
References: <20200108052337.65916-1-drinkcat@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_212414_045292_343397C9 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel@lists.freedesktop.org, Steven Price <steven.price@arm.com>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For testing only, the driver doesn't really work yet, AFAICT.

Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
---
 drivers/gpu/drm/panfrost/panfrost_drv.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/panfrost/panfrost_drv.c b/drivers/gpu/drm/panfrost/panfrost_drv.c
index 48e3c4165247cea..f3a4d77266ba961 100644
--- a/drivers/gpu/drm/panfrost/panfrost_drv.c
+++ b/drivers/gpu/drm/panfrost/panfrost_drv.c
@@ -591,6 +591,7 @@ static const struct of_device_id dt_match[] = {
 	{ .compatible = "arm,mali-t830" },
 	{ .compatible = "arm,mali-t860" },
 	{ .compatible = "arm,mali-t880" },
+	{ .compatible = "arm,mali-bifrost" },
 	{}
 };
 MODULE_DEVICE_TABLE(of, dt_match);
-- 
2.24.1.735.g03f4e72817-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
