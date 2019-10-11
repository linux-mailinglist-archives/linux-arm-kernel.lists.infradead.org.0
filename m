Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A76D4199
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 15:43:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3/uNIC2IGl1BobXFrFUrvVfFHn0z5luaDSUlEjiOsj8=; b=LzMX/p0/8rHA2KXuzKnZXXTLY
	kyNHfgoe4ZK7GQkMO9yrCrfCKV4CEoScJC1eJavNPzlTbr7urM9HsRLq27Tg+IdA7Ily9RWtFdLPP
	shMlCgWATFmadLIMUNPU6cW26WN6SrJZ9bPUX2iYJrfkUKtoLAhKfV+MsgmtlWjEmUISOa1MPu7HU
	VV2b/zxWgBfin1nRM6zYk0LB/gZmindS7qe4A6Dpr0Xfl0ydibeSUqsdOC6zQF+aDqnUBscbB8yqg
	bLHn+9QSNqmcgmpqqPHd4H6uPhvzn+Vi1Jf6MMJdnAIqedY/dr5XBgs8qsk8kIZbf4tkL9BVkNADG
	zS6/nyjLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIvCu-0000cH-J0; Fri, 11 Oct 2019 13:43:48 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIvCk-0000bu-Jf
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 13:43:40 +0000
Received: from [167.98.27.226] (helo=[10.35.5.173])
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iIvCf-0005ik-SM; Fri, 11 Oct 2019 14:43:34 +0100
Subject: Re: [PATCH] proc: centralise declaration of cpuinfo_op
To: Christoph Hellwig <hch@infradead.org>
References: <20191009113930.13236-1-ben.dooks@codethink.co.uk>
 <20191009175149.GA28540@infradead.org>
From: Ben Dooks <ben.dooks@codethink.co.uk>
Organization: Codethink Limited.
Message-ID: <5c4ad594-55a3-a9c5-1674-e85665422aa1@codethink.co.uk>
Date: Fri, 11 Oct 2019 14:43:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191009175149.GA28540@infradead.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_064338_797849_8FB8DCC1 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-kernel@lists.codethink.co.uk, linux-s390@vger.kernel.org,
 Rich Felker <dalias@libc.org>, linux-c6x-dev@linux-c6x.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>, linux-sh@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "H. Peter Anvin" <hpa@zytor.com>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 x86@kernel.org, Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 linux-arm-kernel@lists.infradead.org, Mark Salter <msalter@redhat.com>,
 sparclinux@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/10/2019 18:51, Christoph Hellwig wrote:
> On Wed, Oct 09, 2019 at 12:39:30PM +0100, Ben Dooks wrote:
>> When building for arm, cpuinfo_op generates a warning due
>> to no declaration. Since this is used in fs/proc/cpuinfo.c
>> and inconsitently declared across archiectures move the
>> declaration info <linux/seq_file.h>. This means that the
>> cpuinfo_op will have a declaration any place it is used.
>>
>> Removes the following sparse warning:
>>
>> arch/arm/kernel/setup.c:1320:29: warning: symbol 'cpuinfo_op' was not declared. Should it be static?
> 
> I like the consolidation, but I don't think seq_file.h is the right
> place.  A procfs or cpu topology related header seems like the better
> choice.

Ok, thanks.

I'll have a look at where else it could go, but I'm not sure if I have
the resources to build /all/ kernels that this would effect.

-- 
Ben Dooks				http://www.codethink.co.uk/
Senior Engineer				Codethink - Providing Genius

https://www.codethink.co.uk/privacy.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
