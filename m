Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5C3199B7D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:29:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jMa5W0sIO2XOwYzE+k8ziYu1dIQiZM8O8x/Z4CV+nAg=; b=ipHti3ypAKsOIz
	3RCds1bNbi0qDjS3YD/6A66SEYpGF1Z/yXNEKlGE2v3wu9M0C+9XG/N4ImLLXTsaiaZAbwK4NpdA3
	k/SeTh68I1siEDya/RY8ga47AhZaY0WLNJNr/mikpGBEP/d+2hvUCvbILyk5YAGYNCGirOEBzetzJ
	1GnDB6mdR9H1i+Q29B2BVs0RuY52T0Q/MHqymYIoZdsjYV2LStG+/XTDrBRkl66oYrmrKkXjj/BG2
	rjvpq84LzyyfVsMCLIcGpLNnagT4wMttpZ3OloK3zR45padZORFiYsC98BeRtP+SuZNA+V30bcRpY
	vDbY9743uqOBNQSIVqgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJl6-0000Kk-0g; Tue, 31 Mar 2020 16:29:00 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJke-0008Vr-93
 for linux-arm-kernel@bombadil.infradead.org; Tue, 31 Mar 2020 16:28:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=r0AJPSf8r8qp+BalfPA6Bpq2XK/td5V0wFPsnuZhIPc=; b=R26I6KKB8Xc2je8xFtV7oFswD8
 VotNk059B0BTZ5875zIVzbdMBsqhLXPp2O3v4n1S7qekWbvbpo+jQs4hir70Ngu3WRIPi+Kn0Be4+
 CoTNWpY6KtLTl2OZpC8uTG4sIqkG+tKjI/MFfZ46S3fjF2b1B1ynzfkddi3OshrLXH9ygIfgl6t3x
 +ylsI1x6L4IZ2pipX4G/SKwj8SojOI3mrB1buzMwi1klJzgauVknGhsIoo3s6b3D/upZSuQbTZnYU
 eYbi59FvHCqAtqP5HC745c9NZnr6uGOEBp3+8x/PrRbgwE5XxvuV76yWkQTfnNulbfIs7WAZpw/HB
 MwjBYamg==;
Received: from vps0.lunn.ch ([185.16.172.187])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJGPz-0001FP-O1
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 12:55:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=r0AJPSf8r8qp+BalfPA6Bpq2XK/td5V0wFPsnuZhIPc=; b=CO3dujQgQCXxwkhIn1tgWxG/5d
 5yb5cQsEgmfDWDTvLVAIhSXYZrINlwKCv6QQUStYlGGl36aTjI5p7Pj3HEctHNnD0vINgBPxPw4Pm
 rgHWDeDPB1Ym8HJOBiXNgrmayzL/bgE0zdWLDeLnMFuna0b5BrlhuvvCsTHky6bNOkPo=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jJGPZ-000Cws-3h; Tue, 31 Mar 2020 14:54:33 +0200
Date: Tue, 31 Mar 2020 14:54:33 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: David Jander <david@protonic.nl>
Subject: Re: [PATCH v2] ARM: imx: allow to disable board specific PHY fixups
Message-ID: <20200331125433.GA24486@lunn.ch>
References: <20200329110457.4113-1-o.rempel@pengutronix.de>
 <20200329150854.GA31812@lunn.ch>
 <20200330052611.2bgu7x4nmimf7pru@pengutronix.de>
 <40209d08-4acb-75c5-1766-6d39bb826ff9@gmail.com>
 <20200330174114.GG25745@shell.armlinux.org.uk>
 <20200331104459.6857474e@erd988>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331104459.6857474e@erd988>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, netdev@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Oleksij Rempel <o.rempel@pengutronix.de>,
 linux-imx@nxp.com, kernel@pengutronix.de, Shawn Guo <shawnguo@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>  - Disable the SmartEEE feature of the phy. The comment in the code implies
>    that for some reason it doesn't work, but the reason itself is not given.
>    Anyway, disabling SmartEEE should IMHO opinion be controlled by a DT
>    setting. There is no reason to believe this problem is specific to the
>    i.MX6. Besides, it is a feature of the phy, so it seems logical to expose
>    that via the DT. Once that is done, it has no place here.

The device tree properties are defined:

bindings/net/ethernet-phy.yaml:  eee-broken-100tx:
bindings/net/ethernet-phy.yaml:  eee-broken-1000t:
bindings/net/ethernet-phy.yaml:  eee-broken-10gt:
bindings/net/ethernet-phy.yaml:  eee-broken-1000kx:
bindings/net/ethernet-phy.yaml:  eee-broken-10gkx4:
bindings/net/ethernet-phy.yaml:  eee-broken-10gkr:

And there is a helper:

void of_set_phy_eee_broken(struct phy_device *phydev)

>  - Enable TXC delay. To clarify, the RGMII specification version 1 specified
>    that the RXC and TXC traces should be routed long enough to introduce a
>    certain delay to the clock signal, or the delay should be introduced via
>    other means. In a later version of the spec, a provision was given for MAC
>    or PHY devices to generate this delay internally. The i.MX6 MAC interface
>    is unable to generate the required delay internally, so it has to be taken
>    care of either by the board layout, or by the PHY device. This is the
>    crucial point: The amount of delay set by the PHY delay register depends on
>    the board layout. It should NEVER be hard-coded in SoC setup code. The
>    correct way is to specify it in the DT. Needless to say that this too,
>    isn't i.MX6-specific.

Correct:

      # RX and TX delays are added by the MAC when required
      - rgmii

      # RGMII with internal RX and TX delays provided by the PHY,
      # the MAC should not add the RX or TX delays in this case
      - rgmii-id

      # RGMII with internal RX delay provided by the PHY, the MAC
      # should not add an RX delay in this case
      - rgmii-rxid

      # RGMII with internal TX delay provided by the PHY, the MAC
      # should not add an TX delay in this case
      - rgmii-txid

The needed properties exist.

I think part of the issue is that there are iMX6 board which are not
device tree?

       Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
