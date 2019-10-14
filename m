Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0972AD684F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 19:20:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JEBtgJNiiZ9K1nK6GTg+IKOQ5wgn1rLyNBsUt5Fjtgc=; b=enEoSpRt33aLSz
	9VaSpWRZmvt1bqVbbQ6QmM/2ym8sebop/4wkmEDcV4YpAmw2sBv0D2gfWYk1htd+rmWe7ByrK5nW2
	lge2yg9OTQ0a40jdISDC0CN2yF8cBcQ9+rB5zWaqXR8wI1mXGaD9T1Kz824vH2EoElG9jdN67PkJl
	KxKkFO0qjUj9xHYGb8N56Tidx0gGwV6AD6O55rBD2BCr4CjjMlXWMAMessOI78QbhZV0Spg91I8Qq
	LJQppSv63vVZbmPnltOW92xnDMZ19nuWo9oSpjyqaapyat+o9WYZt2FTGTknF29bj41YJQ/abnoi4
	xX+mBNt414ovd6huR9LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK41J-000438-Iq; Mon, 14 Oct 2019 17:20:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK417-00042X-QH
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 17:20:23 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4047D20663;
 Mon, 14 Oct 2019 17:20:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571073621;
 bh=hkLS6pIEJOymLaQm6M1YTkn73x3Gm/aR5hXN6MZ0gqw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LHS9o0O/7DnMmqHq5NBiQO2MAayUUPsi8/PQdQkhhrCS5OCtFlxwOmxHKp0bbEdpF
 +dI49R9vFcQPGqj4HJfSjOBAimHrsYg9JN9sVcSfCtCcNz+fdBXsXjDNDnGuTMpvBf
 vf6QjZMBJxE1/Ss2wlEKcfCMqJG0OM69gmDUuqVo=
Date: Mon, 14 Oct 2019 18:20:17 +0100
From: Will Deacon <will@kernel.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH] arm64: cpufeature: Don't expose ZFR0 to userspace when
 SVE is not enabled
Message-ID: <20191014172016.w6ehilts4nl5tfva@willie-the-truck>
References: <20191014102113.16546-1-julien.grall@arm.com>
 <20191014164313.hu2dnf5rokntzhhp@willie-the-truck>
 <223c22d0-cfe3-4aed-6a8f-b80e44cb6548@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <223c22d0-cfe3-4aed-6a8f-b80e44cb6548@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_102021_877546_29FB00C1 
X-CRM114-Status: GOOD (  16.69  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: catalin.marinas@arm.com, Julien Grall <julien.grall@arm.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Dave.Martin@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 05:57:46PM +0100, Suzuki K Poulose wrote:
> On 14/10/2019 17:43, Will Deacon wrote:
> > On Mon, Oct 14, 2019 at 11:21:13AM +0100, Julien Grall wrote:
> > > The kernel may not support SVE if CONFIG_ARM64_SVE is not set and
> > > will hide the feature from the from userspace.
> > 
> > I don't understand this sentence.
> > 
> > > Unfortunately, the fields of ID_AA64ZFR0_EL1 are still exposed and could
> > > lead to undefined behavior in userspace.
> > 
> > Undefined in what way? Generally, we can't stop exposing things that
> > we've exposed previously in case somebody has started relying on them, so
> > this needs better justification.
> 
> We still expose them with this patch, but zero them out, if the SVE is not
> supported. When SVE is enabled, we expose them as usual.

Sure, but if userspace was relying on the non-zero values, it's now broken.

What's missing from the patch description is the fact that this register is
RAZ is SVE is not supported. Given that we get both the SVE HWCAP and
PFR0.SVE field correct when the CONFIG option is disabled, then it's only
very dodgy userspace which would parse the information in ZFR0 for this
configuration and I think we can make this change as a bug fix. I'll try to
write something sensible.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
