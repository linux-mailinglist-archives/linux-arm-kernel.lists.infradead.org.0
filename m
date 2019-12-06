Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5074114C7D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 07:57:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7B7ybHgwZQDyXAU5YXoHTvBIgOGwGCFRCmXPvt6ApD8=; b=ecTHonlDZRVjpUuU3ZaL7DGNr
	PZR4ClvfnHFRKCTmafwmUT6i3dSqxawCwpQ//15Eg7vN3v7l1KMriBstiT0friCBOOeq35yEpfQO6
	Ge2G/xF7hvtA9YvobrEB3ArqqJn8jr/9whtGvd2Ach8QmWAQHE/pYtjrM+l2mmR60laoSNPR/+45g
	tTZQNNLlxbYr/olwv1iW9cHac598UJvasJO2jby3fNzhpVw1/UOqgYSpwAPgMnNpUJUO8nnBRuCWd
	ro7XXhLXsT0/yBlpX0a6MJJGbm4sDzUnerMZHv6LxMYi0HxYrUSopvrtEoOI6AwZx6vCgtgAChtke
	aYodpibuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1id7YX-0004Zl-Qd; Fri, 06 Dec 2019 06:57:37 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1id7YP-0004ZL-Ur
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 06:57:31 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id xB66vM5X028652;
 Fri, 6 Dec 2019 00:57:22 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1575615442;
 bh=TidBXxmG0lVf97Urae4Of6uTLVY6v3WqmRhj9ONoPwc=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Xvbf3nMvYnmB1kXGjcV54vyBZTcqO6hccRsxGYb2EjN5u33y65FaxMd+I6JFT+y64
 LySLrAiP/SwAO87rHcLzD22DKiCdOWYLsPB+k6hrwps7P7DSH6M7gmMNvVH4ghnz6J
 tigiVBgh/Z2FKxP6qDD+VPcBBF0Y14KlHhdo09MI=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xB66vMEj039305
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 6 Dec 2019 00:57:22 -0600
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 6 Dec
 2019 00:57:21 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 6 Dec 2019 00:57:21 -0600
Received: from [10.24.69.159] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id xB66vIdd114242;
 Fri, 6 Dec 2019 00:57:19 -0600
Subject: Re: [PATCH 2/2] PCI: uniphier: Add checking whether PERST# is
 deasserted
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, Andrew Murray <andrew.murray@arm.com>, Bjorn
 Helgaas <bhelgaas@google.com>
References: <20191121164705.GA14229@e121166-lin.cambridge.arm.com>
 <20191122205316.297B.4A936039@socionext.com>
 <20191204190547.333C.4A936039@socionext.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <c40da2f3-ea5d-b1fc-0190-f90f031eef4c@ti.com>
Date: Fri, 6 Dec 2019 12:28:29 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191204190547.333C.4A936039@socionext.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_225730_123424_D7ACFFBA 
X-CRM114-Status: GOOD (  23.67  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-pci@vger.kernel.org, Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jassi Brar <jaswinder.singh@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 04/12/19 3:35 pm, Kunihiko Hayashi wrote:
> On Fri, 22 Nov 2019 20:53:16 +0900 <hayashi.kunihiko@socionext.com> wrote:
> 
>> Hello Lorenzo,
>>
>> On Thu, 21 Nov 2019 16:47:05 +0000 <lorenzo.pieralisi@arm.com> wrote:
>>
>>> On Fri, Nov 08, 2019 at 04:30:27PM +0900, Kunihiko Hayashi wrote:
>>>>> However, If I understand correctly, doesn't your solution only work some
>>>>> of the time? What happens if you boot both machines at the same time,
>>>>> and PERST# isn't asserted prior to the kernel booting?
>>>>
>>>> I think it contains an annoying problem.
>>>>
>>>> If PERST# isn't toggled prior to the kernel booting, PERST# remains asserted
>>>> and the RC driver can't access PCI bus.
>>>>
>>>> As a result, this patch works and deasserts PERST# (and EP configuration will
>>>> be lost). So boot sequence needs to include deasserting PERST#.
>>>
>>> I am sorry but I have lost you. Can you explain to us why checking
>>> that PERST# is deasserted guarantees you that:
>>>
>>> - The EP has bootstrapped
>>> - It is safe not to toggle it again (and also skip
>>>    uniphier_pcie_ltssm_enable())
>>>
>>> Please provide details of the HW configuration so that we understand
>>> what's actually supposed to happen and why this patch fixes the
>>> issue you are facing.
>>
>> I tried to connect between the following boards, and do pci-epf-test:
>>   - "RC board": UniPhier ld20 board that has DWC RC controller
>>   - "EP board": UniPhier legacy board that has DWC EP controller
>>
>> This EP has power-on-state configuration, but it's necessary to set
>> class ID, BAR sizes, etc. after starting up.
>>
>> In case of that starting up RC board before EP board, the RC driver
>> can't establish link. So we need to boot EP board first.
> 
> At that point, I've considered why RC can't establish link,
> and found that the waitng time was too short.
> 
> - EP/RC: power on both boards
> 
> - RC: start up the kernel on RC board
> 
> - RC: wait for link up (long time enough)
> 
> - EP: start up the kernel on EP board
> 
> - EP: configurate pci-epf-test
> 
> When the endpoint  configuration is done and the EP driver enables LTSSM,
> the RC driver will quit from waiting for link up.
> 
> Currently DWC RC driver calls dwc_pcie_wait_for_link(), however,
> the function tries to link up 10 times only, that is defined
> as LINK_WAIT_MAX_RETRIES in pcie-designware.h, it's too short
> to configurate the endpoint.
> 
> Now the patch to bypass PERST# is not necessary.
> 
> Instead for DWC RC drivers, I think that the number of retries
> should be changed according to the usage.
> And the same issue remains with other RC drivers.

If EP is configured using Linux, then PERST# cannot be used as it's 
difficult to boot linux and initialize EP within the specified time 
interval. Can't you prevent PERST from being propagated at all?

Thanks
Kishon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
