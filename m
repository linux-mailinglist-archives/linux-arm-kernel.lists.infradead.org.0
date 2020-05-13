Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C1441D1BF9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 19:11:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ifD+JwoQCr8tAymkU5cex9V6+vuw/03oMbcCf372psI=; b=I0vSCTU3hWWxbR
	jzuC1nQztTf5hg7cTrFctcnZybSKM8rqpYgzyUQ773fQdDNGCxuFuf+SQk7CLD9QlJmPFQ/oZp8Os
	589eC3f3SCUKd+RNUG17vc3ZIJYHS9TFafIh8z+sdGrBghDmKgepaneTb5qMzXBwE07b8Q0ArGxG6
	W1+Zd8j3Eyj1aN1kUAjlfJ5djSTkltRO/ACJ1Jslt8hZB4WqmN0Jlo71VWoxtC7boOmvUm0C5HzzS
	1rB5O2P17Ri1GX1v4oy2N9KUD+q8Jm4eqJDHjtRGDLffKr56I88vWC+IR422XBf4RB0JXZ9zm8SIl
	qolLdKZlOYaXD30aXj8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYuv9-0002OU-7K; Wed, 13 May 2020 17:11:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYuuz-0002Nn-IO
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 17:11:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4431730E;
 Wed, 13 May 2020 10:11:39 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6BF743F305;
 Wed, 13 May 2020 10:11:37 -0700 (PDT)
Date: Wed, 13 May 2020 18:11:35 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Luis Machado <luis.machado@linaro.org>
Subject: Re: [PATCH v3 19/23] arm64: mte: Add PTRACE_{PEEK,POKE}MTETAGS support
Message-ID: <20200513171134.GE2719@gaia>
References: <20200421142603.3894-1-catalin.marinas@arm.com>
 <20200421142603.3894-20-catalin.marinas@arm.com>
 <a7569985-eb85-497b-e3b2-5dce0acb1332@linaro.org>
 <20200513104849.GC2719@gaia>
 <3d2621ac-9d08-53ea-6c22-c62532911377@linaro.org>
 <20200513141147.GD2719@gaia>
 <eec9ddae-8aa0-6cd1-9a23-16b06bb457c5@linaro.org>
 <e7f995d6-d48b-1ea2-c9e6-d2533e8eadd5@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e7f995d6-d48b-1ea2-c9e6-d2533e8eadd5@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_101141_649250_E06E2181 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Omair Javaid <omair.javaid@linaro.org>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Alan Hayward <Alan.Hayward@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 01:45:27PM -0300, Luis Machado wrote:
> On 5/13/20 12:09 PM, Luis Machado wrote:
> > Let me think about this for a bit. I'm trying to factor in the
> > /proc/<pid>/maps contents. If debuggers know which pages have PROT_MTE
> > set, then we can teach the tools not to PEEK/POKE tags from/to those
> > memory ranges, which simplifies the error handling a bit.
> 
> I was checking the output of /proc/<pid>/maps and it doesn't seem to contain
> flags against which i can match PROT_MTE. It seems /proc/<pid>/smaps is the
> one that contains the flags (mt) for MTE. Am i missing something?

You are right, the smaps is the one with the MTE information.

> Is this the only place debuggers can check for PROT_MTE? If so, that's
> unfortunate. /proc/<pid>/smaps doesn't seem to be convenient for parsing.

We can't change 'maps' as it's a pretty standard format with rwxp
properties only.

If you don't want to check any /proc file, just attempt to read the tags
and check the ptrace return code. The downside is that you can't easily
probe if a process is using MTE or not. But is this piece of information
relevant? The gdb user should know what to look for (well, it's been a
while since I used a debugger ;)).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
