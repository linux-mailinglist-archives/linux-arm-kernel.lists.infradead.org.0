Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C13410192D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 07:15:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Subject:Message-ID:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7/l2evXq1d781pVLfAFgTh8j3+y//NZbK1NXUV7vxlw=; b=HVvY/LQJ655P1k
	ZR2fY1q3geAVl30eDX9c8caD0xwA8L6tKvrj9K02u4olmjjtJVIbk5/9D9Sguu5yBi1BLNRoB2/Zd
	SrcP92wLZAz6BOo4H/yt51VuVRSkAhx0Zp/05m9gKnVjS1DqtQOMh+BBjCSnClm2DZvCF/gY4PUHz
	5LJz625Car/LwDez7NV9NX8QJzsgwQkkDkW+u3VZ/1n7R7pLUVGWIGBYuOVBnSrnI3rPfVoR19hDT
	Na+l0MygHJlM5QoNKZpSC5f24X7CuTPmn8uMp309FNZ1Ga6NthJwGx8LK/48dPRz+7IHVvqNnulYZ
	8H1RC2+dDQKADuAhBDfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWwnZ-0005xJ-TC; Tue, 19 Nov 2019 06:15:37 +0000
Received: from sender4-of-o54.zoho.com ([136.143.188.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWwnK-0005uK-V6; Tue, 19 Nov 2019 06:15:28 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1574144062; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=Cg3CzDldMM3vSpNTvV/Bw4bvHdrGnTZExB1H8y5Ue1cXEB96M6Js22VJhV6qLVuH8i3lK1IUaOWEnrO4iVW4lduO+vKhK4nIo19WXxTkrt7Vh/sHpGzh27UHs2+uoIGEaxWmCLbLZg6Q0quyheINHnOZkbIU97t1hY8S0fBbyz8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1574144062;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=rnDOXSZ5PSkKW71tjFE4P0SpeDfoougigqcTZkEQtXI=; 
 b=WKf/g6RAa5+Uvh1nUNFJabB2cT4+Kfia9laYizeX8Vbmc3HHq6CoOf0CM102l7BzNVCEF0DeIwiWg/39fVOc1MFNfr8IPF5n4jVjcm/KR031N676YwygLjdKu5rV3IutmnlAaciAcPER1X+QTe4K5TUYQboQjgj6emtyemFUPVg=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=brennan.io;
 spf=pass  smtp.mailfrom=stephen@brennan.io;
 dmarc=pass header.from=<stephen@brennan.io> header.from=<stephen@brennan.io>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1574144062; 
 s=selector01; d=brennan.io; i=stephen@brennan.io;
 h=From:To:Cc:Message-ID:Subject:Date:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type;
 l=1520; bh=rnDOXSZ5PSkKW71tjFE4P0SpeDfoougigqcTZkEQtXI=;
 b=Ozoz+Mq8lOVWR3d5FFhE8OZ35njUcgsALgaGHA4znPOu+WSteygwcJBi2eRRJ40g
 9ShCnhAFL0baxmU4mE/DJg4Fn6Ka2euFdtgw+DgK8LjWsQ/SsITS+ESWXhdJ9/jCcru
 y76HAkUimlRN+Sd6Na6zh8gPyKKcW/uYtjIZcTR0=
Received: from localhost (195.173.24.136.in-addr.arpa [136.24.173.195]) by
 mx.zohomail.com with SMTPS id 1574144062177961.7340916694379;
 Mon, 18 Nov 2019 22:14:22 -0800 (PST)
From: Stephen Brennan <stephen@brennan.io>
To: stephen@brennan.io
Message-ID: <20191119061407.69911-3-stephen@brennan.io>
Subject: [PATCH v2 2/3] hwrng: iproc-rng200: Add support for BCM2711
Date: Mon, 18 Nov 2019 22:14:06 -0800
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191119061407.69911-1-stephen@brennan.io>
References: <20191119061407.69911-1-stephen@brennan.io>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_221523_055837_23A6FBC6 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
