Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B70F9FFFF5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 09:00:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Subject:Message-ID:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7/l2evXq1d781pVLfAFgTh8j3+y//NZbK1NXUV7vxlw=; b=I4jTRAvbg7zhPC
	e9Wn9+P9l1mvLGEmSR0AuJ1+MtUjFvsRNB7Pau5MqMk39Wk6riP3Lek9PFW+8L6LxQLkJlZqUVISo
	fah2LgHJXF9HJNVpFFXEG9gCqVuhH6Dfj3wbl+FBO9mvqIL/LPYb8TWNd0Mrn3kvQ8RQGQqj9CQzs
	03ciO5hjzx4N95K0HaTeD7wG+TKg9M+q3g//mMTOVeezAbc2MoINo3UD2z54dYzm+L2mp+QRr843e
	XKyEldbvIOWmY4161Of86YHuLsvGLMtBoSQDIRiu8q5CiMH3lH/c3zmwbuK41Hj1V7bUXVpFTaSRp
	lFBTjvffZEC67IUA0h2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWbwx-0000um-8p; Mon, 18 Nov 2019 07:59:55 +0000
Received: from sender4-of-o54.zoho.com ([136.143.188.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWbwZ-0000oB-01; Mon, 18 Nov 2019 07:59:32 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1574063913; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=Xk3i65B4Fu5x4VFH4ySsKzvsxbJO8zq+L05B611f30tGjhtITbjeA83awA2Q672Biu6cpGKIsn8umUiousOZLwOEsQxmSX/Wa7929nUDz75yPVUKGBC2cOQtsXcak6injbiGnpTpkh1N6wbfjIn4mNKkbKHrNpIqs/0AxRdHuns=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1574063913;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=rnDOXSZ5PSkKW71tjFE4P0SpeDfoougigqcTZkEQtXI=; 
 b=RnIQVKi4hXA2dQ8ac8gNEsOOTJowF+cpfvkILkMsbyZTXdaVtYolqbrMbp8UwF+mYQiJf7lRhLalRBpzau1Spb0J0ACztNqyiEhuwb1vYKqLgDVPIq93u8ITwBDigz0iKyrmfazFQbPPzPPWPciHxpUzHvBHBFRoiX6cHj+jxDg=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=brennan.io;
 spf=pass  smtp.mailfrom=stephen@brennan.io;
 dmarc=pass header.from=<stephen@brennan.io> header.from=<stephen@brennan.io>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1574063913; 
 s=selector01; d=brennan.io; i=stephen@brennan.io;
 h=From:To:Cc:Message-ID:Subject:Date:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type;
 l=1520; bh=rnDOXSZ5PSkKW71tjFE4P0SpeDfoougigqcTZkEQtXI=;
 b=cpe26RcfhGlm7P/YpwYbB0VyjPEXbGW/F2PpjV214dtdUTxLjbWG/Ui6hXz/9dLk
 wosu0VD+cIhsMExFhUtJoQZDvbWr2Tjjfp8PoE7MuyJnWnoVgfVgL29lTentLPPnXP3
 SSGn7jYKIV+yoj0o1D1/IjaGGV0sgtedLIQF9XOI=
Received: from localhost (195.173.24.136.in-addr.arpa [136.24.173.195]) by
 mx.zohomail.com with SMTPS id 1574063912030754.6313842017521;
 Sun, 17 Nov 2019 23:58:32 -0800 (PST)
From: Stephen Brennan <stephen@brennan.io>
To: stephen@brennan.io
Message-ID: <20191118075807.165126-3-stephen@brennan.io>
Subject: [PATCH 2/3] hwrng: iproc-rng200: Add support for BCM2711
Date: Sun, 17 Nov 2019 23:58:06 -0800
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191118075807.165126-1-stephen@brennan.io>
References: <20191118075807.165126-1-stephen@brennan.io>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_235931_091701_625AF2D2 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-rpi-kernel@lists.infradead.org, Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Scott Branden <sbranden@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, Matt Mackall <mpm@selenic.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Stefan Wahren <wahrenst@gmx.net>

BCM2711 features a RNG200 hardware random number generator block.
So make the driver available.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Signed-off-by: Stephen Brennan <stephen@brennan.io>
---
 drivers/char/hw_random/Kconfig        | 2 +-
 drivers/char/hw_random/iproc-rng200.c | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/char/hw_random/Kconfig b/drivers/char/hw_random/Kconfig
index 7c7fecfa2fb2..77e848fca531 100644
--- a/drivers/char/hw_random/Kconfig
+++ b/drivers/char/hw_random/Kconfig
@@ -90,7 +90,7 @@ config HW_RANDOM_BCM2835
 
 config HW_RANDOM_IPROC_RNG200
 	tristate "Broadcom iProc/STB RNG200 support"
-	depends on ARCH_BCM_IPROC || ARCH_BRCMSTB
+	depends on ARCH_BCM_IPROC || ARCH_BCM2835 || ARCH_BRCMSTB
 	default HW_RANDOM
 	---help---
 	  This driver provides kernel-side support for the RNG200
diff --git a/drivers/char/hw_random/iproc-rng200.c b/drivers/char/hw_random/iproc-rng200.c
index 899ff25f4f28..32d9fe61a225 100644
--- a/drivers/char/hw_random/iproc-rng200.c
+++ b/drivers/char/hw_random/iproc-rng200.c
@@ -213,6 +213,7 @@ static int iproc_rng200_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id iproc_rng200_of_match[] = {
+	{ .compatible = "brcm,bcm2711-rng200", },
 	{ .compatible = "brcm,bcm7211-rng200", },
 	{ .compatible = "brcm,bcm7278-rng200", },
 	{ .compatible = "brcm,iproc-rng200", },
-- 
2.24.0




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
