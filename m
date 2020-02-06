Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1D9154C8F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 21:01:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YrIWKvHiHHFGsQJMbwfyE4nbrV0sunKjAHIQnYr4S8c=; b=j7jnSWkfX8v/STVc300Rs1rPH
	dglOMOQ70deoVB+I/8o+t0uHCGdkB56h1JiT9vM11QgzVB4wOKPK2iG9hHMAyYDAc3TxsDqCqWgQi
	Vu54570YvaMNvieoyOiaWtKDfth6TPqc1DPO7/1FWMNlGYvNyIvUtNOV4/pxAyYZVQ7edkmu9+vZF
	DcNFHAxL+k7Hcrk/cGjf6h0qZ2uocYUF0bwtMmJbtlhCAEdSppuB5vW17ZgJieORLgebyDOEjMU6m
	3XKnlnBenmM8o3jsPl2pFTZNbAh+IQ+N6UrwnGjRM0ngNaNPZjZCTgZwObM4d1nWc4k6U8U/yiUIM
	y6aw2INVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iznLA-0007bv-CI; Thu, 06 Feb 2020 20:01:32 +0000
Received: from mail-eopbgr700108.outbound.protection.outlook.com
 ([40.107.70.108] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iznL4-0007au-99
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 20:01:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CazPA5CJqBtX54b3URvM6vWLqBPaEX7AIoP+VT6RLq1d3k0UP6paWojb+k1w5lYHEc/DZhRUcGmikGnTcP4qeuRltgAMHcN3NVJeNX4VmeiCOCOjmwAGdxtiF9UGxFmR/IdoJwC+25xJlmHbP283ZjalmhxaQma4jEtvormWcucJsxVk3BxDY6HjSy9kRViuVVZH1pL+NaZNiRy6TMGrIZDkKR89IRIEikBdo7zON53gDShyouoR1zmSW2nwhe1P/evOdU116+f6IeeXB3J1BiczXLEhWpeLA3cNKfdGtTPw7qSNoS+cUI/YHCh1ypRT8BT3s64ptdMIBSW+9ZFdtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OCkEDuNPxXyoUb8puS3lidEq+LR/opn1kJCrFr/R9CA=;
 b=KWnReVmFItjetO/n8LE8z8O8S7mMjYkHJE8qnHXqbZJIP4P+FpjQgnx33kpY0d4s8tnWWiLY93MJnNQoCqVrdTusDg53Eild3JDdNDzcN38rR/rG3uw67Kmg4cAPu2rvJfhGWFyjxuoF2NJGwntiWU9rrY3uo07yVt+SFuertmMIsnV1VLKBcitSjeybknFx8hd/aaKI7T8LObUw7zkw48XNQ7r0IdjNauWNoNb5rum/MWXS0GXVizqbSEL62uImUrD8f+M0ry1eui0cIYvFdeyWMOqDTfu/FiWoiYwJiGcy+xw+rFwVix89RB1DGRl1whDcjsbYJn2VZktoomcuXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OCkEDuNPxXyoUb8puS3lidEq+LR/opn1kJCrFr/R9CA=;
 b=lhfXKn288O1YpfVLhMM54124+jVJj3n8UhgQnhbvUOix5I/OXm3RnMZlhEiQXczbIbt9RX/ypddBi3BV2WqPtzLS6UxFT39PiBjZLbKIlpR0n6peeh0G/En6pGKCGR8Ss8Mk7lZU3rY1nHdLksi1HB+BC32bOi2v94iTSCFeQnU=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=hoan@os.amperecomputing.com; 
Received: from DM6PR01MB4090.prod.exchangelabs.com (20.176.105.203) by
 DM6PR01MB5769.prod.exchangelabs.com (10.255.9.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.29; Thu, 6 Feb 2020 20:01:23 +0000
Received: from DM6PR01MB4090.prod.exchangelabs.com
 ([fe80::e148:5333:b3b1:b153]) by DM6PR01MB4090.prod.exchangelabs.com
 ([fe80::e148:5333:b3b1:b153%5]) with mapi id 15.20.2707.023; Thu, 6 Feb 2020
 20:01:23 +0000
Subject: Re: [PATCH] arm64: Kconfig: Enable NODES_SPAN_OTHER_NODES config for
 NUMA
To: Will Deacon <will@kernel.org>
References: <1580759714-4614-1-git-send-email-Hoan@os.amperecomputing.com>
 <20200206102340.GA17074@willie-the-truck>
From: Hoan Tran <hoan@os.amperecomputing.com>
Message-ID: <c85dbc06-a72b-9c98-fe41-b25069114b2f@os.amperecomputing.com>
Date: Thu, 6 Feb 2020 12:01:19 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.1
In-Reply-To: <20200206102340.GA17074@willie-the-truck>
Content-Language: en-US
X-ClientProxiedBy: CY4PR1201CA0020.namprd12.prod.outlook.com
 (2603:10b6:910:16::30) To DM6PR01MB4090.prod.exchangelabs.com
 (2603:10b6:5:27::11)
MIME-Version: 1.0
Received: from [192.168.0.184] (67.161.31.237) by
 CY4PR1201CA0020.namprd12.prod.outlook.com (2603:10b6:910:16::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2707.23 via Frontend
 Transport; Thu, 6 Feb 2020 20:01:22 +0000
X-Originating-IP: [67.161.31.237]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 681ef895-454b-45c8-4cc3-08d7ab3f5719
X-MS-TrafficTypeDiagnostic: DM6PR01MB5769:
X-Microsoft-Antispam-PRVS: <DM6PR01MB57699707EF403B528B89BF79F11D0@DM6PR01MB5769.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-Forefront-PRVS: 0305463112
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(366004)(39840400004)(396003)(136003)(346002)(189003)(199004)(4326008)(966005)(86362001)(6916009)(478600001)(31696002)(66946007)(66556008)(53546011)(956004)(2616005)(107886003)(66476007)(16576012)(5660300002)(26005)(6486002)(31686004)(8936002)(8676002)(316002)(81156014)(81166006)(2906002)(16526019)(52116002)(186003)(6666004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR01MB5769;
 H:DM6PR01MB4090.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
Received-SPF: None (protection.outlook.com: os.amperecomputing.com does not
 designate permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GaJyHS/8m/90oEp3EfdmXhiQDNvh+st2lNMpR68hsFCq8iPC7eKY5GFhOdpeEIkT5msm2tv1rE9NpAGkw++VCZhMBExLznc4th6Xk+aCsdislDUJF+gmJDsE5pkTzYld8dU9qApLyQw/RgFBBf9XELmHeFaIxXkh6DKcikiPbKzL8yTnaOvLBBuacZ3mShljn0jiHVyR4D0N+zWf86BcH0YsRHmewDU/akJDUXh4xrQcAwJam+fgozuYOfTEPo1rygBPE8sSJwkwvQhfECF1Bd/rh/d6kn/KVsMfjPXQoZjhwh2nwyAnfvINP+D637bh8WwEBPZgPsXBVLo5vkxtajXCGZaPDn2IPIA9RYvwCJN/yNjdIL0kSTlEFzOa12J1xMqTrAm81SbBo4KvsS468F6p4UMw8vjrKcerS6fFdqftimOqdRKrtrYGtSmHDpHjfVVKMz5KrIVAYL0U3u4OT5L5uF5+o8wWQ9XbeXu7h8DwjYF/DX4lZMz2FU+ei2Hum9JyQnINg4kctcKX/eH3/Q==
X-MS-Exchange-AntiSpam-MessageData: 0IQLWH/mIsvZNftRnfN+FCij/KJAvk5Zu0P4i8eCAwkFIjo8JlSwx2kF3/ZdlQVamE9gLeNnQubCX6g9pgDBuu+tZraNPhB7Xbt6zafIlrj44zDf69XhfiyykLBzzlPM2aunxSdPnVqaas9npxB19Q==
X-MS-Exchange-Transport-Forked: True
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 681ef895-454b-45c8-4cc3-08d7ab3f5719
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2020 20:01:23.1248 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Jb//zUTzLLVW5GP/VUA6kCpn7VI6j6CjD59hT5xmyQPW85o8TeC0X8tgICeKcaGHPPdXHNizP2OMWzhwSgmtnGreU++B1FN1usRW90BiFgc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR01MB5769
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_120126_404683_7B463D7D 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.108 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, patches@os.amperecomputing.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On 2/6/20 2:23 AM, Will Deacon wrote:
> On Mon, Feb 03, 2020 at 11:55:14AM -0800, Hoan Tran wrote:
>> Some NUMA nodes have memory ranges that span other nodes.
>> Even though a pfn is valid and between a node's start and end pfns,
>> it may not reside on that node.
>>
>> This patch enables NODES_SPAN_OTHER_NODES config for NUMA to support
>> this type of NUMA layout.
>>
>> Signed-off-by: Hoan Tran <Hoan@os.amperecomputing.com>
>> ---
>>   arch/arm64/Kconfig | 7 +++++++
>>   1 file changed, 7 insertions(+)
>>
>> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
>> index e688dfa..939d28f 100644
>> --- a/arch/arm64/Kconfig
>> +++ b/arch/arm64/Kconfig
>> @@ -959,6 +959,13 @@ config NEED_PER_CPU_EMBED_FIRST_CHUNK
>>   config HOLES_IN_ZONE
>>   	def_bool y
>>   
>> +# Some NUMA nodes have memory ranges that span other nodes.
>> +# Even though a pfn is valid and between a node's start and end pfns,
>> +# it may not reside on that node.
>> +config NODES_SPAN_OTHER_NODES
>> +	def_bool y
>> +	depends on ACPI_NUMA
>> +
> 
> I thought we agreed to do this in the core code?
> 
> https://lore.kernel.org/lkml/1562887528-5896-1-git-send-email-Hoan@os.amperecomputing.com

Yes, but it looks like Thomas didn't agree to apply this patch into x86.

https://lore.kernel.org/lkml/alpine.DEB.2.21.1907152042110.1767@nanos.tec.linutronix.de/

Regards
Hoan

> 
> Will
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
