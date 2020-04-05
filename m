Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4634C19EDCA
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 22:02:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ij4CwMci+9YS0vZdaJ/+ufhEDMZ0airbtST22bcn7c=; b=QQieHUGaraZL55
	TSzDv3ecghog7+G3e7X8Let4/L94xFRzkVYTkIz9J0mCLeupKacvyHo5JQ7H/AZfKPqZvtlAONN83
	KF5wOuHX1cvMM0SZPHYH5h65k/g3QG6Lpt64ri2DafNe8gFX8JxQ4t3M1jBCufC0wQSWhlXGuEmpQ
	40yL+Ev+cZ+9OPWIZtUOUuWShfxhJ6WHjG+ZFdoyJ3YkYxuxNOIe005MUo4Nq4wEfzu1F/dt8kgTv
	6lIW5J7KOnwdBWB3wCUB8pzGP1UfQ1VRJrrv5nDCSMqvOZ6dvwdNyF3WHm0bF3488FXJdHZ3b/lIi
	z4b6ZyoSACw6Da4OW3Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLBT4-0004zk-UK; Sun, 05 Apr 2020 20:02:06 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLBSy-0004yV-N4
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 20:02:02 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48wPhN4Rczz1rmgV;
 Sun,  5 Apr 2020 22:01:56 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48wPhN3XpWz1r0c2;
 Sun,  5 Apr 2020 22:01:56 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id q6qzRs8UefpC; Sun,  5 Apr 2020 22:01:55 +0200 (CEST)
X-Auth-Info: Jnmf/64HAA3rEy/lcLC5G3kzQcYwtX1LBoXmoJeJsw0=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Sun,  5 Apr 2020 22:01:55 +0200 (CEST)
Subject: Re: [PATCH V4 00/22] ARM: dts: stm32: Repair AV96 board
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
References: <20200401132237.60880-1-marex@denx.de>
 <20200405144305.GT8912@Mani-XPS-13-9360>
 <38dc1697-28e3-8680-4998-74e30339a2eb@denx.de>
 <20200405183729.GA9410@Mani-XPS-13-9360>
From: Marek Vasut <marex@denx.de>
Message-ID: <0faa0102-4504-d17b-fb7a-d710100cce2f@denx.de>
Date: Sun, 5 Apr 2020 22:01:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200405183729.GA9410@Mani-XPS-13-9360>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_130200_898879_4A5F3581 
X-CRM114-Status: GOOD (  19.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/5/20 8:37 PM, Manivannan Sadhasivam wrote:
> On Sun, Apr 05, 2020 at 04:55:54PM +0200, Marek Vasut wrote:
>> On 4/5/20 4:43 PM, Manivannan Sadhasivam wrote:
>>> Hi Marek,
>>
>> Hi,
>>
>>> On Wed, Apr 01, 2020 at 03:22:15PM +0200, Marek Vasut wrote:
>>>> The AV96 board device tree is completely broken and does not match the
>>>> hardware. This series fixes it up.
>>>>
>>>
>>> Can you please share a git tree with all these patches? These are not
>>> applying cleanly on top of mainline/master or linux-next/master.
>>
>> Alex asked for them to be rebased on
>> git://git.kernel.org/pub/scm/linux/kernel/git/atorgue/stm32.git
>> branch
>> stm32-next
>>
> 
> Thanks, I'm able to build with your patches. Btw, I just found that the
> current mainline versions of u-boot and Linux kernel are certainly broken
> on old Avenger96 (588-100) as well.

Considering the difference between the prototype board and the 588-200
production board, that's quite possible. Are you willing to test things
on the 588-100 board ? If so, then we can try and support the 588-100 too.

> u-boot doesn't boot while linux kernel has MMC2 and Ethernet broken as you
> reported. However, checking out the commit which added Avenger96 board support
> in both projects works fine.

At least
35a54d41d9d4 ("ARM: dts: stm32mp1: sync device tree with v5.2-rc4")
in U-Boot broke the old board.

But that should all be fixed for the upcoming U-Boot release in master
already (for 588-200).

The rest is a lot of incorrect pinmux in both, fixed in U-Boot already,
fixed by this set for Linux.

> So this clearly tells that there is a regression which caused the board support
> to be broken with mainline u-boot and kernel. I didn't try to find the offending
> commit(s) as the support for STM32MP1 got matured in both the projects. But
> we can go ahead with your patches.
> 
> I will review the remaining patches tomorrow

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
