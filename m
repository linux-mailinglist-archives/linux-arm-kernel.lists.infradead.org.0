Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 184541442ED
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 18:13:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jKvnYhpYipeKL1O/muv7Y47mTWBXNqIyItOUc33cx0Q=; b=IaEauQFs5iR+wLlxQqyvNnVOC
	c6d+1h8WQAVzxzr5k2DsYMa/bI+mHh9LRBBgnfLWhhKiulGbPgOTyE1xPQb7zbzr6wELxH3lHjGar
	CZqgbpsp+Q5cGi/ZZiO6UCzB4VGEX1tXUZJIf7hNjm1uKOL+DcFDRwGcBnlSIWP7tkq6UmB8Asqse
	66XInu1irU7AGEOBjsLoMG4nj6ihC0ahx/52TOhF+KgjTNjmAg6+lHAf3+ecoOOeifQrYKaM5BLgv
	i1k6t01cDSbpxnerkxysbCcf9NW3i9+L/rqCHdTi3tkTFiqX/LG4Qp/9nMLPPfULyn1mxBKZPq/js
	Dv7HXU9WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itx5U-0007gl-60; Tue, 21 Jan 2020 17:13:12 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itx5H-0007fB-VK
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 17:13:05 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00LH8CrC009260; Tue, 21 Jan 2020 18:12:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=ygrZ6vhbHOsTbhfRWsc+9Z8MYthtA5vNN2mD+D4l4E0=;
 b=l5HLodWzW5GxXy4u9b9oxqOy7CdnadxD9GkWnQP9qvvLBkIjqrSvwsjMMIXfNB6mp2Pj
 saLd/UpB3SmshFSuvVnEl/AnQrPs6eQaPPyyJ+Dzu3qK99Qgbn4oVA+fDfD+4yd0mm48
 KtjB0R7f7TLwzXKqkpcZrHLhTL9EEnbWZuxaSgvHEpNcfXpbdF2QDHcAwlY7egugFSyR
 ssevN4A+C79Uso+SjCMelcg5bNP6QVOufOYsWQoSEZ2rYQJk1bnRKGqZBfzzC2Bekjqg
 801/w0z2LaFaQm3Sl/kz3yBhebYn87hB+v1rMivN8D4zUmeV5RRfDlHKPtfLsjA+ewOB ig== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xkrp27xhn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 21 Jan 2020 18:12:53 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id CF97610002A;
 Tue, 21 Jan 2020 18:12:50 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id A85202A8476;
 Tue, 21 Jan 2020 18:12:50 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.48) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 21 Jan
 2020 18:12:50 +0100
Subject: Re: STM32MP1 level triggered interrupts
To: Marek Vasut <marex@denx.de>, Linux ARM
 <linux-arm-kernel@lists.infradead.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>
References: <20bb72d0-8258-abc0-e729-4d3d5a75c41c@denx.de>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <d6e02817-2464-51b9-246a-7720b607b8d6@st.com>
Date: Tue, 21 Jan 2020 18:12:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20bb72d0-8258-abc0-e729-4d3d5a75c41c@denx.de>
Content-Language: en-US
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG7NODE2.st.com (10.75.127.20) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.634
 definitions=2020-01-21_05:2020-01-21,
 2020-01-21 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_091300_497508_0896060E 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Patrick Delaunay <patrick.delaunay@st.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek,

On 1/20/20 7:32 PM, Marek Vasut wrote:
> Hi,
> 
> I have a device connected to STM32MP157C which requires active-low
> level-triggered interrupt sink. The device interrupt line is connected
> to the SoC gpio-C bank, which has it's interrupt line routed into EXTI,
> which can only handle edge triggered interrupts to my understanding.

correct.

> 
> However, ARM GIC should be able to do both and EXTI has this irqmux /
> EXTImux functionality, which -- if my understanding is correct -- is
> capable of routing a select GPIO line directly into the GIC as an EXTIn
> interrupt signal. Thus, this might permit handling active low
> level-triggered interrupts. Is there some DT binding to configure this yet ?
> 
> Or is there some other, better, way ?
> 

For SPIs, GIC controller handles rising edge triggered interrupt and 
active high level-sensitive. GIC integration in STM32MP157c makes that 
only active high level-sensitive configuration for SPI interrupts is 
supported.

Concerning, your question:

Setting your gpioC interruption as "falling edge" should be enough. On 
gpioCx falling edge, a high-level signal is generated by exti and sent 
to GIC (which triggers GIC interrupt). This signal remains high until 
stm32_irq_ack is called.

So you only need: (ex for gpioc 1).

interrupt-parent = <&gpioc>;
interrupts = <1 IRQ_TYPE_EDGE_FALLING>;


regards
Alex



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
