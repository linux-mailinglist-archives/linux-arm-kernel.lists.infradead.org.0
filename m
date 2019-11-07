Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F75F2A8C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 10:26:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rFcqpE5e+PTcmeTeOslsUaSaJ+X3IGtcgVIUcjqSAmg=; b=LeiYL8YKcG2lHa
	WydnZge+yP1r6oFPovk+qfY0OBMKm1YXD3hKQY2B5i9XFBtrHds2h0jogPf8SDDFdRTaKT7cMPn/f
	rG8lcdLSXdRS9v67058zXyD6/6TODkF4fZgtKVeSHVDoAkjrWlQfgE90PusDfnE4V79L4zItHSBoc
	DRlX7OxIWMYPpnyvr010zIS/Ec0DikT+3KlreasZKIdtl6tHyB67g6/n0EtRp3CDMYHFVjLIHJJda
	Dts6Eyeu/Zhvufkdda6NxQFjb1MM1BD6WXRPZ2DpYglgQ8sFjH97nmyYvoyLlUXDs6GC6RbyE6Dnm
	aTNSTUwubgPWqIcDZPoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSe3K-0006VZ-BP; Thu, 07 Nov 2019 09:26:06 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSe2y-0006KY-Li; Thu, 07 Nov 2019 09:25:45 +0000
Received: by mail-ot1-x344.google.com with SMTP id 94so1407703oty.8;
 Thu, 07 Nov 2019 01:25:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=U8p26XYqH5TPqHeQad7U65Znhq7tW+I3xCdiHZkPSpw=;
 b=QHfIIwuD2yv6I76g8JQ2D3pTFBro5Jhl/JMGULBBB3QmkDldjRx8CNGkL31TzAll6b
 7TH0ng15f4+P1S53c69OJTrUGN5DKrZNCO/hNdEiuGf8E9akHxAu1UUgCV33PMhyipjK
 wqqP7AVEBCrNUYL+rxd2BEmDqFEXCKjVD3QieWTN5PwpxJJZUvy8+7QX2n5PnVAmOjyZ
 qyjjtFO+GELGo1jcBkXENU3vVcVOTlGAouLwupNRtg7i6iaqw1YKIiN5eTjIHfwNWmj/
 DSVz7qYjs4qHromtabMMTi8NHJB4CG/9hJC/gI1kS8VbG5fznQRTrKhM+fCeU5R0f8RB
 FP/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=U8p26XYqH5TPqHeQad7U65Znhq7tW+I3xCdiHZkPSpw=;
 b=ujuQCOAGKHLoI5KNR4HVWmmLpyhu836DxlsWOcPO7QttDyfC0+rskFeyx59KsuJCKD
 69Fjrv+pTJgdHc0FthL2wQdLWzlQE6JL4VGrYejz9NeEHAXlMcTUpEud/nNFlQYhUFT2
 zo3zNFsDPbo+xRBK3lOPDrnYFdLH8GPZXukobCdURFPOPekG75fcPE0xSBs5IkydXhWD
 qkw+/Xvs3EnGew8qjY0utWPV+4dJ7VDUOL1P4fLOJADhUzMcZi79PlOcf5n/OhwFsi2j
 uJycG/G9n8k+jghGc8bue8G63APYGWwRPBfZfW9Sh632xiK3YMZ74Gh0/xKidpoWgdwg
 rxAw==
X-Gm-Message-State: APjAAAVVs56UxD6Xup54u7eow4HMOlQRdaYnEll487WPYYMJHzUqoWsb
 9/IyC0UAXnKxWz0Dbt40mw9nD3R+qLP/azfaGvM=
X-Google-Smtp-Source: APXvYqytqNiv5noMGnzCkM3rhghUIUChzKwN8or6v9tCbNWgAONdjfZGD/sKd5quAzzGMSJy96OxTz6jDoGYY1aFd9Q=
X-Received: by 2002:a9d:1b0d:: with SMTP id l13mr171271otl.84.1573118743606;
 Thu, 07 Nov 2019 01:25:43 -0800 (PST)
MIME-Version: 1.0
References: <20191106140748.13100-1-gch981213@gmail.com>
 <20191106140748.13100-3-gch981213@gmail.com>
 <20191107010928.GA14186@bogus>
In-Reply-To: <20191107010928.GA14186@bogus>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Thu, 7 Nov 2019 17:25:32 +0800
Message-ID: <CAJsYDV+M4kH5aCcJxxLB7UMhT7VsRXJW+RYcykHMTZW+1ftC9w@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: mtd: mtk-quadspi: update bindings for
 mmap flash read
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_012544_710044_DF70A8B0 
X-CRM114-Status: GOOD (  16.39  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
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
 <devicetree@vger.kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, open list <linux-kernel@vger.kernel.org>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

On Thu, Nov 7, 2019 at 9:09 AM Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Nov 06, 2019 at 10:07:48PM +0800, Chuanhong Guo wrote:
> > update register descriptions and add an example binding using it.
> >
> > Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
> > ---
> >  .../devicetree/bindings/mtd/mtk-quadspi.txt   | 21 ++++++++++++++++++-
> >  1 file changed, 20 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/mtd/mtk-quadspi.txt b/Documentation/devicetree/bindings/mtd/mtk-quadspi.txt
> > index a12e3b5c495d..4860f6e96f5a 100644
> > --- a/Documentation/devicetree/bindings/mtd/mtk-quadspi.txt
> > +++ b/Documentation/devicetree/bindings/mtd/mtk-quadspi.txt
> > @@ -12,7 +12,10 @@ Required properties:
> >                 "mediatek,mt7623-nor", "mediatek,mt8173-nor"
> >                 "mediatek,mt7629-nor", "mediatek,mt8173-nor"
> >                 "mediatek,mt8173-nor"
> > -- reg:                 physical base address and length of the controller's register
> > +- reg:                 Contains one or two entries, each of which is a tuple consisting of a
> > +               physical address and length. The first entry is the address and length
> > +               of the controller register set. The optional second entry is the address
> > +               and length of the area where the nor flash is mapped to.
>
> All the compatibles support 2 entries? If not, which ones?

It should be. I implemented it as an optional feature only because I
don't know the mapped address space for all these chips and can't
update every device trees.

Regards,
Chuanhong Guo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
