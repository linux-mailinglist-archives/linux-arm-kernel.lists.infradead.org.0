Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03CC5F83D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 14:07:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PFWFOxvrNjkJXhhpU0VcIz9wNEcxGA056XlgQs12hug=; b=OeodQ/uhwUN92OoQ0AYs1AhKx
	orCK0N8LPqw+rWpaA2PH48ZNJXU1z/A2+QSE6h2nnBmHSlPuzbbVcvSMPnzKM10e63e1eD70zK0PU
	hbn9gIxgcktb76xQRw5FxjEc3GZKK5JgWGa2YV2wB2XQXkKfCLYh71ba2I09Ib3OWeJ2OjNzQ6CmU
	Vswghy6yQUh6fxPWj3md0tEoeoBdW79VYbRm+ruVDTchmuvYE1j/ZUEAShSMESAITVSmvz7kCDktW
	wRB7rB91kilSDYIi+JKxN65IBN+XZnprLkCZNXsDvk3pR0ka0AYjN825t5HeNnqdpwKpG8RAudAaf
	mF8bZsqnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLRXJ-000526-0k; Tue, 30 Apr 2019 12:07:01 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLRXB-000517-8T
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 12:06:55 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x3UBv3l2016156; Tue, 30 Apr 2019 14:06:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=0TJCqpAByJcnuLJ0JtSeGC0DKLxILjaYjgU3/kNbuek=;
 b=NmBhW31fR9zLCaqeXjHXtkG5/BQARi8G719yE+lA8MT+RIjgdhnjtI1rVcuizf7yT2ha
 fjDWIVwaVZSlTvU+BQ5dakHKoI4uCLaihfSydWw9ymEnQMIQw/okuMvLQsvrMGWXKxXZ
 GvMl+PTikZK8q0t2qdIM6Wp0qCLDy9SPY+96JOdYQJcfWmBAHr/aaxtWiOTacXyqWHrf
 OhfzASaUV7E5u14LxjwzJJcXL1ttxOO+/P3p/A2fZvY4GtqzZxcfIFzrtwOb5hAL8VqO
 AezCbzmDnt4DyRPwqmw/Ndi+MwL2iff+nGvUwXGhPOUAN1SdbLZ9QxNc/dxu4MPizXjI 7Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2s61q8dqy5-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 30 Apr 2019 14:06:47 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 082673A;
 Tue, 30 Apr 2019 12:06:47 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D06F22516;
 Tue, 30 Apr 2019 12:06:46 +0000 (GMT)
Received: from [10.48.0.237] (10.75.127.48) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 30 Apr
 2019 14:06:46 +0200
Subject: Re: [PATCH V2 0/5] mmc: mmci: add busy detect for stm32 sdmmc variant
To: Ulf Hansson <ulf.hansson@linaro.org>
References: <1556264798-18540-1-git-send-email-ludovic.Barre@st.com>
 <CAPDyKFqbn=UcbwoH_z+yjrjvHQZaMtmsD=n0yrBV7DAK5VRJEQ@mail.gmail.com>
From: Ludovic BARRE <ludovic.barre@st.com>
Message-ID: <74b91eb4-e5a3-38b2-f732-29cdd058eb6a@st.com>
Date: Tue, 30 Apr 2019 14:06:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAPDyKFqbn=UcbwoH_z+yjrjvHQZaMtmsD=n0yrBV7DAK5VRJEQ@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG1NODE2.st.com (10.75.127.2) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-04-30_05:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_050653_758932_0D2EFDAF 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: DTML <devicetree@vger.kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 4/30/19 1:13 PM, Ulf Hansson wrote:
> On Fri, 26 Apr 2019 at 09:46, Ludovic Barre <ludovic.Barre@st.com> wrote:
>>
>> From: Ludovic Barre <ludovic.barre@st.com>
>>
>> This patch series adds busy detect for stm32 sdmmc variant.
>> Some adaptations are required:
>> -Avoid to check and poll busy status when is not expected.
>> -Clear busy status bit if busy_detect_flag and busy_detect_mask are
>>   different.
>> -Add hardware busy timeout with MMCIDATATIMER register.
>>
>> V2:
>> -mmci_cmd_irq cleanup in separate patch.
>> -simplify the busy_detect_flag exclude
>> -replace sdmmc specific comment in
>> "mmc: mmci: avoid fake busy polling in mmci_irq"
>> to focus on common behavior
>>
>> Ludovic Barre (5):
>>    mmc: mmci: cleanup mmci_cmd_irq for busy detect feature
>>    mmc: mmci: avoid fake busy polling in mmci_irq
>>    mmc: mmci: fix clear of busy detect status
>>    mmc: mmci: add hardware busy timeout feature
>>    mmc: mmci: add busy detect for stm32 sdmmc variant
>>
>>   drivers/mmc/host/mmci.c | 61 ++++++++++++++++++++++++++++++++++++++-----------
>>   drivers/mmc/host/mmci.h |  3 +++
>>   2 files changed, 51 insertions(+), 13 deletions(-)
>>
>> --
>> 2.7.4
>>
> 
> Ludovic, just wanted to let you know that I am reviewing and testing
> this series.
> 
> However, while running some tests on Ux500 for validating the busy
> detection code, even without your series applied, I encounter some odd
> behaviors. I am looking into the problem to understand better and will
> let you know as soon as I have some more data to share.

Oops, don't hesitate to share your status, if I could help.

> 
> Kind regards
> Uffe
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
