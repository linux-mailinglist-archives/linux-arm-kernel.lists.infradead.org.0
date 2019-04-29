Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 786EDDE60
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 10:51:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BvXR/jygUE27TZOcjz7K8rAMwa3zUNbIfRXLw4CVnV4=; b=Z84houDZgvilPq
	9KEIonFID6OpiKSHKMyBOzr2RnE7U9qqOYACaMh7vydHTLnHhrbeY2+Rd8c5iI/Y5jStpL4jS2NFC
	hkV/hh61gahswERubhpnUR7NTPsFXWus+N8eoMzknZEJHYLhTApvbc94Nf2ALIOhI8FfV60F5707b
	vDRwzq6EhivSvTh5bNQdOb1ctwnhSc0PZRffkaVfnZ2TkNxkkm59hJV772834Fcr7Z4ca+pDT3Ynu
	XkcUaiyRlUymKDw+kCgZaxP+3SbcNKel8DTmSZlE4zDmsOkFw05pc6271GT2RMcfkB/NrBjUiHZ4h
	uK3q90jW/WXnw3lEVyBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL20z-0006yu-0h; Mon, 29 Apr 2019 08:51:57 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL20p-0006wr-Hr; Mon, 29 Apr 2019 08:51:48 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id AC019C0070;
 Mon, 29 Apr 2019 08:51:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1556527906; bh=wJX6bGWdlKPbsdOdJyT3D6DTbahJBisRdZKY2ByzFdM=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=CUKpkuCNXsp8rWOQtRoufEAf+S/ZNN0U47pNC4m1eNnMW5BdVlhndu0OCffNhpOEI
 bmYSrUfNC+FbiMhVcroDIDR3kHdfr1wOlVRXh0idCUJGSygZluE+0uZ4aE7Zur5UK4
 6kloCVJ4ERdI8Txz8JSbduI2ii9LkIK1ZXXc/+nG49aj3kEP7UJefSbsaLVJhC+l8/
 TrSBNVuClq1EZ29Vgp09F5GpSc78fg8CV+RzrlMgv9XCsemtct+/uEqftDEhSO/V/W
 zoAxvGzidAsHkhDWg86FVcWGEUJSHfEwMJahxQNsuJcpNXpcImPP735Vtp+330/qi+
 4vbBZOz5DGALA==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id EE4B8A0091;
 Mon, 29 Apr 2019 08:51:41 +0000 (UTC)
Received: from DE02WEHTCB.internal.synopsys.com (10.225.19.94) by
 US01WXQAHTC1.internal.synopsys.com (10.12.238.230) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 29 Apr 2019 01:51:42 -0700
Received: from DE02WEMBXB.internal.synopsys.com ([fe80::95ce:118a:8321:a099])
 by DE02WEHTCB.internal.synopsys.com ([::1]) with mapi id
 14.03.0415.000; Mon, 29 Apr 2019 10:51:40 +0200
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Biao Huang <biao.huang@mediatek.com>, "davem@davemloft.net"
 <davem@davemloft.net>
Subject: RE: [PATCH 1/4] net: stmmac: update rx tail pointer register to fix
 rx dma hang issue.
Thread-Topic: [PATCH 1/4] net: stmmac: update rx tail pointer register to
 fix rx dma hang issue.
Thread-Index: AQHU/lMO5G2GtMH+wUeCSibnjv/EX6ZS1H8A
Date: Mon, 29 Apr 2019 08:51:39 +0000
Message-ID: <78EB27739596EE489E55E81C33FEC33A0B46DDF0@DE02WEMBXB.internal.synopsys.com>
References: <1556518556-32464-1-git-send-email-biao.huang@mediatek.com>
 <1556518556-32464-2-git-send-email-biao.huang@mediatek.com>
In-Reply-To: <1556518556-32464-2-git-send-email-biao.huang@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.107.19.176]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_015147_599516_3833787A 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "jianguo.zhang@mediatek.com" <jianguo.zhang@mediatek.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "yt.shen@mediatek.com" <yt.shen@mediatek.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Biao Huang <biao.huang@mediatek.com>
Date: Mon, Apr 29, 2019 at 07:15:53

> Currently we will not update the receive descriptor tail pointer in
> stmmac_rx_refill. Rx dma will think no available descriptors and stop
> once received packets exceed DMA_RX_SIZE, so that the rx only test will fail.
> 
> Update the receive tail pointer in stmmac_rx_refill to add more descriptors
> to the rx channel, so packets can be received continually
> 
> Signed-off-by: Biao Huang <biao.huang@mediatek.com>
> ---
>  drivers/net/ethernet/stmicro/stmmac/stmmac_main.c |    3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> index 97c5e1a..818ad88 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> @@ -3336,6 +3336,9 @@ static inline void stmmac_rx_refill(struct stmmac_priv *priv, u32 queue)
>  		entry = STMMAC_GET_ENTRY(entry, DMA_RX_SIZE);
>  	}
>  	rx_q->dirty_rx = entry;
> +	stmmac_set_rx_tail_ptr(priv, priv->ioaddr,
> +			       rx_q->dma_rx_phy + (entry * sizeof(struct dma_desc)),

I think you can just use the "rx_q->rx_tail_addr" here. It'll always 
trigger a poll demand for the channel.

Thanks,
Jose Miguel Abreu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
