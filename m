Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F04731CC139
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 14:17:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/bFjcN1g7l3RKwxVE0KP8MjCRjOmFxfhB+nfnRjzZ7U=; b=HlqK/tmzjYhxCn
	q98bEMWCWlM6Lae3Yqu5Vgps3s5JvVtNX0LBFX4VET4/3tFf27LcaevflyPmg4apcnV883BqtE0jM
	BmCtD/wIg7zpORKnKOWKX8SD/RZIHqb5N7OuynKe6LgZiM7ZwdOEJDg4BlvwmZtoQlA9VKMM9soWx
	U2OFKbftcqfP2RrS7d32yNwkx43t+HRp4cKYQrzw/PCfy25FTOAx+Z1EgOePqxfnUi2GdzKhLLXXc
	y2C4BevnPY7MIO/97DKJQcaV+ayRuFzEeK2QH4C8ml5NS8HhoVQE5g7YGn5t2bASLgBjuCcgkjJdj
	H5f4kwfMIIgi+LIwwz7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXOQ0-0002WK-NZ; Sat, 09 May 2020 12:17:24 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXOPh-0002PF-Rb
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 12:17:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589026624;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=H76Mksznw95btvUBSKx6gefc+t9SRkpD4GR2A1wMEWw=;
 b=OzEPE8Uck2nnsfBFgiHUbES5hHsUh/5b7xP1xfG2sumWQcZ6pJPWY7opF4tkentIkikHO7
 odVbW8sygJAe4JIaQ/tnNdKyPOa1+kMItU3PKLY9eRl/pWd+BVQXqdIUIoKpB7V68z17/X
 q0NMON1TyL/03sHbhGN6E7aeTMHmcM8=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-435-5Dc0Nh4eOHK_3v-mbyDTjA-1; Sat, 09 May 2020 08:16:57 -0400
X-MC-Unique: 5Dc0Nh4eOHK_3v-mbyDTjA-1
Received: by mail-ej1-f69.google.com with SMTP id u19so1882212eja.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 09 May 2020 05:16:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=H76Mksznw95btvUBSKx6gefc+t9SRkpD4GR2A1wMEWw=;
 b=pj1mLwhrb++vMfo/AkqhFnlOFn+0K1d7F6mv/Iolw8yisf8+zJx4BJ3Mn2W69YJSdo
 0EENDvAj2OcXVKysLKNWmfScB0HU5SsuEyjlBz1G2nVHSCV/7ysID5a9BZCTG5NNi5A/
 NCQZvsDlQysvNu4eyCDO69OeAHos7gxhmXm9NzeNevaCF9EHVl8sAVAjuKN0Lc5VumrT
 yxabDvxw+hErrjLqm6aMf03YG5Vl5gS7nQ2OJobiOtLILWQYmZKiKNPxMLw61ozPfaX4
 ojO1i8DgIb1QftGMaVBK43aPoZrqWb80jBtTWVdPesXew75WV3kbTYLu5zPXoNQAtPmG
 kXPw==
X-Gm-Message-State: AGi0PuZIHRIJjYrXCA1CIqkZ46lWx/vb3Zc91NAwuEsUTCPuRRjRumb4
 tAFMwQ1UYATE3Z3wcMS5Vsduj+363Uh4m3T+R+kCNWpobDpeKw67hzojbJ1dKr++fJZsf/0EW+C
 RvqQAbRxB6hG2MRD5jkZMLr7Jt/FAytdiOOIU/1ZyIaC1eTk4RCc=
X-Received: by 2002:a17:906:3584:: with SMTP id
 o4mr5983537ejb.70.1589026616187; 
 Sat, 09 May 2020 05:16:56 -0700 (PDT)
X-Google-Smtp-Source: APiQypI1UXFBpEK1GTG9DqxWl2WPCdbZuNHFa+X/9FasNbc4VjLFflOlGIHoBd2LBjBaMDinS7oLti41vflUZ4eTHZc=
X-Received: by 2002:a17:906:3584:: with SMTP id
 o4mr5983519ejb.70.1589026615896; 
 Sat, 09 May 2020 05:16:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190524100554.8606-1-maxime.chevallier@bootlin.com>
 <20190524100554.8606-4-maxime.chevallier@bootlin.com>
 <CAGnkfhzsx_uEPkZQC-_-_NamTigD8J0WgcDioqMLSHVFa3V6GQ@mail.gmail.com>
 <20200423170003.GT25745@shell.armlinux.org.uk>
 <CAGnkfhwOavaeUjcm4_+TG-xLxQA519o+fR8hxBCCfSy3qpcYhQ@mail.gmail.com>
 <DM5PR18MB1146686527DE66495F75D0DAB0A30@DM5PR18MB1146.namprd18.prod.outlook.com>
In-Reply-To: <DM5PR18MB1146686527DE66495F75D0DAB0A30@DM5PR18MB1146.namprd18.prod.outlook.com>
From: Matteo Croce <mcroce@redhat.com>
Date: Sat, 9 May 2020 14:16:19 +0200
Message-ID: <CAGnkfhwV4YyR9f1KC8VFx4FPRYkAoXXUURa715wb3+=23=rr6Q@mail.gmail.com>
Subject: Re: [EXT] Re: [PATCH net-next 3/5] net: mvpp2: cls: Use RSS contexts
 to handle RSS tables
To: Stefan Chulski <stefanc@marvell.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_051705_985992_98C0CFF9 
X-CRM114-Status: GOOD (  17.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Marcin Wojtas <mw@semihalf.com>, "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 9, 2020 at 1:16 PM Stefan Chulski <stefanc@marvell.com> wrote:
> > Hi,
> >
> > What do you think about temporarily disabling it like this?
> >
> > --- a/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
> > +++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
> > @@ -5775,7 +5775,8 @@ static int mvpp2_port_probe(struct platform_device
> > *pdev,
> >                             NETIF_F_HW_VLAN_CTAG_FILTER;
> >
> >         if (mvpp22_rss_is_supported()) {
> > -               dev->hw_features |= NETIF_F_RXHASH;
> > +               if (port->phy_interface != PHY_INTERFACE_MODE_SGMII)
> > +                       dev->hw_features |= NETIF_F_RXHASH;
> >                 dev->features |= NETIF_F_NTUPLE;
> >         }
> >
> >
> > David, is this "workaround" too bad to get accepted?
>
> Not sure that RSS related to physical interface(SGMII), better just remove NETIF_F_RXHASH as "workaround".
>
> Stefan.

Hi,

The point is that RXHASH works fine on all interfaces, but on the
gigabit one (eth2 usually).
And on the 10 gbit interface is very very effective, the throughput
goes 4x when enabled, so it would be a big drawback to disable it on
all interfaces.

Honestly I don't have any 2.5 gbit hardware to test it on eth3, so I
don't know if rxhash actually only works on the first interface of a
unit (so eth0 and eth1),
or if it just doesn't work on the gigabit one.

If someone could test it on the 2.5 gbit port, this will be helpful.

Regards,
-- 
Matteo Croce
per aspera ad upstream


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
