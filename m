Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2228927A5F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 12:24:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pTftr3Olsr26w1A+PQLdIimEceL3pmvnKKJPFYHZBRY=; b=CbnkOM8XAP326T
	cB7hfJ1xEK2vMQr8E8chgNey3L8QDrzMWh/RBPU/QReXGAP2iptuICluDLVyFtrkaxRG6TOhnp8Xw
	UKqEStUBH39Tc9LxXNY6xyhDub/nD2BOPlRQE2bvmLsNkakEeRG4/dntLH+PXA26ikmHt0n+VZqC8
	az0Oda14DM7G9KPNw1xPuu/5r7Q37SPvsb846cG65+j6aHXAoO4Rj/AuuWi5HL0orAGpDCBxEMUg8
	G7gMZTMM7qsnLizMuS5BXOfxOp6qbq9uYQwGerTRdvloCeSPNYXqsynjX+cZ4VY6S4SBpWh6qoMYS
	qNzANRYeZo3KnKmMelkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTkto-0002ij-9P; Thu, 23 May 2019 10:24:36 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTktg-0002i9-Rh
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 10:24:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 592D9341;
 Thu, 23 May 2019 03:24:28 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 249B13F740;
 Thu, 23 May 2019 03:24:26 -0700 (PDT)
Date: Thu, 23 May 2019 11:24:24 +0100
From: Will Deacon <will.deacon@arm.com>
To: Ard Biesheuvel <ard.biesheuvel@arm.com>
Subject: Re: [PATCH] arm64/module: deal with ambiguity in PRELxx relocation
 ranges
Message-ID: <20190523102424.GI26646@fuggles.cambridge.arm.com>
References: <20190521125707.6115-1-ard.biesheuvel@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190521125707.6115-1-ard.biesheuvel@arm.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_032428_901073_0E286281 
X-CRM114-Status: GOOD (  18.18  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: marc.zyngier@arm.com, mark.rutland@arm.com, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, guillaume.gardet@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 01:57:07PM +0100, Ard Biesheuvel wrote:
> The R_AARCH64_PREL16 and R_AARCH64_PREL32 relocations are
> documented as permitting a range of [-2^15 .. 2^16), resp.
> [-2^31 .. 2^32). It is also documented that this means we
> cannot detect overflow in some cases, which is bad.
> 
> Since we always interpret the targets of these relocations as
> signed quantities (e.g., in the ksymtab handling code), let's
> tighten the overflow checks so that targets that are out of
> range for our signed interpretation of the relocated quantity
> get flagged.
> 
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@arm.com>
> ---
>  arch/arm64/kernel/module.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/kernel/module.c b/arch/arm64/kernel/module.c
> index f713e2fc4d75..2e4e3915b4d0 100644
> --- a/arch/arm64/kernel/module.c
> +++ b/arch/arm64/kernel/module.c
> @@ -99,12 +99,12 @@ static int reloc_data(enum aarch64_reloc_op op, void *place, u64 val, int len)
>  	switch (len) {
>  	case 16:
>  		*(s16 *)place = sval;
> -		if (sval < S16_MIN || sval > U16_MAX)
> +		if (sval < S16_MIN || sval > S16_MAX)

Sorry to be a pain, but can you add a comment here saying why we're
devaiting from the AArch64 ELF spec, please? It's all in the commit message,
but I'd like to have it in the code too so we don't "fix" it later on.

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
