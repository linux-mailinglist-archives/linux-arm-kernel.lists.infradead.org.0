Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6852BCFF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 03:53:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f1b6IMW2aWc5m+B3P8VpWC4SMEAXgLwskQpmjPz/eCQ=; b=HrzxUfwLo7JONk
	SM+X2Ffgd3YBEAkA9l7HIoLt+q8rwAiqwnuKhwnzi9PgkaE0t9lCe5FdINS/wVkb/gfHDbgV0tYnX
	6OvlZPaJNEZRdmYo390t5oMu/9p3K1xyuKfVadYsh5M/z7TWnMNUM8H8xxYfL9R7RRrboTNjkk+8k
	w7BQFMptkP5JS/DEuGoTaNKxIXMO9Dgo5g7PXXfvbDIC3LAcCmGWnJ0DfxkaEmQnYINxDkepRsMuC
	6tdrL4r3YwOA914QR7h+Yv1rAgDtXN4Rg6g45dGrXqutOhs5GCCxffpJhWwd/SJJn6nrvBof0O51d
	XpoiX8ZBP4WM1LApoZEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVRIk-00086L-Hl; Tue, 28 May 2019 01:53:18 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVRId-00085x-ED; Tue, 28 May 2019 01:53:13 +0000
X-UUID: 366fbe3dbfa342e1a7cd8a7e0ac19b8a-20190527
X-UUID: 366fbe3dbfa342e1a7cd8a7e0ac19b8a-20190527
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <biao.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 511790623; Mon, 27 May 2019 17:52:54 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 27 May 2019 18:52:53 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 28 May 2019 09:52:50 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 28 May 2019 09:52:49 +0800
Message-ID: <1559008369.24897.66.camel@mhfsdcap03>
Subject: Re: [v3, PATCH] net: stmmac: add support for hash table size
 128/256 in dwmac4
From: biao huang <biao.huang@mediatek.com>
To: David Miller <davem@davemloft.net>
Date: Tue, 28 May 2019 09:52:49 +0800
In-Reply-To: <20190527.100800.1719164073038257292.davem@davemloft.net>
References: <1558926867-16472-1-git-send-email-biao.huang@mediatek.com>
 <1558926867-16472-2-git-send-email-biao.huang@mediatek.com>
 <20190527.100800.1719164073038257292.davem@davemloft.net>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_185311_483777_E1AC3181 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: jianguo.zhang@mediatek.com, alexandre.torgue@st.com,
 boon.leong.ong@intel.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 yt.shen@mediatek.com, joabreu@synopsys.com, linux-mediatek@lists.infradead.org,
 mcoquelin.stm32@gmail.com, matthias.bgg@gmail.com, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear David,

On Mon, 2019-05-27 at 10:08 -0700, David Miller wrote:
> From: Biao Huang <biao.huang@mediatek.com>
> Date: Mon, 27 May 2019 11:14:27 +0800
> 
> > diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c b/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
> > index 5e98da4..029a3db 100644
> > --- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
> > +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
> > @@ -403,41 +403,50 @@ static void dwmac4_set_filter(struct mac_device_info *hw,
> >  			      struct net_device *dev)
> >  {
> >  	void __iomem *ioaddr = (void __iomem *)dev->base_addr;
> > -	unsigned int value = 0;
> > +	unsigned int value;
> > +	int numhashregs = (hw->multicast_filter_bins >> 5);
> > +	int mcbitslog2 = hw->mcast_bits_log2;
> > +	int i;
> 
> Please retain the reverse christmas tree ordering here.
I'm a little confused about the reverse xmas tree ordering.

should I reorder them only according to the total length like this:

	void __iomem *ioaddr = (void __iomem *)dev->base_addr;
	int numhashregs = (hw->multicast_filter_bins >> 5);
	int mcbitslog2 = hw->mcast_bits_log2;
	unsigned int value;
	int i;

or should I gather the same type together, and order types as reverse
xmas tree, then order the same type definitions as reverse xmas tree,
like this:

	void __iomem *ioaddr = (void __iomem *)dev->base_addr;
	unsigned int value;
	int numhashregs = (hw->multicast_filter_bins >> 5);
	int mcbitslog2 = hw->mcast_bits_log2;
	int i;

Thank you.
> 
> Thank you.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
