Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 933AC86020
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 12:41:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=94UpnXPYe4/aHphdSKAYj3QwDRwCu4O+6zFHotkf6j4=; b=HE8LHwym6NjNdj
	PI/A5EH0p2I1vPT72vyR6ABalrkrriNFt8QoI6rqo17z8L69OrnTLQE9LvJyLQnaCCrCsKYONdUlY
	oWuCI9bEg+ccIuE0RtnOul6oblV+zeM3Ol+UdKU/p9IapBJ6iVcT3R4zMfXZcerGA6ISFSCUV/IzE
	pPeTO9Xy5Yz/aS0s7hdlcRuj6NUqKfG3PqYZh5GSt+JZts2nh1AD/7oC24ZcGseOzMxgDaUEv5N0v
	3bUE4YoywuRRP34ro8UT/PlFko/fFSJkf2zsBtIT5F3M13xZsHKtVasfVQ3BF3iwCbC5XK6NuxLP8
	sZEGRhO6xX529Azyb9gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvfrT-0008IH-12; Thu, 08 Aug 2019 10:41:35 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvfrC-0008Hm-1U
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 10:41:19 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 825E35C23B2;
 Thu,  8 Aug 2019 12:41:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1565260875;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=DbqFyZIfE2GsDDKf/reR5eywnQLfhYYuBHpdIfPP9fM=;
 b=jfSpwS2JK7aqpXxu2FHReuvOZ1XOJBtybpdxtN7mdGanxkkTtqwq+U8PI0nvsnUIiD8qz3
 B/Sf+kdReK41eFqfYeTZgxKgwhD4Z5Kv0A58M3SZNX4QluVuKM1ldsQVYm9pex9RhhiReJ
 WHxksfbnqKKpyMEdHOWRQ1Cta1u0i2w=
MIME-Version: 1.0
Date: Thu, 08 Aug 2019 12:41:15 +0200
From: Stefan Agner <stefan@agner.ch>
To: Will Deacon <will.deacon@arm.com>
Subject: Re: Detecting AArch32 support from a AArch64 process in user space
In-Reply-To: <6c493b15d1be8eb8566fa4b07974e7b9@agner.ch>
References: <ffbb92107af81971c03ec832cf25116c@agner.ch>
 <7bfc8611-0b2c-9d6d-0348-afd580e2a403@arm.com>
 <20190808091530.GA24506@fuggles.cambridge.arm.com>
 <6c493b15d1be8eb8566fa4b07974e7b9@agner.ch>
Message-ID: <2f011d895fd9bd46ede5778502692aa5@agner.ch>
X-Sender: stefan@agner.ch
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_034118_244967_27BAC161 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, ynorov@caviumnetworks.com,
 linux-arm-kernel@lists.infradead.org, suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-08-08 12:22, Stefan Agner wrote:
> On 2019-08-08 11:15, Will Deacon wrote:
>> On Thu, Aug 08, 2019 at 10:04:27AM +0100, Marc Zyngier wrote:
>>> On 08/08/2019 08:36, Stefan Agner wrote:
>>> > I started to ask myself what PER_LINUX32 actually changes. From what I
>>> > can tell it only changes the behavior of /proc/cpuinfo? The personality
>>> > seems not to be applied automatically to 32-bit processes, so this is a
>>> > opt-in backward compatibility feature?
>>>
>>> It's all about giving the illusion that the process runs in a "real"
>>> 32bit environment, with all its warts. It doesn't change the CPU mode
>>> you're running in (that'd be a bit harsh). It's only once you exec
>>> something that requires AArch32 that we engage the COMPAT mode.
>>>
>>> Provided that your kernel contains 00377277166b or a backport of it (or
>>> that it predates 4378a7d4be30), the following program should do the
>>> right thing:
>>>
>>> #include <sys/personality.h>
>>> #include <stdio.h>
>>>
>>> int main(int argc, char *argv[])
>>> {
>>>         int old, new;
>>>
>>>         old = personality(PER_LINUX32);
>>>         if (old < 0) {
>>>                 perror("No 32bit for you");
>>>                 return 1;
>>>         }
>>>
>>>         new = personality(0xffffffff);
>>>         printf("Running with personality %d\n", new);
>>>
>>>         personality(old);
>>>         new = personality(0xffffffff);
>>>
>>>         printf("Running with personality %d\n", new);
>>>
>>>         return 0;
>>> }
>>
>> Or you can use the setarch/linux32 utility.
> 
> Wasn't aware of this utility. I guess something like this should work:
> 
> $ setarch linux32 true
> 
> Thanks for the pointer.

FWIW, tested on a Cavium ThunderX on Packet:

test@arm64test:~$ setarch linux32 true
setarch: failed to set personality to linux32: Invalid argument
test@arm64test:~$ echo $?
1

And works on our i.MX 8QuadMax based machine:

apalis-imx8-06446438:~$ setarch linux32 true
apalis-imx8-06446438:~$ echo $?
0

--
Stefan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
