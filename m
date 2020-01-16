Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 027D913D508
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 08:29:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=w2RvRciwbkDBTm1Ax3aJXIEiEerMszVvpCSKfGLfGmo=; b=bG30hbe8UYy2234YMNF6BBJCw
	vl+k+Y2rPQ4S9FtnY7/rRkL1KPx0Eu25xKYdkpSK6cMBy3qEgVYPwDinhXQ7D0IPfFXLLoY2EI1SQ
	41/JygQYRhO+nkLgTEqdu3ZX1ITAv0YCn5heptK6J0t6I16Ph34Y03QD++NOz3aFhnR3jdsvN8et6
	yf+34U2H72t0xYzxZ5uq037Ra559Nr6ZScO3kyga+4iF+mJjCRxBMEhDEb+dHQhG44GConvksN1W2
	gmIK5s0uYg/7bsNSn4w2YUMqOPaWhoOAPJ7bcVRpt4cZ0wPEjxuePaoRgmWxQFYwhvuByL5QTXYyy
	56BIcMqAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irzb3-0004qO-GG; Thu, 16 Jan 2020 07:29:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irzaG-0004Qp-Ab
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 07:28:53 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6CF10206D9;
 Thu, 16 Jan 2020 07:28:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579159731;
 bh=pRRQpXth0TXpHnnIZoTynOLbI277epXRK/djArfkqqg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=hS8dlpQ99rHWL0kTk5ZTYzoWlF+J25ZQgpqOCCSNP9QRRFrh4ST6wgTBWIxY18DIE
 LNp5gkGHlGi2/6LMyenbRn4s8rV1IGTp2AusKhQwbPGYgRWzfoJ9Z8HfxtqWPQToBi
 QmN3YnO0LOt/4zJx8GDSRa1AKsyKkXQy3cdeZPCE=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1irzaD-00058d-LD; Thu, 16 Jan 2020 07:28:49 +0000
MIME-Version: 1.0
Date: Thu, 16 Jan 2020 07:28:49 +0000
From: Marc Zyngier <maz@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v5 0/3] arm64: Workaround for Cortex-A55 erratum 1530923
In-Reply-To: <20200114164543.GD2579@willie-the-truck>
References: <20191216115631.17804-1-steven.price@arm.com>
 <20200114164543.GD2579@willie-the-truck>
Message-ID: <3292551ef07b2c5354d48faedad849ff@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: will@kernel.org, steven.price@arm.com,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_232852_418513_5C7356DB 
X-CRM114-Status: GOOD (  11.21  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Steven Price <steven.price@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-14 16:45, Will Deacon wrote:
> On Mon, Dec 16, 2019 at 11:56:28AM +0000, Steven Price wrote:
>> Version 5 is a rebasing of version 4 (no changes).
>> 
>> This series enables a workaround for Cortex-A55 erratum 1530923. The
>> erratum potentially allows TLB entries to be allocated as a result of 
>> a
>> speculative AT instruction. This may happen in the middle of a guest
>> world switch while the relevant VMSA configuration is in an 
>> inconsistent
>> state, leading to erroneous content being allocated into TLBs.
>> 
>> There are existing workarounds for similar issues, 1165522 is
>> effectively the same, and 1319367/1319537 is similar but without VHE
>> support.  Rather than add to the selection of errata, the first patch
>> renames 1165522 to WORKAROUND_SPECULATIVE_AT which can be reused (in 
>> the
>> final patch) for 1530923.
>> 
>> The workaround for errata 1319367 and 1319537 although similar cannot
>> use VHE (not available on those CPUs) so cannot share the workaround.
>> However, to keep some sense of symmetry the workaround is renamed to
>> SPECULATIVE_AT_NVHE.
>> 
>> Changes since v4:
>>  * Rebased to v5.5-rc1
> 
> Looks fine to me. Marc, are you ok with me queueing this via arm64 
> (that's
> where the existing workarounds came from), or would you prefer to take 
> them
> via kvm-arm?

Please go ahead and take it (with my ack) via the arm64 tree.

Thanks,

        M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
