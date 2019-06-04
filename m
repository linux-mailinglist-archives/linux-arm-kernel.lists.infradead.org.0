Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A373410F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 10:02:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bkEG2oowJvEX1BHE7UZfGnOpoP59LZMYlFuNQ0uZE8o=; b=pv25ydY0eUXghm
	6CJqamTC8VvMqj43hDeSmAgZzstbpPRKySGlAc2gKaf2YbT7Rx58mCtzKadnri6i8ejj0mwYHoevj
	7wFhb/PVrAYfPY7Z4/J80I4+VV1R88m7TEKWXeNczfUE8gyYpgGggFvXUgEMgue0kXdWrGZ98zSEJ
	cC9gAdwxw65dpsG9cGLqulOC4wTp7GxB0RebKknYpyjsgca2lRPbqqFfa9baFQhVuts/P75O1s6pm
	WXF1I1kKCT7vW2ktNYEFcSUCc2FXFO9pDiVwWfh7wjv3qBr7cSneDBWPUdXCXiACObuy4kPIIMaig
	87tzYi0vvoTmwlTaFv2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY4OK-0003T6-Al; Tue, 04 Jun 2019 08:01:56 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4O5-0003FZ-2o; Tue, 04 Jun 2019 08:01:42 +0000
Received: by mail-pf1-x442.google.com with SMTP id y11so12168745pfm.13;
 Tue, 04 Jun 2019 01:01:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BflzF/9Mq7TxpywjPmEVZJWnPb0ih69tG/7eIZyGT6M=;
 b=QOyG1y+6Z69FqYlxpBzkXexBnATJO3+SIt01a4+TzjEuqAsHve0P8vQMFZ46mnqc9S
 uYpqAEcZW8MT9sSSSoOO86+CSKhi6R9I0GEDuARyMUJHbsT5IuOU37iqa1/SP3DPpHXD
 r3iJpB8bvGGZ/X1ECgsWYo90sQR6NgU7rC++oE2E+zQRoRpdDMiFTvqwWI5ld5zC53Qq
 Esc/yfL47SksRb5cinXh0EjRSHIDSsROKUX5HN+DNvs3H9Td4WmpY1DBtZu9LB8NhvXw
 8i2yI6vIa+RB8NQaeTHkt0qrvW1TnSsswyCZuT/alFNoKJVsLkcTFprvL7gaeHIk4i7u
 lTVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BflzF/9Mq7TxpywjPmEVZJWnPb0ih69tG/7eIZyGT6M=;
 b=iGvW7uspHBo9qxHMBGPPE3hMVi+f5OCF4PrC51WOdxu7MkYm68hthXhKgzmfefqV9m
 ddtUd/RdVtWloQHFMhUYIXB0UIYrQPNoYWnGKX9mgn51BbbSC4/Zl1YPIbR4T+hnLLHC
 16gIb9zS2Ktiuj7u1I9UE4BbFuaFKbklksvG1uvLud0dck9wLyaH5220O5pvVGQj/9nL
 RdtZEpdSdfK68vOOImgwXf+OwJb3rqLE27ENJzYAXEfPlRKpjjf2tvxNSkl4Uc9zy/Sm
 GZifYxsc8VG4pMAwux1GKCfc9YRGHQYWrzYCi5vXzPnOnnK4mGh2H62IRH45F9uHsDeN
 /Yfg==
X-Gm-Message-State: APjAAAXh0fIqc9522MxYDelE05edSLkfKJgTUmEjH7FFEUKkpIPOHROI
 p6tuR16+7nbJa67QBORgl6/VqCvsxT8GIrHHH8E=
X-Google-Smtp-Source: APXvYqxXSHK8ClWs1knrmCEzuP4NmMpxv/uwe3GjLVJVP5SHJZkILQ0KAEnkVza6R3l7cxLb9FyyEfM1uLfoOSuYj6Q=
X-Received: by 2002:a62:2fc6:: with SMTP id
 v189mr36398914pfv.136.1559635299994; 
 Tue, 04 Jun 2019 01:01:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190304201522.11323-1-miquel.raynal@bootlin.com>
 <20190304201522.11323-2-miquel.raynal@bootlin.com>
In-Reply-To: <20190304201522.11323-2-miquel.raynal@bootlin.com>
From: Emil Lenngren <emil.lenngren@gmail.com>
Date: Tue, 4 Jun 2019 10:01:30 +0200
Message-ID: <CAO1O6se5=FDf2YTEEzmFJ4K6HQp_2ayU=WubxGAQJdMA4V4m-Q@mail.gmail.com>
Subject: Re: [PATCH v2 01/15] mtd: nand: Add max_bad_eraseblocks_per_lun info
 to memorg
To: Miquel Raynal <miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_010141_129316_7E8422EA 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (emil.lenngren[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mason Yang <masonccyang@mxic.com.tw>, Vignesh R <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, Julien Su <juliensu@mxic.com.tw>,
 Richard Weinberger <richard@nod.at>, Boris Brezillon <bbrezillon@kernel.org>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Marek Vasut <marek.vasut@gmail.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Miquel,

>  static const struct spinand_info macronix_spinand_table[] = {
>         SPINAND_INFO("MX35LF1GE4AB", 0x12,
> -                    NAND_MEMORG(1, 2048, 64, 64, 1024, 1, 1, 1),
> +                    NAND_MEMORG(1, 2048, 64, 64, 1024, 40, 1, 1, 1),
>                      NAND_ECCREQ(4, 512),
>                      SPINAND_INFO_OP_VARIANTS(&read_cache_variants,
>                                               &write_cache_variants,
> @@ -103,7 +103,7 @@ static const struct spinand_info macronix_spinand_table[] = {
>                      SPINAND_ECCINFO(&mx35lfxge4ab_ooblayout,
>                                      mx35lf1ge4ab_ecc_get_status)),
>         SPINAND_INFO("MX35LF2GE4AB", 0x22,
> -                    NAND_MEMORG(1, 2048, 64, 64, 2048, 2, 1, 1),
> +                    NAND_MEMORG(1, 2048, 64, 64, 2048, 20, 2, 1, 1),
>                      NAND_ECCREQ(4, 512),

Maybe a bit late to the discussion, but shouldn't 20 and 40 be swapped
here, i.e. isn't it the larger flash that has more max bad blocks than
the smaller one?

/Emil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
