Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC4741DDF8F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 07:57:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1MjvcQbJ5E12mOu30n2Sc2H5XFEkA6qKXYs5kBa8NdY=; b=gyspq+eV0GovKh
	iOK7vvI4yNwruNhOBPW8x49FYtwm2fG8mrvYRq4w1u9dJZKtv7xytqaQfjfOyRSP0d4wnIhufom1V
	jXjTmnyFi0tjRcXenK3+FVjEfmp6fo7Ro081oWrztFswLkRaXf3wLHOkweflkjYdKpP4belc0f0z7
	9hrprdI60HFBVq67L3095bwEkznyxV9F4gZ81gxcjRWWvGS2kDsDKzlNngSCEg08P4ejdTTRWY9Pw
	ZzTh1bEp6cc1uxSRTBDfhk77/aYe5xUunoxRNZMamWCAlqTAgPa+0f7Dt4iPQAjWMfWhwaqFDPYec
	8BXtLOfBMcHoP3A86WWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc0gU-00010I-BZ; Fri, 22 May 2020 05:57:30 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc0gJ-0000zZ-HT
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 05:57:20 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1590127038; h=In-Reply-To: Content-Type: MIME-Version:
 References: Message-ID: Subject: Cc: To: From: Date: Sender;
 bh=wxYTDj1XX4heEChza4HPVrwYprGUE8YzD1J8/xWHYNM=;
 b=M95QoZxrWAvjTm0yi9frDH97ict/D7FIHlK05dIc0PEzPF+e9bfWDBoTXDHzA4xYwebdZ8xM
 x6MFM0h9W1pT/LrhJXv8f5v8v9haXcdSFpnkL6sTM1UC2voT9jJFZs9sVgqxJWKUvC+Dn5XA
 L2KR2mfTTh0ezPYucE0oygc8T/g=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n01.prod.us-west-2.postgun.com with SMTP id
 5ec769bd82c96b5d3b3b9a84 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 22 May 2020 05:57:17
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 6E7F4C433CB; Fri, 22 May 2020 05:57:17 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from pdaly-linux.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested) (Authenticated sender: pdaly)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 32E51C433C6;
 Fri, 22 May 2020 05:57:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 32E51C433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=pdaly@codeaurora.org
Date: Thu, 21 May 2020 22:57:10 -0700
From: Patrick Daly <pdaly@codeaurora.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v4 24/26] arm64: mte: Introduce early param to disable
 MTE support
Message-ID: <20200522055710.GA25791@pdaly-linux.qualcomm.com>
References: <20200515171612.1020-1-catalin.marinas@arm.com>
 <20200515171612.1020-25-catalin.marinas@arm.com>
 <a2ad6cbf-2632-3cda-eb49-74ddfbed2cec@arm.com>
 <20200518113103.GA32394@willie-the-truck>
 <20200518172054.GL9862@gaia>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200518172054.GL9862@gaia>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_225719_643076_02D39740 
X-CRM114-Status: GOOD (  26.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [104.130.122.26 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arch@vger.kernel.org, Vladimir Murzin <vladimir.murzin@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Will Deacon <will@kernel.org>, Dave P Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 06:20:55PM +0100, Catalin Marinas wrote:
> On Mon, May 18, 2020 at 12:31:03PM +0100, Will Deacon wrote:
> > On Mon, May 18, 2020 at 12:26:30PM +0100, Vladimir Murzin wrote:
> > > On 5/15/20 6:16 PM, Catalin Marinas wrote:
> > > > For performance analysis it may be desirable to disable MTE altogether
> > > > via an early param. Introduce arm64.mte_disable and, if true, filter out
> > > > the sanitised ID_AA64PFR1_EL1.MTE field to avoid exposing the HWCAP to
> > > > user.
> > > > 
> > > > Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> > > > Cc: Will Deacon <will@kernel.org>
> > > > ---
> > > > 
> > > > Notes:
> > > >     New in v4.
> > > > 
> > > >  Documentation/admin-guide/kernel-parameters.txt |  4 ++++
> > > >  arch/arm64/kernel/cpufeature.c                  | 11 +++++++++++
> > > >  2 files changed, 15 insertions(+)
> > > > 
> > > > diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> > > > index f2a93c8679e8..7436e7462b85 100644
> > > > --- a/Documentation/admin-guide/kernel-parameters.txt
> > > > +++ b/Documentation/admin-guide/kernel-parameters.txt
> > > > @@ -373,6 +373,10 @@
> > > >  	arcrimi=	[HW,NET] ARCnet - "RIM I" (entirely mem-mapped) cards
> > > >  			Format: <io>,<irq>,<nodeID>
> > > >  
> > > > +	arm64.mte_disable=
> > > > +			[ARM64] Disable Linux support for the Memory
> > > > +			Tagging Extension (both user and in-kernel).
> > > > +
> > > 
> > > Should it really to take parameter (on/off/true/false)? It may lead to expectation
> > > that arm64.mte_disable=false should enable MT and, yes, double negatives make it
> > > look ugly, so if we do need parameter, can it be arm64.mte=on/off/true/false?
> > 
> > I don't think "performance analysis" is a good justification for this
> > parameter tbh. We don't tend to add these options for other architectural
> > features, and I don't see why MTE is any different in this regard.
> 
> There is an expectation of performance impact with MTE enabled,
> especially if it's running in synchronous mode. For the in-kernel MTE,
> we could add a parameter which sets sync vs async at boot time rather
> than a big disable knob. It won't affect user space however.
> 
> The other 'justification' is if your hardware has weird unexpected
> behaviour but I'd like this handled via errata workarounds.
> 
> I'll let the people who asked for this to chip in ;). I agree with you
> that we rarely add these (and I rejected a similar option a few weeks
> ago on the AMU patchset).

We've been looking into other ways this on/off behavior could be achieved.
The "arm,armv8.5-memtag" DT flag already provides what we want - meaning
that this flag could be removed if the system did not support MTE.

I did see your remark on "arm64: mte: Check the DT memory nodes for MTE support"
questioning whether it was the right approach - is this still the case?
--Patrick

-- 
Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
