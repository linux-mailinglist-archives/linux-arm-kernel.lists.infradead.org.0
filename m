Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9707C790
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 17:52:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UYez9qmSmxW2NLOXod/JuRRI2oNqiV22qTdqOFzQ2h4=; b=W/7YK3UNFhCGDk
	dDLXANwziJi1FNJA4jf9Y4ivVqkyKEePaa01dl70KtrKLtdsiFoARDQxRNScP3IKLoSN5CYuUb+c5
	mqRkffceRIjhhSIxlc89G/W8UtTeG6upz6KhaEuP22AHW6vYi4qxiYCgLEdsj7D2f1fbup69IkPM6
	onv5jWgWJ6qC6clUMJUx72tXvR9p9OgQHZOup+suCp4S5Se0J00VftxF37Wf8WEVuSsAXo0nW0elA
	18+QCj/e/lKQG+QWvpAx7BJtTuUNob/MRpTxpRwFpC+0lu6dr3Lr4cmSPvLk9LSy4Cf3fIwiRWVpx
	mW1PucKKbMkww1SHdgTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsquG-00068s-4s; Wed, 31 Jul 2019 15:52:48 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsqq2-00083h-ET
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 15:48:27 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 2C1AA14015B0D;
 Wed, 31 Jul 2019 08:48:25 -0700 (PDT)
Date: Wed, 31 Jul 2019 08:48:24 -0700 (PDT)
Message-Id: <20190731.084824.2244928058443049.davem@davemloft.net>
To: gregkh@linuxfoundation.org
Subject: Re: next/master build: 221 builds: 11 failed, 210 passed, 13
 errors, 1174 warnings (next-20190731)
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190731113522.GA3426@kroah.com>
References: <5d41767d.1c69fb81.d6304.4c8c@mx.google.com>
 <20190731112441.GB4369@sirena.org.uk>
 <20190731113522.GA3426@kroah.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 31 Jul 2019 08:48:25 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_084826_504554_09C37E12 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: devel@driverdev.osuosl.org, andrew@lunn.ch, f.fainelli@gmail.com,
 kernel-build-reports@lists.linaro.org, netdev@vger.kernel.org,
 willy@infradead.org, broonie@kernel.org, linux-next@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Wed, 31 Jul 2019 13:35:22 +0200

> On Wed, Jul 31, 2019 at 12:24:41PM +0100, Mark Brown wrote:
>> On Wed, Jul 31, 2019 at 04:07:41AM -0700, kernelci.org bot wrote:
>> 
>> Today's -next fails to build an ARM allmodconfig due to:
>> 
>> > allmodconfig (arm, gcc-8) ― FAIL, 1 error, 40 warnings, 0 section mismatches
>> > 
>> > Errors:
>> >     drivers/net/phy/mdio-cavium.h:111:36: error: implicit declaration of function 'writeq'; did you mean 'writel'? [-Werror=implicit-function-declaration]
>> 
>> as a result of the changes that introduced:
>> 
>> WARNING: unmet direct dependencies detected for MDIO_OCTEON
>>   Depends on [n]: NETDEVICES [=y] && MDIO_DEVICE [=m] && MDIO_BUS [=m] && 64BIT && HAS_IOMEM [=y] && OF_MDIO [=m]
>>   Selected by [m]:
>>   - OCTEON_ETHERNET [=m] && STAGING [=y] && (CAVIUM_OCTEON_SOC && NETDEVICES [=y] || COMPILE_TEST [=y])
>> 
>> which is triggered by the staging OCTEON_ETHERNET driver which misses a
>> 64BIT dependency but added COMPILE_TEST in 171a9bae68c72f2
>> (staging/octeon: Allow test build on !MIPS).
> 
> A patch was posted for this, but it needs to go through the netdev tree
> as that's where the offending patches are coming from.

I didn't catch that, was netdev CC:'d?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
