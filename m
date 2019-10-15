Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9BBED7951
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 16:59:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=U2IS/lwXnxvrhhBbVq83wKd42NcEpOWrdNvcHQiKcrE=; b=sLVP75yHET/C9QU2rsaY4IWru
	rLtyM9CVWinxwu0qG79FjldA38oQiimYsfrSrxTOhqpnJxvu+4cGwjB8rHQO3omEbEp5AFO8A7V/L
	SJmUIfF6UpCpQlPTFCwhZvzATJEAQK8t8ymJK78Ch9IaNrDxqkk1qUX14pXnqrYc2DyJtbo1wSzTH
	aY3FyDLXWPb5i4bakmsEvJIYOiEygl5YgXM1rH5Sd2bhAKe+mzxmb65nPK59D3zhYgveJQsq6ENpk
	fGml8Ubsm1cPoP9SzYUqKMFViQjwFQE6Yv0s9v8CizfHgdQQnXG+87HOWcZrtslo6PGQC3nOIK30n
	KjyA4AXFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKOIm-0005y7-LJ; Tue, 15 Oct 2019 14:59:56 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKOIe-0005xM-Oh
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 14:59:50 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9FEvRei023441; Tue, 15 Oct 2019 16:59:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=ZetKudQ2sfe6J5BtXSBRemg7eHjvahDr8UoMKz5mnns=;
 b=TppyX6Z+3StUwAPJ7jfWlDH85TwzGIkl+GtKiFshem6T1VptXvNyLd1m24M3yeXt+wcZ
 EY0XhsgrM0h7Ta02AdRTi7Kqc164eCZTuP6XdJNecyXTxFdjPtHHSAxV6h8nczf6y3DW
 vBQzfSAFId6x0p50srti3GzTrQZrIHaDEoqyVEryAZAc+DiO1IlCGFdwtuXsk7fh/wX8
 OJ96p962gcRTqSmxnGYDBojowakjwRTK2BbMQv9ZA1wkNKjwv0mxXBspcyIpMBIFzEfn
 3HrReYFQx6nBN3qMo9fSe9EPrvO7QWQ3OMF6pebitPjnK2rzHQoD5T9KR0KYk8tlI9rA 4Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2vk5qj8vx8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 15 Oct 2019 16:59:35 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9E77B100034;
 Tue, 15 Oct 2019 16:59:33 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 9B5782CD079;
 Tue, 15 Oct 2019 16:59:33 +0200 (CEST)
Received: from lmecxl0995.lme.st.com (10.75.127.49) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 15 Oct
 2019 16:59:33 +0200
Subject: Re: [Linux-stm32] [PATCH] phy: stm32: fix use of integer as pointer
To: Ben Dooks <ben.dooks@codethink.co.uk>, <linux-kernel@lists.codethink.co.uk>
References: <20191015135148.28508-1-ben.dooks@codethink.co.uk>
From: Amelie DELAUNAY <amelie.delaunay@st.com>
Message-ID: <fc837347-c2da-5550-0027-99bd3328e83f@st.com>
Date: Tue, 15 Oct 2019 16:59:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191015135148.28508-1-ben.dooks@codethink.co.uk>
Content-Language: en-US
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG5NODE2.st.com (10.75.127.14) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-15_05:2019-10-15,2019-10-15 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_075949_194621_B0325667 
X-CRM114-Status: GOOD (  20.15  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-kernel@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/15/19 3:51 PM, Ben Dooks wrote:
> The calls devm_clk_get() and devm_reset_control_get()
> take pointers so change the 0 to NULl to fix the
> following sparse warnings:
> 
> drivers/phy/st/phy-stm32-usbphyc.c:330:42: warning: Using plain integer as NULL pointer
> drivers/phy/st/phy-stm32-usbphyc.c:343:52: warning: Using plain integer as NULL pointer
> 
> Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>

Reviewed-by: Amelie Delaunay <amelie.delaunay@st.com>

> ---
> Cc: Kishon Vijay Abraham I <kishon@ti.com>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: linux-kernel@vger.kernel.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>   drivers/phy/st/phy-stm32-usbphyc.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/st/phy-stm32-usbphyc.c b/drivers/phy/st/phy-stm32-usbphyc.c
> index 56bdea4b0bd9..2b3639cba51a 100644
> --- a/drivers/phy/st/phy-stm32-usbphyc.c
> +++ b/drivers/phy/st/phy-stm32-usbphyc.c
> @@ -327,7 +327,7 @@ static int stm32_usbphyc_probe(struct platform_device *pdev)
>   	if (IS_ERR(usbphyc->base))
>   		return PTR_ERR(usbphyc->base);
>   
> -	usbphyc->clk = devm_clk_get(dev, 0);
> +	usbphyc->clk = devm_clk_get(dev, NULL);
>   	if (IS_ERR(usbphyc->clk)) {
>   		ret = PTR_ERR(usbphyc->clk);
>   		dev_err(dev, "clk get failed: %d\n", ret);
> @@ -340,7 +340,7 @@ static int stm32_usbphyc_probe(struct platform_device *pdev)
>   		return ret;
>   	}
>   
> -	usbphyc->rst = devm_reset_control_get(dev, 0);
> +	usbphyc->rst = devm_reset_control_get(dev, NULL);
>   	if (!IS_ERR(usbphyc->rst)) {
>   		reset_control_assert(usbphyc->rst);
>   		udelay(2);
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
