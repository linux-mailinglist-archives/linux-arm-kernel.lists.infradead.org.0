Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E14887D660
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 09:34:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8vj0QhOm9iqgVWOOCl5z+p05hygi/WU4sVAz83qfhyU=; b=DO8sYMMYxj2RVM
	TCYjewTiHFuUCqDp9y4GGcxAXBa8wICxg7yUsZFOF0dZF2stt9RQW3VpEySi826wdfaPMzYdeVVj4
	muTY9K3xipVFXMKX1GUrXZwmNyXztL53f7PbM6oxn51qwEMGpW59UOI/BQXoudSeDxADY1d9XSD3J
	t24ys32MX04ItMR64KkDPuPjVlzD6Flkh7dCOBIo2CIOrPK4BaX/75/v4HWCLxMxfSTl9NvMuW4XC
	41ICMTwiOg/n8cD+lAxFRvxvDleZB76jKOXhZoccC7W5WeBUaWQQUrW9MtuLsTmUvLrhC4mkDoz4U
	Dip8AUyr+ySl/WAckcOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht5c0-0001Wp-0c; Thu, 01 Aug 2019 07:34:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht5bv-0001WS-1J
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 07:34:52 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 81130205F4;
 Thu,  1 Aug 2019 07:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564644890;
 bh=oCubh7Cb+deCvDcmZg9vFwBuc4+abNFtLvJvRi/oQQk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LJKpg5ujtimcG0q3vt17cCHRCeqkYqVdFX3WBgkPJB6ycDpNolRW8M587y2eQMS/u
 7WeauE9TNOYUXm9X07zTqg66i5n93heatoZda8br62ExmWPlMEy5GmDgQtYgf4t+L2
 oU6N9bnSmoy879K7pZhOWhwVnipiVE6nfN+Y8dLM=
Date: Thu, 1 Aug 2019 08:34:45 +0100
From: Will Deacon <will@kernel.org>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH v4.4 V2 25/43] arm64: Move BP hardening to
 check_and_switch_context
Message-ID: <20190801073444.4n45h6kcbmejvzte@willie-the-truck>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
 <f655aaa158af070d45a2bd4965852b0c97a08838.1562908075.git.viresh.kumar@linaro.org>
 <59b252cf-9cb7-128b-4887-c21a8b9b92a9@arm.com>
 <20190801050940.h65crfawrdifsrgg@vireshk-i7>
 <86354576-fc54-a8b7-4dc9-bc613d59fb17@arm.com>
 <20190801063544.ruw444isj5uojjdx@vireshk-i7>
 <20190801065700.GA17391@kroah.com>
 <20190801070541.hpmadulgp45txfem@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190801070541.hpmadulgp45txfem@vireshk-i7>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_003451_100493_49C13D46 
X-CRM114-Status: GOOD (  17.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Greg KH <greg@kroah.com>, Will Deacon <will.deacon@arm.com>,
 stable@vger.kernel.org, mark.brown@arm.com,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>, julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 01, 2019 at 12:35:41PM +0530, Viresh Kumar wrote:
> On 01-08-19, 08:57, Greg KH wrote:
> > On Thu, Aug 01, 2019 at 12:05:44PM +0530, Viresh Kumar wrote:
> > > On 01-08-19, 07:30, Julien Thierry wrote:
> > > > I must admit I am not familiar with backport/stable process enough. But
> > > > personally I think the your suggestion seems more sensible than
> > > > backporting 4 patches.
> > > > 
> > > > Or you can maybe ignore patch 25 and say in patch 24 that among the
> > > > changes made for the 4.4 codebase, the call arm64_apply_bp_hardening()
> > > > was moved from post_ttbr_update_workaround as it doesn't exist and
> > > > placed in check_and_switch_context() as it is its final destination.
> > > 
> > > Done that and dropped the other two patches.
> > > 
> > > > However, I really don't know what's the best way to proceed according to
> > > > existing practices. So input from someone else would be welcome.
> > > 
> > > Lets see if someone comes up and ask me to do something else :)
> > 
> > Keeping the same patches that upstream has is almost always the better
> > thing to do in the long-run.
> 
> That would require two additional patches to be backported, 22 and 23
> from this series. From your suggestion it seems that keeping them is
> better here ?

Yes. Backporting individual patches as they appear upstream is definitely
the preferred method for -stable. It makes the relationship to mainline
crystal clear, as well as any dependencies between patches that have been
backported. Everytime we tweak something unecessarily in a stable backport,
it just creates the potential for confusion and additional conflicts in
future backports, so it's best to follow the shape of upstream as closely as
possible, even if it results in additional patches.

So I wouldn't worry about total number of patches. I'd worry more about
things like conflicts, deviation from mainline and overall testing coverage.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
