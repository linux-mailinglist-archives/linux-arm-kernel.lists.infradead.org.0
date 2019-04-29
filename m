Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5190DDAD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 10:27:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vcsvkQv00uObSKnPK/QAffcd0Ggs7u369XwDg/Bmmag=; b=G2z68G47fE1+s6pOosQ7jHyBN
	tZKD0KKgTP3LVl+zvmBn6PQgaOhPToD1fzHsUq0pr4uTO4gxgYJJCfnghcDFYpxyHuTdsggyX3E+F
	T4eqNMxl5XErQHXCQgjF88S2bVZRkjO5QM37/iNBROF+3oPh6KJi7GRYI23pBOXkMql6oUK2ra+iF
	U08S6UCZP2efa/dtwoLw1we1lPHLijpxh6XnqokJK7rEfASuvb+PTZa5E9wa65deXgvjWV4uEcVsw
	k5SOreOyxuXLI8EHlswGMVlJZ8M+qfenuDGsrus6uwjNei86sK/L/hTe3qo/8lSc2m2AM5XDe0Lxy
	aYa8O5KsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL1cy-0004pV-Rj; Mon, 29 Apr 2019 08:27:08 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL1cq-0004oG-2v; Mon, 29 Apr 2019 08:27:01 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x3T8HDBq003668; Mon, 29 Apr 2019 10:26:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=/F7blK1EGqFXY58nMXu21tmRUNkOeht4WEwQ9K/sVWM=;
 b=kAt21Ma5POzlMvXF7jSN3A+IgXFFbjItqckL+IoSRkkL+5pKFfcmmnQAArWDqZVQMJRy
 MZXiQCpId5XgCTYgJGTIKs8+ltltvU7TrvAcBLj5f579Lhxe5++zY9nvJW3A5jmagWFl
 WPtgLDArp/1SIX3Jy1LdmG/VhobLRsAlL/QuNwiTkFyyfKbaHwuOZ3nglvS+vUWzeEqG
 ULHARVjRbsWdw/ptFAlt4OxO/81xx0to4eukTxGJ/aOZNwTWb73u9o2N7mL413ELU1T6
 9HlGccZH9pB3kZ84y22Yl0WfLiiXCQDsR71/c/n0J40A6d3Pyb6KxybuhCbJUasZEtUW 7A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2s4c743r13-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 29 Apr 2019 10:26:55 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6EFAA43;
 Mon, 29 Apr 2019 08:26:54 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D88E11340;
 Mon, 29 Apr 2019 08:26:53 +0000 (GMT)
Received: from [10.48.0.204] (10.75.127.51) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 29 Apr
 2019 10:26:53 +0200
Subject: Re: [PATCH 2/6] net: stmmac: fix csr_clk can't be zero issue
To: biao huang <biao.huang@mediatek.com>
References: <1556433009-25759-1-git-send-email-biao.huang@mediatek.com>
 <1556433009-25759-3-git-send-email-biao.huang@mediatek.com>
 <24f4b268-aa7f-e1f7-59fc-2bc163eb8277@st.com>
 <1556525353.24897.30.camel@mhfsdcap03>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <738b37cd-4719-9257-18fc-aab1dc7424f4@st.com>
Date: Mon, 29 Apr 2019 10:26:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1556525353.24897.30.camel@mhfsdcap03>
Content-Language: en-US
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG2NODE1.st.com (10.75.127.4) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-04-29_04:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_012700_472258_6533CDDC 
X-CRM114-Status: GOOD (  20.78  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 yt.shen@mediatek.com, Jose Abreu <joabreu@synopsys.com>,
 linux-mediatek@lists.infradead.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 4/29/19 10:09 AM, biao huang wrote:
> Hi,
> 
> On Mon, 2019-04-29 at 09:18 +0200, Alexandre Torgue wrote:
>> Hi
>>
>> On 4/28/19 8:30 AM, Biao Huang wrote:
>>> The specific clk_csr value can be zero, and
>>> stmmac_clk is necessary for MDC clock which can be set dynamically.
>>> So, change the condition from plat->clk_csr to plat->stmmac_clk to
>>> fix clk_csr can't be zero issue.
>>>
>>> Signed-off-by: Biao Huang <biao.huang@mediatek.com>
>>> ---
>>>    drivers/net/ethernet/stmicro/stmmac/stmmac_main.c |    2 +-
>>>    1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
>>> index 818ad88..9e89b94 100644
>>> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
>>> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
>>> @@ -4376,7 +4376,7 @@ int stmmac_dvr_probe(struct device *device,
>>>    	 * set the MDC clock dynamically according to the csr actual
>>>    	 * clock input.
>>>    	 */
>>> -	if (!priv->plat->clk_csr)
>>> +	if (priv->plat->stmmac_clk)
>>>    		stmmac_clk_csr_set(priv);
>>>    	else
>>>    		priv->clk_csr = priv->plat->clk_csr;
>>>
>>
>> So, as soon as stmmac_clk will be declared, it is no longer possible to
>> fix a CSR through the device tree ?
> 
> let's focus on the condition:
> 1. clk_csr may be zero, it should not be the condition. or the clk_csr =
> 0 will jump to the wrong block.
> 2. Since stmmac_clk_csr_set will get_clk_rate from stmmac_clk,
> the plat->stmmac_clk is a more proper condition.
> 

Ok, but here you remove one possibility: stmmac_clk and clk_csr defined. 
no ?

Other way could be the following code + initialize priv->plat->clk_csr 
with a non null value before read it in device tree (in stmmac_platform).

if (priv->plat->clk_csr >= 0)
	priv->clk_csr = priv->plat->clk_csr;
else
	stmmac_clk_csr_set(priv);



> In some case, it's impossible to get the clk rate of stmmac_clk,
> so it's better to remain the clk_csr flow.
> 
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
