Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D42A624B51
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 11:18:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Q9REveEhY46RevbHVT3r2+R8pyvQbuCivG3rWD+E2hQ=; b=aZ39l4HslxW1/Mel3csr8DHFX
	1b+2Ia2P/2L0/jF5TUnSHNVLC4kTRhkBUUZ7Bv9D14oWLLLW1o7em6m0kABbDX3PnIIdzLjSBfJqb
	HlPPXd2rbIYVXgqHtkif0asLisBPAV7m/2Emg9x0TkL1FFJtjv7aqkeouHas9R5z0fEDGsbGjL2B8
	z8RIBDqvgmWr1RBKpcmNLXPDS97a0xbwbCs80aO139MOui6i4NKQt0+FkICmqbiH3kY+jTtd4KdHW
	76EdNMb9LJNPkAyvO+iVz+nVSlxa4CRAZmRdQA5KY943ZTdyOZuRTXLzLVlmGFvz7sh0AuFPdl/Hv
	c2wp1Wqdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT0uL-0005rE-9B; Tue, 21 May 2019 09:18:05 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT0uC-0005qk-D4
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 09:17:58 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4L96iJ0014021; Tue, 21 May 2019 11:17:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=4RTuKGHCLsvh6APcX9ZvfmHkgHj7OwihyknGBu1Dl3k=;
 b=zu0FNCpQ3k5YZ+Hsbbr3+WOhETEEI/gIOo8/DQQg6XhVOH+wQN5fmQxRdPoCRMQl5YHP
 BXFwqOgCQeT/O3uvkr/R1btmto74WK/L9rN8UnYKQwZC6LfYnCeswjgmf0wBmOOQ72ir
 HTGEDPHbl3+VDiPOrxUgouddIuxMgctnPwiTu5l9Ssm+sdJOvMDGmYaWJCNFq/8AP21Y
 NRJfA5saQo7a+yG5I5A4LjLOrqk74BBnHvNZfK2ealDkR4PahOAymzNzuVwKd1LkSaDJ
 T881Rf3ep8OKCnHgANMCr9YhMkR7PBygemChfoWMJoXEYrd+Rz/tnM6pM3JXW+ZSRigb VQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2sj8xg8bpr-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 21 May 2019 11:17:51 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4ECC531;
 Tue, 21 May 2019 09:17:50 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1DB7C24EC;
 Tue, 21 May 2019 09:17:50 +0000 (GMT)
Received: from [10.48.0.237] (10.75.127.44) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 21 May
 2019 11:17:49 +0200
Subject: Re: [PATCH V2 0/5] mmc: mmci: add busy detect for stm32 sdmmc variant
To: Ulf Hansson <ulf.hansson@linaro.org>
References: <1556264798-18540-1-git-send-email-ludovic.Barre@st.com>
 <CAPDyKFqbn=UcbwoH_z+yjrjvHQZaMtmsD=n0yrBV7DAK5VRJEQ@mail.gmail.com>
 <74b91eb4-e5a3-38b2-f732-29cdd058eb6a@st.com>
 <CAPDyKFoURwnai1hbCbO+Uh6+hc7A4dYHjWkqeFAEgMQET-BzwA@mail.gmail.com>
 <e884b614-14d4-1cae-5b77-c6aacabb764a@st.com>
 <CAPDyKFo4Y9PF_QL47rO2c_szUHahPMuzHV=j_SL9dxvAzst17w@mail.gmail.com>
From: Ludovic BARRE <ludovic.barre@st.com>
Message-ID: <7e15c8ec-f851-b0d3-a3ce-dfad2a398e78@st.com>
Date: Tue, 21 May 2019 11:17:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAPDyKFo4Y9PF_QL47rO2c_szUHahPMuzHV=j_SL9dxvAzst17w@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG3NODE1.st.com (10.75.127.7) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-21_01:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_021756_726514_69967C9E 
X-CRM114-Status: GOOD (  20.84  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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



On 5/21/19 9:56 AM, Ulf Hansson wrote:
> On Tue, 21 May 2019 at 09:38, Ludovic BARRE <ludovic.barre@st.com> wrote:
>>
>> hi Ulf
>>
>> Just a "gentleman ping" about the rest of series.
>> "mmc: mmci: add busy detect for stm32 sdmmc variant"
> 
> Thanks!
> 
> It's been a busy period and I am currently traveling. My plan is to
> look at in detail beginning of next week when get back home. I hope
> that's okay.

yes, I understand, it's just to not forget me :-)

> 
> Kind regards
> Uffe
> 
>>
>> Regards
>> Ludo
>>
>> On 5/3/19 3:29 PM, Ulf Hansson wrote:
>>> On Tue, 30 Apr 2019 at 14:06, Ludovic BARRE <ludovic.barre@st.com> wrote:
>>>>
>>>>
>>>>
>>>> On 4/30/19 1:13 PM, Ulf Hansson wrote:
>>>>> On Fri, 26 Apr 2019 at 09:46, Ludovic Barre <ludovic.Barre@st.com> wrote:
>>>>>>
>>>>>> From: Ludovic Barre <ludovic.barre@st.com>
>>>>>>
>>>>>> This patch series adds busy detect for stm32 sdmmc variant.
>>>>>> Some adaptations are required:
>>>>>> -Avoid to check and poll busy status when is not expected.
>>>>>> -Clear busy status bit if busy_detect_flag and busy_detect_mask are
>>>>>>     different.
>>>>>> -Add hardware busy timeout with MMCIDATATIMER register.
>>>>>>
>>>>>> V2:
>>>>>> -mmci_cmd_irq cleanup in separate patch.
>>>>>> -simplify the busy_detect_flag exclude
>>>>>> -replace sdmmc specific comment in
>>>>>> "mmc: mmci: avoid fake busy polling in mmci_irq"
>>>>>> to focus on common behavior
>>>>>>
>>>>>> Ludovic Barre (5):
>>>>>>      mmc: mmci: cleanup mmci_cmd_irq for busy detect feature
>>>>>>      mmc: mmci: avoid fake busy polling in mmci_irq
>>>>>>      mmc: mmci: fix clear of busy detect status
>>>>>>      mmc: mmci: add hardware busy timeout feature
>>>>>>      mmc: mmci: add busy detect for stm32 sdmmc variant
>>>>>>
>>>>>>     drivers/mmc/host/mmci.c | 61 ++++++++++++++++++++++++++++++++++++++-----------
>>>>>>     drivers/mmc/host/mmci.h |  3 +++
>>>>>>     2 files changed, 51 insertions(+), 13 deletions(-)
>>>>>>
>>>>>> --
>>>>>> 2.7.4
>>>>>>
>>>>>
>>>>> Ludovic, just wanted to let you know that I am reviewing and testing
>>>>> this series.
>>>>>
>>>>> However, while running some tests on Ux500 for validating the busy
>>>>> detection code, even without your series applied, I encounter some odd
>>>>> behaviors. I am looking into the problem to understand better and will
>>>>> let you know as soon as I have some more data to share.
>>>>
>>>> Oops, don't hesitate to share your status, if I could help.
>>>
>>> Thanks! Good and bad news here, then.
>>>
>>> I now understand what is going on - and there is certainly room for
>>> improvements here, but more importantly the actual mmci busy detection
>>> works as expected.
>>>
>>> When it comes to improvements, the main issue I have found is how we
>>> treat DATA WRITES. In many cases we simply don't use the HW busy
>>> detection at all, but instead rely on the mmc core to send CMD13 in a
>>> loop to poll. Well, then if the polling would have consisted of a
>>> couple of CMD13s that wouldn't be an issue, but my observations is
>>> rather that the numbers of CMD13 sent to poll is in the range or
>>> hundreds/thousands - per each WRITE request!
>>>
>>> I am going to send a patch (or two) that improves the behavior. It
>>> might even involve changing parts in core layer, not sure how the end
>>> result will look like yet.
>>>
>>> In any case, I have applied patch 1 and patch2 for next, as the tests
>>> turned out well at my side. I also took the liberty of updating some
>>> of the comments/changelogs, please have look and tell if there is
>>> something you want to change.
>>>
>>> I will continue with the rest of series next week.
>>>
>>> Kind regards
>>> Uffe
>>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
