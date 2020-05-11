Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 387BB1CD3F3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 10:31:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YTKw1vhwz8CuOayws6mGsgeR2MZvUXpbECFwlA8Eyjc=; b=F9Yg5zOIK8kJCv
	C7G4y1y6gdy1yT8yJw4UBwQtClPLmAduWlOtumb2svaiQZzrrqdN097pedh7VTgeGGy282ygADVIJ
	8iTVtt3alXN9xMTZ9JV6xQkxDMn5wGwdHqNh8bDB8PdlNJpmfmSPpeWlvELLnpvVVZ0NBaKlzwugS
	IWQJmtVs/Y8alr3vE2D0QAd4eXiYfCaTvT6mZdUwvL/PilXWyTF34V/03lYVMWCY+5l/gNy84PDQF
	leg1jaQoNU7V+ZSEZGNdy0ccEvxRmDgWUOYbfYXjSpnKjuzF4b2YmuWn+bAi1ZBMrrkc05s2IVwC2
	jnbzp9RDuiD9sbsfLKMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY3qG-0008Ff-H7; Mon, 11 May 2020 08:31:16 +0000
Received: from [27.111.83.178] (helo=mail.gtsys.com.hk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY3pn-00082W-5D; Mon, 11 May 2020 08:30:48 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.gtsys.com.hk (Postfix) with ESMTP id C7A462002518;
 Mon, 11 May 2020 16:30:40 +0800 (HKT)
X-Virus-Scanned: Debian amavisd-new at gtsys.com.hk
Received: from mail.gtsys.com.hk ([127.0.0.1])
 by localhost (mail.gtsys.com.hk [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AuE0Dfh_okQ8; Mon, 11 May 2020 16:30:40 +0800 (HKT)
Received: from s01.gtsys.com.hk (unknown [10.128.4.2])
 by mail.gtsys.com.hk (Postfix) with ESMTP id A2E5320020CB;
 Mon, 11 May 2020 16:30:40 +0800 (HKT)
Received: from armhf2.gtsys.com.hk (unknown [10.128.4.15])
 by s01.gtsys.com.hk (Postfix) with ESMTP id 96943C01F94;
 Mon, 11 May 2020 16:30:40 +0800 (HKT)
Received: by armhf2.gtsys.com.hk (Postfix, from userid 1000)
 id 3F6272001DE; Mon, 11 May 2020 16:30:40 +0800 (HKT)
From: Chris Ruehl <chris.ruehl@gtsys.com.hk>
To: Chris Ruehl <chris.ruehl@gtsys.com.hk>,
	Jack Lo <jack.lo@gtsys.com.hk>
Subject: [PATCH v1 0/3] spi: spi-rockchip spi slave mode
Date: Mon, 11 May 2020 16:30:19 +0800
Message-Id: <20200511083022.23678-1-chris.ruehl@gtsys.com.hk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_013047_354670_0B1DD665 
X-CRM114-Status: UNSURE (   6.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

The spi-rockchip driver does not implement spi slave mode, but the register map
have a corresponding flag. An example implementation found
here: https://dev.t-firefly.com/thread-101485-1-1.html
This patchset clean the compatiblity names and add support slave mode.
We need the slave mode for our project, but the PCBA is not yet available
in consequence the code in the patch isn't tested yet but need your review.

Patch 1/3
Cleanup, move from the compatibily layer struct spi_master over
to struct spi_controller, and rename the related function calls.

Patch 2/3
Add support for spi slave mode and support function

Patch 3/3
Use OF property num-cs and enable support for cs_gpiods

IMHO its wrong, that the num_chipselect is set fixed to the amount of 
native chip-select lines. SPI0 which has two native lines, while the others
SPIs one native cs line only.
Set max_native_cs in the controller struct with ROCKCHIP_SPI_MAX_CS_NUM seems
the correct way to do and let num-cs the OF / dts config set the CS count for
the boards.

Patch against next-20200508

Thanks for review!

Happy hacking
Chris

Signed-off-by: Chris Ruehl <chris.ruehl@gtsys.com.hk>
---


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
