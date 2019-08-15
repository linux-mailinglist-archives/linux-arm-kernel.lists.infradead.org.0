Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 770498F121
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 18:46:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fQgfAjMrWcENf1j8TfqPa1FWMXKKMm7iNKITFLMBoH4=; b=lDNbpARVVxAyEA
	uwP1ccrf8Ta1zJb2dX6QRvjNOErmr4q24PtgFMB1isid92BXUbTk0WLuMiqnEYfvDvyTz5mPCozHN
	qlByuSyFfev+mzjEA/ZURqQnViorFKB+BYUUitolLWnDAfnf5l82Z4uc2C0h7TEZQ1Z6Y/Gt1rPgd
	joq5pmS4TzcUhucIqZJALDenyEgPJNTtEgrIjjJbFzEmsqxKMrol0wXTnP9qjzCyiBCWLI6k+mhyx
	WkTGK44RFSMKA5UM2/PKFj43h8OPLm7s4xpVowbiL8WJSsymiVnLue1N45LHnWVsyBUpvNhj6Zhh+
	p5/2Lh0Dl/ask6OkLubg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyItV-0001SW-5W; Thu, 15 Aug 2019 16:46:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyItE-0001S1-0S
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 16:46:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 61DE0360;
 Thu, 15 Aug 2019 09:46:12 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 444BB3F706;
 Thu, 15 Aug 2019 09:46:11 -0700 (PDT)
Date: Thu, 15 Aug 2019 17:46:09 +0100
From: Will Deacon <will.deacon@arm.com>
To: Zhangshaokun <zhangshaokun@hisilicon.com>
Subject: Re: [PATCH] arm64: do_csum: implement accelerated scalar version
Message-ID: <20190815164609.GI2015@fuggles.cambridge.arm.com>
References: <20190218230842.11448-1-ard.biesheuvel@linaro.org>
 <d7a16ebd-073f-f50e-9651-68606d10b01c@hisilicon.com>
 <20190412095243.GA27193@fuggles.cambridge.arm.com>
 <41b30c72-c1c5-14b2-b2e1-3507d552830d@arm.com>
 <20190515094704.GC24357@fuggles.cambridge.arm.com>
 <440eb674-0e59-a97e-4a90-0026e2327069@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <440eb674-0e59-a97e-4a90-0026e2327069@hisilicon.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_094616_098108_C3AF9463 
X-CRM114-Status: GOOD (  14.37  )
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>, netdev@vger.kernel.org,
 ilias.apalodimas@linaro.org, "huanglingyan \(A\)" <huanglingyan2@huawei.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org,
 steve.capper@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 11:14:35AM +0800, Zhangshaokun wrote:
> On 2019/5/15 17:47, Will Deacon wrote:
> > On Mon, Apr 15, 2019 at 07:18:22PM +0100, Robin Murphy wrote:
> >> On 12/04/2019 10:52, Will Deacon wrote:
> >>> I'm waiting for Robin to come back with numbers for a C implementation.
> >>>
> >>> Robin -- did you get anywhere with that?
> >>
> >> Still not what I would call finished, but where I've got so far (besides an
> >> increasingly elaborate test rig) is as below - it still wants some unrolling
> >> in the middle to really fly (and actual testing on BE), but the worst-case
> >> performance already equals or just beats this asm version on Cortex-A53 with
> >> GCC 7 (by virtue of being alignment-insensitive and branchless except for
> >> the loop). Unfortunately, the advantage of C code being instrumentable does
> >> also come around to bite me...
> > 
> > Is there any interest from anybody in spinning a proper patch out of this?
> > Shaokun?
> 
> HiSilicon's Kunpeng920(Hi1620) benefits from do_csum optimization, if Ard and
> Robin are ok, Lingyan or I can try to do it.
> Of course, if any guy posts the patch, we are happy to test it.
> Any will be ok.

I don't mind who posts it, but Robin is super busy with SMMU stuff at the
moment so it probably makes more sense for you or Lingyan to do it.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
