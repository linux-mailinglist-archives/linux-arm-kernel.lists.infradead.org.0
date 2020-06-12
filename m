Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 015F71F757F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 10:53:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4mRHn5mz8hzA637xBU1RKlqW3vExP4NX+yAAt27TZYw=; b=ObT9tZ2VwtSi6r
	I7erVu7Amw9hHE1bjtlE3ikzD6lkz/2WNSGz/diqf8aIt79iZ+kyGazHELGf8aEEx+oyi+VSGWBe2
	Wdqv6jsx6i0oKC8oXZOgYIoqplOddbc3U8NDdI+f5vZMAsNEAEj3OuJq1LGMbtHmqvIUpBkkPVrWt
	bnsC3x/q4s63/dF4kvGJOmP58Vll6GetXmoX016bnkjKEhi3lbL9ys4aTeAfOylcq++IwKg1s2TRK
	mGcDa1tNJ8AfI5CFIU0O23D/SA5RsIUBogLFUTxffcza2thwtyO9CvpA5qMsbgvpLK34pyFkdc+MM
	AdXisC4mXUHzzM/7S90Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjfR1-0002TK-WE; Fri, 12 Jun 2020 08:53:12 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjfQt-0002Sh-El
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 08:53:05 +0000
X-Originating-IP: 91.175.115.186
Received: from localhost (91-175-115-186.subs.proxad.net [91.175.115.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 77B3920012;
 Fri, 12 Jun 2020 08:52:54 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v2 1/6] ARM: Use PAGE_SIZE for ELF_EXEC_PAGESIZE
In-Reply-To: <CAK8P3a0Rc6qd0Cb2yMNupbCP2NWRQAsEKtvEr5sZV4ANw6xfNQ@mail.gmail.com>
References: <20200611134914.765827-1-gregory.clement@bootlin.com>
 <20200611134914.765827-2-gregory.clement@bootlin.com>
 <CAK8P3a0Rc6qd0Cb2yMNupbCP2NWRQAsEKtvEr5sZV4ANw6xfNQ@mail.gmail.com>
Date: Fri, 12 Jun 2020 10:52:54 +0200
Message-ID: <87eeqk8y3d.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_015303_628858_5557D4A9 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.200 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Arnd,

> On Thu, Jun 11, 2020 at 3:49 PM Gregory CLEMENT
> <gregory.clement@bootlin.com> wrote:
>>
>> Currently ELF_EXEC_PAGESIZE is 4096 which is also the page size. In
>> order to be able to use other size of page than 4K, use PAGE_SIZE
>> instead of the hardcoded value.
>>
>> The use of PAGE_SIZE will be also aligned with what we find in other
>> architectures such as arm64.
>>
>> This is inspired from fa0ca2726ea9 ("DSMP 64K support") and
>> 4ef803e12baf ("mmu: large-page: Added support for multiple kernel page
>> sizes") from
>> https://github.com/MarvellEmbeddedProcessors/linux-marvell.git
>>
>> Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
>
> IIRC using page sizes above 16KB here also requires using a
> non-ancient linker in user space that places sections on
> ELF_EXEC_PAGESIZE boundaries, right?

Actually I only tested the kernel with userspace built with pretty
recent toolchains. The oldest one I used was using gcc 7.3 and ld 2.28.

Gregory

>
>       Arnd

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
