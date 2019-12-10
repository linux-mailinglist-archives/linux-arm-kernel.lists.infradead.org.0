Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 963CC1189AD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 14:25:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wYFCeaWfr8rrjXVOzLPBBFuZDVlSe8uewS+PZd5+SW0=; b=RsMIj3r+O72PyAD4iN8DKPQSEr
	MHGG0MiXoJi9onBhqh6XDX6nz/zZzxS92NlGKgQMv03Mx78CFPWFeOvh64whhge43vZPAnjioHlQc
	+/bd2/HR0YR00C0hct+ui4zyvTQ+DF/pWc2F16MUcXJNe8XRlgALbD0wMv+1WGIOdZapO8g4MZhHO
	7FlngIdHomuBaO89Qde/2VkhGB7PuZMkWVn/KDDSnbL+llDgVp8ZmSdJ8980uafsjEMr4qkAuPnOH
	Bx9R2Rmj76ccmxJJZpI8jzLlyGTuToROf5EvMt5Fn+uphYOppmQtdHRHNEtnciIiHLC/HxzYNJZEA
	K8Kj9AaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iefWO-0004Tc-B5; Tue, 10 Dec 2019 13:25:48 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iefUS-0001X9-87
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 13:23:50 +0000
Received: by mail-wr1-x443.google.com with SMTP id c14so20073200wrn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 05:23:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=RT3uMjCTNXctwL3ki3eO315EjLjo+qSfc5PPzuNqLtA=;
 b=X+yYutPi8yUZOG9C1Uw+ViETHLH7JlmlE4bbqUKhFZxe/qSsACpb1gliLB9onE0nSF
 BXKyhVL543QJwkw42Mlbk2e+x2gcS3ACPuCKe+5yWJ1FOMOWiMTkkKv4Vh7WckEjpuIs
 ZPkWbBuvlz4JOA+n96j27KoW4RYmOzwuhq+QmqrFiRhYR2UabDNIn/w5AdceltKC9MA0
 LYCzrjY05Bgg4VSeNT/5j1Zz7AYomHaJRaa9rTR7KMDwk1PihKSewMLhEnRUjhDdtMia
 S56WwBMxRWuTwsSF/GDSaIik0pCCsqfNqlYwycXLSErWgXzfqSSVcm3+gWyX8a28Y/Ly
 ejXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=RT3uMjCTNXctwL3ki3eO315EjLjo+qSfc5PPzuNqLtA=;
 b=QAfGtMnytQjAbD/5YGCuzxsLCnpeCKEoGzZ9BEWPI5HHKZx0lUtksrN13uJn4opy+Y
 jaCA+HvJseG19G2SwDBTSt/WZu07s4g5nlcl0l1SWkC2g3RKBCn16neqi7KBDrQOCZmS
 DeEuMTm+ymcd9DZegw1qxk2Nt7Zcm8rBtOQN89AWi/nwj7vj2a2dWt6Vgh7PDKN2ryTp
 Jiu+SpTDX/bAdzF3ABSlJZiS8JYLUpxj7n6+XWRD0dF9vVOCafs7d36BgazxP7IxYYCj
 A1uL4jPXoKLhKLyewcjDom577nCWw/ttffdC0rKz+/dOGia+4jvg0n+4cUR15Q8QvC+i
 IIdA==
X-Gm-Message-State: APjAAAVJlhb6vbaItnNhnfEwoloN7op4CLAjRjpYzEVSaPR7XkEkARk7
 B5u5wjh5Fvxb5chcpF1i+JQ=
X-Google-Smtp-Source: APXvYqwKZVP2WLlurttkV9HKNZIclds/Eaq4/8StTYfjsDUqPOqlIhn2p6BQSFtCn0/F0wZuNKhEVw==
X-Received: by 2002:adf:e984:: with SMTP id h4mr3168677wrm.275.1575984226392; 
 Tue, 10 Dec 2019 05:23:46 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id s82sm3101680wms.28.2019.12.10.05.23.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 05:23:45 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 09/13] phy: usb: fix driver to defer on clk_get defer
Date: Tue, 10 Dec 2019 08:21:28 -0500
Message-Id: <20191210132132.41509-10-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191210132132.41509-1-alcooperx@gmail.com>
References: <20191210132132.41509-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_052348_434223_27C73EEA 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alcooperx[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
