Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC6A16AC67
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 17:58:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KNLn4jcDs+2gfQEjKBp/rvmhX12L0B1ntxiSFBMvPfs=; b=U4RLGGQJ8wKbUG
	wCKCGrkoQRFbnThtn3rcXWvahsIUlnR0Er3MtKYnZj4dK1DX234pPyMnypKCbEKhTSUDpMgGqf6Cy
	OnuMZ0UmneCalc8tJFRB8scdXWDxj7RLGXvB/X2aNpftU3d9tONYvJZCf2SY7oqxx/of1HNpvOBwk
	DjiI1hMAQWdKDGHIl8XHAInfPYf2M4fenIVaIpP6C6gSek2C7NvSA9lvYfhN6XjraOF4zeR0M0VqF
	RQwITsySDA0DnmzozFPqvBZuK5PD2EI5tmX6esFyg5sddXPd1y0ZOfoK/jbxAD0j7JHB7o7vLUnCL
	MPV6ExYMIbtw2JgW4csg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6H3b-0001eE-Nx; Mon, 24 Feb 2020 16:58:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6H3N-0001ZX-Bh
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 16:57:59 +0000
Received: from localhost (unknown [122.182.199.233])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0D8E720836;
 Mon, 24 Feb 2020 16:57:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582563476;
 bh=/1bbEbIQcOxdlPPRg6xaUyuKQtDYNCF5hHOF4bi9Dvw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MSIX1bCxbpk+2AJam2QywGeWlRX7OxLdOc3qL45tSA1QX24QoNZL0tomMGZHpGM7U
 Qj360wozS445bx4ySv6JlYcQH9rp+Dqs6e45ssdEkA6fJ7ZxSPNw++9qtgXSG/Bi2w
 RRR5AbGfS7xFkUkGKe8pxQz05FGdm9WvBtMw/rQA=
Date: Mon, 24 Feb 2020 22:27:52 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] dmaengine: imx-sdma: fix context cache
Message-ID: <20200224165752.GE2618@vkoul-mobl>
References: <1580305274-27274-1-git-send-email-martin.fuzzey@flowbird.group>
 <CAOMZO5AFJvEdWNSsnsRW70_M6rzyvO4ip3zJHET2Gc2Wzj5RPQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5AFJvEdWNSsnsRW70_M6rzyvO4ip3zJHET2Gc2Wzj5RPQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_085757_453743_2793D947 
X-CRM114-Status: GOOD (  19.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, stable <stable@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Martin Fuzzey <martin.fuzzey@flowbird.group>, dmaengine@vger.kernel.org,
 Robin Gong <yibin.gong@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29-01-20, 17:19, Fabio Estevam wrote:
> Hi Martin,
> 
> Thanks for the fix.
> 
> On Wed, Jan 29, 2020 at 10:41 AM Martin Fuzzey
> <martin.fuzzey@flowbird.group> wrote:
> >
> > There is a DMA problem with the serial ports on i.MX6.
> >
> > When the following sequence is performed:
> >
> > 1) Open a port
> > 2) Write some data
> > 3) Close the port
> > 4) Open a *different* port
> > 5) Write some data
> > 6) Close the port
> >
> > The second write sends nothing and the second close hangs.
> > If the first close() is omitted it works.
> >
> > Adding logs to the the UART driver shows that the DMA is being setup but
> > the callback is never invoked for the second write.
> >
> > This used to work in 4.19.
> >
> > Git bisect leads to:
> >         ad0d92d: "dmaengine: imx-sdma: refine to load context only once"
> >
> > This commit adds a "context_loaded" flag used to avoid unnecessary context
> > setups.
> > However the flag is only reset in sdma_channel_terminate_work(),
> > which is only invoked in a worker triggered by sdma_terminate_all() IF
> > there is an active descriptor.
> >
> > So, if no active descriptor remains when the channel is terminated, the
> > flag is not reset and, when the channel is later reused the old context
> > is used.
> >
> > Fix the problem by always resetting the flag in sdma_free_chan_resources().
> >
> > Fixes: ad0d92d: "dmaengine: imx-sdma: refine to load context only once"
> 
> Nit: in the Fixes tag we use 12 digits for the commit ID and the
> Subject is enclosed by parenthesis.
> 
> The preferred format would be:
> 
> Fixes: ad0d92d7ba6a ("dmaengine: imx-sdma: refine to load context only once")
> 
> Reviewed-by: Fabio Estevam <festevam@gmail.com>

Applied, with updated Fixes line. Thanks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
