Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C20F2FBD3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 14:58:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f2V7fklwo7qfAiUyQVGCXLtzvB2ist7SHBsQy+mSmrA=; b=tG34RI3nakX1JI
	Yzu1RBZEF9v5q2aN9h3tECryFrXhTRB/9Gi1C3jWlY6+4m1U51KNE4xMRbUYZvntnpL94vB2sg7fP
	wHTMqS1jTgzxMZNN39U09aTNgE/BnD/NwIpGC4QX/mGHev82OXQ8xghjMJZV86SBLZAoggYQkLI9M
	cTRiso6+7JGarTMrpSjlV2SEtlHXacXrBQJzbjPP/BlD/6HSD8Q4A2gV+S5i0nDW0mu1EH7zQrZeo
	vAdm2ioNqA7qxa+asZceH2NDCysvnGHWvFu52ZtWb6hMWqlFAvOq4zt/Z4UjHGZNZJRD2faWJ86fd
	4G9m0w7fvztvP5CZyfpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWKdw-0002eQ-Ji; Thu, 30 May 2019 12:58:52 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWKdo-0002dC-V3; Thu, 30 May 2019 12:58:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xB8+uSAdIi4vE4Eke8RLPhwzB3Hq8CNeR8jI1cAMG4Y=; b=au90tRQVfIG3mn4gw9H55zbnEe
 2X/auosHq6eeIf3yI8q9MoXw6bsCpn+t+hQuP4nMOsfZAU3LJLwuxeCEpqFbkIy5EbfQ7UQJg5x46
 hn1FMNgYEko9UF2kViIYhRyXeXVgyfJl3zpWoGGZxey0OkaZYCr2oONQjsUf+qWzxJl0=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hWKdc-0006T7-PS; Thu, 30 May 2019 14:58:32 +0200
Date: Thu, 30 May 2019 14:58:32 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Biao Huang <biao.huang@mediatek.com>
Subject: Re: [PATCH 3/4] net: stmmac: modify default value of tx-frames
Message-ID: <20190530125832.GB22727@lunn.ch>
References: <1559206484-1825-1-git-send-email-biao.huang@mediatek.com>
 <1559206484-1825-4-git-send-email-biao.huang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559206484-1825-4-git-send-email-biao.huang@mediatek.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_055845_154587_F78E4ACC 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: jianguo.zhang@mediatek.com, Alexandre Torgue <alexandre.torgue@st.com>,
 boon.leong.ong@intel.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 yt.shen@mediatek.com, Jose Abreu <joabreu@synopsys.com>,
 linux-mediatek@lists.infradead.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 04:54:43PM +0800, Biao Huang wrote:
> the default value of tx-frames is 25, it's too late when
> passing tstamp to stack, then the ptp4l will fail:
> 
> ptp4l -i eth0 -f gPTP.cfg -m
> ptp4l: selected /dev/ptp0 as PTP clock
> ptp4l: port 1: INITIALIZING to LISTENING on INITIALIZE
> ptp4l: port 0: INITIALIZING to LISTENING on INITIALIZE
> ptp4l: port 1: link up
> ptp4l: timed out while polling for tx timestamp
> ptp4l: increasing tx_timestamp_timeout may correct this issue,
>        but it is likely caused by a driver bug
> ptp4l: port 1: send peer delay response failed
> ptp4l: port 1: LISTENING to FAULTY on FAULT_DETECTED (FT_UNSPECIFIED)
> 
> ptp4l tests pass when changing the tx-frames from 25 to 1 with
> ethtool -C option.
> It should be fine to set tx-frames default value to 1, so ptp4l will pass
> by default.

Hi Biao

What does this do to the number of interrupts? Do we get 25 times more
interrupts? Have you done any performance tests to see if this causes
performance regressions?

	    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
