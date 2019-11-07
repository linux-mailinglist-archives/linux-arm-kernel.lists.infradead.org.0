Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4053CF2ABA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 10:32:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9FPxjVzPDwO8EBfxLoQcs/WW9clSjNErLZVzNUlCChU=; b=u8nLPr/sTbCQEM
	sAX/v++i9qoEtQLmrkq98gWH6Rb8+0CizBNHWGPsE4oYM6LWYrhDNgz6vkoEFmc/rkb+zeEMHXQJm
	78fZxmnAE8y7hKQZxloPOPoeXOa5OFnWPWj+m+eVWHe2y1gpze+P1CgweD11W5X+A0KBiCL18hzAD
	ExT5XHgl/qLCDCR8lYnnUhTUhPsdV6AeEfj1lGH05h9+RTxpKEZgO3COTpoBIH/w1AHqDoQh/bBnh
	4a55ix4UnBfJE9cVdSJ3+ndXvJJU3EMj4qjmO2i8FKWWcQwgsRq6x+igLSNxa0RmCbCc7dmquREBB
	zjXv7YHk2H0ad8bZtLcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSe9C-0001Ju-V3; Thu, 07 Nov 2019 09:32:10 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSe8p-00018M-PP; Thu, 07 Nov 2019 09:31:49 +0000
Received: by mail-ot1-x341.google.com with SMTP id z6so1449043otb.2;
 Thu, 07 Nov 2019 01:31:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Iuasj2afgMJAzja6uysg+1QDLDZRD47UOISLXL9pb2M=;
 b=mAChVYxcoSkGwnhp7ff0QokhxUd9QPmLoT9Cn1E5xIr6i0h+cx4rUyZ+2s5Xciwe/i
 Kq4kM1DVxxmaURAxoZGrw+n/+u10deLVn2EQpK/BzXp8JvX+qpdFP6mu/BJgzNKVqvus
 Zf8mTPaeOflRCP43BUE0t5I5xFGekUFkw0KjgYSTC3QxMZV3o/1Hm4mLGZ2ntTOtERUF
 F7kYt6w5xMOSvINLjuEcwvaqvMMNY6g6uy/k2pa3Gv9Gd4uBV6k2YrUj+N+54vPfLVnB
 Movv9Q+DXqaspibA9j9xhl8o1i20Y1d74H70SIvtktZr5MOD0HjDgGD8jXq9Rm6axuHc
 h2eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Iuasj2afgMJAzja6uysg+1QDLDZRD47UOISLXL9pb2M=;
 b=BtZ2e/alMrsCTZ9HX3PY5DG8KWsAT5EXIPDXNHDQMr9mBAG8OF9GsSGNNWcy3YUYwe
 v9X1nyhjTC+93HoMSvz8sU4pIKBcr7HonQE9g+hbwazzffpQPt6adZ8bIc8K4W1d2sYx
 nB5EW1iXKPFzRYCla+GrgqoTh32rSKsudg675GdvdWF6Bql6xPcI/3WHiFhFY9fxO/NU
 6k7RX+cfmI1srkVjHby7rn1vYgTPmzcdzjr9rjF73ooAiKf9wxmWYzUa3XZaUHz4aH0w
 4y8kkR3vSk8nXLap1Bu2oy0Ba4/3zJAtzJA1U3oC3Ha+4KYUlP+ssVt95oMURmkmijUE
 gYgg==
X-Gm-Message-State: APjAAAVix6tDzo5rrg1ygjbU7+99JnZebgNURpPaopiTUw+FJRBHRDEv
 yvwpMlASKLFie8mo7pCNUvJUdfMnRIA/CsuKrmg=
X-Google-Smtp-Source: APXvYqxM2u5buXTzjVMjKs0NiT8xZ4gQE9rzxlSnRNK0x5jTIg9zCq0fAgqpl2XlavGpu0oHc0B6P/uQpa0ir3k8lhM=
X-Received: by 2002:a9d:1b0d:: with SMTP id l13mr193968otl.84.1573119106712;
 Thu, 07 Nov 2019 01:31:46 -0800 (PST)
MIME-Version: 1.0
References: <20191106140748.13100-1-gch981213@gmail.com>
 <20191106140748.13100-2-gch981213@gmail.com>
 <bc917a56-e688-d701-2279-87df460d6055@ti.com>
In-Reply-To: <bc917a56-e688-d701-2279-87df460d6055@ti.com>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Thu, 7 Nov 2019 17:31:35 +0800
Message-ID: <CAJsYDVJgUNxLhcO9iLKwRZHPQ9FT8XuKQq8ru_djD2nryT5o9A@mail.gmail.com>
Subject: Re: [PATCH 1/2] mtd: mtk-quadspi: add support for memory-mapped flash
 reading
To: Vignesh Raghavendra <vigneshr@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_013147_823807_08DC02B1 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, open list <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

On Thu, Nov 7, 2019 at 2:05 PM Vignesh Raghavendra <vigneshr@ti.com> wrote:
> > @@ -272,6 +273,11 @@ static ssize_t mtk_nor_read(struct spi_nor *nor, loff_t from, size_t length,
> >       mtk_nor_set_read_mode(mtk_nor);
> >       mtk_nor_set_addr(mtk_nor, addr);
> >
> > +     if (mtk_nor->flash_base) {
> > +             memcpy_fromio(buffer, mtk_nor->flash_base + from, length);
> > +             return length;
> > +     }
> > +
>
> Don't you need to check if access is still within valid memory mapped
> window?

The mapped area is 256MB and I don't quite believe there will be such
a big NOR flash.
I'll add a check here in the next version.

>
> >       for (i = 0; i < length; i++) {
> >               ret = mtk_nor_execute_cmd(mtk_nor, MTK_NOR_PIO_READ_CMD);
> >               if (ret < 0)
> > @@ -475,6 +481,11 @@ static int mtk_nor_drv_probe(struct platform_device *pdev)
> >       if (IS_ERR(mtk_nor->base))
> >               return PTR_ERR(mtk_nor->base);
> >
> > +     res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
> > +     mtk_nor->flash_base = devm_ioremap_resource(&pdev->dev, res);
>
> There is a single API now: devm_platform_ioremap_resource().

Cool. I'll change it.
Should I add another patch to change the same mapping operation right
above this piece of code?

Regards,
Chuanhong Guo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
