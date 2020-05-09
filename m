Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E631CC1B1
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 15:15:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yNuKAHB2XFtP+4+fUqHcdP/bS45ZhiIVcoLGfWFlkG8=; b=DZyge3U+IoEfef
	Rs6FHWu8hvoCvKjnnNCayTEc/6pcTc8cbNaON42QaqQl/zFRHCBio5Vq9EbzmL+1mVrI+Jx16gipT
	e7vrTC+gJFt/PTsN8RiPLTCjawP2QW6MYStR7pPcWsdMcYGd+Cm8dvTyt51tqpeQarPjSRD+nZR0S
	Jj/zAYU8QrIXLf7c6ytT1eVxt808RNPUS20MTGb77NEqriCA2sEbDNmj6qyoOhhEq1RJGo2ZLsfGn
	fqXCQ4bvCNLx1MpNYSJElKBbtKgBnnjOSZQWAS5ME1/KLyNBuferSL43zmYzmIncnmSS9x1kiL8+3
	wzK9DVX8ZI6vzNmniNzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXPJe-0002I3-MD; Sat, 09 May 2020 13:14:54 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXPJW-0002H2-Ql
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 13:14:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589030085;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=fXszUZPGL30pBHLQXJciSiK0fXjuwaWRz9TKtjnhSaw=;
 b=NgBe6TEq5dKbyEuyWZEfv0fVzAOHKexWUfeT5EjjR/bxky6HExlpx4jA+oneQOWddzOM8t
 2XKHv4q3KKyUyB/fyxIC/E3Fb6Qn2zgwQjOi9T2nqKnOpxof11P0ZDTgy2KlkuGZZgp4gY
 H3AMz8qEDDV6ZRdeOQe9a+zWhBhaaLI=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-329-uONdbQH8NU6Zrc6vFtDf1g-1; Sat, 09 May 2020 09:14:43 -0400
X-MC-Unique: uONdbQH8NU6Zrc6vFtDf1g-1
Received: by mail-ej1-f72.google.com with SMTP id rp12so1898209ejb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 09 May 2020 06:14:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fXszUZPGL30pBHLQXJciSiK0fXjuwaWRz9TKtjnhSaw=;
 b=a7zjFDMISImivwrr0Zdvn8zF0DThoVFlKI+HMqTgt/T4UD+THeo6bXs8xBt9t1+NqF
 QB+A2l3PGdY0B9pkkXQZY/JPEypVYCcDR3NUWah/cIkMB5P+dneKmvOirvC+R27c9S2U
 Hq194iuXWTuXWgKl1MQJbR0F5BXP/FwKRCGLnLgO29gGdOpuuKlsiLpkPE6rQjgeNqqq
 Z5YogRWRniaP0x1kO84H9pDxmAvF0tWiE+fHtVHdOf6OuC9nwS5Lx70FMxwZV5DVT11S
 T8eBLy3KEsrvbfTmrXT4a6UE+aFR3+jnvUEOOz0jppJ+2Dg+IVWythug0FFptMc3g/XJ
 52jw==
X-Gm-Message-State: AGi0PuZlz+LcN024GTRgp1MfrHorO7C+PJUw4ZwQfJsxwzOQuTGOIZ8G
 fY3jbGEZS5VzW8sQYNbwjhXyY8TeamA2WKt0UN5f6YFTvf2J5ayjM5RU3CPaj9psRSAJe/zeXbq
 JT9L8iBIPVCmeqf/fiVyVbEWTq/EyTADrjhpwwpPsokzSUuNzTic=
X-Received: by 2002:a05:6402:b2a:: with SMTP id
 bo10mr6360495edb.366.1589030082242; 
 Sat, 09 May 2020 06:14:42 -0700 (PDT)
X-Google-Smtp-Source: APiQypJTOew0BzTLx2lykLc6ZnwAhULmTxRo4EBF7kA/EDNp3Rtkx/81lrJt/Ty1aqhmM7gm8iaduhfmnd2Vfy0rnYA=
X-Received: by 2002:a05:6402:b2a:: with SMTP id
 bo10mr6360472edb.366.1589030081918; 
 Sat, 09 May 2020 06:14:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190524100554.8606-1-maxime.chevallier@bootlin.com>
 <20190524100554.8606-4-maxime.chevallier@bootlin.com>
 <CAGnkfhzsx_uEPkZQC-_-_NamTigD8J0WgcDioqMLSHVFa3V6GQ@mail.gmail.com>
 <20200423170003.GT25745@shell.armlinux.org.uk>
 <CAGnkfhwOavaeUjcm4_+TG-xLxQA519o+fR8hxBCCfSy3qpcYhQ@mail.gmail.com>
 <DM5PR18MB1146686527DE66495F75D0DAB0A30@DM5PR18MB1146.namprd18.prod.outlook.com>
 <20200509114518.GB1551@shell.armlinux.org.uk>
In-Reply-To: <20200509114518.GB1551@shell.armlinux.org.uk>
From: Matteo Croce <mcroce@redhat.com>
Date: Sat, 9 May 2020 15:14:05 +0200
Message-ID: <CAGnkfhx8fEZCoLPzGxSzQnj1ZWcQtBMn+g_jO1Jxc4zF7pQwjQ@mail.gmail.com>
Subject: Re: [EXT] Re: [PATCH net-next 3/5] net: mvpp2: cls: Use RSS contexts
 to handle RSS tables
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_061446_941641_5984EE6E 
X-CRM114-Status: GOOD (  20.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Antoine Tenart <antoine.tenart@bootlin.com>,
 netdev <netdev@vger.kernel.org>,
 "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 9, 2020 at 1:45 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Sat, May 09, 2020 at 11:15:58AM +0000, Stefan Chulski wrote:
> >
> >
> > > -----Original Message-----
> > > From: Matteo Croce <mcroce@redhat.com>
> > > Sent: Saturday, May 9, 2020 3:13 AM
> > > To: David S . Miller <davem@davemloft.net>
> > > Cc: Maxime Chevallier <maxime.chevallier@bootlin.com>; netdev
> > > <netdev@vger.kernel.org>; LKML <linux-kernel@vger.kernel.org>; Antoine
> > > Tenart <antoine.tenart@bootlin.com>; Thomas Petazzoni
> > > <thomas.petazzoni@bootlin.com>; gregory.clement@bootlin.com;
> > > miquel.raynal@bootlin.com; Nadav Haklai <nadavh@marvell.com>; Stefan
> > > Chulski <stefanc@marvell.com>; Marcin Wojtas <mw@semihalf.com>; Linux
> > > ARM <linux-arm-kernel@lists.infradead.org>; Russell King - ARM Linux admin
> > > <linux@armlinux.org.uk>
> > > Subject: [EXT] Re: [PATCH net-next 3/5] net: mvpp2: cls: Use RSS contexts to
> > > handle RSS tables
> > >
> > > Hi,
> > >
> > > What do you think about temporarily disabling it like this?
> > >
> > > --- a/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
> > > +++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
> > > @@ -5775,7 +5775,8 @@ static int mvpp2_port_probe(struct platform_device
> > > *pdev,
> > >                             NETIF_F_HW_VLAN_CTAG_FILTER;
> > >
> > >         if (mvpp22_rss_is_supported()) {
> > > -               dev->hw_features |= NETIF_F_RXHASH;
> > > +               if (port->phy_interface != PHY_INTERFACE_MODE_SGMII)
> > > +                       dev->hw_features |= NETIF_F_RXHASH;
> > >                 dev->features |= NETIF_F_NTUPLE;
> > >         }
> > >
> > >
> > > David, is this "workaround" too bad to get accepted?
> >
> > Not sure that RSS related to physical interface(SGMII), better just remove NETIF_F_RXHASH as "workaround".
>
> Hmm, I'm not sure this is the right way forward.  This patch has the
> effect of disabling:
>
> d33ec4525007 ("net: mvpp2: add an RSS classification step for each flow")
>
> but the commit you're pointing at which caused the regression is:
>
> 895586d5dc32 ("net: mvpp2: cls: Use RSS contexts to handle RSS tables")
>
>

Hi,

When git bisect pointed to 895586d5dc32 ("net: mvpp2: cls: Use RSS
contexts to handle RSS tables"), which was merged
almost an year after d33ec4525007 ("net: mvpp2: add an RSS
classification step for each flow"), so I assume that between these
two commits either the feature was working or it was disable and we
didn't notice

Without knowing what was happening, which commit should my Fixes tag point to?

Regards,
-- 
Matteo Croce
per aspera ad upstream


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
