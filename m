Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D9C01E3546
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 04:12:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0oKPvOxeBb2vvWXJSS6maO6TDLKBgWnZISYi+dnrbkg=; b=VRuzFh8RIKAOA/
	V+Nm/KnBOrPRxlg5XapBtK3lLItlOXTb7GbH9cAdpDxjNfwLMFJ3uWVoKZOkrQf+7mk8rDQ6lyKHC
	Ao9lFsiWp9pgMNa7s8DLAFjn5z6d04a9JiaZ3oxZF+x4TIt1S2ie0Ob3qYYAd0LsaCPpBGkQzecOU
	24UPdbZFs2Lp3jFLoZ1NyNtxBc6jk2CzsVNT9P84lQep100Qf/6HEwOFCBLgv6knQ3GSlwXlvUNHt
	efvf9h/1CWKf/Z4wstxvlFTN1tbZSEvHUeQQ7g8R0fT6efEQJe4AtnBIH7dq8aLZrW2VzrbrpX0FF
	kgzGLdlj0/txrJBWS2Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdlYR-0002LJ-OP; Wed, 27 May 2020 02:12:27 +0000
Received: from m43-7.mailgun.net ([69.72.43.7])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdlYH-0002Kj-4r
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 02:12:20 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1590545539; h=In-Reply-To: Content-Type: MIME-Version:
 References: Message-ID: Subject: Cc: To: From: Date: Sender;
 bh=Bmk5WkxY5L5x6WBMTF6uxk/H1gCBb/eUTlTTCX/Pjmw=;
 b=BpIN+NFOWdDy/tE9vXFfoggyfr6LbMReFbfVOMUpFQxnyTv3vVgvTHJnod71/2hoIryMCSj8
 BYzMkpbrkg2OLZ/6B8phPf9YHXzlpve5e1hmJR/MBMw56PqBEQUCYdOatA7c0gw7NbAQfhM2
 tsq3aBvexURT2mc+fH1QmVEE3Hw=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n02.prod.us-east-1.postgun.com with SMTP id
 5ecdcc7576fccbb4c80d36a6 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 27 May 2020 02:12:05
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 1333BC433CB; Wed, 27 May 2020 02:12:05 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from pdaly-linux.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested) (Authenticated sender: pdaly)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id CAB9AC433C9;
 Wed, 27 May 2020 02:12:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org CAB9AC433C9
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=pdaly@codeaurora.org
Date: Tue, 26 May 2020 19:11:53 -0700
From: Patrick Daly <pdaly@codeaurora.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v4 24/26] arm64: mte: Introduce early param to disable
 MTE support
Message-ID: <20200527021153.GA24439@pdaly-linux.qualcomm.com>
References: <20200515171612.1020-1-catalin.marinas@arm.com>
 <20200515171612.1020-25-catalin.marinas@arm.com>
 <a2ad6cbf-2632-3cda-eb49-74ddfbed2cec@arm.com>
 <20200518113103.GA32394@willie-the-truck>
 <20200518172054.GL9862@gaia>
 <20200522055710.GA25791@pdaly-linux.qualcomm.com>
 <20200522103714.GA26492@gaia>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200522103714.GA26492@gaia>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_191219_392708_1E509C02 
X-CRM114-Status: GOOD (  33.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.72.43.7 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [69.72.43.7 listed in wl.mailspike.net]
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
 Will Deacon <will@kernel.org>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>, Dave P Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 11:37:15AM +0100, Catalin Marinas wrote:
> Hi Patrick,
> 
> On Thu, May 21, 2020 at 10:57:10PM -0700, Patrick Daly wrote:
> > On Mon, May 18, 2020 at 06:20:55PM +0100, Catalin Marinas wrote:
> > > On Mon, May 18, 2020 at 12:31:03PM +0100, Will Deacon wrote:
> > > > On Mon, May 18, 2020 at 12:26:30PM +0100, Vladimir Murzin wrote:
> > > > > On 5/15/20 6:16 PM, Catalin Marinas wrote:
> > > > > > diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> > > > > > index f2a93c8679e8..7436e7462b85 100644
> > > > > > --- a/Documentation/admin-guide/kernel-parameters.txt
> > > > > > +++ b/Documentation/admin-guide/kernel-parameters.txt
> > > > > > @@ -373,6 +373,10 @@
> > > > > >  	arcrimi=	[HW,NET] ARCnet - "RIM I" (entirely mem-mapped) cards
> > > > > >  			Format: <io>,<irq>,<nodeID>
> > > > > >  
> > > > > > +	arm64.mte_disable=
> > > > > > +			[ARM64] Disable Linux support for the Memory
> > > > > > +			Tagging Extension (both user and in-kernel).
> > > > > > +
> > > > > 
> > > > > Should it really to take parameter (on/off/true/false)? It may lead to expectation
> > > > > that arm64.mte_disable=false should enable MT and, yes, double negatives make it
> > > > > look ugly, so if we do need parameter, can it be arm64.mte=on/off/true/false?
> > > > 
> > > > I don't think "performance analysis" is a good justification for this
> > > > parameter tbh. We don't tend to add these options for other architectural
> > > > features, and I don't see why MTE is any different in this regard.
> > > 
> > > There is an expectation of performance impact with MTE enabled,
> > > especially if it's running in synchronous mode. For the in-kernel MTE,
> > > we could add a parameter which sets sync vs async at boot time rather
> > > than a big disable knob. It won't affect user space however.
> > > 
> > > The other 'justification' is if your hardware has weird unexpected
> > > behaviour but I'd like this handled via errata workarounds.
> > > 
> > > I'll let the people who asked for this to chip in ;). I agree with you
> > > that we rarely add these (and I rejected a similar option a few weeks
> > > ago on the AMU patchset).
> > 
> > We've been looking into other ways this on/off behavior could be achieved.
> 
> The actual question here is what the on/off behaviour is needed for. We
> can figure out the best mechanism for this once we know what we want to
> achieve. My wild guess above was performance analysis but that can be
> toggled by either kernel boot parameter or run-time sysctl (or just the
> Kconfig option).
> 
> If it is about forcing user space not to use MTE, we may look into some
> other sysctl controls (we already have one for the tagged address ABI).

We want to allow the end user to be able to easily "opt out" of MTE in favour
of better power, perf and battery life.

In terms of deciding policy, a sysctl is much more accessible than
reompiling with CONFIG_MTE=n, or replacing userspace libraries with
equivalents which don't use PROT_MTE.

--Patrick

> 
> If it is for working around hardware not supporting MTE (i.e. no
> allocation tag storage), this should be handled differently, not by
> kernel parameter.
> 
> > The "arm,armv8.5-memtag" DT flag already provides what we want - meaning
> > that this flag could be removed if the system did not support MTE.
> > 
> > I did see your remark on "arm64: mte: Check the DT memory nodes for MTE support"
> > questioning whether it was the right approach - is this still the case?
> 
> My plan is to remove the DT patch altogether _if_ I get confirmation
> from the CPU designers. The idea is that if ID_AA64PFR1_EL1.MTE > 1,
> Linux can assume system-wide MTE support. If an MTE-capable CPU is
> deployed in an SoC without tag storage, a tie-off should change the ID
> field to 1 (or 0). If we do find hardware with an ID field > 1 and no
> tag storage, it will be handled as an SoC erratum in the kernel,
> probably tied to the new SoC Id advertised by firmware (Sudeep had some
> patches recently).

-- 
Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
