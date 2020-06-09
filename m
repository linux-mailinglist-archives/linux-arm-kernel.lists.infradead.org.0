Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C5A1F350B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 09:38:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9C/bTTA+99BwRa3ZIdsIk756BhJotPsQELsD38Ryzvc=; b=W+Tcwu54eDAHbbnVmixKC3Gjs
	UhN0F/dtG5618aysDlhhQeEisiTOOQjUwVOvI80xXPx8VKDv0Ui+KYjCqBu+RNS8mS2X51qf8WTFe
	MD6YSDrezaBtcgj1quONfh3RlYJ9YbLokuc0jla7064KPFikppEqqBYRBN9GkP41tKNhzvjw91ECX
	vymDkvhgrfIBd/7t1WjbOQr+S3aCC/dMUPKBGTzNThegx/62fJuAresQAfGGv2COnSCwhL2pol1K6
	6awDHyO2oeKJ4giKdggXGyrM+V3/mrV5hcrwgoP3ogi44NaGSIN67VCj4bLvDZtKny1EhY6NO0WTG
	esQgU0p9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiYpy-0007xU-Ng; Tue, 09 Jun 2020 07:38:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiYpr-0007x9-SH
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 07:38:17 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F023F2074B;
 Tue,  9 Jun 2020 07:38:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591688295;
 bh=XX5d5KaAtphU/kZf+qt3bMEwCoOYeQG5XQlitoBuT0Q=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=FXRWngKX4+Iu3JVdr/H3JTL7xz8zVI8QGaVBS/zbkHU+9Y4uLj8Gd51PkCr0Nlvyh
 /Ufzaws0PeRTThPPgPdtdgDZN+xT/YYUv9EBxKghVg+4KsIr9ZH1Q+zYUEXd+MWHa2
 xFskecywmzejx7r+8aPwA/faRCckoRf+kzZ0BqN8=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jiYpp-001OCI-9n; Tue, 09 Jun 2020 08:38:13 +0100
MIME-Version: 1.0
Date: Tue, 09 Jun 2020 08:38:13 +0100
From: Marc Zyngier <maz@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 3/3] KVM: arm64: Enforce PtrAuth being disabled if not
 advertized
In-Reply-To: <20200604153900.GE75320@C02TD0UTHF1T.local>
References: <20200604133354.1279412-1-maz@kernel.org>
 <20200604133354.1279412-4-maz@kernel.org>
 <20200604153900.GE75320@C02TD0UTHF1T.local>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <8c340ebe6be5d9c866c24ad55ed0a841@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: mark.rutland@arm.com, kvm@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 will@kernel.org, catalin.marinas@arm.com, kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_003815_934924_3E0B483F 
X-CRM114-Status: GOOD (  18.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kernel-team@android.com, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On 2020-06-04 16:39, Mark Rutland wrote:
> Hi Marc,
> 
> On Thu, Jun 04, 2020 at 02:33:54PM +0100, Marc Zyngier wrote:
>> Even if we don't expose PtrAuth to a guest, the guest can still
>> write to its SCTIRLE_1 register and set the En{I,D}{A,B} bits
>> and execute PtrAuth instructions from the NOP space. This has
>> the effect of trapping to EL2, and we currently inject an UNDEF.
> 
> I think it's worth noting that this is an ill-behaved guest, as those
> bits are RES0 when pointer authentication isn't implemented.
> 
> The rationale for RES0/RES1 bits is that new HW can rely on old SW
> programming them with the 0/1 as appropriate, and that old SW that does
> not do so may encounter behaviour which from its PoV is UNPREDICTABLE.
> The SW side of the contract is that you must program them as 0/1 unless
> you know they're allocated with a specific meaning.
> 
> With that in mind I think the current behaviour is legitimate: from the
> guest's PoV it's the same as there being a distinct extension which it
> is not aware of where the En{I,D}{A,B} bits means "trap some HINTs to
> EL1".
> 
> I don't think that we should attempt to work around broken software 
> here
> unless we absolutely have to, as it only adds complexity for no real
> gain.

Fair enough. I was worried of the behaviour difference between HW 
without
PtrAuth and a guest with HW not advertised. Ideally, they should have
the same behaviour, but the architecture feels a bit brittle here.

Anyway, I'll drop this patch, and hopefully no guest will play this
game (they'll know pretty quickly about the issue anyway).

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
