Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A345EDCC76
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 19:18:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=veK634EwRGJDPD/sWGzKgwJcF725fxARLuyRjRpeMTo=; b=srB
	yQJqiaXoi8pfuTT9jS+egw/+jMdiB2IqUb/DuOBJI1omemf35UjOIAtcvmO0Lsc1fL3AotToopce3
	aHyp2LzQ7903pHCIaAv4EBPAM1NX7/XqpB24TJwgoCRwo2qLiG9O/x7tLduLED4rpJ0fTFyBLD69l
	InP5Vw/EhFeey/ux4zRY8dgttN5wBdE2WrAiSJh5U0lVPqSm0mFyEbrCh5DVE5Lczqt3k5dUlJXkT
	BVSGImOi4w0UfCaXDi9kVI+yYndZt9oyHQK4VZ5G9ug4l0E5EflWBFmNHzC4+o/tWgTODKoyiSN+8
	VSU0P4nMBqx8dv39TFRyUEAxQjFoYRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLVtu-0007Uj-6d; Fri, 18 Oct 2019 17:18:54 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLVtl-0007U3-7i
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 17:18:46 +0000
Received: by mail-wr1-x441.google.com with SMTP id q13so2095539wrs.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 10:18:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=aihx5FHQPpH1Yb8AcbtFXJvvU6CvBhqtm6uMOVhsCJc=;
 b=FJmB8kV3D28NhiPfXSwLydr1yXLm7MmBIklXpTtJL+zFQns6+LR31CmNPeVQx6RCOm
 JTtrKN4i3IEPS08F8r/WEZkhjd9RTFe9TkuK+SWVrv46jET0mzCHAOS056Rg14Hj+i93
 SCo9nAh2f/zqn4g5poVCV2F/DNMPQV9nAUPADNBqhfhF6xL4v4/2EaAbuQRYRxcmzomx
 EAF67q4QViT9haVjxMtYO4x03EuAi/f/hOq32jjTB9xLIJnNoZQsTnvrZEY3DfHVNfmC
 aDg4CjLrKqVIZBGvON97Uc29dOKbgNJzOUB8E1IDr0+RgUzGgvHSujbt6K/V+9qk/5NH
 9uuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=aihx5FHQPpH1Yb8AcbtFXJvvU6CvBhqtm6uMOVhsCJc=;
 b=aTHftyuveUgGRZMOyznGcWLdhlkgWChCNb3XNnW0298DoKu2JJhg9SBmPvCmwhL/ch
 FzVweCfjcErjtAzzWEcs4hHutJXB1ww3e1M43m10G8jlA3GmNuUuO9lOVEpvyo8utHJ8
 +/1c5Krigl4EKPxuYJuinhpu7e1pauL288kUcQWDUT8AZrA7nfOx1JadS2rYsCp5vocW
 NITMStb8tPNiAuox5HQ+/ILBEhK8IJGn7ltAUVttjsRsn39f9NDNiBmPOOtxl9l8Zz8/
 6BQzrMLmJ+u5GfyCdCJOBBdHnKKYsfBkyG7/xaLXpwsWBI4BhztN7V1k/RDWT6VCr8Xl
 0xFw==
X-Gm-Message-State: APjAAAXAB82sH5Tfa16dw2VT3L4AYFHF7GahH4nkhJt4f12sxZE9x1O9
 cZeBSzjdwb9FvNA5345gbv5dvszb
X-Google-Smtp-Source: APXvYqw8kgwVhj6Gqz7AFfxKlcKHCJkMbDSJ7WC1jqBt4EYgqlfj/r/v5j1+M+RvM4h6+tuvkuq+CA==
X-Received: by 2002:adf:fc49:: with SMTP id e9mr8353158wrs.172.1571419123276; 
 Fri, 18 Oct 2019 10:18:43 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a13sm6539803wrf.73.2019.10.18.10.18.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 10:18:42 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] MAINTAINERS: Remove Gregory and Brian for ARCH_BRCMSTB
Date: Fri, 18 Oct 2019 10:18:35 -0700
Message-Id: <20191018171835.12666-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_101845_300203_96E5F9EF 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: briannorris@chromium.org, computersforpeace@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, Florian Fainelli <f.fainelli@gmail.com>,
 gregory.0xf0@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The last time Gregory and Brian did a review was sometime around 2015,
since then, they have not been active for ARCH_BRCMSTB changes.
Following the position of other maintainers and Harald Welte's position
here:

[1] http://laforge.gnumonks.org/blog/20180307-mchardy-gpl/

remove both of them.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
Brian, Gregory,

I don't expect you two to object to this, but if you would like to stay
active, let me know, thanks! This is intended to go in v5.5

 MAINTAINERS | 2 --
 1 file changed, 2 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 14a939a9e1e7..e3f50d8ccac0 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3242,8 +3242,6 @@ S:	Maintained
 F:	drivers/usb/gadget/udc/bcm63xx_udc.*
 
 BROADCOM BCM7XXX ARM ARCHITECTURE
-M:	Brian Norris <computersforpeace@gmail.com>
-M:	Gregory Fong <gregory.0xf0@gmail.com>
 M:	Florian Fainelli <f.fainelli@gmail.com>
 M:	bcm-kernel-feedback-list@broadcom.com
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
