Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BFF7DCBD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 09:19:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5KAelOHlX4OK7f44yHOKU4BKnaRk1/09azJ4+RTtNDs=; b=AV3pYXHMw8ijyCoPXbayQItfN
	ITNY0iWFpKyKF3dvJ60kdh6bQgBk8yXGh658gH5nczUpBNpufQ91x7BsiVS34ie1FIkNM8frfaz86
	4fsgebi7PUmiaRmP5h0HVK+paGaBEK8JgdsAEArEuzYM0K23+P/Ifx1KSfPFuNZ5ZTpRK91B1MTAT
	4In1VeFYrAqS5MJqu2ZN4UemZsk92xUAzir7D2ux7mgMba2FNOlWF62U16IZe0T3wv2ymX1MGRNC2
	PLOTll54bCBg4/3du4NjVkBSfoHZfJrevNpOsfldjbz3Rm9+ss3sccMQ6G9Rprvt7nypBgcO5/sUN
	Z0jzenYcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0Z4-0001rD-F5; Mon, 29 Apr 2019 07:19:02 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0Yv-0001q8-EO; Mon, 29 Apr 2019 07:18:55 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x3T7BApm016465; Mon, 29 Apr 2019 09:18:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=TykFYt9jpvTCwyKhyahs+89NrVvncrSmdvgdWwwYztk=;
 b=vpsxKVmdKayCtuheOa+LEhE9Hcpk7rlGwuMKQum+17xVVfQrvFfnO40kzSgCbA84AUwH
 L7SlOnCyZSO6lBJafRag5na2endexM3rAmXLyb+9FX1d3/Fp0Y9LXo9tCgLKmZbSVRiD
 JT3SIbLns4QyIg4IOxlefXJLcmjxlB5f+iIuKr0rglt2G9yRqur/OkXoVTvkPSgQyhbr
 nXHarlN5rFyPXEdrmmZlVsBlRfprzHc3Jfi16QGK6iYtvca8BiWCw3G/k3EuUN/JVPqV
 z2bZZIRjM0do9BmEnoL/IwY57OVi9H2q1HSY/7I0/7YQtbPw3yU/IcvISF0I/ju5oi/m KQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2s5u5d0g7p-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 29 Apr 2019 09:18:44 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9757B31;
 Mon, 29 Apr 2019 07:18:43 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 357AD122C;
 Mon, 29 Apr 2019 07:18:43 +0000 (GMT)
Received: from [10.48.0.204] (10.75.127.51) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 29 Apr
 2019 09:18:43 +0200
Subject: Re: [PATCH 2/6] net: stmmac: fix csr_clk can't be zero issue
To: Biao Huang <biao.huang@mediatek.com>, Jose Abreu <joabreu@synopsys.com>,
 <davem@davemloft.net>
References: <1556433009-25759-1-git-send-email-biao.huang@mediatek.com>
 <1556433009-25759-3-git-send-email-biao.huang@mediatek.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <24f4b268-aa7f-e1f7-59fc-2bc163eb8277@st.com>
Date: Mon, 29 Apr 2019 09:18:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1556433009-25759-3-git-send-email-biao.huang@mediatek.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG4NODE1.st.com (10.75.127.10) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-04-29_04:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_001853_831098_85269C2B 
X-CRM114-Status: GOOD (  18.67  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.8 KHOP_DYNAMIC           Relay looks like a dynamic address
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
 linux-kernel@vger.kernel.org, yt.shen@mediatek.com,
 linux-mediatek@lists.infradead.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

On 4/28/19 8:30 AM, Biao Huang wrote:
> The specific clk_csr value can be zero, and
> stmmac_clk is necessary for MDC clock which can be set dynamically.
> So, change the condition from plat->clk_csr to plat->stmmac_clk to
> fix clk_csr can't be zero issue.
> 
> Signed-off-by: Biao Huang <biao.huang@mediatek.com>
> ---
>   drivers/net/ethernet/stmicro/stmmac/stmmac_main.c |    2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> index 818ad88..9e89b94 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> @@ -4376,7 +4376,7 @@ int stmmac_dvr_probe(struct device *device,
>   	 * set the MDC clock dynamically according to the csr actual
>   	 * clock input.
>   	 */
> -	if (!priv->plat->clk_csr)
> +	if (priv->plat->stmmac_clk)
>   		stmmac_clk_csr_set(priv);
>   	else
>   		priv->clk_csr = priv->plat->clk_csr;
> 

So, as soon as stmmac_clk will be declared, it is no longer possible to 
fix a CSR through the device tree ?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
