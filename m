Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AFF917376D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 13:45:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZjCKgU0XgeSUUrZghY5fXdF9wTOxviJq6wntY5yCf4g=; b=f4z+3mtMpF4HbZ
	I1xMC/nEepcMFOZCg9J6P8UxLm9YTItytpY7A39taZOcwb87yUzeNeXg9LfwRvfbFTadJzYKZ1D0A
	aS47WYiFgj/D5aGohOOf0qfwcywneSSQJA/UB1GNDsk9DNsWuofXX8ULgwZYCocvnwqkR1CJ+7KJy
	NKCMN4ihpdyMXBNzfCz2Lqf76bK7dDgIgDxHu9sXaUOpLg757tanCzaNgTSLProgdI/uSbnjYRhj5
	wQiP+7SS1FDWmVm+ZinYRkcIKdPu3qG6tPlYU2I2hMi9492VAMPTsaZlrY/wi4eVuUNdMRvicHHsl
	IYXYzxMCJZ8v3C0i9M+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7f11-0007ja-8y; Fri, 28 Feb 2020 12:45:15 +0000
Received: from mail1.skidata.com ([91.230.2.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7f0j-0007jB-00
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 12:44:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=skidata.com; i=@skidata.com; q=dns/txt; s=selector1;
 t=1582893896; x=1614429896;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=g/fumDPqX7LPA3wXxiP1dS805jxlDQnX8YtVKUMeu98=;
 b=htLsb3kAQ++7H6Bp48r0NeYBc26Zv+rfSybVdJiuTvPoN7NvfBLhDXpN
 t1hm3Oq3YJATTq+1PPK404jtqwsZddip8g2bFjszb0/U/zHTLkWIACudr
 6evoWaJdbOVJNc8B2JJhBwtFAHfnC4TpLBM89KEe3nrtPJLKcFhQVppfb
 WFwcpSnVe8kuFDho0F6evYy0KokYO8Ynbo100J4DUSLhAhKJwXkEyaW4t
 2az9HKMGLxiAC33tWDUxH+LNeuL/ufkCPzZhYs2AlTD4vSgcNfTKYRjhs
 FvXWzySu559yQ2EvlAlC67q/n7CaCdmms8PPmc0btRMb66ZQeUH/QXqhz g==;
IronPort-SDR: 08BFDbudq1MaMeOSQQ+Gr+tpOdBaghZBiTJoclI9zpC7I1cY4eavjFCRIGYIm6UxiXKZiGbpCh
 5nEss8HtL7INBEMdm9q0dm9ZdiGzxuQDeYYNUGresM574MXNUjSs40GfPn4EeZDM61hp230D75
 kp96qCOjdjvkfVtBPmqGyuBgtjq0aNsJOeLu5Dr+3VPNJYAVB4gZHbebABmkrTYdW2swMKek1c
 nrh19pKH2WaOn+Wxg3inHxnCqCBpPIPzAUyWogmBvnV0OAWuSWAmjfATc078ZFTvTr/SskG9i6
 Q80=
X-IronPort-AV: E=Sophos;i="5.70,496,1574118000"; d="scan'208";a="22939519"
Date: Fri, 28 Feb 2020 13:44:48 +0100
From: Richard Leitner <richard.leitner@skidata.com>
To: Martin Fuzzey <martin.fuzzey@flowbird.group>
Subject: Re: [PATCH] dmaengine: imx-sdma: fix context cache
Message-ID: <20200228124448.GA1689606@pcleri>
References: <1580305274-27274-1-git-send-email-martin.fuzzey@flowbird.group>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1580305274-27274-1-git-send-email-martin.fuzzey@flowbird.group>
X-Originating-IP: [192.168.111.252]
X-ClientProxiedBy: sdex3srv.skidata.net (192.168.111.81) To
 sdex5srv.skidata.net (192.168.111.83)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_044457_525388_4E3197D5 
X-CRM114-Status: GOOD (  16.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.230.2.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, dmaengine@vger.kernel.org,
 Robin Gong <yibin.gong@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed, Jan 29, 2020 at 02:40:06PM +0100, Martin Fuzzey wrote:
> There is a DMA problem with the serial ports on i.MX6.
> 
> When the following sequence is performed:
> 
> 1) Open a port
> 2) Write some data
> 3) Close the port
> 4) Open a *different* port
> 5) Write some data
> 6) Close the port
> 
> The second write sends nothing and the second close hangs.
> If the first close() is omitted it works.
> 
> Adding logs to the the UART driver shows that the DMA is being setup but
> the callback is never invoked for the second write.
> 
> This used to work in 4.19.
> 
> Git bisect leads to:
> 	ad0d92d: "dmaengine: imx-sdma: refine to load context only once"
> 
> This commit adds a "context_loaded" flag used to avoid unnecessary context
> setups.
> However the flag is only reset in sdma_channel_terminate_work(),
> which is only invoked in a worker triggered by sdma_terminate_all() IF
> there is an active descriptor.
> 
> So, if no active descriptor remains when the channel is terminated, the
> flag is not reset and, when the channel is later reused the old context
> is used.
> 
> Fix the problem by always resetting the flag in sdma_free_chan_resources().
> 
> Fixes: ad0d92d: "dmaengine: imx-sdma: refine to load context only once"
> Cc: stable@vger.kernel.org
> Signed-off-by: Martin Fuzzey <martin.fuzzey@flowbird.group>
> 

Thanks for the patch!
We were chasing this issue for days and just found your patch as we were
preparing our (quite similar) solution for submission ;-)

I've successfully tested your patch on a custom i.MX6Solo board.
Therefore feel free to add

Tested-by: Richard Leitner <richard.leitner@skidata.com>

regards;rl

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
