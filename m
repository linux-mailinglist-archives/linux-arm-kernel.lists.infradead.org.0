Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD7B1C8562
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 11:11:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H4H9kl2nyXytyqv161cLKHYM4nrrNpEP/tSdF3JUhXU=; b=YIn+LcYEUm19kL
	iQH9G1zICv8lpazu8oZpjWtXAcqBGaAtHvCy9Mh5g/3r0D6Gtu0A4oTNMKXYPmbKloAcYdeKrbro7
	y31hDgLQTo+oQyg+k/WRV838xeR+MAnZBCF0+MyjRKWdGSzY2D562YCzxn8TBzdN1XVJR1DCsMUGD
	UpEgKRlC5bf15Vea04OcgOSwSHN2ytlBPZyqvFIxgXmCUHDjoYtd3rgOdBvw1dnmyRWDMmpcKJJs4
	vlUvUe7755BATD1yDdaTrah0rP5YvIJ0/1J/Twrt9B3fBh5TfuRbDp0gIQ9X0AMI+lv2Af42O+qkB
	rcZh3EFaG/OWPaQY6Pww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWcYe-0003ZQ-7K; Thu, 07 May 2020 09:11:08 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWcYX-0003Yz-EE
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 09:11:02 +0000
Received: by mail-pl1-x644.google.com with SMTP id u22so1822329plq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 02:11:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JBT6KrKPDV5CjqbR8NDCy7mpTcDdeEp7C5NBrNvcrDY=;
 b=kVxUpNAU2X5gF8L0wi+DyBySR80rdREgOTCndFcxAxZ5o1/ZAGVfUqtsWKwLF0Pa/u
 5VlziewE/8fe6NnCkGc3Ph2U6L2/oSl/f8uR72qd3yHNwaqdpv2dvNMAW1V6ZK6GmZpF
 XufJCfMyHxhC43y07FPPo6k6b4e6UWM1L9UIseHpeJakHL2EDV8nuqNy1lOlb7/Lvovx
 +Qr8DuTQ62XSzBiO9K+0Sy9zPbrwHFV3jEPKUwqIHxZfJQ6mIwmROmv/B8yYWXUa1+Hd
 afZ9rgolKYC6b4dwrtUFVeaOonYWK/bbkkYwAxSkHn4eQ5RuvJlmrbmxTSe3vpUhlwXO
 i/9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JBT6KrKPDV5CjqbR8NDCy7mpTcDdeEp7C5NBrNvcrDY=;
 b=sGWFZVXvN09sHbUDRd0r8iUxuDQMFXyHHx8pKzy55+Gbks/spda5+YDZLQoBjuRNAc
 jY4bhkyfEpFptQvhp7mlOdjEeAZZlw//B2eDhEJ9KhLMhct6NKEcO7fZEDnBmNzoWZ3X
 YhC0/ypiF/vU5PPAI1L5St681u12yKx8HSVWknem/FKvWoTeqY5EMG/PgCdvEuF0lQTs
 UK4ODyY+1vKG2i8Rdho1RHAikA2t+5/Y4lJO/yQoUoDm80qAqTg/W9bEa9rWGfvfrpuD
 FxQLxlMo/8CtQ7a+6CswXUJuOrKmOAck1r8eqTJCVrfnlYi5GLW3QNmUlEotLV9bPS5K
 dwTg==
X-Gm-Message-State: AGi0PubSde5bRgAjEsPI9+Kvdtw6kVTv4JISBk8rOF9N7dMssM35AWfa
 EjRl77SX0tejlpNa4IY1fCy/BRGHPsXLMQzdmgDmsSJQ
X-Google-Smtp-Source: APiQypLSmUDlB8+hESCKFexeV6yOLtQ3+jQd1hZaeXg3Qh7fHvakmbggZLIgn4AzvrXWYYT9Q3xQHb/UA6E5FX3UzOE=
X-Received: by 2002:a17:90a:340c:: with SMTP id
 o12mr13739254pjb.22.1588842660053; 
 Thu, 07 May 2020 02:11:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200505132905.10276-1-calvin.johnson@oss.nxp.com>
 <20200505132905.10276-6-calvin.johnson@oss.nxp.com>
 <CAHp75VfOcQiACsOcfWyJSP1dzdYpaCa-_KKf==4YCkaM_Wk3Tg@mail.gmail.com>
 <20200507074435.GA10296@lsv03152.swis.in-blr01.nxp.com>
In-Reply-To: <20200507074435.GA10296@lsv03152.swis.in-blr01.nxp.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 7 May 2020 12:10:48 +0300
Message-ID: <CAHp75VeFCzJ97c7AZD8ksA-r3C-XyM24Rt30+Obw6tCaR4xprA@mail.gmail.com>
Subject: Re: [net-next PATCH v3 5/5] net: mdiobus: Introduce
 fwnode_mdiobus_register_phy()
To: Calvin Johnson <calvin.johnson@oss.nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_021101_500811_655D4CE3 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 "Rafael J . Wysocki" <rafael@kernel.org>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Florian Fainelli <f.fainelli@gmail.com>,
 "Rajesh V . Bikkina" <rajesh.bikkina@nxp.com>,
 Pankaj Bansal <pankaj.bansal@nxp.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Diana Madalina Craciun <diana.craciun@nxp.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Florin Laurentiu Chiculita <florinlaurentiu.chiculita@nxp.com>,
 Madalin Bucur <madalin.bucur@oss.nxp.com>,
 Makarand Pawagi <makarand.pawagi@nxp.com>, Varun Sethi <V.Sethi@nxp.com>,
 Marcin Wojtas <mw@semihalf.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jeremy Linton <jeremy.linton@arm.com>, linux.cj@gmail.com,
 netdev <netdev@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 7, 2020 at 10:44 AM Calvin Johnson
<calvin.johnson@oss.nxp.com> wrote:
>
> On Tue, May 05, 2020 at 05:22:00PM +0300, Andy Shevchenko wrote:
> > On Tue, May 5, 2020 at 4:30 PM Calvin Johnson
> > <calvin.johnson@oss.nxp.com> wrote:

...

> > > +       bool is_c45 = false;
> >
> > Redundant assignment, see below.
> >
> > > +       const char *cp;
> > > +       u32 phy_id;
> > > +       int rc;

> > > +       fwnode_property_read_string(child, "compatible", &cp);
> >
> > Consider rc = ...; otherwise you will have UB below.
> >
> > > +       if (!strcmp(cp, "ethernet-phy-ieee802.3-c45"))
> >
> > UB!
>
> Thanks for the comments! I've considered all of them.
> What is UB, by the way? :)-

Undefined Behaviour.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
