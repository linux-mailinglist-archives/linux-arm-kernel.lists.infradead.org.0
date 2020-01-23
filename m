Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B6A146378
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 09:27:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aZL0Y0luDs5UwX2RLYkKbkH3Jgn4iz0Q+9L2KZCNf4E=; b=fNlHb8QtJA6CkRRavLBJK+PqN
	LAe2ZhrQErEVUs91iqp7EzmtOn5WzAVNNCjpUVtjECbsK76yRJQF1rL6aYB8+vlwA6VnWGsfxb+Ha
	CrgCrGwIQ0OBIefR41YHBoF9/HQ4/bOMmKtgpVf83cHsCZXHVRpmpxZqHm3w4cXwo8DvrId6SeDCk
	pQOxcsi7wKCbYZx5ChL7BB/z3C1a9u804yJlB7pnjNwggtaGsF527pPLPKfZhiEjrrEd7/9ugupbt
	FXH2qCV6Wo8G33pxBI7QI7SCACWxeI0Ph7blUCSBKxi4fZ3pBF+0QxfhwpKKKXGh7YunMNMkHjWdu
	BEtYPVGIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuXpv-0003DW-Kq; Thu, 23 Jan 2020 08:27:35 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuXpk-0003DA-LM
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 08:27:26 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00N8OObr021705; Thu, 23 Jan 2020 09:27:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=Nr01ha+lcsDvMjgCfxNkcvdtf4fDpeD72xbYwInGTxI=;
 b=BUo5zPLdKIz+FTx6AT/dLAi+Z9vaY+TEhYWP02yxAFDbPT9hEidn2wKZT/scugq7cldL
 c0T8Tw9vA6bll/N7rKnlRFtA9Cpxiy+BrA2B5REoTJMyBTPy1QWitVX+cUBl8VrlIilO
 G+mAMIfcWtsQgggSW2pqWJxPksBrMVAwLLzDsfxkQjqxJ707KuzUdg1wQtNffpuPZf4x
 cj4bi0Sl3Ru8TrijIXkeQold7C2OPtYKCTuhxF2xt0NZB1FTmoMXBMFtarIQxgp4Orel
 QujKca34KFxosFHfwWLgUT0X2nIel/XLr3zW87fpv0ktlvkv1/4icV45A5VysuHLrYSt fQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xkrc592vd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 23 Jan 2020 09:27:21 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id CD25E100034;
 Thu, 23 Jan 2020 09:27:16 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B69FE20EDED;
 Thu, 23 Jan 2020 09:27:16 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.50) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 23 Jan
 2020 09:27:16 +0100
Subject: Re: STM32MP1 level triggered interrupts
To: Marek Vasut <marex@denx.de>, Linux ARM
 <linux-arm-kernel@lists.infradead.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>
References: <20bb72d0-8258-abc0-e729-4d3d5a75c41c@denx.de>
 <d6e02817-2464-51b9-246a-7720b607b8d6@st.com>
 <65a1c5b2-c1b9-322f-338c-e6ff6379d8d1@denx.de>
 <129d04a0-c846-506d-5726-4a1024d977a6@st.com>
 <80db762c-3b3d-f007-2f9b-dadbffd95782@denx.de>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <360b1adc-32f1-7993-c463-e52c7a5a8a67@st.com>
Date: Thu, 23 Jan 2020 09:27:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <80db762c-3b3d-f007-2f9b-dadbffd95782@denx.de>
Content-Language: en-US
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG8NODE1.st.com (10.75.127.22) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-22_08:2020-01-22,
 2020-01-22 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_002725_000116_67C95734 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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



On 1/22/20 8:29 PM, Marek Vasut wrote:
> On 1/22/20 6:19 PM, Alexandre Torgue wrote:
> 
> Hi,
> 
> [...]
> 
>>>> Concerning, your question:
>>>>
>>>> Setting your gpioC interruption as "falling edge" should be enough. On
>>>> gpioCx falling edge, a high-level signal is generated by exti and sent
>>>> to GIC (which triggers GIC interrupt). This signal remains high until
>>>> stm32_irq_ack is called.
>>>>
>>>> So you only need: (ex for gpioc 1).
>>>>
>>>> interrupt-parent = <&gpioc>;
>>>> interrupts = <1 IRQ_TYPE_EDGE_FALLING>;
>>>
>>> How does this deal with the case where the device holds the interrupt
>>> line low (since it's level-sensitive, active low) after the driver
>>> interrupt handler finishes ? Does such condition generate another
>>> interrupt and call the driver interrupt handler again ? I would expect
>>> the answer is no, because the interrupt is edge-triggered and there is
>>> no edge.
>>
>> Your assumption is good. If your device continue to hold the line to low
>> at the end of your interrupt handler, no more interrupt will be generated.
> 
> But does that basically mean that such a device cannot be used with
> STM32MP1 or am I fundamentally mistaken and don't understand how a
> level-triggered interrupt works ? :)

You need to release the line in your device interrupt handler. If not, 
yes, you will miss interrupts :$

> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
