Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D1A1CC1C5
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 15:26:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FGtsjz+ot98Xnqm+ORHN0tpCuq+yiWLJIC9OUo85Ww8=; b=Vn+sSNEM5IJKE9
	6FdpLe4ygImehD2zhiJ0nKKoSbkSyewQk7f8Kp3cvK+tDZaqa6lE1sPNhB34ywH41hroNOgLS10lh
	djQfpUj4gnbCjM9M7ndlIVZVzMTT2v8ynOkwFYd67IaXZl2sXvfSflXgDlx/D2RfXTKPIJyauyGyc
	cBZ6TIA9EgIidTuWTW5Lmw7KglW7zclPfBF4rMhTVsjJ8WvM1g/F/ZO2bdCI+nrcxrydbMrpokGwD
	9FLup8o1ns2ZPjT8Z+Obg4SLrteR3RSRkXOa+ETKWn4Dw0dyaiqS+fwx4eU/4LUWY0ksNtfEjDzUT
	hD3irl/6AHhxdxquhSEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXPUJ-0002WL-9y; Sat, 09 May 2020 13:25:55 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXPUC-0002Um-8A
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 13:25:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xxlsFN8Q2F7QH7NHZLiYgcMIZjPCMsIK8HIfpq4aIt4=; b=CC1qQzYwUvi3gcWuWkniLvbVn
 +1SRe5Cwu1ktiXbITbx+OQsj8ufkHeYyYXavUQ5G5gwuX8rEDg/htQ5Z3UTaSlk1FaY3fbig7HjaG
 4jngtXZSQnGJNq86asL7QOfbiLmUL4ynk0NVBKbW4DfmWiRrCwmjM83LRyssNFOg4ypmuT5CDjrBv
 p8Hzmc5aThtcAw2lvomwaQSPUA55cbUugMVtTVHNQT2EopMpJlHYOwfb99RjDxWfYUtnWSiC3iwfG
 X/VuA0b750K672ePelBIBzgBLRIMg+49G/ukh6HsSUZnSw8FcWZI4KjPwFRVaCNsxQL3SqKCMQW1G
 7KVQRW2aA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:38026)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jXPTr-0003zF-P5; Sat, 09 May 2020 14:25:29 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jXPTo-0002su-Mn; Sat, 09 May 2020 14:25:24 +0100
Date: Sat, 9 May 2020 14:25:24 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Stefan Chulski <stefanc@marvell.com>
Subject: Re: [EXT] Re: [PATCH net-next 3/5] net: mvpp2: cls: Use RSS contexts
 to handle RSS tables
Message-ID: <20200509132524.GD1551@shell.armlinux.org.uk>
References: <20190524100554.8606-1-maxime.chevallier@bootlin.com>
 <20190524100554.8606-4-maxime.chevallier@bootlin.com>
 <CAGnkfhzsx_uEPkZQC-_-_NamTigD8J0WgcDioqMLSHVFa3V6GQ@mail.gmail.com>
 <20200423170003.GT25745@shell.armlinux.org.uk>
 <CAGnkfhwOavaeUjcm4_+TG-xLxQA519o+fR8hxBCCfSy3qpcYhQ@mail.gmail.com>
 <DM5PR18MB1146686527DE66495F75D0DAB0A30@DM5PR18MB1146.namprd18.prod.outlook.com>
 <CAGnkfhwV4YyR9f1KC8VFx4FPRYkAoXXUURa715wb3+=23=rr6Q@mail.gmail.com>
 <DM5PR18MB11462564D691544445CA2A43B0A30@DM5PR18MB1146.namprd18.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM5PR18MB11462564D691544445CA2A43B0A30@DM5PR18MB1146.namprd18.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_062548_610040_95F4032C 
X-CRM114-Status: GOOD (  19.38  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Antoine Tenart <antoine.tenart@bootlin.com>,
 netdev <netdev@vger.kernel.org>,
 "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Matteo Croce <mcroce@redhat.com>, Marcin Wojtas <mw@semihalf.com>,
 "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 09, 2020 at 12:31:21PM +0000, Stefan Chulski wrote:
> > -----Original Message-----
> > From: Matteo Croce <mcroce@redhat.com>
> > Sent: Saturday, May 9, 2020 3:16 PM
> > To: Stefan Chulski <stefanc@marvell.com>
> > Cc: David S . Miller <davem@davemloft.net>; Maxime Chevallier
> > <maxime.chevallier@bootlin.com>; netdev <netdev@vger.kernel.org>; LKML
> > <linux-kernel@vger.kernel.org>; Antoine Tenart
> > <antoine.tenart@bootlin.com>; Thomas Petazzoni
> > <thomas.petazzoni@bootlin.com>; gregory.clement@bootlin.com;
> > miquel.raynal@bootlin.com; Nadav Haklai <nadavh@marvell.com>; Marcin
> > Wojtas <mw@semihalf.com>; Linux ARM <linux-arm-
> > kernel@lists.infradead.org>; Russell King - ARM Linux admin
> > <linux@armlinux.org.uk>
> > Subject: Re: [EXT] Re: [PATCH net-next 3/5] net: mvpp2: cls: Use RSS contexts to
> > handle RSS tables
> > 
> > Hi,
> > 
> > The point is that RXHASH works fine on all interfaces, but on the gigabit one
> > (eth2 usually).
> > And on the 10 gbit interface is very very effective, the throughput goes 4x when
> > enabled, so it would be a big drawback to disable it on all interfaces.
> > 
> > Honestly I don't have any 2.5 gbit hardware to test it on eth3, so I don't know if
> > rxhash actually only works on the first interface of a unit (so eth0 and eth1), or
> > if it just doesn't work on the gigabit one.
> > 
> > If someone could test it on the 2.5 gbit port, this will be helpful.
> 
> RSS tables is part of Packet Processor IP, not MAC(so it's not related to specific speed). Probably issue exist on specific packet processor ports.
> Since RSS work fine on first port of the CP, we can do the following:
> if (port-> id == 0)
> 	dev->hw_features |= NETIF_F_RXHASH;

I can confirm that Macchiatobin Single Shot eth0 port works with a
1G Fibre SFP or 10G DA SFP with or without rxhash on.

So it seems Stefan's hunch that it is port related is correct.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
