Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 156D9172541
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 18:41:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3q2gA9OFtuA/dWHNnm7DhO37z7wdSXM8PF2zRg86Fmw=; b=dRGSNUXdED6/z2
	BS7s9NSLgCc/0SoSwEGajCsPAxvZBIK/9fh5QUAuoFBe/5uOlzTPrbSQka9yIeCx9z1++qMpByLge
	XrH9hzoCFrvcBaFPxuRpbgkhQL4eCqVpK3bdJN+QzDEtNchdwvEqJMv85vbO48ABImw7E7ngTzewZ
	ku05hASu3TTpDcmCW7lt9DnJMJhL624l/nArNlb6uGg290Z2celmf8AuS+L+JRaFxWoR1R9caGJjz
	qepEvcUp6m7ZxcAlFcRjUsmanadKmxL9Xuvs1d9181Dm9gBt+Fl9in+zXng42Ks4L4qIfGX9QZ261
	VL+5FpUiZeHPI7iUVmqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7N9o-0008MQ-Cz; Thu, 27 Feb 2020 17:41:08 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7N9a-0008Lg-Fb
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 17:40:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c7nuCpvRTHEsRAsK81Bo4xzkbH8UaLVAL6CWDVJlwJk=; b=Wcg8bY9hlXrY8sFmw3yNN5ngh
 02MLBZo3jc45P42khAwka/XNAcxcMqs9cMnwlMF2IBopxsQ/jrbmZ/HGrBRibckYox/+hUPjCFFBk
 ClVn4DbvRC6ZsIJWi+B4MadEODtRC3dypHwRdlgr8b3qRgWprSXFoC8R0Ci8HKXUvpX0uEaFzaf+Z
 BeBAcZ46C/JWNiPO5FUTph2M2iEMoh0w2P3KwR7q9bGtdIgBk75V+LClOx0s0v1RoNOv4s4lA7gBh
 3M8B9dErkFjxtqKDpKMl9OwyP9ZXMYbhFnfu2urqfTujCSpmMCtBvWWeQk+NcTyE9C46sXUk2WjJM
 ScWuXi2dw==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:57700)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1j7N9O-00071z-1L; Thu, 27 Feb 2020 17:40:42 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1j7N9M-0001A9-Hn; Thu, 27 Feb 2020 17:40:40 +0000
Date: Thu, 27 Feb 2020 17:40:40 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH net-next 1/3] dt-bindings: net: add dt bindings for
 marvell10g driver
Message-ID: <20200227174040.GP25745@shell.armlinux.org.uk>
References: <20200227095159.GJ25745@shell.armlinux.org.uk>
 <E1j7FqO-0003sv-Ho@rmk-PC.armlinux.org.uk>
 <CAL_JsqK9SLJKZfGjWu3RCk9Wiof+YdUaMziwOrCw5ZxjMZAq_Q@mail.gmail.com>
 <20200227172608.GO25745@shell.armlinux.org.uk>
 <20200227173636.GE5245@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227173636.GE5245@lunn.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_094054_522573_4BAB29CF 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Jason Cooper <jason@lakedaemon.net>,
 netdev <netdev@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 06:36:36PM +0100, Andrew Lunn wrote:
> > > > +    allOf:
> > > > +      - $ref: /schemas/types.yaml#/definitions/uint16-array
> > > > +      - minItems: 1
> > > > +        maxItems: 4
> > > > +
> > > > +examples:
> > > > +  - |
> > > > +    ethernet-phy@0 {
> > > > +        reg = <0>;
> > > 
> > > This needs to be under an 'mdio' node with #address-cells and
> > > #size-cells set correctly.
> > 
> > I wish these things were documented somewhere... I'm pretty sure this
> > passed validation when I wrote it.
> 
> Documentation/devicetree/bindings/net/mdio.yaml

I'm not sure that makes it any more obvious.  Maybe it's obvious to
those who understand yaml, but for the rest of us, it isn't.

> Rob, is there a way to express the hierarchy between yaml files and
> properties? Can we say that a phy, as defined by ethernet-phy.yaml
> should always be inside an MDIO bus as defined in mdio.yaml?

and yes, it isn't even referenced from ethernet-phy.yaml, so how one
would know to even look there.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
