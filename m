Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1B41AAEF8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 19:00:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gtMSthi0OCpCGtpA4VWgqCg8IRdOHdzHVn9qswoSatY=; b=Oo4DVmA32dt4KK
	04xnAkDa19ommQXm+iSwf8IXCf6kgC2OhqABbNyc/Al7njLSrjL82MAaGDEuuZS0U5uN5P29XzwAD
	nkL2H7I2XTw2U2pNLu6gyYvH4ZxAECM2OjrxOJ1SouYI6+mSFT8iArEcCkoew/yU1pFn9kvyykQE+
	CwlX7nx1iwSFWM1pkO3LIc5d3ZaUN/IhYCMx8eMx3PBzHpAJbqzcRDBI+o7osm5Sk+jrYeAxLgv9x
	N7nNiH2mPSgrfmYOnjiohE90OLIhP5UKw6RgCshBIQuQ0Qy6QqAEsrhMhjNv3ABBXh0YQ9yZFxrre
	PcYwetGm0PGjILZ3clrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOlOz-0005lB-Oa; Wed, 15 Apr 2020 17:00:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOlOt-0005kn-7Q
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 17:00:36 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0AE31206F9;
 Wed, 15 Apr 2020 17:00:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586970034;
 bh=MgOckoa6oaXylsn5YDxRnw+SO2S8/uU9ZQM4CMMYhm0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cp7XRASHgNQMYStqM9ccE+H4cbmpnvWsouW1/UcDJzRy7Tj4nwWnYlg5nCtAE246T
 bvnQx6CzbbqsPvaDF8ASoMzrXi3scNKrNh/PmIe+hw+3dcNqI/VHdWiAfYOEXE8JtC
 JaG0B9RXKq7wg2MukI0p2o4VLkjDuFNms4+4269M=
Date: Wed, 15 Apr 2020 18:00:29 +0100
From: Will Deacon <will@kernel.org>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 3/8] arm64: cpufeature: Add CPU capability for AArch32
 EL1 support
Message-ID: <20200415170029.GA19615@willie-the-truck>
References: <20200414213114.2378-1-will@kernel.org>
 <20200414213114.2378-4-will@kernel.org>
 <1b76993491176577567a0960a435dac0@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1b76993491176577567a0960a435dac0@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_100035_288372_91098DED 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>, linux-kernel@vger.kernel.org,
 Doug Anderson <dianders@chromium.org>, kernel-team@android.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On Wed, Apr 15, 2020 at 09:55:57AM +0100, Marc Zyngier wrote:
> On 2020-04-14 22:31, Will Deacon wrote:
> > Although we emit a "SANITY CHECK" warning and taint the kernel if we
> > detect a CPU mismatch for AArch32 support at EL1, we still online the
> > CPU with disastrous consequences for any running 32-bit VMs.
> > 
> > Introduce a capability for AArch32 support at EL1 so that late onlining
> > of incompatible CPUs is forbidden.
> > 
> > Signed-off-by: Will Deacon <will@kernel.org>
> 
> Definitely an improvement over the current situation, as the direct read
> of ID_AA64PFR0 was always a bit dodgy. Given that I'm pretty sure these new
> braindead SoCs are going to run an older version of the kernel, should we
> Cc stable for this?

I don't think there's a real need for -stable given that we do at least
taint the kernel. That's likely to annoy vendors enough to backport this
themselves ;)

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
