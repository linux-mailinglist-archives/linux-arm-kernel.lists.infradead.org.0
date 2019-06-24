Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB15A51848
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 18:20:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y1kKIyCR4U1P1Ycp413NYdaScYU7rbCK8uOmI0tOlI4=; b=GCNwxZhBhoJDVR
	uVFSsEOTTlwY7f8hNp6qAdQ/6wq3PYwLlGLDddMT2U+zSBgksS1llR/u0HS8mb8DxZVazFAW6nAln
	aqessGMZ9/wEHp9I6piLiDnyZpFsWge36ziQYBQfQFFHlM0phUNUj1NZJGHM/D1cYa8WNpQpf4bsn
	Z5uGbt8X8aI5BR9aBIYdYBTyxhJr7/0x40upBG+qGFgAIhtmyYBQ4xGbjGznsIqWUV9SWoryv93O6
	tLE5BmipIsaXDNt4s2pI7l1EKLXOaYe2gxC7bn9l08H4dTYJ0jpIjCKZAFupYZyXgRBqlBfkMEDBK
	IP6TtxJ3hrIkTCPQP/PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfRhx-0001k9-DU; Mon, 24 Jun 2019 16:20:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfRhm-0001j0-Tu
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 16:20:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 03E392B;
 Mon, 24 Jun 2019 09:20:29 -0700 (PDT)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AFDC83F71E;
 Mon, 24 Jun 2019 09:20:25 -0700 (PDT)
Subject: Re: [PATCH v7 00/25] Unify vDSOs across more architectures
To: Catalin Marinas <catalin.marinas@arm.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
 <alpine.DEB.2.21.1906240142000.32342@nanos.tec.linutronix.de>
 <alpine.DEB.2.21.1906241613280.32342@nanos.tec.linutronix.de>
 <20190624142346.pxljv3m4npatdiyk@shell.armlinux.org.uk>
 <20190624144924.GE29120@arrakis.emea.arm.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <f631ecc1-662c-f652-324f-955ee3be23b0@arm.com>
Date: Mon, 24 Jun 2019 17:20:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190624144924.GE29120@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_092031_014209_6336E0CB 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-mips@vger.kernel.org,
 linux-kselftest@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 linux-arch@vger.kernel.org, Dmitry Safonov <0x7f454c46@gmail.com>,
 Dmitry Safonov <dima@arista.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Andre Przywara <andre.przywara@arm.com>, Sasha Levin <sashal@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Will Deacon <will.deacon@arm.com>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Michael Kelley <mikelley@microsoft.com>, Peter Collingbourne <pcc@google.com>,
 LAK <linux-arm-kernel@lists.infradead.org>, Andrei Vagin <avagin@openvz.org>,
 Huw Davies <huw@codeweavers.com>, LKML <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>, Shijith Thotton <sthotton@marvell.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 24/06/2019 15:49, Catalin Marinas wrote:
> On Mon, Jun 24, 2019 at 03:23:46PM +0100, Russell King wrote:
>> On Mon, Jun 24, 2019 at 04:18:28PM +0200, Thomas Gleixner wrote:
>>> Vincenzo,
>>>
>>> On Mon, 24 Jun 2019, Thomas Gleixner wrote:
>>>
>>>> I did not merge the ARM and MIPS parts as they lack any form of
>>>> acknowlegment from their maintainers. Please talk to those folks. If they
>>>> ack/review the changes then I can pick them up and they go into 5.3 or they
>>>> have to go in a later cycle. Nevertheless it was well worth the trouble to
>>>> have those conversions done to confirm that the new common library fits a
>>>> bunch of different architectures.
>>>
>>> I talked to Russell King and he suggested to file the ARM parts into his
>>> patch system and he'll pick them up after 5.3-rc1.
>>>
>>>    https://www.arm.linux.org.uk/developer/patches/
>>>
>>> I paged out how to deal with it, but you'll surely manage :)
>>
>> Easy way: ask git to add the "KernelVersion" tag as a header to the
>> email using --add-header to e.g. git format-patch, and just mail them
>> to patches@armlinux.org.uk
> 
> Although I haven't send patches to Russell in a while, I still have a
> git alias in my .gitconfig (only works with one patch at a time IIRC,
> sending multiple patches may arrive in a different order):
> 
> [alias]
> 	send-rmk-email = !git send-email --add-header=\"KernelVersion: $(git describe --abbrev=0)\" --no-thread --suppress-cc=all --to="patches@arm.linux.org.uk"
> 

Thanks to all for the hints and the support. I will send the patches to Russel
as agreed.

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
