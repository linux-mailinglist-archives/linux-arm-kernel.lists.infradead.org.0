Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E0E1AD85F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 10:15:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MHP/Fv2vznDfZcMK/bufwiHelK4MH+DXLaX9gAtc84A=; b=Aq6Uc0Hu3rXscE1ybrWEQ+64P
	cbF4FMD1YilzFNYJTwBX99884+sfgTIwR6c+BGhJchnZoa4B2eRWuvHihyJU3EOngNqDfE7b0KUSd
	/45axoFTzu+63u/XFTIX8P7bLdBEVYWGjhaKhFGEX0Tty7pr/qeBav7KItx6fblkpZpM5hHdvw+Bb
	tj4es2IFLeIkeY+ctGk9ktWJrZ83C9s4KvZAPFzT5F44NFgJL27TZhQUrXDK6UPTUkBLHXW+4yC4o
	4Pf/zQ58ezzVJn69o4qMiLAocuc4DFt08xS24X8FDW/4OdSo0nYLTHGTRH+tgB+vpMlT9ISP2JRPd
	Lk4Yvzy2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPM9k-0007ry-PI; Fri, 17 Apr 2020 08:15:24 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPM9d-0007qE-5G
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 08:15:18 +0000
Received: from lhreml724-chm.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id 47869857102CEB4F8FD8;
 Fri, 17 Apr 2020 09:15:11 +0100 (IST)
Received: from [127.0.0.1] (10.210.166.166) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Fri, 17 Apr
 2020 09:15:09 +0100
Subject: Re: [PATCH 0/6] perf/imx_ddr: Add namespace for i.MX8 DDR Perf
To: Joakim Zhang <qiangqing.zhang@nxp.com>, "irogers@google.com"
 <irogers@google.com>
References: <20200222104621.2258-1-qiangqing.zhang@nxp.com>
 <DB7PR04MB4618C0A8DD9BAB2A529CDCECE6EA0@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <a2cc0772-4f5d-aba3-1f5c-7d4eef7a3f72@huawei.com>
 <DB7PR04MB461803AD15E47AA880F0915DE6EA0@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <55836919-41b5-0834-f7a7-1a2a34535677@huawei.com>
 <bd67910e-1522-39cd-5527-b9b18f3da96d@huawei.com>
 <DB8PR04MB6795996085AD2167E2358907E6C30@DB8PR04MB6795.eurprd04.prod.outlook.com>
 <ccab39b0-c84f-e529-4067-07466b5433a1@huawei.com>
 <VI1PR04MB68000808CEE4BC23403C35A0E6C00@VI1PR04MB6800.eurprd04.prod.outlook.com>
 <ca2db002-975a-ffe0-2dfc-c85f4e6205bb@huawei.com>
 <VI1PR04MB6800F2A5949F0AFAF2E82CE0E6C00@VI1PR04MB6800.eurprd04.prod.outlook.com>
 <0b3999b8-c307-6b4a-1a1b-e90b45f50b61@huawei.com>
 <DB8PR04MB67957F63165ACC0483F6AE39E6D80@DB8PR04MB6795.eurprd04.prod.outlook.com>
 <8341b035-2fac-52dd-45d1-2bf6f5ea4ba4@huawei.com>
 <DB8PR04MB67952380E7240167C7E81178E6D90@DB8PR04MB6795.eurprd04.prod.outlook.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <1952b369-f3fd-845f-650b-3c0464e37016@huawei.com>
Date: Fri, 17 Apr 2020 09:14:39 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <DB8PR04MB67952380E7240167C7E81178E6D90@DB8PR04MB6795.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Originating-IP: [10.210.166.166]
X-ClientProxiedBy: lhreml719-chm.china.huawei.com (10.201.108.70) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_011517_348647_383BBC48 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
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
 Zhangshaokun <zhangshaokun@hisilicon.com>, "will@kernel.org" <will@kernel.org>,
 Linuxarm <linuxarm@huawei.com>, "acme@kernel.org" <acme@kernel.org>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Jiri Olsa <jolsa@redhat.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17/04/2020 06:49, Joakim Zhang wrote:
>>   smmuv3_pmcg.transaction  (49.56%)
>> 124902473      smmuv3_pmcg.cycles       (49.56%)
>>
>>          1.001167246 seconds time elapsed
>>
>> So you can compare this to yours.
>>
>> I did have to fix what looks like a bug in mainline on that branch:
> Tested on private-topic-perf-5.7-sys-pmu-events-v1-debug branch, DDR Perf can work now, thanks.
> Please remember to update JSON files which notified before.
> 
> Best Regards,
> Joakim Zhang
>> --->8-----


ok, good. So without this fix I supplied, it did still look to work for 
me, but will lots of complaining from perf.

Anyway, I'll look to send this series soon, and I'll update the imx 
JSONs as requested. You will need to then add a fresh signed-off-by to 
what I send.

thanks,
john


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
