Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F18C316134F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 14:27:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TAtMC/Gf3fViNXaTaim0dFgSf/l6iLxcILWiB7csGFo=; b=MBnD0Gt1L5hmhQ
	aSMBBSq4HtZlMJoQcXb7vbqk+ovfJ8rkHEPEUlwLoqFFo8X9d3t1DUmPKnc8yQMxICRVwQyF5slXu
	sF0QXpc4g0ejkkaloNqNAAIAVe9KyH8AVKdF8B3tR6GSHDcyWBrPmaKzsKLj+poM+xrbRzb2pqZ/X
	nV4nVXAjzHeD7/Dbsu/T/L7sDa1qaTTUpUaP+yQu/PmSB/iVRY0lKGx6/n5GUvjN7G+3WXXD7n35Y
	e6pc8/FKQ3PjFmPS2hIdQWw82pwp0sm4s+bK8lPK0V7Qht/8B0semK6Q6z2U4/Qf4L+wKuxIVyzug
	VaLhX/+Q+aUYrZOc89gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3gR4-00052L-Vj; Mon, 17 Feb 2020 13:27:43 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3gQo-0004jj-AL; Mon, 17 Feb 2020 13:27:27 +0000
Received: by mail-ot1-x341.google.com with SMTP id g64so16019442otb.13;
 Mon, 17 Feb 2020 05:27:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=y4K5yGFPXOf61DlsEHfe0CyYhpMZ6ZeXAnaZdK4Fn80=;
 b=VK3PQOfXl5r684jgNfBzZP4Vltv2wxmq+C78aWnQNBVxviA09zBxTvPFGbxmhQ0Q9p
 Fi/xPqyGGfFTN/gQEce+Z3AzbOMHAubFg/ce6r3IcNKNwRAjoUxfBe+OjDPt+Lx+b/E8
 PN3iL9ogosi/8dWBsfMZY348izA0vqI562G5r9Xs9/uPuvdSUIR0xIyTq27o90F9PiaE
 OiMFrRRtzZrU/zyLcCE+rENBNc1Iic+xIjWFQSdV1R8XMs0zKng/RVJfRWh5BOhZEqSG
 HpN4speHrFA7w79OMl0NpkumgXdn7gwtyvkxnuYWse7aFTUZzPc9L8vHyceQWNtrJekf
 2htg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=y4K5yGFPXOf61DlsEHfe0CyYhpMZ6ZeXAnaZdK4Fn80=;
 b=Lgq2efAHKCXbjtqEd3A48pcNKXltzHS5DdKhwMPSgqPt8MpC9xbP6Agx9vEhc2KRt9
 ostTiuB5f32FF18Ufj7PoAViqwNz04m3ZAyD99/N8ZsOQnOkftS26iU01sQC0/gCJorY
 N3nCBnkw7K5KdiZel+u+KyyY5oUN6y5xPCM9U4Kcztpw8OL9/m0A22q+AVUzKwLdcx4F
 dWGFwgXOC/mMAvvBcJQ3gdjg4jO4aUMJ2BWI9F0v+64WX7K+cqjxUq/QH/00XHGWEU/z
 4wBC7CFLvISXUtWeXRnkshcKgNbeuoGVq28x+6LYgJn/gUn/micI75LF8urp+S/wrYTs
 uRsQ==
X-Gm-Message-State: APjAAAWTzz8/HaemcQod8oWv0PHd7ljB6VE706XfnzWV79dFXcLJF+zG
 l4zV4hCj6pKwYFqEeDAbWlhiRCP2TjLoxTLJrXM=
X-Google-Smtp-Source: APXvYqxpRwM9jhB9uzXIZbj7xCzbRssl0WGuCjLsfZ/ewhMADMb/ShN3pe5IjsDrGmngkOedkTvr9RwiMANO8McUZGA=
X-Received: by 2002:a05:6830:1e72:: with SMTP id
 m18mr11333643otr.226.1581946044780; 
 Mon, 17 Feb 2020 05:27:24 -0800 (PST)
MIME-Version: 1.0
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
 <20190919193141.7865-38-miquel.raynal@bootlin.com>
In-Reply-To: <20190919193141.7865-38-miquel.raynal@bootlin.com>
From: Emil Lenngren <emil.lenngren@gmail.com>
Date: Mon, 17 Feb 2020 14:27:13 +0100
Message-ID: <CAO1O6sdVqNFG+2O1AY1qN2Q4dUFhtAMk5Qr+Np3s_poSqFp+Og@mail.gmail.com>
Subject: Re: [PATCH v3 37/40] mtd: spinand: Propagate ECC information to the
 MTD structure
To: Miquel Raynal <miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_052726_356581_A0DC457E 
X-CRM114-Status: GOOD (  22.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [emil.lenngren[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mason Yang <masonccyang@mxic.com.tw>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, Julien Su <juliensu@mxic.com.tw>,
 Richard Weinberger <richard@nod.at>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Paul Cercueil <paul@crapouillou.net>, Marek Vasut <marek.vasut@gmail.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Den tors 19 sep. 2019 kl 21:56 skrev Miquel Raynal <miquel.raynal@bootlin.com>:
>
> This is done by default in the raw NAND core (nand_base.c) but was
> missing in the SPI-NAND core. Without these two lines the ecc_strength
> and ecc_step_size values are not exported to the user through sysfs.
>
> This fix depends on recent changes and should not be backported as-is.
>
> Fixes: 7529df465248 ("mtd: nand: Add core infrastructure to support SPI NANDs")
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  drivers/mtd/nand/spi/core.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/mtd/nand/spi/core.c b/drivers/mtd/nand/spi/core.c
> index a521eeb0d351..36b99f68da81 100644
> --- a/drivers/mtd/nand/spi/core.c
> +++ b/drivers/mtd/nand/spi/core.c
> @@ -1135,6 +1135,10 @@ static int spinand_init(struct spinand_device *spinand)
>
>         mtd->oobavail = ret;
>
> +       /* Propagate ECC information to mtd_info */
> +       mtd->ecc_strength = nand->ecc.ctx.conf.strength;
> +       mtd->ecc_step_size = nand->ecc.ctx.conf.step_size;
> +
>         return 0;
>
>  err_cleanup_ecc_engine:
> --

If I follow the code flow correctly, it seems this is more important
than just exposing the value to the user through sysfs. The
mtd_read_oob function uses the ecc_strength and bitflip_threshold
values to decide if it should return -EUCLEAN or 0 for a read with
correctable bitflips:

if (mtd->ecc_strength == 0)
        return 0; /* device lacks ecc */
return ret_code >= mtd->bitflip_threshold ? -EUCLEAN : 0;

The -EUCLEAN error code is then used in UBI for the wear level logic,
so it would be nice if this could be fixed.
Now both ecc_strength and bitflip_threshold is 0 for me with my SPI
NAND flash, as exposed through sysfs, so I assume the wear level logic
doesn't work right now.

/Emil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
