Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B0E192882
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 13:34:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LDI/k90tVfLwnZmUrm+7Mr3H+FhnL+rIWD0KoF25k8Q=; b=gPOX1gP1YlK+Tv
	cPS/N1CbZ5D9Vax4qRN0xNMujTixxt6j6sAqVl3Snr6z+/BbYo9y+Q2L9MhadgurzoU27SPiv+Ijq
	cFpno6Z+EBILtW+Zonihg04X0JESDtty1hFKuOA/HFgb5l41wUEM1Qhstm5J1R0IgGxTYfXUt8pOJ
	skeSW6HAFpAKqiM7M81J/1Zsrn9QnEnfNPaNm5nLBzZH4+TseXLvg4CCCJeSow/aNSvkjiWA7906g
	LV0k0wNL67jv9OB1p66mXReE8c2hr0vi2xfUkyiS4BS3b9Bix5gLk67VWG834HdoPp210COV+pqlj
	BhohmOUr8nNEoBlZFtCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH5Ed-0008Jv-27; Wed, 25 Mar 2020 12:34:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH5CX-0006nW-EA
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 12:32:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C79DC31B;
 Wed, 25 Mar 2020 05:32:04 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C71F43F71F;
 Wed, 25 Mar 2020 05:32:03 -0700 (PDT)
Date: Wed, 25 Mar 2020 12:31:59 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 0/3] arm64: Open code .arch_extension
Message-ID: <20200325123157.GA12236@lakrids.cambridge.arm.com>
References: <20200325114110.23491-1-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200325114110.23491-1-broonie@kernel.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_053205_544493_030EF9A2 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Eric Biggers <ebiggers@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-crypto@vger.kernel.org,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 25, 2020 at 11:41:07AM +0000, Mark Brown wrote:
> Since inserting BTI landing pads into assembler functions will require
> us to change the default architecture we need a way to enable
> extensions without hard coding the architecture.

Assuming we'll poke the toolchain folk, let's consider alternative ways
around this in the mean time.

Is there anything akin to push/pop versions of .arch directitves that we
can use around the BTI instructions specifically?

... or could we encode the BTI instructions with a .inst, and wrap those
in macros so that GAS won't complain (like we do for mrs_s and friends)?

... does asking GCC to use BTI for C code make the default arch v8.5 for
inline asm, or does it do something special to allow BTI instructions in
specific locations?

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
