Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 032071CA669
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 10:46:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RNAGPzFZMpsyyy/SBG5ZBBRxKOzt5FDLcW01iyPj1VA=; b=ZT0kzqLeCOPEMD
	WRcvhxJRZyumXdrVHn+k0gqPH8urhuNaVb3posW0l1qXpFH4qGrm5i0582x7J+iGNdV9M4UlOmkHL
	v+lj6MEnXuNEuVHqu7eZ1zfkN0bBQC60juYRIzxjIWWuk6Cay1WrRVJx9gSPh1IwcbX7wBJKT44P9
	/uqx613iKgur3P3871lHOIIR2JGdvXdsdRyawvaOJrkrAlhJTDKRP3RCzzoPH+KG1t1RtNS7akaVG
	/eUC9pkd96Lim+kpXnw8vLUow3H5W88Ha1rzVzXXQ1ypmonVKJtEc2+f2DnADRN+W/OaJibI4F46S
	49XgTWFYI0GH3h89SSFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWyeT-0000Gp-OZ; Fri, 08 May 2020 08:46:37 +0000
Received: from [27.111.83.178] (helo=mail.gtsys.com.hk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWyeJ-0008Uc-O7; Fri, 08 May 2020 08:46:29 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.gtsys.com.hk (Postfix) with ESMTP id 8BAF520024AB;
 Fri,  8 May 2020 16:38:34 +0800 (HKT)
X-Virus-Scanned: Debian amavisd-new at gtsys.com.hk
Received: from mail.gtsys.com.hk ([127.0.0.1])
 by localhost (mail.gtsys.com.hk [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LeJQaVGZ0PTG; Fri,  8 May 2020 16:38:34 +0800 (HKT)
Received: from s01.gtsys.com.hk (unknown [10.128.4.2])
 by mail.gtsys.com.hk (Postfix) with ESMTP id 6A8CC20020CB;
 Fri,  8 May 2020 16:38:34 +0800 (HKT)
Received: from armhf2.gtsys.com.hk (unknown [10.128.4.15])
 by s01.gtsys.com.hk (Postfix) with ESMTP id 5D4DBC019F9;
 Fri,  8 May 2020 16:38:34 +0800 (HKT)
Received: by armhf2.gtsys.com.hk (Postfix, from userid 1000)
 id 385EB201641; Fri,  8 May 2020 16:38:34 +0800 (HKT)
From: Chris Ruehl <chris.ruehl@gtsys.com.hk>
To: Chris Ruehl <chris.ruehl@gtsys.com.hk>,
	Jack Lo <jack.lo@gtsys.com.hk>
Subject: [PATCH v0] spi: spi-rockchip spi slave mode
Date: Fri,  8 May 2020 16:37:28 +0800
Message-Id: <20200508083729.5560-1-chris.ruehl@gtsys.com.hk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_014627_946800_486EACB1 
X-CRM114-Status: UNSURE (   6.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The driver spi-rockchip does not support spi slave mode, but the register map
has an entry indicate that the chip support it. An example implementation found
here: https://dev.t-firefly.com/thread-101485-1-1.html
The patch is my first approach to support slave mode which is needed
in one of our projects, the PCBA is not yet available but we think
to have it for testing very soon. Yes, the code in the patch
isn't tested yet.

I found it odd, that the num_chipselect is set fixed to the amount of 
native chip-select lines rather use the max_native_cs.
Changed it.
-   master->num_chipselect = ROCKCHIP_SPI_MAX_CS_NUM;
+       of_property_read_u32(np, "num-cs", &num_cs);
+       master->num_chipselect = num_cs;
+       master->max_native_cs = ROCKCHIP_SPI_MAX_CS_NUM;

That ask to enable cs_gpiods, and support gpio cs
+       master->use_gpio_descriptors = true;

Patch against next-20200505

Thanks for review!

Happy hacking
Chris

Signed-off-by: Chris Ruehl <chris.ruehl@gtsys.com.hk>
---


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
