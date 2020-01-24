Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15134147728
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 04:26:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KOcvg4ibsdFM6yQXUMBieWYz9EozrR8JNV4To2ePCTg=; b=vEJbN6lgjtkRzn
	Ecd3n/bggDO1BsKjLDow3C6D5bUOiOQipCEesjDtKQA8/JxbYiEVbFRCyx0vJ4btMo02W1q9HjHLB
	bMTxiqRqpuotnxpN33tFGLntfiJd6gdoBoxZHc+7rYwoQBbSOaa+AxTDI23xUXZNO6HXtauBE+v8Y
	iuZI3Xlo1+gZgDL2KTj2Mh9pcG2yipfC8EthRhJ+xJeGgrK33mXAM52S+AEj8k+Rp7OuzfeMNaH0l
	zBvZs24ZR30F+ON7jNDGJz5yhd7KW0IraB2qgo/pC92NwQU7zh9GWuONXIMnLb+H6oZqQx4zsKPDs
	ehjL/6/NyyYiu7KhyWyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iupcJ-0002ll-MI; Fri, 24 Jan 2020 03:26:43 +0000
Received: from [2601:1c0:6280:3f0::ed68]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iupcA-0002lP-1C; Fri, 24 Jan 2020 03:26:34 +0000
Subject: Re: [GIT PULL] arm64: dts: uniphier: UniPhier DT updates for v5.6
To: Olof Johansson <olof@lixom.net>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
References: <CAK7LNASEaiFia8NKZN8++-9RfGXOPKSFuCkdukBk9Jy7+nHecQ@mail.gmail.com>
 <CAK7LNAT721bVwVQif--UY1dXMhq8NSRpkPOYTN-=nxyBSBOn2Q@mail.gmail.com>
 <CAOesGMgyh2NmR_AbEzC2jQe070e_u3zozWi=v7RjMXszXgetZg@mail.gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <f0109bf4-67b8-25b3-8035-dd651638dc7d@infradead.org>
Date: Thu, 23 Jan 2020 19:26:32 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <CAOesGMgyh2NmR_AbEzC2jQe070e_u3zozWi=v7RjMXszXgetZg@mail.gmail.com>
Content-Language: en-US
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
Cc: Masahiro Yamada <masahiroy@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/23/20 7:22 PM, Olof Johansson wrote:
> Hi,
> 
> On Thu, Jan 23, 2020 at 6:49 PM Masahiro Yamada
> <yamada.masahiro@socionext.com> wrote:
>>
>> Hi Arnd and Olof,
>>
>> I know it is already -rc7, but
>> it would be nice if you could pull this for the next MW.
>>
>> Thanks
>>
>> Masahiro
> 
> If you don't email us at soc@kernel.org, we're unlikely to see your
> pull requests. :(

Pray tell us where that is documented, please.
I am not familiar with it.
Thanks.

> In this case that's what happened. Please do so -- that way it gets
> caught in the patchtracker. I sort the patches to that alias in a
> special folder to make sure I see them too, since I get too much in my
> inbox and it easily gets lost.
> 
> Mind resending the two pull requests to that alias? That way you get
> the notification email when it's merged -- if I bounce it here I don't
> think you'll get it.
> 
> 
> Thanks,
> 
> -Olof
> 


-- 
~Randy


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
