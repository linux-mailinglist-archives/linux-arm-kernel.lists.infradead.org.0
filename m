Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2438919E307
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 07:40:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bA1rVB+knfIFb0uEPISDIbEYP1oNNdxuu9peQu6RwcQ=; b=phjnOz4JJ/+yj3
	qPiGpamL4YNiQgJ+HIm/wEUPDxY7sa/QZeweH4XkcFBB5Wn39EH+H7x17FQtmKptlMl9i/rwW5RBl
	8JGU7qmq0xPdgZ8lIL/Y30Y8TgpW6ECR3lJdmqZ0t7+n97OTiLBCWCa3hSXSDt6k5cvRrPV/JCna+
	FR0yzoGuD4WB5Oz8eQ9RJZ/8dq5YFZGwFvWOhjKLRHjMJQaH5FMAPl5WVsqXRrHLJ4aQgv6x2ToIU
	a7ALL4ThZPt18BLXrwwxvDVAlxHtXEgulI5YRBoVmVmPpHeA8RAIFoIx4Lfctb4oQcscyYn98sif9
	3OfsVlg8eBoJCFcmO4hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKbXA-0007co-JY; Sat, 04 Apr 2020 05:39:56 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKbWv-0007XK-5D; Sat, 04 Apr 2020 05:39:42 +0000
Received: by mail-pg1-x544.google.com with SMTP id l14so4695973pgb.1;
 Fri, 03 Apr 2020 22:39:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Hfpoy03JigqlxP9eK3Me+hsCC432EMBxJGn6v09HYyw=;
 b=SBFU8gdGF6LjZv88HoeASkn2Eqw/aZF8BoTMRwOwzlz6chc+amOa3KencwKlrdZjgP
 pP1okfXr1+v+M4SnJpCNLjv/+cYqF3SrV0wGrTxDD5ajoa6UBZAd1PFq5fvTqGp9Hmkl
 XSzWgcR5McON2v5ERecQGXOqEUu3oPkSlOe9L56dDvvxKuP3GiCJWOxVwRtsJC8Ii6ZS
 ns4z9AgPtM4Sh4n4ZMTvIb1fMxB+o2JmVxRwZfqixO41Nx/wRzobDbtCHeumS/PNpE0n
 NAEtUPZ5RTpLeFwKyat9qBcJYhm8F8wsEBLD9U/hGPC4lmMGKUHyPFCu/OPAbQwtTwfq
 kRrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=Hfpoy03JigqlxP9eK3Me+hsCC432EMBxJGn6v09HYyw=;
 b=VXQNK1kLDmhAHBWfydGzVRq1JBPCpH5S0jeI1xBkaquZxUCI8NE9pAyheuBjYt6mK3
 zX81unFZGgjLD99UnLmtvZmrTZmqRQdQS/v/hKto069JnXoYr1aTYN9cOyFkglhNX681
 YFOG6q1mR9Qiqm4rspERbnKLLRTM7i12OUzWFxsbt0mKx0ygUQaLVtaBQR9pKHGOxipF
 FvDIQH86IN4WTQFrklqy7ojPHLSL0mNLcwVwgNZ9GPoRju2gw3HRHM9BPYXegLgvQ3/T
 TQfjqVLtptXNTov5Rn0/MGfHKbI7QXJHEj3K5VVWFY+GOKwfz5i02uPV2KKWAGbQKQAi
 Aysg==
X-Gm-Message-State: AGi0PuaoNoJp0dZgUdswAmSiu6HvHSSOL3NyYOiyuzKunvj0Rvv5nMya
 KaJsY1hbPjixEavYZ80EmuN0X0Tv
X-Google-Smtp-Source: APiQypLmN3/zE5aiM/BufN3CEV4Wz43jv64qLkr4SYEOtT3ukGYeAtY/5Lg6lKhNAfcJVv6Ed6nGTg==
X-Received: by 2002:aa7:8659:: with SMTP id a25mr11476525pfo.173.1585978779656; 
 Fri, 03 Apr 2020 22:39:39 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id q91sm6973973pjb.11.2020.04.03.22.39.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 Apr 2020 22:39:39 -0700 (PDT)
Date: Fri, 3 Apr 2020 22:39:36 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Tudor.Ambarus@microchip.com
Subject: Re: [PATCH v2 03/25] mtd: spi-nor: Prepare core / manufacturer code
 split
Message-ID: <20200404053936.GA176702@roeck-us.net>
References: <20200313194130.342251-1-tudor.ambarus@microchip.com>
 <20200313194130.342251-4-tudor.ambarus@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200313194130.342251-4-tudor.ambarus@microchip.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_223941_201119_AF4CAEFD 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: vigneshr@ti.com, bbrezillon@kernel.org, richard@nod.at,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 13, 2020 at 07:42:36PM +0000, Tudor.Ambarus@microchip.com wrote:
> From: Boris Brezillon <bbrezillon@kernel.org>
> 
> Move all SPI NOR controller drivers to a controllers/ sub-directory
> so that we only have SPI NOR related source files under
> drivers/mtd/spi-nor/.
> 
> Rename spi-nor.c into core.c, we are about to split this file in multiple
> source files (one per manufacturer, plus one for the SFDP parsing logic).
> 
> Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> Reviewed-by: Vignesh Raghavendra <vigneshr@ti.com>

I have no idea why, but with this patch in the upstream kernel I can no longer
boot aspeed systems from flash with qemu.

Guenter

---
bisect log:

# bad: [bef7b2a7be28638770972ab2709adf11d601c11a] Merge tag 'devicetree-for-5.7' of git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux
# good: [ac438771ccb4479528594c7e19f2c39cf1814a86] Merge branch 'for-5.7' of git://git.kernel.org/pub/scm/linux/kernel/git/dennis/percpu
git bisect start 'bef7b2a7be28' 'ac438771ccb4'
# good: [848960e576dafc8ed54c691b2f70b92e1fdea9ba] Merge tag 'sound-5.7-rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/tiwai/sound
git bisect good 848960e576dafc8ed54c691b2f70b92e1fdea9ba
# bad: [e109f506074152b7241bcbd3949a099e776cb802] Merge tag 'mtd/for-5.7' of git://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux
git bisect bad e109f506074152b7241bcbd3949a099e776cb802
# good: [e964f1e04a1ce562f0d748b29326244d3cb35ba4] Merge tag 'dmaengine-5.7-rc1' of git://git.infradead.org/users/vkoul/slave-dma
git bisect good e964f1e04a1ce562f0d748b29326244d3cb35ba4
# good: [798fcdd010006e87b3154d6454c657af7b033002] mtd: spinand: toshiba: Support for new Kioxia Serial NAND
git bisect good 798fcdd010006e87b3154d6454c657af7b033002
# bad: [2d47cac1eee76a75c28886c15f82323eb0ec0eb5] mtd: spi-nor: Move Xilinx bits out of core.c
git bisect bad 2d47cac1eee76a75c28886c15f82323eb0ec0eb5
# bad: [f7242bfc02b8f8cb820eb32d726c11e7f337e942] mtd: spi-nor: Move Atmel bits out of core.c
git bisect bad f7242bfc02b8f8cb820eb32d726c11e7f337e942
# good: [69228a0224c533c35b62b88a79aa96768ba29d5e] Merge tag 'mtk-mtd-spi-move' into spi-nor/next
git bisect good 69228a0224c533c35b62b88a79aa96768ba29d5e
# bad: [a0900d0195d2dcce464f4109445a788d5860b970] mtd: spi-nor: Prepare core / manufacturer code split
git bisect bad a0900d0195d2dcce464f4109445a788d5860b970
# good: [81924dae51941018afdaf25638da804be4807ce5] mtd: spi-nor: Emphasise which is the generic set_4byte_addr_mode() method
git bisect good 81924dae51941018afdaf25638da804be4807ce5
# first bad commit: [a0900d0195d2dcce464f4109445a788d5860b970] mtd: spi-nor: Prepare core / manufacturer code split

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
