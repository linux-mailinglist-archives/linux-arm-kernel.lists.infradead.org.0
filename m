Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4D51999F7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 17:40:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V67pQslgxvnd7Nrz1R9st/IkaX+KysqU3cdxXtfp+uU=; b=pNTj2+k3ophFGy
	oKAv3wJRncm9pxDCXvTnZmz6iVcZWrsFp5vx+hO8n0UURd1bIAiAAoPZvCtk7fL9OOkERaHCuLo5L
	u42ZWQiwqDOjFuaPFhv243qCMsIIEP567jaoPBIot738hS9wshIHQtoGSFyfL311M04thc8pYi6ww
	necN6n1s8OBleuDBjJZEH1xnKPflfNK/YJlle4hjqXwmI0P4cY6tsiEQ8P13dCICAIPBzRNckhBeT
	JddJ3f5USugfrs7zYkzXzR1gxGS7Au2P9HG6dwlvpRIoPsDZ36PKnV6TP38hGR2xhjEfwPqgMD9sn
	iiVbAZ/fV8iwt1zt1vPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJ0H-0006tF-Om; Tue, 31 Mar 2020 15:40:37 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJ06-0006so-N0
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 15:40:28 +0000
Received: by mail-ed1-x541.google.com with SMTP id cw6so24935702edb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 08:40:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OxOzUkSFr6Wk07X0rWnPtJzVLAiDlRwjY44J+SEwVCw=;
 b=npxLREbo59UnWM8carwNx0WfN7TP3zULYz7BwC7Ynn+Jq+Dnu53Dv+BaXolUmXVF9g
 nsCAA9cvDbvEDrU0il0d06GFVRLsO4ZeCY3QK0z0MFrbXg9tfNRfgcUihUn+TU9oyPRl
 UjNLWYVFCmcFpq5EjE58+zT2B8XH4hGR+xLJtWveeMzZKG0du2DQQbGQHsRuTSTjvXHn
 X9fHHGANLRMBcLSONrxC+3wdAX3Rr4fJkSinyyLnim6lI+oTHla3ZYEf9xUku2t4rXt/
 Dyp+LuXQdME5SUNXfEoqQTkpeZ6IB6c1MtOUQ1lYkhPZiQ+0jqW7XZVhuZ1PfP4aSSXl
 464w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OxOzUkSFr6Wk07X0rWnPtJzVLAiDlRwjY44J+SEwVCw=;
 b=tv246B9F03cDyRakJfuiqavnzMITXFwOGRdOZVJdRtoCjabOzHJAqR9GlW2hBVs2d3
 HvF5/ziFDbPjAGwxNHlQm4ZdWB4t7kPOBJMZ5kozTocP58qHIXWu0YfazumOCH+gXDGT
 9vpzg99QMDt4NXiy4qQbjhibg3ULSOTLiwAqHlrhn/pc69frb53XUmRNrcW6sLqvbkN8
 6AqS+rIHI60J4ZMHPe6PIPDHB9m+w8vD6h5f+ymxS1QNxQ8BZKa/JpF6NKXmhV9d67DF
 ftkkwIx+DdMqKcV0Z676Fu4LL0Kap7dBZxYNj1ehseBQ72PzNfw6ZxIXueHvnxnfBpYR
 8bnw==
X-Gm-Message-State: ANhLgQ3fPhTCjGBjs05adbyQodsJA2n7TRyYQ//hH3TbbfYG2XTAFT1s
 ejSMvzpqv7fKN0h/dnjyotcAhb1T8Msq0+1WEuI=
X-Google-Smtp-Source: ADFU+vt6LDSkh3Kbj3ZORx+m8WoXhjmCqXW1FNMvnKvPhWcMIAT6fxQs69jf3e7PiUbRpFa4wSK7JXazOdRCpMacu2c=
X-Received: by 2002:a50:9b07:: with SMTP id o7mr16941353edi.139.1585669224465; 
 Tue, 31 Mar 2020 08:40:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200329110457.4113-1-o.rempel@pengutronix.de>
 <20200329150854.GA31812@lunn.ch>
 <20200330052611.2bgu7x4nmimf7pru@pengutronix.de>
 <40209d08-4acb-75c5-1766-6d39bb826ff9@gmail.com>
 <20200330174114.GG25745@shell.armlinux.org.uk>
 <20200331104459.6857474e@erd988> <20200331125433.GA24486@lunn.ch>
 <20200331151503.GO25745@shell.armlinux.org.uk>
In-Reply-To: <20200331151503.GO25745@shell.armlinux.org.uk>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Tue, 31 Mar 2020 18:40:13 +0300
Message-ID: <CA+h21hriL_8gGE8iqShuR0h3m2si=MLTuKk12Btx3=XB1RM++g@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: imx: allow to disable board specific PHY fixups
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_084026_778495_349F42B1 
X-CRM114-Status: GOOD (  23.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [olteanv[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 netdev <netdev@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 lkml <linux-kernel@vger.kernel.org>, Oleksij Rempel <o.rempel@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>, kernel@pengutronix.de,
 David Jander <david@protonic.nl>, Shawn Guo <shawnguo@kernel.org>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On Tue, 31 Mar 2020 at 18:15, Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Tue, Mar 31, 2020 at 02:54:33PM +0200, Andrew Lunn wrote:
> > >  - Disable the SmartEEE feature of the phy. The comment in the code implies
> > >    that for some reason it doesn't work, but the reason itself is not given.
> > >    Anyway, disabling SmartEEE should IMHO opinion be controlled by a DT
> > >    setting. There is no reason to believe this problem is specific to the
> > >    i.MX6. Besides, it is a feature of the phy, so it seems logical to expose
> > >    that via the DT. Once that is done, it has no place here.
> >
> > The device tree properties are defined:
> >
> > bindings/net/ethernet-phy.yaml:  eee-broken-100tx:
> > bindings/net/ethernet-phy.yaml:  eee-broken-1000t:
> > bindings/net/ethernet-phy.yaml:  eee-broken-10gt:
> > bindings/net/ethernet-phy.yaml:  eee-broken-1000kx:
> > bindings/net/ethernet-phy.yaml:  eee-broken-10gkx4:
> > bindings/net/ethernet-phy.yaml:  eee-broken-10gkr:
> >
> > And there is a helper:
> >
> > void of_set_phy_eee_broken(struct phy_device *phydev)
>
> Disabling the advertisement may solve it, but that is not known.
> What the quirk is doing is disabling the SmartEEE feature only
> (which is where the PHY handles the EEE so-called "transparently"
> to the MAC).
>
> It's all very well waving arms years later and saying we don't
> like code that was merged, but unless someone can prove that an
> alternative way is better and doesn't regress anything, there
> won't be a way forward.
>

For what it's worth, your position on these device tree bindings for
broken EEE seems to have changed from the one that you expressed in
this thread:
https://www.spinics.net/lists/arm-kernel/msg703453.html
To quote from that:

> > There is no "advertisement of SmartEEE" - it's just EEE.  That is
> > because as far as the link partner is concerned, SmartEEE is just
> > EEE.
> > [...]
> >
> > Otherwise, using the existing "eee-broken-*" properties to disable the
> > link modes where EEE fails would be the correct way forward, and should
> > be used in preference to disabling SmartEEE.
> >
> > However, no one has mentioned what the problem that is trying to be
> > addressed.  Is it data corruption?  Is it that the link fails?  Is it
> > lost packets?  Is it that the MAC supports EEE?  I think there needs to
> > be some better understanding of the problem at hand before trying to
> > address it.

Regards,
-Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
