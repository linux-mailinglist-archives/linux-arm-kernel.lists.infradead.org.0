Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5721331A8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 22:02:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Ib5UbYkbDeFl3UEjyfFm8wrsP0iPEYPkQXBr5nu10c=; b=DnJYtsRmerqwG6
	267vuW1qOGHpt27p7oi2P09FHErkGjeKd+t6YHbxBwdsUAgmw4GOYzNBjiACNalv+Ln16HWrCGuLg
	g2PdHln78icWT4qGuFpEOV84XexfGH8H2AfMgx1hxYr7Asfb9FvXmyZMGlbrtpsxlaAcikHwJhTPQ
	XcFQ4b5/8fRkhM5K0yHm1ziLwR9jl0hTeawxCj4HvU+6xXbRxt+yG6yuXhLzzhKn2mxSfuD1QN7gm
	xiPmra6l8kqmDiZw+tnpKYk6LTj3qOFQf84CbEb3Mj40bSM3EzR4OfemGRSufrzI2yidDqElw5PQK
	83tFOsX3bYn4/puv5x7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iovzy-00040L-PZ; Tue, 07 Jan 2020 21:02:46 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iovyu-00034d-36
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 21:01:42 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id B237515A15B85;
 Tue,  7 Jan 2020 13:01:35 -0800 (PST)
Date: Tue, 07 Jan 2020 13:01:33 -0800 (PST)
Message-Id: <20200107.130133.1900367587695369052.davem@davemloft.net>
To: Jiping.Ma2@windriver.com
Subject: Re: [PATCH] stmmac: debugfs entry name is not be changed when udev
 rename device name.
From: David Miller <davem@davemloft.net>
In-Reply-To: <99d183bc-7668-7749-54d6-3649c549dec8@windriver.com>
References: <15aedd71-e077-4c6c-e30c-9396d16eaeec@windriver.com>
 <20200106.182259.1907306689510314367.davem@davemloft.net>
 <99d183bc-7668-7749-54d6-3649c549dec8@windriver.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 07 Jan 2020 13:01:36 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_130140_144679_A956CDF1 
X-CRM114-Status: UNSURE (   7.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, joabreu@synopsys.com, mcoquelin.stm32@gmail.com,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jiping Ma <Jiping.Ma2@windriver.com>
Date: Tue, 7 Jan 2020 10:59:22 +0800

> 
> 
> On 01/07/2020 10:22 AM, David Miller wrote:
>> From: Jiping Ma <Jiping.Ma2@windriver.com>
>> Date: Tue, 7 Jan 2020 09:00:53 +0800
>>
>>>
>>> On 01/07/2020 05:45 AM, David Miller wrote:
>>>> From: Jiping Ma <jiping.ma2@windriver.com>
>>>> Date: Mon, 6 Jan 2020 10:33:41 +0800
>>>>
>>>>> Add one notifier for udev changes net device name.
>>>>>
>>>>> Signed-off-by: Jiping Ma <jiping.ma2@windriver.com>
>>>> This doesn't apply to 'net' and since this is a bug fix that is where
>>>> you should target this change.
>>> What's the next step that I can do?
>> Respin your patch against the net GIT tree so that it applies clean.y
> OK, I will generate the new patch based on the latest linux kernel
> code.
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git

That's not the networking GIT tree.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
