Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9B417078E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 19:23:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=duU2eAWWClasJigyWp7glscY/3g6sdsVEPZW+MyqsmU=; b=hJ4p0Daki7VzKQ
	x5vbODCVx0WHsmdgqzEZKYMuN0QqDBJgMsmIRiRtx1qhsRPs/d78m1EKHUekahBK55OGfBEeLZCyV
	NWQAtKlEK7YLUD/gpi3EgFGcj/fpav0/AWDQwUNjV/WqChvoHCLRMFnuTyRFl+ZruAvKCGE0+1l7u
	8RuAramoL6D9rF96Q51LjOLiG5l0uc+j/JO60PlH84xMxbo9H7gC3f9DKJKacFdpTtjIW8G48bLdY
	Bu2yTsvPZ0YqPXJZN9A2pth2Pzt1Zzg9g+b46yuvbmHn2Sn2hbW1ArlvA5u2O2Khg0NWYOLUXtkYE
	AZg5BtXVRwsyis3RW8kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j71Kt-0004NJ-TF; Wed, 26 Feb 2020 18:23:07 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j71Ke-0004Az-10; Wed, 26 Feb 2020 18:22:53 +0000
Received: by mail-ed1-x541.google.com with SMTP id m13so5003734edb.6;
 Wed, 26 Feb 2020 10:22:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4F5P1PauU1ebi/qO8Sg8RRFuYolggB9ao3VqBLODYOc=;
 b=RDEaga21ySZ72U2wyLsvv547LGdrKjUlXejb8qsNUo+YFMKVWP8sM/rbETj4Zz+ibr
 TMO4UvFdtSsO1ZfN4K0MWAWllIkXsYt75ggtVrrDpJJh/26ooVOpCvLdGbb51LDWiLSf
 4tnoK2g3HnRx9x2mYAirOKx8jukgJCmuWv6H1xogctnhhv4My4uO+w3HZ7HwEZ1LvgwJ
 lNlh7sH1FNsqJA0SdA92V36QN1Pt8GtYt8WRJN2IgTN7e8yJVLnt0FiZCeSa1wpxBCPJ
 tK3n/8wHMQ5Mx180pC9qZrpEuXq3btWQZcTFxR0kLz/57mJzzvu6Wq3WTqoLn1d6nsT2
 nYuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4F5P1PauU1ebi/qO8Sg8RRFuYolggB9ao3VqBLODYOc=;
 b=qauZG48vXq5GklwUBtUHhOjtBH3cXcrK+r9i7h//yXD5y3CdqoKpHnY+7RtlnIZpfA
 9DTBePla0y2xny2av9hSuNbCjdG3sMryBNZ/7qBW14sWu4KXF8pHOvQs8Mqw3vC+JWxY
 Yi8za0rZfikFxdYDuo7j+MyFP3M2U2gw0YzSfLMqA43MJeGuMa01mGtekzgfuBqQeb1k
 bcIERr5QGR4QVwgfUTugxw9i+YRwu7KNYH9S8wVIoPWa1ggIurcJJl7xVDRJWHwQUhqG
 RHuw1jOcSaQ32MFueDNiVKADkXzsWay5TIUiHa4+MIRt3y6Foa9mOY6gM8zWlo7igjT/
 /sMA==
X-Gm-Message-State: APjAAAXvJbRKygLzqnGm+WtTOipHHD95m739zsdzZWXc3rj+J7F6Vrou
 024g8ffle03YqF+jF3V6SjThJNCrAN1XF021Jm4=
X-Google-Smtp-Source: APXvYqzNB2eI1k7C3+5x8npyIPGw1ri/9DkGYVNZqj+crpBw+z1oumpxk11mzsPFWqmmwWOEY7cgnFNbkJ+PtccHAoI=
X-Received: by 2002:aa7:c44e:: with SMTP id n14mr622848edr.179.1582741370130; 
 Wed, 26 Feb 2020 10:22:50 -0800 (PST)
MIME-Version: 1.0
References: <20200226102312.GX25745@shell.armlinux.org.uk>
 <E1j6tqv-0003G6-BO@rmk-PC.armlinux.org.uk>
 <CA+h21hrR1Xkx9gwAT2FHqcH38L=xjWiPxmF2Er7-4fHFTrA8pQ@mail.gmail.com>
 <20200226115549.GZ25745@shell.armlinux.org.uk>
 <CA+h21hqjMBjgQDee8t=Csy5DXVUk9f=PP0hHSDfkuA746ZKzSQ@mail.gmail.com>
 <20200226133614.GA25745@shell.armlinux.org.uk>
 <CA+h21hqHfC0joRDhCQP6MntFdVaApFiC51xk=tUf3+y-C7sX_Q@mail.gmail.com>
In-Reply-To: <CA+h21hqHfC0joRDhCQP6MntFdVaApFiC51xk=tUf3+y-C7sX_Q@mail.gmail.com>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Wed, 26 Feb 2020 20:22:39 +0200
Message-ID: <CA+h21hpzCY=+0U4JgFbqGLS=Sh6SjkSt=4J9e0AGVHKJPOHq1A@mail.gmail.com>
Subject: Re: [PATCH net-next v2 1/8] net: phylink: propagate resolved link
 config via mac_link_up()
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_102252_067907_8D23E02D 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [olteanv[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Florian Fainelli <f.fainelli@gmail.com>,
 Ioana Radulescu <ruxandra.radulescu@nxp.com>, Jonathan Corbet <corbet@lwn.net>,
 Michal Simek <michal.simek@xilinx.com>, Jose Abreu <joabreu@synopsys.com>,
 Jakub Kicinski <kuba@kernel.org>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, Alexandre Torgue <alexandre.torgue@st.com>,
 Hauke Mehrtens <hauke@hauke-m.de>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, netdev <netdev@vger.kernel.org>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Felix Fietkau <nbd@nbd.name>,
 "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 26 Feb 2020 at 20:21, Vladimir Oltean <olteanv@gmail.com> wrote:
>
> On Wed, 26 Feb 2020 at 15:36, Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> >
> >
> > dpaa2 is complicated by the firmware, and that we can't switch the
> > interface mode between (SGMII,1000base-X) and 10G.
> >
> > If the firmware is in "DPMAC_LINK_TYPE_PHY" mode, it expects to be told
> > the current link parameters via the dpmac_set_link_state() call - it
> > isn't clear whether that needs to be called for other modes with the
> > up/down state (firmware API documentation is poor.)
> >
>
> With PCS control in Linux, I am pretty sure that you don't want
> anything other than DPMAC_LINK_TYPE_PHY anyway.
> Basically in DPMAC_LINK_TYPE_FIXED, the MC firmware is in control of
> the PCS and polls its link state to emit link notifications to objects
> connected to the DPMAC. So Linux control of PCS would class with

s/class/clash/

> firmware control of the PCS, leading to undesirable side-effects to
> say the least.
>
> > --
> > RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> > FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> > According to speedtest.net: 11.9Mbps down 500kbps up
>
> Regards,
> -Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
