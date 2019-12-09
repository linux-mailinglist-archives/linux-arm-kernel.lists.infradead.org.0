Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2203A1178CF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 22:47:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nc+AtbV5aSaYV6OM6MnSGAcrPG3VAXIXyShXeOZzDGY=; b=HWKYPrJEBR0bw7MS4tzDuYfgJu
	d+zuKiMxQhVNrvojs2DY59LjpRB6k0c1fjuAQsbh9s4bW+/ssRKjvg+XjDMEB2J9PZLEE3ELhp+uh
	WlOpXH2+Zx2w6m9lV4c+F9Jp1RHNh5I4Wj9L2CdNM+xo5UDPO0GDke90ymdQNo3EOHqVxRDz1fQUi
	J8rJKshw4jAhgtzzcdexunFw04MW/HQrKiyzluis94DkoNoBUnFbafmvdVHF9MYgFPkMBkco3lQjR
	6Bzy1rFCZogQLsrnt+56JbL93towrJzfASWcJT6uktA9qpeKyoNEaTv+hSZZHp0VFEH/YVIFDhye9
	DilAd3sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieQsF-00044J-SH; Mon, 09 Dec 2019 21:47:23 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieQpH-0008JH-FH
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 21:44:21 +0000
Received: by mail-wr1-x444.google.com with SMTP id b6so17864131wrq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 13:44:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=wS4OYwLXLEvBtINm/7GwVk3W/9nI5ZzRdQ3AYe/w/RE=;
 b=r0A9QKGNMVItckScTkm0GdDW0YuEXqS+mWFFB49B7SLYshVDaeyKf4ZpB4QeGxE8XA
 5+nzpikrhCWpn+n1wHy8QlbOKgjiybhyB/dzbwnzY2gYFAeo/fY7yPapKGimk+rHc/Sc
 3I5KpwwbRsdQL8L4Va6rwrhwU0yqm5ubZhCMe8VtHNQvuo5WvGk8ysw4SblV6o2BZbq+
 X6yWD1FnuJxO2C8d1eAOSpUqfsxAGzTgmfQGczuI4fMIl2EEO7uCu7llTkhKRzE3GYXq
 /rw2V3pdlUnztCTkd7W6qXiGTiJnqNlz8r6kHc8gvZbOHQwemA2JdDbwIfd+JTWhuq/+
 AxKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=wS4OYwLXLEvBtINm/7GwVk3W/9nI5ZzRdQ3AYe/w/RE=;
 b=OF68u5CLLOQUvxZ2v8jb/vAS1UR67jkmL1nrAb5qo6PWEvWlC0flAG6HyK5gNkFyxv
 MTMKtJfEaugjYEDy7nChNo11FahxUanShr70c1y0qkTesFbXKn2lfr4aQxlqK/ZK/k8z
 Q32D3zVkYqtssTnT4oLIDxr1fdjzbiU7QECStOd5zfZnTL9t5AkRHOLzw2ZAr/QB7ghz
 bAfTEs7abRdINnbeOcHF7RtLpSPxVZFxDKDBNJmIdQsAG+Vx3RWe/qhu2yhBKh1n+vlY
 fBDcvqDfpi4kweeBRAYSHpCgquGmoYEcMhto/+UDiBsbVOWbDTscyeotnPmPcQrh0gio
 /o2g==
X-Gm-Message-State: APjAAAXu8aeM0lC17Ie2bcnE1rxWTKrdL5wVn/iTBNmdDm2NmKUR5mwl
 nMB2Q6pm9zJbuOHm+wIVldI=
X-Google-Smtp-Source: APXvYqyu3cOe/0n4P9H5DreM7NJRC8ZUn5q2kGRq9jniAUbcNpT+ByFsYPc5sfvUpG+LJIoEcxidHA==
X-Received: by 2002:a5d:66c3:: with SMTP id k3mr4118184wrw.370.1575927858126; 
 Mon, 09 Dec 2019 13:44:18 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id z6sm757714wmz.12.2019.12.09.13.44.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 13:44:17 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 resend 12/13] phy: usb: USB driver is crashing during S3
 resume on 7216
Date: Mon,  9 Dec 2019 16:42:48 -0500
Message-Id: <20191209214249.41137-13-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191209214249.41137-1-alcooperx@gmail.com>
References: <20191209214249.41137-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_134419_573109_F3718632 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

This is a result of the USB 2.0 clocks not being disabled/enabled
during suspend/resume on XHCI only systems.

Signed-off-by: Al Cooper <alcooperx@gmail.com>
---
 drivers/phy/broadcom/phy-brcm-usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/broadcom/phy-brcm-usb.c b/drivers/phy/broadcom/phy-brcm-usb.c
index cc5763ace3ad..1ab44f54244b 100644
--- a/drivers/phy/broadcom/phy-brcm-usb.c
+++ b/drivers/phy/broadcom/phy-brcm-usb.c
@@ -543,7 +543,7 @@ static int brcm_usb_phy_suspend(struct device *dev)
 		brcm_usb_wake_enable(&priv->ini, true);
 		if (priv->phys[BRCM_USB_PHY_3_0].inited)
 			clk_disable_unprepare(priv->usb_30_clk);
-		if (priv->phys[BRCM_USB_PHY_2_0].inited)
+		if (priv->phys[BRCM_USB_PHY_2_0].inited || !priv->has_eohci)
 			clk_disable_unprepare(priv->usb_20_clk);
 		if (priv->wake_irq >= 0)
 			enable_irq_wake(priv->wake_irq);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
