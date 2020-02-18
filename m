Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE5B16273E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 14:40:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4bVPWZPnolooaoMvGWwDPkKIEOPzlqrWBSbq1nRgwnQ=; b=G31uWnhn0iOMZx
	mn60+4Mu3T/NMVkbGoIfR/RD4QAHBw0/31m6tuTBvRJetRwfAzsqANTm2MWRhYlYF/zATm2BWDt+E
	xxibTcnHJGapZ/IYtjALJpV36b+UpXsBUiSaT/KoJ1soDkggGLywjEAU6eOZmZs9sG6wfT4xAYpWI
	ENsUYj4MiBHhHEKThnet+MxOBWJbNH9pr4p1K9PYHT32NoN2J+pN17eoc403yBoP4MTXApnIqHWRX
	nm7PcSvBFBIAdVXhUIf1qTk/zIapyBfA/tjy3KfhFBjjYyyyFvM+b9YIezMvWVkpGNuu0oaSbdhzn
	JK8gELKe9SmgDHCUvfAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j436T-00006l-Ac; Tue, 18 Feb 2020 13:39:57 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j436L-000062-B0
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 13:39:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZvM5SJLfCygy+dxNwz0/A0b6jQXOvJ0xzPs0cBdmSKg=; b=LAIeX56UO8rWJZdbAF65v0ChM9
 9v/9mznqO6FhMXCCC8zRD03rRzca9/LhSLn8DD/hUXhshfgL8pD/Gy0jUNx5pVNDy05NqO1J0YeKK
 T28hKdeVK/xUxvAEZY1IOahF3P0wJIX7AK18Tfvtf2wG10uZ7mxaINzzZLPbVFcQg3JM=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1j436F-0002mI-L1; Tue, 18 Feb 2020 14:39:43 +0100
Date: Tue, 18 Feb 2020 14:39:43 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Esben Haabendal <esben@geanix.com>
Subject: Re: [PATCH 8/8] net: ll_temac: Add ethtool support for coalesce
 parameters
Message-ID: <20200218133943.GA10541@lunn.ch>
References: <20200218082741.7710-1-esben@geanix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200218082741.7710-1-esben@geanix.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_053949_378409_5501C01E 
X-CRM114-Status: UNSURE (   5.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: netdev@vger.kernel.org, Michal Simek <michal.simek@xilinx.com>,
 linux-kernel@vger.kernel.org, Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Esben

> +	if (ec->tx_coalesce_usecs)
> +		lp->coalesce_delay_tx =
> +			min(255U, (ec->tx_coalesce_usecs * 100) / 512);
> +
> +	pr_info("%d -> %d  %d -> %d\n",
> +		ec->rx_coalesce_usecs, lp->coalesce_delay_rx,
> +		ec->tx_coalesce_usecs, lp->coalesce_delay_tx);

I guess this is left over from debug? You don't actually want it here?

  Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
