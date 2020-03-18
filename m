Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF6118955F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 06:33:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:MIME-Version:In-Reply-To:
	Subject:To:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=A/II6mEhPvWcjFJ6MF0BvgK5+09Gi+puOoWy25Xn93c=; b=oB0bH2uk/YV1Ik
	dyhWsSX1heL4qdiiLGhrdaqGy1YMMDQAEavAMTC26JPs2ivX88eu2ipNzpKGTe6cetZovJEhOBRS7
	g3cuv+vETDB8FMUR4ZDfA0qCkMB2Q3XmZOWtSv8w/BHgYM9r2wbTqkirV2Kk4/KSJqHmZ9DX5C5BD
	H4baQ9mDXkNh4H0/Ok6ny3Vxv537352PGTI2z16e5/9h0Je0FW15XuUfECdy2YC5lRTZoaOTKIAVC
	Bqwxyp+qdiDiiTWiW74P3STXVnfWJfKRd/X07KzL17qVeK7aE/8+xKmFqq4RbXvpIV7yCmZz54SQU
	ymtpNkkxIdp/RICvyQQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jERK0-0004FM-IG; Wed, 18 Mar 2020 05:32:52 +0000
Received: from m177129.mail.qiye.163.com ([123.58.177.129])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jERJp-0004EV-OC
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 05:32:44 +0000
Received: from vivo.com (wm-2.qy.internal [127.0.0.1])
 by m177129.mail.qiye.163.com (Hmail) with ESMTP id 1ABAA5C18EA;
 Wed, 18 Mar 2020 13:32:28 +0800 (CST)
Message-ID: <AG*ACQC2CEOOiVKFwxZXw4qM.3.1584509548085.Hmail.wenhu.wang@vivo.com>
To: Zheng Wei <wei.zheng@vivo.com>
Subject: =?UTF-8?B?UmU6UmU6IFtQQVRDSF0gYXJtNjQ6IGFkZCBibGFuayBhZnRlciAnaWYn?=
X-Priority: 3
X-Mailer: HMail Webmail Server V2.0 Copyright (c) 2016-163.com
X-Originating-IP: 58.251.74.227
In-Reply-To: <20200317222823.GG20788@willie-the-truck>
MIME-Version: 1.0
Received: from wenhu.wang@vivo.com( [58.251.74.227) ] by ajax-webmail (
 [127.0.0.1] ) ; Wed, 18 Mar 2020 13:32:28 +0800 (GMT+08:00)
From: =?UTF-8?B?546L5paH6JmO?= <wenhu.wang@vivo.com>
Date: Wed, 18 Mar 2020 13:32:28 +0800 (GMT+08:00)
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZT1VJTkNCQkJDSU9OSUhCSFlXWShZQU
 hPN1dZLVlBSVdZCQ4XHghZQVk1NCk2OjckKS43PlkG
X-HM-Sender-Digest: e1kJHlYWEh9ZQUhNTE9LTEJNQ0xPN1dZDB4ZWUEPCQ4eV1kSHx4VD1lB
 WUc6PFE6OCo4STg#NDQSLTA9DAMhIwxPCjZVSFVKTkNPTktCTk5LSUNCVTMWGhIXVQweFRMOVQwa
 FRw7DRINFFUYFBZFWVdZEgtZQVlOQ1VJTkpVTE9VSUlMWVdZCAFZQU9NQkw3Bg++
X-HM-Tid: 0a70ec20f65c6447kurs1abaa5c18ea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_223242_541463_0C40BFF0 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [123.58.177.129 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Hanjun Guo <guohanjun@huawei.com>,
 linux-kernel@vger.kernel.org, kernel@vivo.com,
 Yunfeng Ye <yeyunfeng@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Will Deacon <will@kernel.org>
Date: 2020-03-18 06:28:24
To:  Zheng Wei <wei.zheng@vivo.com>
Cc:  Catalin Marinas <catalin.marinas@arm.com>,Hanjun Guo <guohanjun@huawei.com>,Enrico Weigelt <info@metux.net>,Allison Randal <allison@lohutok.net>,Greg Kroah-Hartman <gregkh@linuxfoundation.org>,Thomas Gleixner <tglx@linutronix.de>,Yunfeng Ye <yeyunfeng@huawei.com>,linux-arm-kernel@lists.infradead.org,linux-kernel@vger.kernel.org,kernel@vivo.com,wenhu.wang@vivo.com
Subject: Re: [PATCH] arm64: add blank after 'if'>On Fri, Mar 13, 2020 at 10:54:02PM +0800, Zheng Wei wrote:
>> add blank after 'if' for armv8_deprecated_init()
>> to make it comply with kernel coding style.
>> 
>> Signed-off-by: Zheng Wei <wei.zheng@vivo.com>
>> ---
>>  arch/arm64/kernel/armv8_deprecated.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>> diff --git a/arch/arm64/kernel/armv8_deprecated.c b/arch/arm64/kernel/armv8_deprecated.c
>> index 7832b3216370..4cc581af2d96 100644
>> --- a/arch/arm64/kernel/armv8_deprecated.c
>> +++ b/arch/arm64/kernel/armv8_deprecated.c
>> @@ -630,7 +630,7 @@ static int __init armv8_deprecated_init(void)
>>  		register_insn_emulation(&cp15_barrier_ops);
>>  
>>  	if (IS_ENABLED(CONFIG_SETEND_EMULATION)) {
>> -		if(system_supports_mixed_endian_el0())
>> +		if (system_supports_mixed_endian_el0())
>>  			register_insn_emulation(&setend_ops);
>>  		else
>>  			pr_info("setend instruction emulation is not supported on this system\n");
>
>(Catalin: I'm just acking these trivial typo/style fixes to get them out
>of my inbox; do whatever you like with them ;)
>
>Acked-by: Will Deacon <will@kernel.org>
>
>Will

Shouldn't you have Cc trivial<trivial@kernel.org>?
Asked-by: Wang Wenhu <wenhu.wang@vivo.com>

Wenhu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
