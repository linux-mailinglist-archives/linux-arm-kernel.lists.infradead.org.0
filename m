Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7424193959
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 08:09:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mGuEvHZv1L+M0dMIlVZ6itkfnsMd82VgpbG2K33L7Xg=; b=s/d7/gc5NuopuMfqIqohoZThom
	4G136HNkbN4qz8rEX0h7uHjXjyyunumFb5UFAd5rgUPI9leD0DWtsE9YWuZ9lTbUnSM0E6DFPVKag
	bZRK/so9YFx+0KmWmywgFAUSD11lizgpIvXJV2Nsm9f2dyniNLn6yLOtW0NZCrWsqetn2nn5V+0Nq
	vwxDgE45CvOGxWSLvb4Ss5Bhh52AkqrUUjexFZAjMxFRV4YOfzR6z2Ghdo1Rm2xhcTBUK9H76jzf5
	nzQkj2MbcWbpd4NvCP9Ssku7iBuxAe1rKaUrxsTnjQziuiSYU9tyzm20ypLBSjckSMJ+1tXVZelSk
	jW4dlSig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHMdO-00005G-Ua; Thu, 26 Mar 2020 07:08:58 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHMcf-0007ym-7V
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 07:08:15 +0000
Received: by mail-wm1-x344.google.com with SMTP id g62so5799085wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 00:08:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=usE/ys/z8ZrEvebTD5q/zOIViwN/Qr3bNxaYZNYeDg8=;
 b=Giw12tZAymXDFbxQpbLEzz6w7r0O1eeZFHByJRUEwF4s3fssUnmfVK37HovY8MSG8g
 aB0CYd0nDge3IebAXKcKCn8DL9FO01QrQqv4ZQkSxBXz+3/jUAxHH7CjlMq4PusOsrRa
 AIAUX+paTRcoYbFPrM7u3LFEUrqEoZNo+GqDI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=usE/ys/z8ZrEvebTD5q/zOIViwN/Qr3bNxaYZNYeDg8=;
 b=ery5A4lSFd3Zy8ys4yjHTxI4poSkHrJPAEaZgQP9r3gniKpl+ofCDIBv7k/6wJ2tbg
 Nx48gNYUUZR00vb5+d727iGq3LvzfiSE2Mq2WPWbqm7/f+FCDAQBjTUb1NHjJQ7QfEjA
 R/IY7lHJK8nrSmRf/gn91+/GR+mxZ07SpjNmp4j7FGT/Uk5RJtaU3AjB2GJC06LMo2HU
 V2qTHgywr6O5GWJcKv/yAIsbxyy82QPkp5OTI6Qa3cHvjR5mqxn8vnkFhz+tDRB5EG+K
 5g/U9Z0Za6DiGyHkxIGunJk3uONDuIxgQP3oQswO8dvArgvG2js+6sefGNJB+DM9B1lU
 6g5w==
X-Gm-Message-State: ANhLgQ1EBfx8w3DdxPxkNQMoQTEFriRrgrUptKyKjRuPWuLYN3rZv9D/
 ZrlIvC1gjrJUjn6Oe+7KathFKA==
X-Google-Smtp-Source: ADFU+vtzb9hNfI+ksv6e+V0DXN1iXSfAh7FZDOiwNKmj5UxnWCz/9VDiia75rLzG0tKw11MssM2Gsw==
X-Received: by 2002:a1c:8090:: with SMTP id b138mr1644314wmd.55.1585206491567; 
 Thu, 26 Mar 2020 00:08:11 -0700 (PDT)
Received: from mannams-OptiPlex-7010.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id u8sm2129446wrn.69.2020.03.26.00.08.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 26 Mar 2020 00:08:10 -0700 (PDT)
From: Srinath Mannam <srinath.mannam@broadcom.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Andrew Murray <andrew.murray@arm.com>
Subject: [PATCH 3/3] PCI: iproc: Display PCIe Link information
Date: Thu, 26 Mar 2020 12:37:27 +0530
Message-Id: <1585206447-1363-4-git-send-email-srinath.mannam@broadcom.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585206447-1363-1-git-send-email-srinath.mannam@broadcom.com>
References: <1585206447-1363-1-git-send-email-srinath.mannam@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_000813_307110_CB40E114 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pci@vger.kernel.org, Srinath Mannam <srinath.mannam@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add more comprehensive information to show PCIe link speed and link
width to the console.

Signed-off-by: Srinath Mannam <srinath.mannam@broadcom.com>
---
 drivers/pci/controller/pcie-iproc.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/pcie-iproc.c b/drivers/pci/controller/pcie-iproc.c
index e7f0d58..ed41357 100644
--- a/drivers/pci/controller/pcie-iproc.c
+++ b/drivers/pci/controller/pcie-iproc.c
@@ -823,6 +823,8 @@ static int iproc_pcie_check_link(struct iproc_pcie *pcie)
 #define PCI_TARGET_LINK_SPEED_MASK	0xf
 #define PCI_TARGET_LINK_SPEED_GEN2	0x2
 #define PCI_TARGET_LINK_SPEED_GEN1	0x1
+#define PCI_TARGET_LINK_WIDTH_MASK	0x3f
+#define PCI_TARGET_LINK_WIDTH_OFFSET	0x4
 		iproc_pci_raw_config_read32(pcie, 0,
 					    IPROC_PCI_EXP_CAP + PCI_EXP_LNKCTL2,
 					    4, &link_ctrl);
@@ -843,7 +845,14 @@ static int iproc_pcie_check_link(struct iproc_pcie *pcie)
 		}
 	}
 
-	dev_info(dev, "link: %s\n", link_is_active ? "UP" : "DOWN");
+	if (link_is_active) {
+		dev_info(dev, "link UP @ Speed Gen-%d and width-x%d\n",
+			 link_status & PCI_TARGET_LINK_SPEED_MASK,
+			 (link_status >> PCI_TARGET_LINK_WIDTH_OFFSET) &
+			 PCI_TARGET_LINK_WIDTH_MASK);
+	} else {
+		dev_info(dev, "link DOWN\n");
+	}
 
 	return link_is_active ? 0 : -ENODEV;
 }
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
