Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F6F1FEC7D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 09:32:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WNbEotYMga8CAcCidzwFW058T8GPDYD+w0eH16oFt98=; b=i5EmybC/j+MQg2
	h+791zaEm0Uijbrs4gQt3nePZarhx0uiY4sRyAGs896cVjSbugvbtorSVVJJA1wakEdORUeGNnJ3J
	WKlnOUKYUae+iX5Pn3Q6OXiDdKM6gh7u3CXpTs+dtBlfdFbi9+iy/EPN1hG3cDvpwWs6OeBQaa01V
	y4Q+GHS4U8AmRLep1JdnkjBXXcwiDsOL2PemCpfXgAf4hu9pj+zPaDCWcScmxVaqN+OJ3r+Vy8evT
	SLtMyPaoPevy2l10ghQqKeKHXYSX4yRcDUw7eo6EJnGIlzh+LznfXWVrW4Q+BWv1IlvQJjVNQOvCU
	ZiDMRYVvrGHx8zEjh87A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlp1z-0000rR-6B; Thu, 18 Jun 2020 07:32:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlp1j-0000qy-9c
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 07:32:00 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1E0CF212CC;
 Thu, 18 Jun 2020 07:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592465518;
 bh=H7lg3omGNcBK3SxP4qthjwkbre5kPE1aub171Q3NTY8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LoVm31PJLhXzrPacu/LyL1yyK6hj5MuCdE3/TeuvvHs+z58vl+IEgLr2+VTR0kncS
 +KS+ztisrbiBq62KNSwoUAjjHfOiax4zg9zw4mmFf/dZWWAIiCo2lZUZw2zzd7WE0n
 rQ5b5A/2L1Q4qoNkcBlbda2dys5fxw636H13c7u8=
Date: Thu, 18 Jun 2020 15:31:51 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Yangbo Lu <yangbo.lu@nxp.com>
Subject: Re: [v3] ARM: dts: ls1021a: output PPS signal on FIPER2
Message-ID: <20200618073150.GE30139@dragon>
References: <20200522013052.2838-1-yangbo.lu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200522013052.2838-1-yangbo.lu@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_003159_362346_73194CA6 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Richard Cochran <richardcochran@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Li Yang <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 09:30:52AM +0800, Yangbo Lu wrote:
> The timer fixed interval period pulse generator register
> is used to generate periodic pulses. The down count
> register loads the value programmed in the fixed period
> interval (FIPER). At every tick of the timer accumulator
> overflow, the counter decrements by the value of
> TMR_CTRL[TCLK_PERIOD]. It generates a pulse when the down
> counter value reaches zero. It reloads the down counter
> in the cycle following a pulse.
> 
> To use the TMR_FIPER register to generate desired periodic
> pulses. The value should programmed is,
> desired_period - tclk_period
> 
> Current tmr-fiper2 value is to generate 100us periodic pulses.
> (But the value should have been 99995, not 99990. The tclk_period is 5.)
> This patch is to generate 1 second periodic pulses with value
> 999999995 programmed which is more desired by user.
> 
> Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
