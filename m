Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 575E9C96BC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 04:36:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kb/lSU2o/u8CPV847HTqRN4aTGiMA6kSaAO1o686Aww=; b=ZRkyIbULF0whQh
	0muoK0jrh2IvBy1+xSZuVpTYFE7wuWI5lSIzZA5j3KE6OJeZFGvdZhVkCFlRIRXmxMCa7g4IgheDs
	UH49Glv84ug/0S5rE1LiyC1UdMgwArm+bkjYoff1WhoJEbZPirB6eIb4M/BqU/LdqDLSixqJqdzJ8
	tHLFwNBBcA2jb+zMyZNL/xf83krNRMqOMumDRfZiGtrSZwWVtLnti8xKV9LVCFlRSQOtt4EvuE6tV
	RJOMNcfsPH7LYN3rzKfzIdqzm5rcJXns3/4j6+Xzmj6InYQLUercDXqi+sJV8yy0tWwKb7GhBqrCZ
	KztnDrrO7IyMEkLEMLQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFqyT-0004us-QT; Thu, 03 Oct 2019 02:36:13 +0000
Received: from twspam01.aspeedtech.com ([211.20.114.71])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFqyH-0004Tz-05
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 02:36:06 +0000
Received: from mail.aspeedtech.com (twmbx02.aspeed.com [192.168.0.24])
 by twspam01.aspeedtech.com with ESMTP id x932J6BT043282;
 Thu, 3 Oct 2019 10:19:06 +0800 (GMT-8)
 (envelope-from chiawei_wang@aspeedtech.com)
Received: from TWMBX02.aspeed.com (192.168.0.24) by TWMBX02.aspeed.com
 (192.168.0.24) with Microsoft SMTP Server (TLS) id 15.0.620.29; Thu, 3 Oct
 2019 10:35:03 +0800
Received: from TWMBX02.aspeed.com ([fe80::997d:c0a7:f01f:e1a7]) by
 TWMBX02.aspeed.com ([fe80::997d:c0a7:f01f:e1a7%12]) with mapi id
 15.00.0620.020; Thu, 3 Oct 2019 10:35:02 +0800
From: ChiaWei Wang <chiawei_wang@aspeedtech.com>
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>, Joel Stanley <joel@jms.id.au>
Subject: RE: [PATCH 0/2] peci: aspeed: Add AST2600 compatible
Thread-Topic: [PATCH 0/2] peci: aspeed: Add AST2600 compatible
Thread-Index: AQHVeOhVfyr8hf/PLEOlKG455HFAV6dHIbEAgABBZgCAABszgIAAsqtw
Date: Thu, 3 Oct 2019 02:35:02 +0000
Message-ID: <4af9eb8fa6fd41fc87708fc8afdcc83e@TWMBX02.aspeed.com>
References: <20191002061200.29888-1-chiawei_wang@aspeedtech.com>
 <70044749-785b-6ff3-7a28-fb049dcfec54@linux.intel.com>
 <CACPK8XfBxC+4PHHCkMoXr+twjfWaovcJ5c=hfCmHRJ6LpGNeFg@mail.gmail.com>
 <03d21443-aa9a-a126-dc77-a21f14f708c9@linux.intel.com>
In-Reply-To: <03d21443-aa9a-a126-dc77-a21f14f708c9@linux.intel.com>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.0.133]
MIME-Version: 1.0
X-DNSRBL: 
X-MAIL: twspam01.aspeedtech.com x932J6BT043282
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_193601_299493_1D0B4020 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.20.114.71 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Ryan Chen <ryan_chen@aspeedtech.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Andrew Jeffery <andrew@aj.id.au>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Jason M Biils <jason.m.bills@linux.intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jae Hyun,

Thanks for the feedback.
For now should I use GitHub pull-request to submit the patches of PECI-related change to OpenBMC dev-5.3 tree only?

Regards,
Chiawei

************* Email Confidentiality Notice ********************
DISCLAIMER:
This message (and any attachments) may contain legally privileged and/or other confidential information. If you have received it in error, please notify the sender by reply e-mail and immediately delete the e-mail and any attachments without copying or disclosing the contents. Thank you.


-----Original Message-----
From: Jae Hyun Yoo [mailto:jae.hyun.yoo@linux.intel.com] 
Sent: Thursday, October 3, 2019 7:43 AM
To: Joel Stanley <joel@jms.id.au>
Cc: ChiaWei Wang <chiawei_wang@aspeedtech.com>; Jason M Biils <jason.m.bills@linux.intel.com>; Rob Herring <robh+dt@kernel.org>; Mark Rutland <mark.rutland@arm.com>; Andrew Jeffery <andrew@aj.id.au>; linux-aspeed <linux-aspeed@lists.ozlabs.org>; OpenBMC Maillist <openbmc@lists.ozlabs.org>; devicetree <devicetree@vger.kernel.org>; Linux ARM <linux-arm-kernel@lists.infradead.org>; Linux Kernel Mailing List <linux-kernel@vger.kernel.org>; Ryan Chen <ryan_chen@aspeedtech.com>
Subject: Re: [PATCH 0/2] peci: aspeed: Add AST2600 compatible

On 10/2/2019 3:05 PM, Joel Stanley wrote:
> On Wed, 2 Oct 2019 at 18:11, Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com> wrote:
>>
>> Hi Chia-Wei,
>>
>> On 10/1/2019 11:11 PM, Chia-Wei, Wang wrote:
>>> Update the Aspeed PECI driver with the AST2600 compatible string.
>>> A new comptabile string is needed for the extended HW feature of 
>>> AST2600.
>>>
>>> Chia-Wei, Wang (2):
>>>     peci: aspeed: Add AST2600 compatible string
>>>     dt-bindings: peci: aspeed: Add AST2600 compatible
>>>
>>>    Documentation/devicetree/bindings/peci/peci-aspeed.txt | 1 +
>>>    drivers/peci/peci-aspeed.c                             | 1 +
>>>    2 files changed, 2 insertions(+)
>>>
>>
>> PECI subsystem isn't in linux upstream yet so you should submit it 
>> into OpenBMC dev-5.3 tree only.
> 
> OpenBMC has been carrying the out of tree patches for some time now. I 
> haven't seen a new version posted for a while. Do you have a timeline 
> for when you plan to submit it upstream?

Thanks for your effort for carrying the out of tree patches in OpenBMC.
I don't have a exact timeline but I'm gonna upstream it as soon as it gets ready.

Thanks,

Jae
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
