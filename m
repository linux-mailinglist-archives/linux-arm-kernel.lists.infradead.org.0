Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C951E21B6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 14:19:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zQILz3ELswO3ZqQh3O2AO9JOfTAV0s0w/FVAP+Y48No=; b=FEl2OPKtc/kBvB
	Vyy+HfmhcOnw9oykbZClLPYUAd1av36bS+aR4sDGQus4sx+5N7qt9W4vEmT5lpcA9v8DW09XFqmzn
	BMUDAaX+1NJerDQ8cqpymF2pRxyJF90zMwHuSQHtDOYHZJ7AgQf3HwRFP7Yu5GfkRDpCYOyg2zqiL
	Ye/P/1sRHb6HKfmkyV/kaH9bQc/v6hPEFRzDQu2Ug1LrVMF9tYOHNf9HR55kpXkE2HNgQi9FwlgYS
	3Phg2cSBBz/RsaM7wHMqSibBrbhqn9yd+l2zwnU0VAuuQ42YW1pCMUGIN09/qVWiYbRb36ByLh/ng
	N7Vz03mY5P4O6s+cdQfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdYY8-0002TU-Sg; Tue, 26 May 2020 12:19:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdYY2-0002Sf-1c
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 12:19:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 432BD30E;
 Tue, 26 May 2020 05:19:08 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AF8663F6C4;
 Tue, 26 May 2020 05:19:06 -0700 (PDT)
Date: Tue, 26 May 2020 13:19:03 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH] arm64/cpufeature: Move BUG_ON() inside get_arm64_ftr_reg()
Message-ID: <20200526121903.GF17051@gaia>
References: <1589937774-20479-1-git-send-email-anshuman.khandual@arm.com>
 <20200520122012.GA25815@willie-the-truck>
 <20200520154711.GD18302@gaia>
 <20200520173953.GA27629@willie-the-truck>
 <cdea1cc5-41be-c125-d4d1-f63ff1989ec6@arm.com>
 <20200521162212.GK6608@willie-the-truck>
 <20200521165916.GF11507@gaia>
 <aa6436d4-c724-4933-1341-6ca417ce40ed@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aa6436d4-c724-4933-1341-6ca417ce40ed@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_051910_129575_36671D6D 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 1.2 SUBJ_OBFU_PUNCT_MANY   Punctuation-obfuscated Subject: header
 0.7 SUBJ_OBFU_PUNCT_FEW    Possible punctuation-obfuscated Subject:
 header
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
Cc: mark.rutland@arm.com, Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 25, 2020 at 05:22:23AM +0530, Anshuman Khandual wrote:
> On 05/21/2020 10:29 PM, Catalin Marinas wrote:
> > On Thu, May 21, 2020 at 05:22:15PM +0100, Will Deacon wrote:
> >> On Thu, May 21, 2020 at 08:45:38AM +0530, Anshuman Khandual wrote:
> >>> The existing code has BUG_ON() in three different callers doing exactly the
> >>> same thing that can easily be taken care in get_arm64_ftr_reg() itself. As
> >>> mentioned before an enum variable (as preferred - over a bool) can still
> >>> preserve the existing behavior for emulate_sys_reg().
> >>>
> >>> IMHO these are very good reasons for us to change the code which will make
> >>> it cleaner while also removing three redundant BUG_ON() instances. Hence I
> >>> will request you to please reconsider this proposal.
> >>
> >> Hmm, then how about trying my proposal with the WARN_ON(), but having a
> >> get_arm64_ftr_reg_nowarn() variant for the user emulation case?
[...]
> > read_sanitised_ftr_reg() would need to return something though. Would
> > all 0s be ok? I think it works as long as we don't have negative CPUID
> > fields.
> 
> Just trying to understand. If get_arm64_ftr_reg() returns NULL, then
> read_sanitised_ftr_reg() should also return 0 for that non existent
> register (already been warned in get_arm64_ftr_reg).
> 
> @@ -961,8 +972,8 @@ u64 read_sanitised_ftr_reg(u32 id)
>  {
>         struct arm64_ftr_reg *regp = get_arm64_ftr_reg(id);
> 
> -       /* We shouldn't get a request for an unsupported register */
> -       BUG_ON(!regp);
> +       if (!regp)
> +               return 0;
>         return regp->sys_val;
>  }

Yes, as long as we also get the WARN_ON().

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
