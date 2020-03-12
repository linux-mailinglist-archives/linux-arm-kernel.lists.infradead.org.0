Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B904183284
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 15:11:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=FT2XwKRZP3fQKM7CfQUBFh5SQpt7jCGMZ98ObNsqqhE=; b=sLstae0rssisCn
	fh5HSKwbbTnV/WaQz9VabI9GRFPfQajZKAK6W8NF5C9rdnirz2iQJyASKUo80JAZ3XbFGo1hjGS+2
	d84xKV1+z/ZRj4NH7sWwRl/1Y9OKwEw+uDXqYE+H4zZ1VgxQ+ye1KsFA/hWSo3OURX9QjwLL9WEnV
	B7mPCjJ5bo9S/QVh98jjmbQIVTTFd/o3YPGAMwmpBOsH3Q/Ib8NbZcRobWo3Jr8PaYEPKSQ/GgtjH
	2aSo52rFw9Si4AIC2Jn4Dinxo/rElJSFWAKoBHnp5+IiaU5EOESM22Quoaihv4oZ/E6PflsNdL1xd
	QCXRvLI+JAGC+oAsvZuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCOYP-0007w9-Gk; Thu, 12 Mar 2020 14:11:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCOYD-0007vj-Dc; Thu, 12 Mar 2020 14:11:06 +0000
Received: from localhost (mobile-166-175-186-165.mycingular.net
 [166.175.186.165])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 10BBE206E7;
 Thu, 12 Mar 2020 14:11:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584022264;
 bh=R/lnE+ckVywNCWcx1gHvO2Mh70J2f5SW32TxuQf+zGI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=arv7/+jvUj9iJWfWlYdgqEG39OScPnVN8+yN/RSHbmQJwGazVMLlVu+Tctn3gdPTX
 FNdntEiwli27ScYUOBN6gfOPY6ZhjBhMcMl/D3RquqPL+Y8s6k9qxCCbZiR8x3ervB
 d5gWiTZ8T/wMs4bdrTy0xx25QCxA3drilWiFDdc0=
Date: Thu, 12 Mar 2020 09:11:02 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [PATCH 4/5] pci: handled return value of platform_get_irq
 correctly
Message-ID: <20200312141102.GA93224@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6e413f63-06e3-9613-97dc-ff5968a4f759@free.fr>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_071105_501246_7C9DDCB7 
X-CRM114-Status: GOOD (  17.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 FAKE_REPLY_C           No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Ryder Lee <ryder.lee@mediatek.com>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, linux-pci@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Aman Sharma <amanharitsh123@gmail.com>, linux-kernel@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-mediatek@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Marc Zyngier <maz@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Mans Rullgard <mans@mansr.com>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[+cc another Marc]

On Thu, Mar 12, 2020 at 10:53:06AM +0100, Marc Gonzalez wrote:
> On 11/03/2020 20:19, Aman Sharma wrote:
> 
> > diff --git a/drivers/pci/controller/pcie-tango.c b/drivers/pci/controller/pcie-tango.c
> > index 21a208da3f59..18c2c4313eb5 100644
> > --- a/drivers/pci/controller/pcie-tango.c
> > +++ b/drivers/pci/controller/pcie-tango.c
> > @@ -273,9 +273,9 @@ static int tango_pcie_probe(struct platform_device *pdev)
> >  		writel_relaxed(0, pcie->base + SMP8759_ENABLE + offset);
> >  
> >  	virq = platform_get_irq(pdev, 1);
> > -	if (virq <= 0) {
> > +	if (virq < 0) {
> >  		dev_err(dev, "Failed to map IRQ\n");
> > -		return -ENXIO;
> > +		return virq;
> >  	}
> >  
> >  	irq_dom = irq_domain_create_linear(fwnode, MSI_MAX, &dom_ops, pcie);
> 
> Weee, here we go again :-)
> 
> https://patchwork.kernel.org/patch/11066455/
> https://patchwork.kernel.org/patch/10006651/
> 
> Last time around, my understanding was that, going forward,
> the best solution was:
> 
> 	virq = platform_get_irq(...)
> 	if (virq <= 0)
> 		return virq ? : -ENODEV;
> 
> i.e. map 0 to -ENODEV, pass other errors as-is, remove the dev_err
> 
> @Bjorn/Lorenzo did you have a change of heart?

Yes.  In 10006651 (Oct 20, 2017), I thought:

  irq = platform_get_irq(pdev, 0);
  if (irq <= 0)
    return -ENODEV;

was fine.  In 11066455 (Aug 7, 2019), I said I thought I was wrong and
that:

  platform_get_irq() is a generic interface and we have to be able to
  interpret return values consistently.  The overwhelming consensus
  among platform_get_irq() callers is to treat "irq < 0" as an error,
  and I think we should follow suit.
  ...
  I think the best pattern is:

    irq = platform_get_irq(pdev, i);
    if (irq < 0)
      return irq;

I still think what I said in 2019 is the right approach.  I do see
your comment in 10006651 about this pattern:

  if (virq <= 0)
    return virq ? : -ENODEV;

but IMHO it's too complicated for general use.  Admittedly, it's not
*very* complicated, but it's a relatively unusual C idiom and I
stumble over it every time I see it.  If 0 is a special case I think
it should be mapped to a negative error in arch-specific code, which I
think is what Linus T suggested in [1].

I think there's still a large consensus that "irq < 0" is the error
case.  In the tree today we have about 1400 callers of
platform_get_irq() and platform_get_irq_byname() [2].  Of those,
almost 900 check for "irq < 0" [3], while only about 150 check for
"irq <= 0" [4] and about 15 use some variant of a "irq ? : -ENODEV"
pattern.

The bottom line is that in drivers/pci, I'd like to see either a
single style or a compelling argument for why some checks should be
"irq < 0" and others should be "irq <= 0".

[1] https://yarchive.net/comp/linux/zero.html
[2] $ git grep "=.*platform_get_irq" | wc -l
    1422
[3] $ git grep -A4 "=.*platform_get_irq" | grep "<\s*0" | wc -l
    894
[4] $ git grep -A4 "=.*platform_get_irq" | grep "<=\s*0" | wc -l
    151
[5] $ git grep -A4 "=.*platform_get_irq" | grep "return.*?.*:.*;" | wc -l
    15

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
