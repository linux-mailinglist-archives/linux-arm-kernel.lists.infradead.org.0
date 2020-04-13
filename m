Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE9511A6253
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 07:08:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gWuenxUmk+I0vBRk37BB9nC9iJ7cyj7gQFNk1q/oy5A=; b=Asm/G9ygtOmWPB
	UxNBUlcKJ9ZSXaOMsd7iWRCrJiPiVKYVZjXst1VbDLAZxTo8I0Su+VwZpFJGvLgT79f5RC0c/m7fW
	1JA7JqczmShRreOVW49nDFBEF9kkXDYV4b6B9NgEv6GC+GkfXBHkg7U6rWUyQB9cQZgaJLpB7M+b8
	Awk82H4wXcTeNAn8LMVdKlRzR5wGh4RrWXRP09aZgq+o/BVsux7SiVv2xcZwoIVikcK574TaxSjAX
	Uiw7X0xGB2KHgeBdNEtgHtKafKhnT8wViObE46np76jwDafRWydDJMTp8tv8wzY0JDT47Obd65hyK
	zj5wn8K595GQ+ZAH8+xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNrK7-0007iZ-Ip; Mon, 13 Apr 2020 05:07:55 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNrK0-0007i2-G2; Mon, 13 Apr 2020 05:07:49 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id C46A5127B6241;
 Sun, 12 Apr 2020 22:07:42 -0700 (PDT)
Date: Sun, 12 Apr 2020 22:07:39 -0700 (PDT)
Message-Id: <20200412.220739.516022706077351913.davem@davemloft.net>
To: leon@kernel.org
Subject: Re: [PATCH] net/3com/3c515: Fix MODULE_ARCH_VERMAGIC redefinition
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200413045555.GE334007@unreal>
References: <20200411155623.GA22175@zn.tnic>
 <20200412.210341.1711540878857604145.davem@davemloft.net>
 <20200413045555.GE334007@unreal>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 12 Apr 2020 22:07:44 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_220748_534421_52B5ED0D 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: thor.thayer@linux.intel.com, heiko@sntech.de, irusskikh@marvell.com,
 andreas@gaisler.com, chris.snook@gmail.com, dave@thedillows.org,
 jes@trained-monkey.org, iyappan@os.amperecomputing.com,
 quan@os.amperecomputing.com, linux-acenic@sunsite.dk, andy@greyhouse.net,
 akiyano@amazon.com, linux-rockchip@lists.infradead.org, wens@csie.org,
 LinoSanfilippo@gmx.de, vfalico@gmail.com, kuba@kernel.org,
 thomas.lendacky@amd.com, jcliburn@gmail.com, j.vosburgh@gmail.com,
 keyur@os.amperecomputing.com, mripard@kernel.org, pcnet32@frontier.com,
 bp@alien8.de, nios2-dev@lists.rocketboards.org,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, ionut@badula.org, netanel@amazon.com,
 mark.einon@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Leon Romanovsky <leon@kernel.org>
Date: Mon, 13 Apr 2020 07:55:55 +0300

> On Sun, Apr 12, 2020 at 09:03:41PM -0700, David Miller wrote:
>> From: Borislav Petkov <bp@alien8.de>
>> Date: Sat, 11 Apr 2020 17:56:23 +0200
>>
>> > From: Borislav Petkov <bp@suse.de>
>> >
>> > Change the include order so that MODULE_ARCH_VERMAGIC from the arch
>> > header arch/x86/include/asm/module.h gets used instead of the fallback
>> > from include/linux/vermagic.h and thus fix:
>> >
>> >   In file included from ./include/linux/module.h:30,
>> >                    from drivers/net/ethernet/3com/3c515.c:56:
>> >   ./arch/x86/include/asm/module.h:73: warning: "MODULE_ARCH_VERMAGIC" redefined
>> >      73 | # define MODULE_ARCH_VERMAGIC MODULE_PROC_FAMILY
>> >         |
>> >   In file included from drivers/net/ethernet/3com/3c515.c:25:
>> >   ./include/linux/vermagic.h:28: note: this is the location of the previous definition
>> >      28 | #define MODULE_ARCH_VERMAGIC ""
>> >         |
>> >
>> > Fixes: 6bba2e89a88c ("net/3com: Delete driver and module versions from 3com drivers")
>> > Signed-off-by: Borislav Petkov <bp@suse.de>
>>
>> I'm so confused, that commit in the Fixes: tag is _removing_ code but adding
>> new #include directives?!?!
>>
>> Is vermagic.h really needed in these files?
> 
> You are completely right, it is not needed at all in those files.

Ok let's just remove it to fix this.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
