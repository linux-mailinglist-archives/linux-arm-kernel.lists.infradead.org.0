Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5088012ABBC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 11:51:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3aMxZK+0kkH3Hv9n72bEm6fZ4jmLyxHr/4ynN0L82tw=; b=U09ZLAqLh5cAKt
	HfR4jUMllIiq0jzqfUD5uU1nZ7uaIR7hE529x+lk+S6+g0npCn8NslwpT9/RZqgRYaHnM4t4uiIGa
	6l+AUignJp5el9t3A9+kkUF33lklE3ZZphlGTyGNuREqXCKZM8wTx9WJ406B4rss8zUQz3+nM2ZIb
	DHbjMWknI4P+1eNZP3wTdEdQbeEwvSnmED8b8yJicrjQehjs9zlAVv6jtAqJq9eTik+8VQk9vXAU8
	Ss1BNQqeG4WD0bNon5FthvZax4ympqToE/u6uXt1UKXy6lSRPKwNvN6d7Y9rygHNc59vt4mDMHUdy
	f/P0P0oFnsd+WJLoAKRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikQjW-0006Ai-Ax; Thu, 26 Dec 2019 10:51:10 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikQjL-00069T-RC; Thu, 26 Dec 2019 10:51:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WWQCvAOj9VPIiUVGyfQ33Wwo9TwBrEqStTy3iF0TRKI=; b=5ENSPtWuCLATBd8/kwa0/36DDH
 LgALFZw7cT3ojHPLSyxbRZynys24RXrvRE+4Hoa9l1gxwiTtzjWZ7v1ndSEl+oCZqWVHzg6NgsDfy
 toS1nInW/8n8kzoXlBewdmyw3zos4MOsbNjS5iw3G9T8kM6A4qeCczP0Bcz7SHQsSvNg=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1ikQj6-00013d-GX; Thu, 26 Dec 2019 11:50:44 +0100
Date: Thu, 26 Dec 2019 11:50:44 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH 1/3] net: stmmac: dwmac-meson8b: Fix the RGMII TX delay
 on Meson8b/8m2 SoCs
Message-ID: <20191226105044.GC1480@lunn.ch>
References: <20191225005655.1502037-1-martin.blumenstingl@googlemail.com>
 <20191225005655.1502037-2-martin.blumenstingl@googlemail.com>
 <20191225150845.GA16671@lunn.ch>
 <CAFBinCA4X1e5_5nBiHmNiB40uJyr9Nm1b2VkF9NqM+wb7-1xmw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFBinCA4X1e5_5nBiHmNiB40uJyr9Nm1b2VkF9NqM+wb7-1xmw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_025059_878126_2CDB925D 
X-CRM114-Status: GOOD (  23.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, linus.luessing@c0d3.blue,
 balbes-150@yandex.ru, khilman@baylibre.com, linux-kernel@vger.kernel.org,
 ingrassia@epigenesys.com, netdev@vger.kernel.org,
 linux-amlogic@lists.infradead.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org, jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> >       # RX and TX delays are added by the MAC when required
> >       - rgmii
> >
> >       # RGMII with internal RX and TX delays provided by the PHY,
> >       # the MAC should not add the RX or TX delays in this case
> >       - rgmii-id
> >
> >       # RGMII with internal RX delay provided by the PHY, the MAC
> >       # should not add an RX delay in this case
> >       - rgmii-rxid
> >
> >       # RGMII with internal TX delay provided by the PHY, the MAC
> >       # should not add an TX delay in this case
> >       - rgmii-txid
> >
> > So ideally, you want the MAC to add no delay at all, and then use the
> > correct phy-mode so the PHY adds the correct delay. This gives you the
> > most flexibility in terms of PHY and PCB design. This does however
> > require that the PHY implements the delay, which not all do.
> these boards (with RGMII PHY) that I am aware of are using an RTL8211F
> PHY which implements a 2ns PHY TX delay

We need to be careful here...

Earlier this year we got into a mess with a PHY driver wrongly
implemented these delays. DT contained 'rgmii', but the PHY driver
actually implemented rgmii-id'. Boards worked, because they actually
needed rgmii-id. But then came along a board which really did need
rgmii. We took the decision, maybe the wrong decision, to fix the PHY
driver, and fixup DT files as we found boards which had the incorrect
setting. We broke a lot of boards for a while and caused lots of
people pain.

You might have something which works, but i want to be sure it is
actually correct, not two bugs cancelling each other out.

You say the RTL8211F PHY implements a 2ns PHY TX delay. So in DT, do
you have the phy-mode of 'rgmii-txid'? That would be the correct
setting to say that the PHY provides only the TX delay.

> however, the 3.10 vendor kernel also supports Micrel RGMII (and RMII)
> PHYs where I don't know if they implement a (configurable) TX delay.
> 
> > Looking at patches 2 and 3, the phy-mode is set to rgmii. What you
> > might actually need to do is set this to rgmii-txid, or maybe
> > rgmii-id, once you have the MAC not inserting any delay.
> please let us split this discussion:
> 1) I believe that this patch is still correct and required whenever
> the MAC *has to* generate the TX delay (one use-case could be the
> Micrel PHYs I mentioned above)

I think this patch splits into two parts. One is getting a 25MHz
clock. That part i can agree with straight away. The second part is
setting a 2ns TX delay. This we need to be careful of. What is the MAC
actually doing after this patch? What is the configured RX delay? Does
the driver explicitly configure the RX delay? To what?

If you look at the definitions above, if the phy-mode is rgmii, the
MAC is responsible for both RX and TX delay. 

> 2) the correct phy-mode and where the TX delay is being generated. I
> have tried "rgmii-txid" on my own Odroid-C1 and it's working fine
> there. however, it's the only board with RGMII PHY that I have from
> this generation of SoCs (and other testers are typically rare for this
> platform, because it's an older SoC). so my idea was to use the same
> settings as the 3.10 vendor kernel because these seem to be the "known
> working" ones.

Vendor kernels have the alternative of 'vendor crap' for a good
reason. Just because it works does not mean it is correct.

> what do you think about 2)? my main concern is that this *could* break
> Ethernet on other people's boards.
> on the other hand I have no idea how likely that actually is.

From what i understand, Ethernet is already broken? Or is it broken on
just some boards?

Looking at the function rtl8211f_config_init(), that PHY driver can
only control TX delays. RX delays are controlled by a strapping pin.

The Micrel PHY driver can also control its clock skew, but it does it
in an odd way, not via the phy-mode, but via additional
properties. See the binding document.

What we normally say is make the MAC add no delays, and pass the
correct configuration to the PHY so it adds the delay. But due to the
strapping pin on the rtl8211f, we are in a bit of a grey area. I would
suggest the MAC adds no delay, phy-mode is set to rmgii-id, the PHY
driver adds TX delay in software, we assume the strapping pin is set
to add RX delay, and we add a big fat comment in the DT.

For the Micrel PHY, we do the same, plus add the vendor properties to
configure the clock skew.

But as i said, we are in a bit of a grey area. We can consider other
options, but everything needs to be self consistent, between what the
MAC is doing, what the PHY is doing, and what phy-mode is set to in
DT.

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
