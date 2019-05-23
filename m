Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C922761F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 08:40:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HpIReChNvmg5Ce0biu8GLw70k0GrsoGJaP9Nbzp/RUA=; b=otBebSGzD0Mm5o
	UO1RZRSSG1WhJD+4s/PnKJRtkd9BW8brj4GO/KQzF1KLOVjQ3e+WDiAtdhlLAh5QYIytXZUu3/C08
	HxKi7ypDSSWs2MuRVaEe9GO7Pm9vAdqYP6HMUtkCct8ZVwos1alF78/KeuZVJPL7wZyeiZjzRMw3V
	m4hlyh+i06Ot4m5/aSe0jGqdeJER6ETK/FhfIKV9RI8aB5LPxGDnH6m3K++HgpFxZOR2bpQ7AYf+u
	DTkLN4YLdjrqoIvT1pAjrtEdrmRtmMg7wg74ye3mKqcpQsqSTf+6YjmaACPOWVKHuS+94+n1XistK
	mUUgIcMaS3fFDGfRiy9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hThOe-0004Lh-BW; Thu, 23 May 2019 06:40:12 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hThOW-0003DC-QJ
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 06:40:06 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4N6W1if012749; Thu, 23 May 2019 08:39:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=ho0xlKX03HhiHuuMo5Fyh6gxLhNZqkg4on/Piy7I8/k=;
 b=AzI25pdKMW2AjCHGniSJK4KsArt6w16MeGtqNv6ySWJN2y0Ga0RgV0gy8isVaQha347W
 n4ULpsYM+oEedpcpSY4Rl+bGtGcT3yLYp66/J7BZQjPur1ovG2hA2mgDkhrbTO/P3doy
 mt0kdlnD4Y1KZxOW0q+eLLlJCRQcMCDPF3XRG5vc07okdJAsEsGvXXgfLmraX2JjB1Fp
 JD8q79MZieR23MMkiXznPys1uVASw4p2yhHODeAqpZGAuQ5JWdrVERKhQ8U8eb/XoUU1
 Q2VTIVzkW1W718PwZNueBENTv//afmBYzun3loTA5DIQyrpACZB/pWokAWKgGAbiq2n3 gQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2sj7tucwk2-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 23 May 2019 08:39:57 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id DB7B034;
 Thu, 23 May 2019 06:39:56 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B933614C9;
 Thu, 23 May 2019 06:39:56 +0000 (GMT)
Received: from SFHDAG5NODE3.st.com (10.75.127.15) by SFHDAG3NODE3.st.com
 (10.75.127.9) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 23 May
 2019 08:39:56 +0200
Received: from SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47]) by
 SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47%20]) with mapi id
 15.00.1347.000; Thu, 23 May 2019 08:39:56 +0200
From: Fabien DESSENNE <fabien.dessenne@st.com>
To: Arnaud POULIQUEN <arnaud.pouliquen@st.com>, Jassi Brar
 <jassisinghbrar@gmail.com>
Subject: Re: [PATCH] mailbox: stm32_ipcc: add spinlock to fix channels
 concurrent access
Thread-Topic: [PATCH] mailbox: stm32_ipcc: add spinlock to fix channels
 concurrent access
Thread-Index: AQHVEHf3zLD2dpF4NEGX8BuhDUErpqZ4IjCA
Date: Thu, 23 May 2019 06:39:56 +0000
Message-ID: <7a0352eb-41ea-4d81-4a22-ba9df2c72148@st.com>
References: <1558513535-16736-1-git-send-email-arnaud.pouliquen@st.com>
In-Reply-To: <1558513535-16736-1-git-send-email-arnaud.pouliquen@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.50]
Content-ID: <12B83101779F314AADBBE24BC168E7AC@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-23_06:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_234005_339741_F86207BC 
X-CRM114-Status: GOOD (  22.39  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnaud,


Thank you for the patch.


On 22/05/2019 10:25 AM, Arnaud Pouliquen wrote:
> Add spinlock protection on IPCC register update to avoid race condition.
> Without this fix, stm32_ipcc_set_bits and stm32_ipcc_clr_bits can be
> called in parallel for different channels. This results in register
> corruptions.
>
> Signed-off-by: Arnaud Pouliquen <arnaud.pouliquen@st.com>

Reviewed-by: Fabien Dessenne <fabien.dessenne@st.com>


> ---
>   drivers/mailbox/stm32-ipcc.c | 37 +++++++++++++++++++++++++++----------
>   1 file changed, 27 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/mailbox/stm32-ipcc.c b/drivers/mailbox/stm32-ipcc.c
> index f91dfb1327c7..5c2d1e1f988b 100644
> --- a/drivers/mailbox/stm32-ipcc.c
> +++ b/drivers/mailbox/stm32-ipcc.c
> @@ -50,6 +50,7 @@ struct stm32_ipcc {
>   	void __iomem *reg_base;
>   	void __iomem *reg_proc;
>   	struct clk *clk;
> +	spinlock_t lock; /* protect access to IPCC registers */
>   	int irqs[IPCC_IRQ_NUM];
>   	int wkp;
>   	u32 proc_id;
> @@ -58,14 +59,24 @@ struct stm32_ipcc {
>   	u32 xmr;
>   };
>   
> -static inline void stm32_ipcc_set_bits(void __iomem *reg, u32 mask)
> +static inline void stm32_ipcc_set_bits(spinlock_t *lock, void __iomem *reg,
> +				       u32 mask)
>   {
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(lock, flags);
>   	writel_relaxed(readl_relaxed(reg) | mask, reg);
> +	spin_unlock_irqrestore(lock, flags);
>   }
>   
> -static inline void stm32_ipcc_clr_bits(void __iomem *reg, u32 mask)
> +static inline void stm32_ipcc_clr_bits(spinlock_t *lock, void __iomem *reg,
> +				       u32 mask)
>   {
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(lock, flags);
>   	writel_relaxed(readl_relaxed(reg) & ~mask, reg);
> +	spin_unlock_irqrestore(lock, flags);
>   }
>   
>   static irqreturn_t stm32_ipcc_rx_irq(int irq, void *data)
> @@ -92,7 +103,7 @@ static irqreturn_t stm32_ipcc_rx_irq(int irq, void *data)
>   
>   		mbox_chan_received_data(&ipcc->controller.chans[chan], NULL);
>   
> -		stm32_ipcc_set_bits(ipcc->reg_proc + IPCC_XSCR,
> +		stm32_ipcc_set_bits(&ipcc->lock, ipcc->reg_proc + IPCC_XSCR,
>   				    RX_BIT_CHAN(chan));
>   
>   		ret = IRQ_HANDLED;
> @@ -121,7 +132,7 @@ static irqreturn_t stm32_ipcc_tx_irq(int irq, void *data)
>   		dev_dbg(dev, "%s: chan:%d tx\n", __func__, chan);
>   
>   		/* mask 'tx channel free' interrupt */
> -		stm32_ipcc_set_bits(ipcc->reg_proc + IPCC_XMR,
> +		stm32_ipcc_set_bits(&ipcc->lock, ipcc->reg_proc + IPCC_XMR,
>   				    TX_BIT_CHAN(chan));
>   
>   		mbox_chan_txdone(&ipcc->controller.chans[chan], 0);
> @@ -141,10 +152,12 @@ static int stm32_ipcc_send_data(struct mbox_chan *link, void *data)
>   	dev_dbg(ipcc->controller.dev, "%s: chan:%d\n", __func__, chan);
>   
>   	/* set channel n occupied */
> -	stm32_ipcc_set_bits(ipcc->reg_proc + IPCC_XSCR, TX_BIT_CHAN(chan));
> +	stm32_ipcc_set_bits(&ipcc->lock, ipcc->reg_proc + IPCC_XSCR,
> +			    TX_BIT_CHAN(chan));
>   
>   	/* unmask 'tx channel free' interrupt */
> -	stm32_ipcc_clr_bits(ipcc->reg_proc + IPCC_XMR, TX_BIT_CHAN(chan));
> +	stm32_ipcc_clr_bits(&ipcc->lock, ipcc->reg_proc + IPCC_XMR,
> +			    TX_BIT_CHAN(chan));
>   
>   	return 0;
>   }
> @@ -163,7 +176,8 @@ static int stm32_ipcc_startup(struct mbox_chan *link)
>   	}
>   
>   	/* unmask 'rx channel occupied' interrupt */
> -	stm32_ipcc_clr_bits(ipcc->reg_proc + IPCC_XMR, RX_BIT_CHAN(chan));
> +	stm32_ipcc_clr_bits(&ipcc->lock, ipcc->reg_proc + IPCC_XMR,
> +			    RX_BIT_CHAN(chan));
>   
>   	return 0;
>   }
> @@ -175,7 +189,7 @@ static void stm32_ipcc_shutdown(struct mbox_chan *link)
>   					       controller);
>   
>   	/* mask rx/tx interrupt */
> -	stm32_ipcc_set_bits(ipcc->reg_proc + IPCC_XMR,
> +	stm32_ipcc_set_bits(&ipcc->lock, ipcc->reg_proc + IPCC_XMR,
>   			    RX_BIT_CHAN(chan) | TX_BIT_CHAN(chan));
>   
>   	clk_disable_unprepare(ipcc->clk);
> @@ -208,6 +222,8 @@ static int stm32_ipcc_probe(struct platform_device *pdev)
>   	if (!ipcc)
>   		return -ENOMEM;
>   
> +	spin_lock_init(&ipcc->lock);
> +
>   	/* proc_id */
>   	if (of_property_read_u32(np, "st,proc-id", &ipcc->proc_id)) {
>   		dev_err(dev, "Missing st,proc-id\n");
> @@ -259,9 +275,10 @@ static int stm32_ipcc_probe(struct platform_device *pdev)
>   	}
>   
>   	/* mask and enable rx/tx irq */
> -	stm32_ipcc_set_bits(ipcc->reg_proc + IPCC_XMR,
> +	stm32_ipcc_set_bits(&ipcc->lock, ipcc->reg_proc + IPCC_XMR,
>   			    RX_BIT_MASK | TX_BIT_MASK);
> -	stm32_ipcc_set_bits(ipcc->reg_proc + IPCC_XCR, XCR_RXOIE | XCR_TXOIE);
> +	stm32_ipcc_set_bits(&ipcc->lock, ipcc->reg_proc + IPCC_XCR,
> +			    XCR_RXOIE | XCR_TXOIE);
>   
>   	/* wakeup */
>   	if (of_property_read_bool(np, "wakeup-source")) {
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
