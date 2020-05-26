Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE771E1F55
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 12:06:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WnjCWyYf5fji9GyGxV0BxCt9+E419qT/jJPQR6fzweU=; b=k7VefD+D5SGsCzxafNgGkZEyn
	6JL66Ep7Si8ai4mbI9859IXgDLt1UiT34hlNdm1JdsesaKVnS1scltsVPTG/ACTSuaFS1dSOmSTua
	Z0dBB5GLmZWyVLZvoDrkRU0on4STuPd07eIS/pxzI6ceETa5tn2y5CJpo0/bchG0RUAfrNGGQc3fN
	2i/6rVwCaecF+/eIyKxxs2n3AfIbxtBM4YVNYzWUbXt1MUKSQjjyfgrhPdNkEqDsEPgOwK9hpPFJg
	nLr3FlfboROmKifYzJUI/8/PlvF9V+i5JrrIAaKTbaT6fDODS7D+ddFBrWQ7Ig5xR/FpziH5si59L
	CfsePw7wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdWU1-0008L0-W0; Tue, 26 May 2020 10:06:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdWTs-0008KP-Bd
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 10:06:45 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 19D322073B;
 Tue, 26 May 2020 10:06:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590487603;
 bh=B4uPhDHjSVrp5Z1BTqTDVVNDXQrB8e6lZd/oVVso0Vc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=DVxmcYvh133LIfkvYu6hpKkcHDal8m+FWme32nz9ggBejva328OorzmHpE1v7Wor8
 x445J6QxV0qJ7YqJNwwszFbC3aOKhs5EEaQ1AJmS4F4Db11GQD/rlOZsgvSpqdf49e
 TJR1zhlzCrvkWOqJqnHlC1sMcFXf07k64X4A3qlc=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jdWTp-00FLzx-Fx; Tue, 26 May 2020 11:06:41 +0100
MIME-Version: 1.0
Date: Tue, 26 May 2020 11:06:41 +0100
From: Marc Zyngier <maz@kernel.org>
To: Zhenyu Ye <yezhenyu2@huawei.com>
Subject: Re: [PATCH v3 1/6] arm64: Detect the ARMv8.4 TTL feature
In-Reply-To: <050b7ee6-c7aa-5d61-4dff-4792a411464e@huawei.com>
References: <20200525125300.794-1-yezhenyu2@huawei.com>
 <20200525125300.794-2-yezhenyu2@huawei.com>
 <c6b6eb07-2606-9fc0-280a-e53b81a6491c@arm.com>
 <050b7ee6-c7aa-5d61-4dff-4792a411464e@huawei.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <872737c7e0690df3f42103365c651ad4@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: yezhenyu2@huawei.com, anshuman.khandual@arm.com,
 catalin.marinas@arm.com, peterz@infradead.org, mark.rutland@arm.com,
 will@kernel.org, aneesh.kumar@linux.ibm.com, akpm@linux-foundation.org,
 npiggin@gmail.com, arnd@arndb.de, rostedt@goodmis.org, suzuki.poulose@arm.com,
 tglx@linutronix.de, yuzhao@google.com, Dave.Martin@arm.com,
 steven.price@arm.com, broonie@kernel.org, guohanjun@huawei.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arch@vger.kernel.org, linux-mm@kvack.org, arm@kernel.org,
 xiexiangyou@huawei.com, prime.zeng@hisilicon.com, zhangshaokun@hisilicon.com,
 kuhn.chenqun@huawei.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_030644_436295_8011424B 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 linux-mm@kvack.org, guohanjun@huawei.com, will@kernel.org,
 linux-arch@vger.kernel.org, yuzhao@google.com, aneesh.kumar@linux.ibm.com,
 suzuki.poulose@arm.com, steven.price@arm.com, arm@kernel.org,
 Dave.Martin@arm.com, arnd@arndb.de,
 Anshuman Khandual <anshuman.khandual@arm.com>, npiggin@gmail.com,
 zhangshaokun@hisilicon.com, broonie@kernel.org, rostedt@goodmis.org,
 prime.zeng@hisilicon.com, kuhn.chenqun@huawei.com, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, xiexiangyou@huawei.com,
 linux-kernel@vger.kernel.org, akpm@linux-foundation.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-26 07:40, Zhenyu Ye wrote:
> Hi Anshuman,
> 
> On 2020/5/26 10:39, Anshuman Khandual wrote:
>> This patch (https://patchwork.kernel.org/patch/11557359/) is adding 
>> some
>> more ID_AA64MMFR2 features including the TTL. I am going to respin 
>> parts
>> of the V4 series patches along with the above mentioned patch. So 
>> please
>> rebase this series accordingly, probably on latest next.

No. Please.

>> 
> 
> I noticed that some patches of your series have been merged into arm64
> tree (for-next/cpufeature), such as TLB range, but this one not. Why?
> 
> BTW, this patch is provided by Marc in his NV series [1], maybe you
> should also let him know.
> 
> I will rebase my series after your patch is merged.

Please don't rebase on -next. That's the worse thing to do. Always base
your series on a well known -rc, and stick to that. Maintainers can
always do the rebase and resolve conflicts.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
