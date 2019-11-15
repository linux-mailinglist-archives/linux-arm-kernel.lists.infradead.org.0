Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6CEFE531
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 19:46:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wYFCeaWfr8rrjXVOzLPBBFuZDVlSe8uewS+PZd5+SW0=; b=ugKJ7OsA+zzQJNtfIPNp2Hp3jP
	vCjpn+LOgQrvfC2xQxp9EGKo+ZhzkF11854AYxcJcvZcXkUCDR5EKHOL4JW+Nkwx5gTNDO7OZY1bf
	VA2sJrHeNdnYVdxulY4a/poAp4Y37Wgcxg8ZtRjkmvjd6tdkG1LkMMI+kDArpuneEVUhNn8/s4J55
	Dsf/8yhLDrAkcd6cQ8gsHpKzaKrxGFN0p1AzN+olsx9dnBPb/9j3QzEBSLo1wUlSUwVyM6aYo2fff
	aED8FqVI4gVT1atdiOrTOGMxD07iys1DshHICRdEl+hB/EH3YLjW3HFYPaDk77FNid2VEuB/YceP3
	nTGs+NUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVgbj-00075f-Ac; Fri, 15 Nov 2019 18:46:11 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVgZT-0003ia-AM
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 18:43:54 +0000
Received: by mail-wr1-x441.google.com with SMTP id n1so12020569wra.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 10:43:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=RT3uMjCTNXctwL3ki3eO315EjLjo+qSfc5PPzuNqLtA=;
 b=iYDe8W6LdvP9DjVd6RsD4kC6QCPG2iOBqAvsM7kyB60OiQXRjlFCGKm7sLWB/FxO9V
 CgwGMyXZTq9Xgz8sYEWY2nEn8qalf/IQxoujraqnEVco/XiP8p0ujp9fOrvW6n6wz32p
 8wzjaJuoG40z1SLiVg9inXiZhR0l/2NCMb5mI1wk1paN96/j9X58n/3Y6e2BBwY4WeF9
 FaG82siK+7rEkDhwy9kKWajCmTwPzD4/VBwltdVImfWs3SAGHAIqvPgUCsCMdn5Ru6iX
 3h3F/dzzc6MsJxC9F97Vg/KWKO4vxx+kDlRL4UfXNCZF2fOMgMOk9XqdrejhJXiuSjOK
 KDtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=RT3uMjCTNXctwL3ki3eO315EjLjo+qSfc5PPzuNqLtA=;
 b=oBt7mjQSiXcg6q2wsr8ZIy/lqY4265elgLiube/Uqq8A3upsy3S/tdUD8A7URGYonm
 U70OWbajE7ZoTziJitIOUFu6bi4VwIMxzHyvXkDhN2i9+wgCfSWndztwg5FKnHMkQ9eI
 QNvaB6NwoHYusDm3YSayhPXhtefaJrnQBfZOS+othhmadZ/95znQa5DT0palC2QXNlbS
 f8ZANTuZBtE8z64PWNKosbm97vgFSS5ST37XhVm2MR/3PxVGfhkcpsnFmUKKvEm+4vTQ
 oVP2zKWOerj4BiNtfn9AoHvIifb7vWMonhN80J7SExdEzaPQPWr8qnrhQFkVMDpCRVd8
 IQ9g==
X-Gm-Message-State: APjAAAUu62J9pjgwi8ukipQwdTs4V5+St20ZwcqrPCQl3u7rD0RkI1Vv
 et2+eatMZ7l0Z1NUl2fRYE8IphtXFX8=
X-Google-Smtp-Source: APXvYqx1O7NWz3OUqruHqZXfbPWuSF7kLyTjWS2L9IkOwef3woCiL3C8rFG9rh07B5vhajz2ChFeNg==
X-Received: by 2002:adf:f60a:: with SMTP id t10mr16735033wrp.29.1573843429463; 
 Fri, 15 Nov 2019 10:43:49 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id g138sm2620989wmg.11.2019.11.15.10.43.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 10:43:49 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 09/13] phy: usb: fix driver to defer on clk_get defer
Date: Fri, 15 Nov 2019 13:42:19 -0500
Message-Id: <20191115184223.41504-10-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191115184223.41504-1-alcooperx@gmail.com>
References: <20191115184223.41504-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_104351_373915_F818B116 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alcooperx[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Al Cooper <alcooperx@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Handle defer on clk_get because the new SCMI clock driver comes
up after this driver.

Signed-off-by: Al Cooper <alcooperx@gmail.com>
---
 drivers/phy/broadcom/phy-brcm-usb.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/phy/broadcom/phy-brcm-usb.c b/drivers/phy/broadcom/phy-brcm-usb.c
index 5f7bfa09494d..c82d7ec15334 100644
--- a/drivers/phy/broadcom/phy-brcm-usb.c
+++ b/drivers/phy/broadcom/phy-brcm-usb.c
@@ -341,6 +341,8 @@ static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
 
 	priv->usb_20_clk = of_clk_get_by_name(dn, "sw_usb");
 	if (IS_ERR(priv->usb_20_clk)) {
+		if (PTR_ERR(priv->usb_20_clk) == -EPROBE_DEFER)
+			return -EPROBE_DEFER;
 		dev_info(dev, "Clock not found in Device Tree\n");
 		priv->usb_20_clk = NULL;
 	}
@@ -371,6 +373,8 @@ static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
 
 		priv->usb_30_clk = of_clk_get_by_name(dn, "sw_usb3");
 		if (IS_ERR(priv->usb_30_clk)) {
+			if (PTR_ERR(priv->usb_30_clk) == -EPROBE_DEFER)
+				return -EPROBE_DEFER;
 			dev_info(dev,
 				 "USB3.0 clock not found in Device Tree\n");
 			priv->usb_30_clk = NULL;
@@ -382,6 +386,8 @@ static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
 
 	priv->suspend_clk = clk_get(dev, "usb0_freerun");
 	if (IS_ERR(priv->suspend_clk)) {
+		if (PTR_ERR(priv->suspend_clk) == -EPROBE_DEFER)
+			return -EPROBE_DEFER;
 		dev_err(dev, "Suspend Clock not found in Device Tree\n");
 		priv->suspend_clk = NULL;
 	}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
