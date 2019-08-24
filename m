Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC7D9C0BB
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 00:30:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hfNIGYLM2XwHPLrwrqZildptyFslvR/VBHD6oIUehZ8=; b=F+caL414WakX0h
	oaaHAubVT5Otf3WQRKX8OB5BPgkE8yyYnmeqtSx3E4glzOum10rYSwZfsq1hHkAjcxnumwtSgSM9u
	M5ihrZBhwhMYUCKm5dHSJ7ZjFPOi6ZIzlBPa76qAWTQa5Ram9JZq21jszf6KjhEC9dSyCdPm4ym/p
	AHHj6H4d/EwHKyiteGlL90aSnEA/HrqlGZO9yMhCTRhpAJpizAVXuYORXm9oqYgXyv1UV1/NdXbY5
	5x1Hxy0LFc8+oVRqk+rJWxIkmTH3XgoPfSbopTVtuJ8EdSq28xtzLrWQyIqn08Z4r3vFlWYUkjgaG
	gEl47PQLaiCtOqMc17hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1eYS-0008EL-BN; Sat, 24 Aug 2019 22:30:40 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1eXj-0007eV-B6; Sat, 24 Aug 2019 22:29:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KgLGmqz/luWIy9zKj3FDN98xWu56ty660JouMxtEr68=; b=Lwxe6oqB/J9UPt424/kBrbn6f
 SKDIiSicjpF8GzMD6CyBoa8Z23ad8kLubvU8o8Va6gLlwjLwLg32z9xoVeF2qgML4y4pmfkcKSHlY
 uxPbCmKhzMwkiEQDbsroSju3YhkIbI+4vlZ09xw14duzOah/tq98unBJNCVkH+r4//SpZmZgZZRHx
 tmAo4/1SxpqWafF0U87szm5FubgzEboKB0AAli2Uq965QUgWawiJFPIYCYYfKOX8uPjKfsgn1E4BT
 II7R/U0IAKpRdKG5ELlc6ruS6h7FQ05BizbINS5UfZSmX/gJPZ0IoHvbA6dCqu3npqszxny9K6OAm
 sK0R50Esg==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:54162)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i1eXS-0005VI-Kg; Sat, 24 Aug 2019 23:29:38 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i1eXP-0002yX-7f; Sat, 24 Aug 2019 23:29:35 +0100
Date: Sat, 24 Aug 2019 23:29:35 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: =?iso-8859-1?Q?Ren=E9?= van Dorst <opensource@vdorst.com>
Subject: Re: [PATCH net-next v2 0/3] net: dsa: mt7530: Convert to PHYLINK and
 add support for port 5
Message-ID: <20190824222935.GG13294@shell.armlinux.org.uk>
References: <20190821144547.15113-1-opensource@vdorst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821144547.15113-1-opensource@vdorst.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_152955_392993_17B9B205 
X-CRM114-Status: GOOD (  11.96  )
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Frank Wunderlich <frank-w@public-files.de>, netdev@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, linux-mips@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 04:45:44PM +0200, Ren=E9 van Dorst wrote:
> 1. net: dsa: mt7530: Convert to PHYLINK API
>    This patch converts mt7530 to PHYLINK API.
> 2. dt-bindings: net: dsa: mt7530: Add support for port 5
> 3. net: dsa: mt7530: Add support for port 5
>    These 2 patches adding support for port 5 of the switch.
> =

> v1->v2:
>  * Mostly phylink improvements after review.
> rfc -> v1:
>  * Mostly phylink improvements after review.
>  * Drop phy isolation patches. Adds no value for now.
> Ren=E9 van Dorst (3):
>   net: dsa: mt7530: Convert to PHYLINK API
>   dt-bindings: net: dsa: mt7530: Add support for port 5
>   net: dsa: mt7530: Add support for port 5
> =

>  .../devicetree/bindings/net/dsa/mt7530.txt    | 218 ++++++++++
>  drivers/net/dsa/mt7530.c                      | 371 +++++++++++++++---
>  drivers/net/dsa/mt7530.h                      |  61 ++-
>  3 files changed, 577 insertions(+), 73 deletions(-)

Having looked through this set of patches, I don't see anything
from the phylink point of view that concerns me.  So, for the
series from the phylink perspective:

Acked-by: Russell King <rmk+kernel@armlinux.org.uk>

Thanks.

I did notice a dev_info() in patch 3 that you may like to consider
whether they should be printed at info level or debug level.  You
may keep my ack on the patch when fixing that.

I haven't considered whether the patch passes davem's style
requirements for networking code; what I spotted did look like
the declarations were upside-down christmas tree.

-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps =
up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
