Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9233701E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 11:38:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3/Qat2j+QG/fwn1ovDghqUX6l76BIY1iloEmr2N1llM=; b=TiLs2uWRnewiRM
	OOM7kZmb8GXUfaTe1M2BStBbwdGJ/mPrfncqHHqSyD7ipORZi4Epy/EmCSzjyHVW7PIIml0iJ+mbf
	iPF7sh334NXCToi28LlC8990JcsBQYnpi/Cagk+AZRGsUDV/iyORoL6WIi2cKkinhaO/E+IzKBdNk
	gOjav2JmDYqG+oHkKY/KQrAoQFI8b+fXwyqLzLQa2O7u7FLG6B5coWtZ9fGylIyQOH7ZQrnfobxHg
	YDALxaVa8mpO8gzdKUcy+2oowHMW0hw++a3AhBnVR+DxeihR1tP+RKQpxNzNxLuvxvr3g69SuSTO5
	u3k/Z79WNoE1ObsaLbIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYor4-00021n-LV; Thu, 06 Jun 2019 09:38:42 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYoqx-000219-Us
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 09:38:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BCFA4341;
 Thu,  6 Jun 2019 02:38:34 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 659FD3F690;
 Thu,  6 Jun 2019 02:38:33 -0700 (PDT)
Date: Thu, 6 Jun 2019 10:38:11 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH V2 3/4] arm64/mm: Consolidate page fault information
 capture
Message-ID: <20190606093811.GA37430@lakrids.cambridge.arm.com>
References: <1559544085-7502-1-git-send-email-anshuman.khandual@arm.com>
 <1559544085-7502-4-git-send-email-anshuman.khandual@arm.com>
 <20190604144209.GJ6610@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604144209.GJ6610@arrakis.emea.arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_023836_002416_6EE7CA37 
X-CRM114-Status: GOOD (  13.64  )
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
Cc: Anshuman Khandual <anshuman.khandual@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 04, 2019 at 03:42:09PM +0100, Catalin Marinas wrote:
> On Mon, Jun 03, 2019 at 12:11:24PM +0530, Anshuman Khandual wrote:
> > diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
> > index da02678..4bb65f3 100644
> > --- a/arch/arm64/mm/fault.c
> > +++ b/arch/arm64/mm/fault.c
> > @@ -435,6 +435,14 @@ static bool is_el0_instruction_abort(unsigned int esr)
> >  	return ESR_ELx_EC(esr) == ESR_ELx_EC_IABT_LOW;
> >  }
> >  
> > +/*
> > + * This is applicable only for EL0 write aborts.
> > + */
> > +static bool is_el0_write_abort(unsigned int esr)
> > +{
> > +	return (esr & ESR_ELx_WNR) && !(esr & ESR_ELx_CM);
> > +}
> 
> What makes this EL0 only?

It returns false for EL1 faults caused by DC IVAC, where write
permission is required. EL0 can only issue maintenance that requires
read permission.

For whatever reason, the architecture says that WnR is always 1b1, even
if read permission was sufficient.

How about:

/*
 * Note: not valid for EL1 DC IVAC, but we never use that such that it
 * should fault.
 */
static bool is_write_abort(unsigned int esr)
{
	return (esr & ESR_ELx_WNR) && !(esr & ESR_ELx_CM);
}

... which would also address your concern about EL1 writes to a user
mapping.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
