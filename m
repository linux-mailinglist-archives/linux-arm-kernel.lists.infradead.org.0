Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7C915B4CD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 00:32:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FZuug8ixxrq7b0VlwM5+iPBv+a/7aKLyLiVxsifCh3k=; b=utbkdLNciBr9Bn
	IkYA3OnJ3I+qgf5AbYPNPBtkqyFFZI/ue6yiFiOeAFxT/ZYg5ILbsIuSaWkSCGz6mM4akezfAgARL
	KGuZ9UNz0sg15Z6uyz9QG2JHWPQGTZ9k6nL/dC68jCxAG2YQ+CmK4gBBj5Wk3FZWvLSXgpnv/xnhr
	x6Jk758lC6BWYrXjdaIpFM4neU1Nea58Z47khQX6jgHUSLtM/Hrjd16jR2yt1pWTUuQVir+KPMa8D
	H3sOOPnlYZUb5MUAHqcl3T+Nzqb/jrA3mCnq5QQdCigpVPZFxJxvOuXHJiDmWELR2GUTs37oaMncS
	mPqkQQaP4IANzLyivB+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j21Ur-00030Z-OE; Wed, 12 Feb 2020 23:32:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j21UU-0002oM-Hp
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 23:32:24 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7F51320578;
 Wed, 12 Feb 2020 23:32:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581550341;
 bh=Sx7mVuf/x+Km9lDwz5M4AufiDC+BvLCJ+/UJUAOLWB0=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=S3BBEpAcBvWxAdUoD7YPP7WabTann2mJjeP9Y754XEJX02V3opsx8Dx5YARGKB4fM
 7i+3yjYCupX2cpNi/tZC31QgJV60/ltUZ6oQdvRf+IKqKs4KG6SBriSKxTVgdgoxTJ
 My01g0eaj6NyNMSxY/WCBu+E0uBLByYeAnOPx6tk=
MIME-Version: 1.0
In-Reply-To: <1579261009-4573-4-git-send-email-claudiu.beznea@microchip.com>
References: <1579261009-4573-1-git-send-email-claudiu.beznea@microchip.com>
 <1579261009-4573-4-git-send-email-claudiu.beznea@microchip.com>
Subject: Re: [PATCH 3/4] clk: at91: usb: use proper usbs_mask
From: Stephen Boyd <sboyd@kernel.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>,
 alexandre.belloni@bootlin.com, ludovic.desroches@microchip.com,
 mturquette@baylibre.com, nicolas.ferre@microchip.com
Date: Wed, 12 Feb 2020 15:32:20 -0800
Message-ID: <158155034081.184098.1411951142774904787@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_153222_630176_F599ECD6 
X-CRM114-Status: UNSURE (   5.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Claudiu Beznea <claudiu.beznea@microchip.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Claudiu Beznea (2020-01-17 03:36:48)
> Use usbs_mask passed as argument. The usbs_mask is different for
> SAM9X60.
> 
> Fixes: 2423eeaead6f8 ("clk: at91: usb: Add sam9x60 support")
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---

Applied to clk-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
