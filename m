Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C57A812FC76
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 19:25:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gOQGCgPLXlLTtQoR8NjqRAFdESwaYv3EAD6MUN7X0Zk=; b=p2RLea9ODRCCeD
	kN6wdb7CMa/IVIdhCP/yiOW98vYjrVGp3xOwxwppSGXBLYb/aLMRogstx0SMUziwXMWjCnPnV1mwn
	UPreXjjGvWL4/DkscPEMLCerhCMkmLWdPBRyaS58maq2oKaDOlPTxNJ5Z1+57ZP5iznyAmYQnfTSg
	K18+jrFu0bLNlMHLk3pK3bUZxh+1Ks8uJ12LV1FhFq75iCzpc8aoH7Fm+wz0hlkXF1Hw1+1SjAdk0
	rfDEAqRXzUFuobcnGoxuMVNxRNW9HhspLBrAHZzC95/oVEiaMqZlE0kBSEeJhF59R07WXhlhwAo5Z
	3pZIEmGMsBa2iB2TOt5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inRdw-0004rq-VN; Fri, 03 Jan 2020 18:25:53 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inRdI-00048S-7C; Fri, 03 Jan 2020 18:25:14 +0000
Received: by mail-pl1-x641.google.com with SMTP id c13so19330720pls.0;
 Fri, 03 Jan 2020 10:25:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=qW83qsxpwf2/UZcSK+rVXwz9u16IUPoBDgWO6FkrDOc=;
 b=SipAHkPek4LSECCncIfZjoX69+G+fklKFs+PgfunA7KEM8mTXKyE8b38CLrrMCLm6I
 RAhBytnJED1/yanNGg7MAKRr6/o+QaZBaPQeltRDJq4RfPB1MzihPr1BYLktqdAFe/6f
 1uM0QGWsDXTkngXx0ZyBDn0WNvqTQSxAFabRgZAp6ch4J3oVCcONiIn30pGSOjJf3blB
 ny8TX9HbNMLXSnZCtmX6K4KdMT2Nh/JY3NfeWxV5k2mGwhFjHCcITTLi/mrS0hrBZOEb
 +SCCgHGMujpor6+kk9E0zQTlPlyxzmSUn4efiUStGOiMEmi3QreatlGEUUQq4xbRwKyG
 9ADw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qW83qsxpwf2/UZcSK+rVXwz9u16IUPoBDgWO6FkrDOc=;
 b=a+TIJ5VoOHYmSEHBR20Kqh0LrGXnKNfWHPuS98+DSfAnNoT0gdEzPCj4im0BwAl2SL
 ta/8PuYcQrY6ZXarPYhoFl//5hbas4ecsHRlfFmhN50J3U6GXOTzbY8DZyFAHRlDPIqz
 eG7/Ls6WHyF0D650s8wlMdmuV/ZDFNop5IfUunCRz7uRBd7zZn9hgwAaM8kKDCqu7veG
 ih16oER6kIuy6nEkfHFQf5n4D97vf+B9M/dHzFp9qfTOT/bV6iqlH0ehQ+5O5RZZpkh1
 ZzyV91suPRCI/3J7ei+gzSwCscqoNhMSd6oKoBQ72SopNjH4104lDgrdl40eCAQru8kg
 pYiA==
X-Gm-Message-State: APjAAAUJFsM28qkfuS9HjpxIbJFSvpFfCB/bQkyS7BWA6TdC7H0IAS5/
 9q81rkJIC0t9eXLLfxmnj1s=
X-Google-Smtp-Source: APXvYqwsZQKqtyEyj2LOAt7A+rTqD0fBPwGrTf/wve3kKW4OAwb5MIup6B8yu2JOby9GpsDWJZnu0Q==
X-Received: by 2002:a17:902:7c0f:: with SMTP id
 x15mr53728214pll.267.1578075911549; 
 Fri, 03 Jan 2020 10:25:11 -0800 (PST)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id r8sm15054771pjo.22.2020.01.03.10.25.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 10:25:11 -0800 (PST)
Date: Fri, 3 Jan 2020 10:25:09 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH] mtd: rawnand: atmel: switch to using
 devm_fwnode_gpiod_get()
Message-ID: <20200103182509.GF8314@dtor-ws>
References: <20200103012238.GA3648@dtor-ws> <20200103090704.GG3040@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200103090704.GG3040@piout.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_102512_291573_252BA113 
X-CRM114-Status: GOOD (  15.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Boris Brezillon <bbrezillon@kernel.org>,
 linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alexandre,

On Fri, Jan 03, 2020 at 10:07:04AM +0100, Alexandre Belloni wrote:
> Hi,
> 
> On 02/01/2020 17:22:38-0800, Dmitry Torokhov wrote:
> > devm_fwnode_get_index_gpiod_from_child() is going away as the name is
> > too unwieldy, let's switch to using the new devm_fwnode_gpiod_get().
> > 
> > Signed-off-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>
> > ---
> >  drivers/mtd/nand/raw/atmel/nand-controller.c | 20 ++++++++++----------
> >  1 file changed, 10 insertions(+), 10 deletions(-)
> > 
> > diff --git a/drivers/mtd/nand/raw/atmel/nand-controller.c b/drivers/mtd/nand/raw/atmel/nand-controller.c
> > index 8d6be90a6fe8a..849bd5f16492d 100644
> > --- a/drivers/mtd/nand/raw/atmel/nand-controller.c
> > +++ b/drivers/mtd/nand/raw/atmel/nand-controller.c
> > @@ -1578,9 +1578,8 @@ static struct atmel_nand *atmel_nand_create(struct atmel_nand_controller *nc,
> >  
> >  	nand->numcs = numcs;
> >  
> > -	gpio = devm_fwnode_get_index_gpiod_from_child(nc->dev, "det", 0,
> > -						      &np->fwnode, GPIOD_IN,
> > -						      "nand-det");
> > +	gpio = devm_fwnode_gpiod_get(nc->dev, of_fwnode_hanlde(np),
> 
> Shouldn't that be of_fwnode_handle(np)?

:( You are right. Apparently I did not actually enable the driver when
trying to compile this. I'll update and repost this shortly.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
