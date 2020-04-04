Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F28819E316
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 08:00:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xSgF/HY85KPTSRBegjITuuhBpE2m632pbMs+xP88L9o=; b=OZLuALQG3B+Bsf
	noNYvyAS4x1vMLNMyvqx9ko0VdsNbQELQMcFAcI25X6Gz4XqXFPKsz00mq7zs2c9HU+5mogy/IVTG
	IgAKHEI9oITpAZ+9U2GvDaku9EIK3tEZqZHc2Oh8AH4LdgbBAbUql0DJ/OfMSGkdxl0J/Xm0SHckH
	ssk6B1rDuoTcbujPJf+wXyiLGHbORffOY6b9LX53HVmXEJSSQaoiQKeOHdVQm8HbgcK2R2/bu8wZ6
	ASyaKyvx6gMo6/pfm4kRKR3WYQF9pj5XP7Id+SDp6M65TKXHjLdDFMaV8tyJtK829X4pQZLUq6vZp
	Hp1sxR6ydKLmQWSnRLAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKbrB-0004N4-UP; Sat, 04 Apr 2020 06:00:37 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKbqt-0004Fz-Dr; Sat, 04 Apr 2020 06:00:20 +0000
Received: by mail-pf1-x442.google.com with SMTP id c21so4730353pfo.5;
 Fri, 03 Apr 2020 23:00:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=HrB7DxlVgp8WiqoGsDP+46dH17Hu9eajZ5+qAzTAiac=;
 b=ciP1EJbwlDpEXD/hLFgXQre6fZpVQxtKx36OU2pRtixOTJP6Wh5WZO+JooLgD6HjwT
 LkEbp5DMZ6jvelvmgpoUvddbWJ7SpuZ+pjdvx+FJ1WYID6h5nKkWZp62BrfpvQLzlkzE
 VWD/cxpawrskuXfNoQ1ENAE4+xmCc1jhCVlMIprR9lko4ELyj5M4PDske0CdCsOLAgEW
 xfsPkHC+0JDurAGL1z+wQEYKX12bQQ0B0Gu+qzfOpWRMdw0HVUEKRIuUF+SCx+jS//7s
 t0EqDBrcpTBhehyZ78WtoXtDvDIUqBA8A0Xn973dRkHhnYBBo9AUlgNfab/cmJCOqjMd
 L7Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=HrB7DxlVgp8WiqoGsDP+46dH17Hu9eajZ5+qAzTAiac=;
 b=OiIzpLV0SIJmZ8RWvE5QqcljaDhSsykjm3/4VMJxKrWM8YkuehSl9WW2AJBma8+FLS
 gaOQCfRhe4KlH4btQvYPDaBgJK2ZJJvceIU8uO9DRzFuS8aDpuyyxxfQlQkUZGtJEdWu
 y3pMlhvAjnunE13JD5J81GUxNPNODTWq7hBvfSmxRHvNN++NRwiQlcrC3giMV77JPcdM
 TSjZBH9Jg+30lbQrO/hQaf138q7hROb7xhqmkHv5mYN7u2AhmikAb7dqkBtCm1IxkQee
 9Ff55j2uesR0wCrfU2ECvMKdr+Bv6AUdSfCHIdJmsGIHH0BnleFoOgG9loNlYURAqmW9
 kdhw==
X-Gm-Message-State: AGi0PuawnIVoXYdqq8r95fxZsQaSMxcbANnXQ/qKWF8UstBL+E0FsMCy
 yfAp0jPOZnund5fEfLaef0k=
X-Google-Smtp-Source: APiQypIFJwX2JQnZmobRjDVaLlpY+BOCstOdQCo/JC3sWW15HUB5efZXD3PJxCtT9IN/76Sp/8xC4g==
X-Received: by 2002:a63:5f91:: with SMTP id
 t139mr11918628pgb.119.1585980017612; 
 Fri, 03 Apr 2020 23:00:17 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id f22sm6249880pgl.20.2020.04.03.23.00.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 Apr 2020 23:00:17 -0700 (PDT)
Date: Fri, 3 Apr 2020 23:00:15 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Tudor.Ambarus@microchip.com
Subject: Re: [PATCH v2 03/25] mtd: spi-nor: Prepare core / manufacturer code
 split
Message-ID: <20200404060015.GA209893@roeck-us.net>
References: <20200313194130.342251-1-tudor.ambarus@microchip.com>
 <20200313194130.342251-4-tudor.ambarus@microchip.com>
 <20200404053936.GA176702@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200404053936.GA176702@roeck-us.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_230019_493131_D9B490F6 
X-CRM114-Status: GOOD (  14.87  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

On Fri, Apr 03, 2020 at 10:39:36PM -0700, Guenter Roeck wrote:
> On Fri, Mar 13, 2020 at 07:42:36PM +0000, Tudor.Ambarus@microchip.com wrote:
> > From: Boris Brezillon <bbrezillon@kernel.org>
> > 
> > Move all SPI NOR controller drivers to a controllers/ sub-directory
> > so that we only have SPI NOR related source files under
> > drivers/mtd/spi-nor/.
> > 
> > Rename spi-nor.c into core.c, we are about to split this file in multiple
> > source files (one per manufacturer, plus one for the SFDP parsing logic).
> > 
> > Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
> > Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> > Reviewed-by: Vignesh Raghavendra <vigneshr@ti.com>
> 
> I have no idea why, but with this patch in the upstream kernel I can no longer
> boot aspeed systems from flash with qemu.
> 

Ah yes, it does help to actually build the moved files. The following diff makes
it work again.

diff --git a/drivers/mtd/spi-nor/Makefile b/drivers/mtd/spi-nor/Makefile
index 7ddb742de1fe..653923896205 100644
--- a/drivers/mtd/spi-nor/Makefile
+++ b/drivers/mtd/spi-nor/Makefile
@@ -18,3 +18,5 @@ spi-nor-objs			+= winbond.o
 spi-nor-objs			+= xilinx.o
 spi-nor-objs			+= xmc.o
 obj-$(CONFIG_MTD_SPI_NOR)	+= spi-nor.o
+
+obj-$(CONFIG_MTD_SPI_NOR)	+= controllers/

Guenter

> Guenter
> 
> ---
> bisect log:
> 
> # bad: [bef7b2a7be28638770972ab2709adf11d601c11a] Merge tag 'devicetree-for-5.7' of git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux
> # good: [ac438771ccb4479528594c7e19f2c39cf1814a86] Merge branch 'for-5.7' of git://git.kernel.org/pub/scm/linux/kernel/git/dennis/percpu
> git bisect start 'bef7b2a7be28' 'ac438771ccb4'
> # good: [848960e576dafc8ed54c691b2f70b92e1fdea9ba] Merge tag 'sound-5.7-rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/tiwai/sound
> git bisect good 848960e576dafc8ed54c691b2f70b92e1fdea9ba
> # bad: [e109f506074152b7241bcbd3949a099e776cb802] Merge tag 'mtd/for-5.7' of git://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux
> git bisect bad e109f506074152b7241bcbd3949a099e776cb802
> # good: [e964f1e04a1ce562f0d748b29326244d3cb35ba4] Merge tag 'dmaengine-5.7-rc1' of git://git.infradead.org/users/vkoul/slave-dma
> git bisect good e964f1e04a1ce562f0d748b29326244d3cb35ba4
> # good: [798fcdd010006e87b3154d6454c657af7b033002] mtd: spinand: toshiba: Support for new Kioxia Serial NAND
> git bisect good 798fcdd010006e87b3154d6454c657af7b033002
> # bad: [2d47cac1eee76a75c28886c15f82323eb0ec0eb5] mtd: spi-nor: Move Xilinx bits out of core.c
> git bisect bad 2d47cac1eee76a75c28886c15f82323eb0ec0eb5
> # bad: [f7242bfc02b8f8cb820eb32d726c11e7f337e942] mtd: spi-nor: Move Atmel bits out of core.c
> git bisect bad f7242bfc02b8f8cb820eb32d726c11e7f337e942
> # good: [69228a0224c533c35b62b88a79aa96768ba29d5e] Merge tag 'mtk-mtd-spi-move' into spi-nor/next
> git bisect good 69228a0224c533c35b62b88a79aa96768ba29d5e
> # bad: [a0900d0195d2dcce464f4109445a788d5860b970] mtd: spi-nor: Prepare core / manufacturer code split
> git bisect bad a0900d0195d2dcce464f4109445a788d5860b970
> # good: [81924dae51941018afdaf25638da804be4807ce5] mtd: spi-nor: Emphasise which is the generic set_4byte_addr_mode() method
> git bisect good 81924dae51941018afdaf25638da804be4807ce5
> # first bad commit: [a0900d0195d2dcce464f4109445a788d5860b970] mtd: spi-nor: Prepare core / manufacturer code split

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
