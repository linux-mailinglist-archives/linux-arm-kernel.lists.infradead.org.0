Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6C89A1CB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 23:12:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b8y6BwOIa061o3p4MmJQz76grycmUmKmD+fr1ba9KdI=; b=n661kOkQ3EXwuy
	C7iXkWueTYRwgBQFvDCld2KhjpwsNMjo+00tvYhpXcRKm7Cnp/SbwREy0/LjQr63TqwbSRgNhU+oO
	lVXilCiuaxAdZ+IknJxHvttK6hJT1Rxf+8jergdqNJVbmA90WqWtc4+k+FtVbN6dUnOJ/B8T+eROY
	BTMVTF33Fm0GwIcEh7WkvtwInWZLaWAI6j+UpdWabP4ElZRpqxdIyKCKl0LAdxV7WjuvadRAECzmb
	2oQajdOchrFyJbML3NwsGKbSWJ5TApzzKyzOYvko5u+XZzLnSVi0NBKb4EqWfXgnGK415lHJNhkaG
	tYcCLZ53COysI2ySQ7jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0uNp-0004kG-P8; Thu, 22 Aug 2019 21:12:37 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0uNV-0004Or-9F; Thu, 22 Aug 2019 21:12:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6fPuCyNtPPHONbqitxGDkXj/u9ByqXfl6hc0qfPlS5k=; b=Z8rdHmDZCZ53dvugjnLpqbC+L
 3Ulx7byW/NVefVjP67+vtLKu+wAT5Gl+DVMlfkoz9480p1Ws/kyZdhIRd9iOh/r7DWi3S75CWgXN8
 2V2jeoFQlSP/fmjXEejk2EDl5lmEoip7+NIcOVw/bjIOdlVi3UFHBFXEtoTDtIP+8N9dZnE49Lkwl
 +eLmdywbkvZFnUOdFwa50KPYjYRXmJMCzMCzIFyXi6QxYTnfrqtkjbOx6l+hvMLLxLTs13k0FGZpC
 X+ZNFJ9mcz1cWayeuxZOkIMzRxnfXtonFqfNC/L/Z1GB5ImpbxY41df7UDwkAJ7AT5ofiUL5N8+yz
 P45N4wHlA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:48168)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i0uNE-0000W5-M7; Thu, 22 Aug 2019 22:12:00 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i0uNA-00081K-Dh; Thu, 22 Aug 2019 22:11:56 +0100
Date: Thu, 22 Aug 2019 22:11:56 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: =?iso-8859-1?Q?Ren=E9?= van Dorst <opensource@vdorst.com>
Subject: Re: [PATCH net-next v2 2/3] net: ethernet: mediatek: Re-add support
 SGMII
Message-ID: <20190822211156.GV13294@shell.armlinux.org.uk>
References: <20190821144336.9259-1-opensource@vdorst.com>
 <20190821144336.9259-3-opensource@vdorst.com>
 <20190822144433.GT13294@shell.armlinux.org.uk>
 <20190822195033.Horde.hEW8FBGNfFrugQOCv0gaDfx@www.vdorst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190822195033.Horde.hEW8FBGNfFrugQOCv0gaDfx@www.vdorst.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_141218_589830_8B64B114 
X-CRM114-Status: GOOD (  10.43  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Nelson Chang <nelson.chang@mediatek.com>,
 Frank Wunderlich <frank-w@public-files.de>, netdev@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, linux-mips@vger.kernel.org,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Stefan Roese <sr@denx.de>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rene,

On Thu, Aug 22, 2019 at 07:50:33PM +0000, Ren=E9 van Dorst wrote:
> Quoting Russell King - ARM Linux admin <linux@armlinux.org.uk>:
> > Isn't this set for Cisco SGMII as well as for 802.3 1000BASE-X and
> > the up-clocked 2500BASE-X modes?
> > =

> > If so, is there a reason why 10Mbps and 100Mbps speeds aren't
> > supported on Cisco SGMII links?
> =

> I can only tell a bit about the mt7622 SOC, datasheet tells me that:
> =

> The SGMII is the interface between 10/100/1000/2500 Mbps PHY and Ethernet=
 MAC,
> the spec is raised by Cisco in 1999, which is aims for pin reduction comp=
are
> with the GMII. It uses 2 differential data pair for TX and RX with clock
> embedded bit stream to convey frame data and port ability information.
> The core leverages the 1000Base-X PCS and Auto-Negotiation from IEEE 802.3
> specification (clause 36/37). This IP can support up to 3.125G baud for
> 2.5Gbps
> (proprietary 2500Base-X) data rate of MAC by overclocking.
> =

> Also features tells me: Support 10/100/1000/2500 Mbps in full duplex mode=
 and
> 10/100 Mbps in half duplex mode.

Yep, that is what I'd expect.  Thanks.

-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps =
up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
