Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1CEF29F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 11:16:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Pc5TPKdN1ugEYjafCD37F/Q+WoLjkin1onfzJbT+ak=; b=JvMD2ab2s373IL
	Ryme7sQAeNV/NINX+WLRXM2zBn3o9+ADSNxn6usnI/wk83SpmeX5/ikO4D6fVivOwbJB1LwNl9WeQ
	VqSJRfKf6YosymnEQOllqezgzPvmPskWEW6QEPcrx1xBUjzZfQmQirDF7mrvHxe8JfaaRhe4uAZ8W
	LN5WltNR9OPTEXtLFGsKAqy9HQ2NvwLrtwSV0fWvoBruvFfWPeSScsJLBF/rvMxKyS/4NPFC1nE3X
	SlV2chMFbeFZA7SvWRbQCJAPpebs1BzWk80yEmEyQ5nC2l9JRyWBi+j832hItFibV/H80SZEGUCEU
	I/pewuz657KJZXMBXQkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLOsC-0002ie-3K; Tue, 30 Apr 2019 09:16:24 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLOs3-0002iE-Po; Tue, 30 Apr 2019 09:16:17 +0000
X-UUID: fcd7b7e31dbc4ff1afa618b85b7f5f8a-20190430
X-UUID: fcd7b7e31dbc4ff1afa618b85b7f5f8a-20190430
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <biao.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 582019299; Tue, 30 Apr 2019 01:15:50 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Apr 2019 02:15:48 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 30 Apr 2019 17:15:45 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 30 Apr 2019 17:15:45 +0800
Message-ID: <1556615745.24897.40.camel@mhfsdcap03>
Subject: Re: [PATCH 2/6] net: stmmac: fix csr_clk can't be zero issue
From: biao huang <biao.huang@mediatek.com>
To: Alexandre Torgue <alexandre.torgue@st.com>
Date: Tue, 30 Apr 2019 17:15:45 +0800
In-Reply-To: <738b37cd-4719-9257-18fc-aab1dc7424f4@st.com>
References: <1556433009-25759-1-git-send-email-biao.huang@mediatek.com>
 <1556433009-25759-3-git-send-email-biao.huang@mediatek.com>
 <24f4b268-aa7f-e1f7-59fc-2bc163eb8277@st.com>
 <1556525353.24897.30.camel@mhfsdcap03>
 <738b37cd-4719-9257-18fc-aab1dc7424f4@st.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_021615_844109_B02CF164 
X-CRM114-Status: GOOD (  19.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: jianguo.zhang@mediatek.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 yt.shen@mediatek.com, Jose Abreu <joabreu@synopsys.com>,
 linux-mediatek@lists.infradead.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Giuseppe
 Cavallaro <peppe.cavallaro@st.com>, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-04-29 at 10:26 +0200, Alexandre Torgue wrote:
> 
> On 4/29/19 10:09 AM, biao huang wrote:
> > Hi,
> > 
> > On Mon, 2019-04-29 at 09:18 +0200, Alexandre Torgue wrote:
> >> Hi
> >>
> >> On 4/28/19 8:30 AM, Biao Huang wrote:
> >>> The specific clk_csr value can be zero, and
> >>> stmmac_clk is necessary for MDC clock which can be set dynamically.
> >>> So, change the condition from plat->clk_csr to plat->stmmac_clk to
> >>> fix clk_csr can't be zero issue.
> >>>
> >>> Signed-off-by: Biao Huang <biao.huang@mediatek.com>
> >>> ---
> >>>    drivers/net/ethernet/stmicro/stmmac/stmmac_main.c |    2 +-
> >>>    1 file changed, 1 insertion(+), 1 deletion(-)
> >>>
> >>> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> >>> index 818ad88..9e89b94 100644
> >>> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> >>> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> >>> @@ -4376,7 +4376,7 @@ int stmmac_dvr_probe(struct device *device,
> >>>    	 * set the MDC clock dynamically according to the csr actual
> >>>    	 * clock input.
> >>>    	 */
> >>> -	if (!priv->plat->clk_csr)
> >>> +	if (priv->plat->stmmac_clk)
> >>>    		stmmac_clk_csr_set(priv);
> >>>    	else
> >>>    		priv->clk_csr = priv->plat->clk_csr;
> >>>
> >>
> >> So, as soon as stmmac_clk will be declared, it is no longer possible to
> >> fix a CSR through the device tree ?
> > 
> > let's focus on the condition:
> > 1. clk_csr may be zero, it should not be the condition. or the clk_csr =
> > 0 will jump to the wrong block.
> > 2. Since stmmac_clk_csr_set will get_clk_rate from stmmac_clk,
> > the plat->stmmac_clk is a more proper condition.
> > 
> 
> Ok, but here you remove one possibility: stmmac_clk and clk_csr defined. 
> no ?
> 
> Other way could be the following code + initialize priv->plat->clk_csr 
> with a non null value before read it in device tree (in stmmac_platform).
> 
> if (priv->plat->clk_csr >= 0)
> 	priv->clk_csr = priv->plat->clk_csr;
> else
> 	stmmac_clk_csr_set(priv);
> 
> 
> 
> > In some case, it's impossible to get the clk rate of stmmac_clk,
> > so it's better to remain the clk_csr flow.
> > 
Agree.

Maybe we should initialize plat->clk_csr to -1
in stmmac_probe_config_dt:

plat->clk_csr = -1;
/* Get clk_csr from device tree */                                      
of_property_read_u32(np, "clk_csr", &plat->clk_csr); 

Then the condition can write as you proposed:
if (priv->plat->clk_csr >= 0)
 	priv->clk_csr = priv->plat->clk_csr;
else
 	stmmac_clk_csr_set(priv);

> > 
> > 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
