Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A9714EDD3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 14:49:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oqnciL1dHQ8NqObuWJxCLecEvtYi89g4EmeApC77Ixk=; b=s81OLBL3hsUCRQ
	x6CFBedrjd176ezdGBii3AvDiF6oQ1DbVtdqtNtCKuWpMX1yonrroPVU0RuK5ZBEZniwN6eJ/Ejn5
	m+2QUlDtBZTRdebi/M16Dzk1uZtHRTSNOEgiCNI1DWc7Jv+LF/FAQTzdrk2mvtRSU0a8zhqmtGnBE
	wHiL97VcWkdQmLCHA75EIDj5gxmX52hseD99xlU9TKPU+Kj7qRbbF7CLoYjTZq7AnWtdsCjkkJeUD
	WyEysKonv1enfPU6yxLuUNhGQRoLo1BL3bA8z7kXRIKEHN5y4SJk8njaY4CQ9aWZnMDSj3SHKFYWU
	kv/e7sRqUlXgSH4IOeXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixWfV-0006Dd-5L; Fri, 31 Jan 2020 13:49:09 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixWfI-0006Cv-6x
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 13:48:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=77heQxkPpR1j313BxRvUk+Ag0IcAcRqZAwmlY8oelSk=; b=TIEugwB+DJLbJVsOL7NvEZ8BQ0
 kUUqorMqCOHdGJ2OyIPrZvzj8X0hz8byAyuQfmwhlYVwwKrBp3LYPrTiCUxUcmJxzjpLPLJHE8pjj
 iMso6TTHiNJCyVyz2qk3h3tQwvUbPx8ynzTCZ1gVHjB1FHqXcBWrc+zoBsoxOofPVrQo=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1ixWfB-0007Nv-Iw; Fri, 31 Jan 2020 14:48:49 +0100
Date: Fri, 31 Jan 2020 14:48:49 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
Subject: Re: [PATCH v3 -next 4/4] net: emaclite: Fix restricted cast warning
 of sparse
Message-ID: <20200131134849.GE9639@lunn.ch>
References: <1580471270-16262-1-git-send-email-radhey.shyam.pandey@xilinx.com>
 <1580471270-16262-5-git-send-email-radhey.shyam.pandey@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1580471270-16262-5-git-send-email-radhey.shyam.pandey@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_054856_255387_25398EC5 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: gregkh@linuxfoundation.org, anirudha.sarangi@xilinx.com,
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 mchehab+samsung@kernel.org, john.linn@xilinx.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 31, 2020 at 05:17:50PM +0530, Radhey Shyam Pandey wrote:
> Explicitly cast xemaclite_readl return value when it's passed to ntohl.
> Fixes below reported sparse warnings:
> 
> xilinx_emaclite.c:411:24: sparse: sparse: cast to restricted __be32
> xilinx_emaclite.c:420:36: sparse: sparse: cast to restricted __be32
> 
> Signed-off-by: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
> Reported-by: kbuild test robot <lkp@intel.com>
> ---
>  drivers/net/ethernet/xilinx/xilinx_emaclite.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/xilinx/xilinx_emaclite.c b/drivers/net/ethernet/xilinx/xilinx_emaclite.c
> index 96e9d21..3273d4f 100644
> --- a/drivers/net/ethernet/xilinx/xilinx_emaclite.c
> +++ b/drivers/net/ethernet/xilinx/xilinx_emaclite.c
> @@ -408,7 +408,8 @@ static u16 xemaclite_recv_data(struct net_local *drvdata, u8 *data, int maxlen)
>  
>  	/* Get the protocol type of the ethernet frame that arrived
>  	 */
> -	proto_type = ((ntohl(xemaclite_readl(addr + XEL_HEADER_OFFSET +
> +	proto_type = ((ntohl((__force __be32)xemaclite_readl(addr +
> +			XEL_HEADER_OFFSET +
>  			XEL_RXBUFF_OFFSET)) >> XEL_HEADER_SHIFT) &
>  			XEL_RPLR_LENGTH_MASK);
>  
> @@ -417,7 +418,7 @@ static u16 xemaclite_recv_data(struct net_local *drvdata, u8 *data, int maxlen)
>  	 */
>  	if (proto_type > ETH_DATA_LEN) {
>  		if (proto_type == ETH_P_IP) {
> -			length = ((ntohl(xemaclite_readl(addr +
> +			length = ((ntohl((__force __be32)xemaclite_readl(addr +
>  					XEL_HEADER_IP_LENGTH_OFFSET +
>  					XEL_RXBUFF_OFFSET)) >>
>  					XEL_HEADER_SHIFT) &

If i understand this code correctly, you need the ntohl because you
are poking around inside the packet. All the other uses of
xemaclite_readl() are for descriptors etc.

It would be cleaner if you defined a xemaclite_readlbe32. If you use
ioread32be() it will do the endinness swap for you, so you don't need
the ntohl() and the horrible cast.

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
