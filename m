Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F771859F3
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 05:01:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yIwSfQwxeaIBkBbOElxegS8c/KPryIlrFabPNHjKFfY=; b=TiUF/af6ojHDWS
	XZrkBhmR2GY7hagd81u0IxHfJ8sS+MHFjieuEcWkxoZPoHnF+0isY653HZ5IswIo18wa6K4l6uFzP
	rCxjPeRj5Ri6wYDVWsAoYy510IAkZwJGx6HZ6ongQh/MaDvDKWY7yv+o+14cRAw4OJDmlu1rQW/bs
	5mayq7NyX1SrRDt2nzsJeQCU4ubjpxSCPmpbXhoWvQdQw49F5z2qzZGuhXlhkKWzN4s16HAE8Dddm
	KLTtBn1ilngyn4glRozFi8saBFCViyOdCDGysp+DjruTyLU1fMsZ9KPKcgwp0rw+0TFGLR5AKz2wY
	KzD0eD4kZKIZACs/ugBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDKSV-0001Aa-GU; Sun, 15 Mar 2020 04:01:03 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDKSN-00019d-2c
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Mar 2020 04:00:56 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id A700E15AD855B;
 Sat, 14 Mar 2020 21:00:53 -0700 (PDT)
Date: Sat, 14 Mar 2020 21:00:52 -0700 (PDT)
Message-Id: <20200314.210052.2035605917214699487.davem@davemloft.net>
To: mklntf@gmail.com
Subject: Re: [PATCH] net: stmmac: platform: Fix misleading interrupt error msg
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200312194625.GA6684@DEFRL0001.localdomain>
References: <20200306163848.5910-1-mklntf@gmail.com>
 <20200311.230402.1496009558967017193.davem@davemloft.net>
 <20200312194625.GA6684@DEFRL0001.localdomain>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sat, 14 Mar 2020 21:00:54 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_210055_120359_B2D33F4C 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, joabreu@synopsys.com, mcoquelin.stm32@gmail.com,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Markus Fuchs <mklntf@gmail.com>
Date: Thu, 12 Mar 2020 20:46:25 +0100

> On Wed, Mar 11, 2020 at 11:04:02PM -0700, David Miller wrote:
>> From: Markus Fuchs <mklntf@gmail.com>
>> Date: Fri,  6 Mar 2020 17:38:48 +0100
>> 
>> > Not every stmmac based platform makes use of the eth_wake_irq or eth_lpi
>> > interrupts. Use the platform_get_irq_byname_optional variant for these
>> > interrupts, so no error message is displayed, if they can't be found.
>> > Rather print an information to hint something might be wrong to assist
>> > debugging on platforms which use these interrupts.
>> > 
>> > Signed-off-by: Markus Fuchs <mklntf@gmail.com>
>> 
>> What do you mean the error message is misleading right now?
>> 
>> It isn't printing anything out at the moment in this situation.
> 
> Commit 7723f4c5ecdb driver core: platform: Add an error message to 
>     platform_get_irq*()
> 
> The above commit added a generic dev_err() output to the platform_get_irq_byname
> function.
> 
> My patch uses the platform_get_irq_byname_optional function, which
> doesn't print anything and adds the original dev_err output as dev_info output 
> to the driver.
> Otherwise there would be no output at all even for platforms in need of these 
> irqs.

Aha, now I get it, thanks for explaining.

Applied, thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
