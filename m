Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C55AF85E01
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 11:16:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MUxpvCeW9i9l7/tidMzhY65qVPvLtRglZzJYtaC/pTs=; b=W5bsWYZdwZEStf
	3mzTvT21znEaneik63JRzhGVxQPJTh8Rqy+rFd90NoN3/lXke4p4VtiSVTG115wUKVTwjxzVv32Gj
	2nhlQCp6dyCgsThQ4ERTYMKocce2K8NpLvSis+ckU3W0nb2lzWbzPozLqVRlLVUItmhjJFQeZH6fL
	lwJW9m0ZvcffBnsyYyWJkvCDgLPYAeShlmo+CR6FlNG/Hio+WJ7o/pdcr9PbhHH8SjhmGz0Rm816y
	tCtuzs74+XiKzesRXN83Nr5P9fy9x2oqFzHuPpUQRx4xsV2DUNUjj9svGzBQvkqC36paXVukFgiIY
	8/j9mGitps3nwQEIG4TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hveWu-0005e2-JG; Thu, 08 Aug 2019 09:16:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hveWH-0005cw-QP
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 09:15:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 97FDB1570;
 Thu,  8 Aug 2019 02:15:35 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C824C3F706;
 Thu,  8 Aug 2019 02:15:34 -0700 (PDT)
Date: Thu, 8 Aug 2019 10:15:30 +0100
From: Will Deacon <will.deacon@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: Detecting AArch32 support from a AArch64 process in user space
Message-ID: <20190808091530.GA24506@fuggles.cambridge.arm.com>
References: <ffbb92107af81971c03ec832cf25116c@agner.ch>
 <7bfc8611-0b2c-9d6d-0348-afd580e2a403@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7bfc8611-0b2c-9d6d-0348-afd580e2a403@arm.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_021538_259144_2E1D4147 
X-CRM114-Status: GOOD (  15.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: ynorov@caviumnetworks.com, linux-arm-kernel@lists.infradead.org,
 Stefan Agner <stefan@agner.ch>, suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 10:04:27AM +0100, Marc Zyngier wrote:
> On 08/08/2019 08:36, Stefan Agner wrote:
> > I started to ask myself what PER_LINUX32 actually changes. From what I
> > can tell it only changes the behavior of /proc/cpuinfo? The personality
> > seems not to be applied automatically to 32-bit processes, so this is a
> > opt-in backward compatibility feature?
> 
> It's all about giving the illusion that the process runs in a "real"
> 32bit environment, with all its warts. It doesn't change the CPU mode
> you're running in (that'd be a bit harsh). It's only once you exec
> something that requires AArch32 that we engage the COMPAT mode.
> 
> Provided that your kernel contains 00377277166b or a backport of it (or
> that it predates 4378a7d4be30), the following program should do the
> right thing:
> 
> #include <sys/personality.h>
> #include <stdio.h>
> 
> int main(int argc, char *argv[])
> {
>         int old, new;
> 
>         old = personality(PER_LINUX32);
>         if (old < 0) {
>                 perror("No 32bit for you");
>                 return 1;
>         }
> 
>         new = personality(0xffffffff);
>         printf("Running with personality %d\n", new);
> 
>         personality(old);
>         new = personality(0xffffffff);
> 
>         printf("Running with personality %d\n", new);
> 
>         return 0;
> }

Or you can use the setarch/linux32 utility.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
