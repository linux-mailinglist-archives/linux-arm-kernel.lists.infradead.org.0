Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4860CFD2F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 17:09:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=waoDt/Ykz4wxQl0ovmm/HnZHfTpAbxCnFUWylwjlueI=; b=SfXgXG5hMnrYYS
	frknoSvz2L2SY46OoTK4IwzlskrlqM3Ou3py1OgOmPX6XCO9W9WHgi9TQ0xdLahOt88HgGtsppV4D
	OWZmebwJtOq1+dWm1KPMfAspVdrpJzVssc8Pc5/DYn+VN9lZ72D0nr+Qh8jpb5FXio/wRt9v0ZGc3
	TgYk1q4UcTa6k2gLlutmKQ1Bn191j7T6R+u7E+e97SXZRXtda3rPIYa1izIsLoA08PK4wL3vjzr84
	xn1hUX56yWBSyBUtO8YT9TpqCrdk6Y3Kpkdok+nDfev0QB3UYiROtwm54kWNCaq1SLjFbd30ho3EL
	DFsD9OP7LNGEz+d2ZI3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHr7A-0002Rt-So; Tue, 08 Oct 2019 15:09:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHr71-0002Ra-88
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 15:09:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8AE911570;
 Tue,  8 Oct 2019 08:09:18 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6C2B53F68E;
 Tue,  8 Oct 2019 08:09:17 -0700 (PDT)
Date: Tue, 8 Oct 2019 16:09:15 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [RFC/RFT PATCH 00/16] arm64: backport SSBS handling to
 v4.19-stable
Message-ID: <20191008150915.GC14523@lakrids.cambridge.arm.com>
References: <20191004120430.11929-1-ard.biesheuvel@linaro.org>
 <CAKv+Gu9sg0kpkHWDTdSO1Gz2iCpi2uKr0STQVOWReqw0UxUM4Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu9sg0kpkHWDTdSO1Gz2iCpi2uKr0STQVOWReqw0UxUM4Q@mail.gmail.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_080919_335251_76954A05 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Jeremy Linton <jeremy.linton@arm.com>, Andre Przywara <andre.przywara@arm.com>,
 Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 08, 2019 at 10:12:14AM +0200, Ard Biesheuvel wrote:
> On Fri, 4 Oct 2019 at 14:04, Ard Biesheuvel <ard.biesheuvel@linaro.org> wrote:
> >
> > This is a fairly mechnical backport to v4.19 of the changes needed to support
> > managing the SSBS state, which controls whether Speculative Store Bypass is
> > permitted.
> >
> > I have included Jeremy's sysfs changes as well, since they are equally
> > suitable for stable and made for a much cleaner backport, so it made
> > little sense to handle them separately.
> >
> > These patches are presented for review, and are not being cc'ed to the
> > -stable maintainers just yet.
> >
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Marc Zyngier <maz@kernel.org>
> > Cc: Mark Rutland <mark.rutland@arm.com>
> > Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> > Cc: Jeremy Linton <jeremy.linton@arm.com>
> > Cc: Andre Przywara <andre.przywara@arm.com>
> >
> 
> If nobody has any objections, I'll send these out to -stable end of today.

Other than patch 11, this looks good to me!

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
