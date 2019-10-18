Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 192D9DC01B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 10:38:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qABCYUP9tL7A8ul7Vxc5bZ86m6BDOeUWwzYMzT82jU0=; b=pT1I6hdsiCzN+3BObjhrMyc5E
	TSngl9fAeLvzPDLCPTpGw+ZeXlN7JJHppck3Wx1ZwxgC5BIBdFeFuf1ChaIHfDsGgw/cfV/xRNru/
	zxrtwdktWZlF1cUMnuc/RV4EMpMWVbEmMSf5pHHCLSyviAzN+/yD6mzzIqtAsl7UxTxXePEPt/W/X
	Ld6CDXZryexomM5MFg0QPo9RvGKzsltZs/zoFe5fB1glso8IOj4MDvqVGsIUzIWnliFWh5OI+JOXo
	JJHOvX4DyI6GsDlSCslSxxdZEGQ7ROvcNq0tlolyrcvM91b5SS+g/agqcywsCJMkZ9KkqclFs7ruE
	3yB7i58PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLNmV-0003UK-Ee; Fri, 18 Oct 2019 08:38:43 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLNmI-0003Sq-J6
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 08:38:32 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 8334FBB43E802C608D56;
 Fri, 18 Oct 2019 16:38:22 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.179) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.439.0;
 Fri, 18 Oct 2019 16:38:13 +0800
Subject: Re: [PATCH v6 2/2] drivers/perf: Add CCPI2 PMU support in ThunderX2
 UNCORE driver.
To: Ganapatrao Kulkarni <gklkml16@gmail.com>, Will Deacon <will@kernel.org>
References: <1571218608-15933-1-git-send-email-gkulkarni@marvell.com>
 <1571218608-15933-3-git-send-email-gkulkarni@marvell.com>
 <b8e1a637-faf4-4567-7d3e-a4f13dfa1cf0@huawei.com>
 <CAKTKpr4QoTDjbSxO4CvSH2sNvmrTJKjxi+RZH4mYfyDaaN96Sw@mail.gmail.com>
 <20191017154750.jgn6e3465qrsu53e@willie-the-truck>
 <CAKTKpr5ntp5X6Lvp=rKT_F1E1ftdqtjSWTgpEOqEwaDMH2kc1w@mail.gmail.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <f7c91a7d-1f0e-24be-1491-fd0dae7f1daf@huawei.com>
Date: Fri, 18 Oct 2019 09:38:06 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <CAKTKpr5ntp5X6Lvp=rKT_F1E1ftdqtjSWTgpEOqEwaDMH2kc1w@mail.gmail.com>
X-Originating-IP: [10.202.227.179]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_013830_800138_06814581 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 "corbet@lwn.net" <corbet@lwn.net>, Jan Glauber <jglauber@marvell.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Robert Richter <rrichter@marvell.com>,
 Zhangshaokun <zhangshaokun@hisilicon.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/10/2019 05:21, Ganapatrao Kulkarni wrote:
> Hi Will,
>
> On Thu, Oct 17, 2019 at 9:17 PM Will Deacon <will@kernel.org> wrote:
>>
>> On Thu, Oct 17, 2019 at 12:38:51PM +0530, Ganapatrao Kulkarni wrote:
>>> On Wed, Oct 16, 2019 at 7:01 PM John Garry <john.garry@huawei.com> wrote:
>>>>> +TX2_EVENT_ATTR(req_pktsent, CCPI2_EVENT_REQ_PKT_SENT);
>>>>> +TX2_EVENT_ATTR(snoop_pktsent, CCPI2_EVENT_SNOOP_PKT_SENT);
>>>>> +TX2_EVENT_ATTR(data_pktsent, CCPI2_EVENT_DATA_PKT_SENT);
>>>>> +TX2_EVENT_ATTR(gic_pktsent, CCPI2_EVENT_GIC_PKT_SENT);
>>>>> +
>>>>> +static struct attribute *ccpi2_pmu_events_attrs[] = {
>>>>> +     &tx2_pmu_event_attr_req_pktsent.attr.attr,
>>>>> +     &tx2_pmu_event_attr_snoop_pktsent.attr.attr,
>>>>> +     &tx2_pmu_event_attr_data_pktsent.attr.attr,
>>>>> +     &tx2_pmu_event_attr_gic_pktsent.attr.attr,
>>>>> +     NULL,
>>>>> +};
>>>>
>>>> Hi Ganapatrao,
>>>>
>>>> Have you considered adding these as uncore pmu-events in the perf tool?
>>>>
>>> At the moment no, since the number of events exposed/listed are very few.
>>
>> Then sounds like a perfect time to nip it in the bud before the list grows
>> ;)
>
> I had internal discussion with architecture team, they have confirmed
> that, these are the only published events and no plan to add new.
> However, If any such request comes from HW team in future, i will add
> them to JSON files.

Don't you find perf list is swamped with all the uncore events?

For Huawei platform, I find this:
./perf list pmu | grep "Kernel PMU event" | grep hisi | wc -l
648

That's because we have so many instances of the same PMUs, not because 
there are many events per PMU.

TBH, I would like to delete all the events from the hisi uncore kernel 
drivers, now that they're supported in the perf tool, but I think that 
would constitute an ABI breakage.

Maybe there is a way to hide them, but I couldn't find it.

John

>
> I have incorporate all your previous comments, Can you please Ack and
> queue it to 5.5?
>
>>
>> If you can manage with these things in userspace, then I agree with John
>> that it would be preferential to do it that way. It also offers more
>> flexibility if we get the metricgroup stuff working properly (I think it's
>> buggered for big/little atm).
>>
>> Will
>
> Thanks,
> Ganapat
>
> .
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
