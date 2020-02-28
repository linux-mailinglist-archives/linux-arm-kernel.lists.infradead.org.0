Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C851735F5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 12:20:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qAOeuHtW+hzRsw86vvq0P77/Se9Tb70pI7U+PhHrpvQ=; b=jX9ZD1XfN5mkP5
	Uf5Ju8ck7+7uuRnjPhLiqe6K9RxfJ16VB8LYbzE6zqjRlCHUHxxxBjyXIHAdAfRNpSxPv1cv6i9Vg
	chDEeMn7aT7+yd1iIQbeezYAHXqHogdEp6T0dBrl1Lnqm7BVfa/RIChVfcZI15mW5RPuahqKbKvgz
	5Oh0jluPZghYHoPcy0S5YvQBMRM6EwyrnsRIMZg+YrEgKvSTtHVajFiS2VwuMZIPlkpXSNQXL9Bqc
	9WfullNPazmkKQnur0iIMh6T3ulGxHbPnpDzCeeHLKw/e4ZiNByLUqyc9e2MT3VXZ1e/uYoaE4ZMY
	MPru7LmSCCcge9QAxPLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7dgb-00074u-4p; Fri, 28 Feb 2020 11:20:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7dfd-0006rl-9W
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 11:19:06 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1BA2520658;
 Fri, 28 Feb 2020 11:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582888745;
 bh=KlLQmzQ1rX7undj5q2CK/x5xk5tCgGURF6uH+KlPwvA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Im4vNfyrVduqjg0yd9PaJBAWiavAA4Q6Qh2wahn62Y+wAxbyDtR6QfSEoQTnzkcxi
 CmsWda8dOnV1288WZlyx50eEt1seABAnWfAAM/EbbLdicnpmvzMdOY/6yy/6EhDlw7
 KuhS4QtKW7kdjGoWpmSKGOD3AYFxTRsUf2MJZSFc=
Date: Fri, 28 Feb 2020 11:18:59 +0000
From: Will Deacon <will@kernel.org>
To: Amit Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH 2/2] arm64: kprobe: disable probe of fault prone ptrauth
 instruction
Message-ID: <20200228111856.GB2941@willie-the-truck>
References: <1582117240-15330-1-git-send-email-amit.kachhap@arm.com>
 <1582117240-15330-3-git-send-email-amit.kachhap@arm.com>
 <20200227164817.GA31259@lakrids.cambridge.arm.com>
 <52db2533-488a-1e27-947c-ec92048f26ae@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <52db2533-488a-1e27-947c-ec92048f26ae@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_031905_361549_5BB28279 
X-CRM114-Status: GOOD (  18.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, James Morse <james.morse@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 04:42:10PM +0530, Amit Kachhap wrote:
> On 2/27/20 10:18 PM, Mark Rutland wrote:
> > On Wed, Feb 19, 2020 at 06:30:40PM +0530, Amit Daniel Kachhap wrote:
> > > diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
> > > index 4a9e773..87f7c8a 100644
> > > --- a/arch/arm64/kernel/insn.c
> > > +++ b/arch/arm64/kernel/insn.c
> > > @@ -63,6 +63,7 @@ bool __kprobes aarch64_insn_is_nop(u32 insn)
> > >   	case AARCH64_INSN_HINT_WFI:
> > >   	case AARCH64_INSN_HINT_SEV:
> > >   	case AARCH64_INSN_HINT_SEVL:
> > > +	case AARCH64_INSN_HINT_AUTIASP:
> > >   		return false;
> > >   	default:
> > >   		return true;
> > 
> > I'm afraid that the existing code here is simply wrong, and this is
> > adding to the mess.
> > 
> > We have no idea what HINT space instructions will be in the future, so
> > the only sensible implementations of aarch64_insn_is_nop() are something
> > like:
> > 
> > bool __kprobes aarch64_insn_is_nop(u32 insn)
> > {
> > 	return insn == aarch64_insn_gen_hint(AARCH64_INSN_HINT_NOP);
> > }
> > 
> > ... and if we want to check for other HINT instructions, they should be
> > checked explicitly.
> > 
> > Can you please change aarch64_insn_is_nop() as above?
> 
> Agree that current implementation is unclear.
> I will implement as you suggested.

Well, please don't throw the baby out with the bath water. The existing
code might be badly structured, but I think it's going a bit far to say
it's "simply wrong". We need a whitelist /somewhere/ and I'd prefer not
to regress the existing behaviour just because the whitelist is embedded
in a function with "is_nop" in the name.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
