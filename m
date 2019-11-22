Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 398671068C1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 10:22:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6vsJyvsRAK0QYdoixMWYRtkf7qSD/R3K8SeRbiWznQw=; b=MNlcyHJe3bFiG3
	aqFOUCPFR67n95O3NjEAdLDJm3j/1vt5VdSiPxC8io8TsIzNGomQRgXqZVqKCa2auyR6G+JWL6HuZ
	IvbPtdrGhqXsuATErPXRDeG7CRpAod248nGqREzD781uvF84BsLc8UsAcObfaNIAjoLh/V+DwdEY1
	OW3bQJDhXx94SyfxcnESuWU3P1vM1dn7rjV9F8O1AFzdUahcYQBixaEbkVdUNsLjKd5gKzfmmFiry
	8ptsgcCAT+ddFLKg9GzIdkyAGHFJreTRZ2TDo1NKuTraFK98+DBQx+Z3YwbH4kjn2S+1hXpMUvJk4
	cncn0GmXisn088MXMCDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY594-00005H-UW; Fri, 22 Nov 2019 09:22:30 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY58s-0008Vm-2V; Fri, 22 Nov 2019 09:22:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SWbmUilvZWyu9G5awdEU2KvPZeq3aeg+c1C4lJEnjoo=; b=an41Zr2/uNxSIUfMI75HmnIqV
 Gdh4kdDw4HAonLEtaGjxH9/njeLzh1GpRZf0SdfF3fR2JOqSPElZfwlBFHwa/As7LqES2oxUVPEgq
 lddNaJanCjc5wYIDGjIC6vp/7cs3bWV0EO6UQnizW+CueuuyXnvdNQV/pi8CzUwU8DlC0rh6gDmZ1
 3czSPX/k0lEm6+tq7d/3jiRJ4d4qIWMKj98kTVi55jDe/fx0aIEp9e0NpBdiBblRVh8AqwC9lFmii
 C0NYYCbzgJdJnfp2kZxdu3CcqNMvAR7V2i6h4Fcg2aJSzTu3H2Np+acyCy0rAWe9S3KvME8OebaDh
 lt4WPkmBg==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:43048)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iY58L-000490-9z; Fri, 22 Nov 2019 09:21:45 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iY58D-0003Yo-1A; Fri, 22 Nov 2019 09:21:37 +0000
Date: Fri, 22 Nov 2019 09:21:37 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [CFT PATCH net-next v2] net: phylink: rename mac_link_state() op
 to mac_pcs_get_state()
Message-ID: <20191122092136.GJ25745@shell.armlinux.org.uk>
References: <E1iXaSM-0004t1-9L@rmk-PC.armlinux.org.uk>
 <20191121.191417.1339124115325210078.davem@davemloft.net>
 <0a9e016b-4ee3-1f1c-0222-74180f130e6c@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0a9e016b-4ee3-1f1c-0222-74180f130e6c@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_012218_181709_C32EF19D 
X-CRM114-Status: GOOD (  20.63  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: andrew@lunn.ch, nbd@openwrt.org, sean.wang@mediatek.com,
 alexandre.torgue@st.com, netdev@vger.kernel.org, peppe.cavallaro@st.com,
 radhey.shyam.pandey@xilinx.com, michal.simek@xilinx.com,
 mcoquelin.stm32@gmail.com, linux-stm32@st-md-mailman.stormreply.com,
 joabreu@synopsys.com, linux-mediatek@lists.infradead.org,
 thomas.petazzoni@bootlin.com, john@phrozen.org, matthias.bgg@gmail.com,
 vivien.didelot@gmail.com, hkallweit1@gmail.com,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Mark-MC.Lee@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 21, 2019 at 07:36:44PM -0800, Florian Fainelli wrote:
> 
> 
> On 11/21/2019 7:14 PM, David Miller wrote:
> > From: Russell King <rmk+kernel@armlinux.org.uk>
> > Date: Thu, 21 Nov 2019 00:36:22 +0000
> > 
> >> Rename the mac_link_state() method to mac_pcs_get_state() to make it
> >> clear that it should be returning the MACs PCS current state, which
> >> is used for inband negotiation rather than just reading back what the
> >> MAC has been configured for. Update the documentation to explicitly
> >> mention that this is for inband.
> >>
> >> We drop the return value as well; most of phylink doesn't check the
> >> return value and it is not clear what it should do on error - instead
> >> arrange for state->link to be false.
> >>
> >> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> >> ---
> >> This is something I'd like to do to make it clearer what phylink
> >> expects of this function, and that it shouldn't just read-back how
> >> the MAC was configured.
> >>
> >> This version drops the deeper changes, concentrating just on the
> >> phylink API rather than delving deeper into drivers, as I haven't
> >> received any feedback on that patch.
> >>
> >> It would be nice to see all these drivers tested with this change.
> > 
> > I'm tempted to just apply this, any objections?
> > 
> 
> Russell, which of this patch or: http://patchwork.ozlabs.org/patch/1197425/
> 
> would you consider worthy of merging?

Let's go with v2 for now - it gets the rename done with less risk that
there'll be a problem.  I can always do the remainder in a separate
patch after the merge window as a separate patch.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
