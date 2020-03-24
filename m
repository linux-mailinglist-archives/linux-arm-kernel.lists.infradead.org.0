Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5552B190C5A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 12:23:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=51N9g5Ga6bZ0ZSUwkPfOE0ulbLlngN75fJvs0Yz6Iv0=; b=S6hmGQHT4tFpkF
	+Q7No0bFhMIGAelo+f6XdzQhkx0VHUDFdJLuNgMgsFaxcDGTBHO+Hlem/+9igpFbZil0aOImNrH6O
	ITa/4EeLGGo2rgJHfOreTUtA67oBlqbfYmoczICAcAP1Fmke2Fd+rOOy+eCtldBLoGNOyAvPIbSVR
	bsmdTarwVYDjiYWDTXm4XBPST/GLZugrINYh/w3XTNAjmQusCsmCjZvnVhYIa7gKA4b8jDRlUlp/s
	/rEM/X6JtP//uIgO/baSU0qawAPB0Ad0vlfNVzWdUOFi5Q59Z1M8X+e6XjLZ6jZN0FEBDUBSFbU23
	DhKwARWsjSThjo2y0Svw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGhee-0001T4-3C; Tue, 24 Mar 2020 11:23:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGheT-0001SP-Jw
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 11:23:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E0C2231B;
 Tue, 24 Mar 2020 04:23:20 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EB8793F792;
 Tue, 24 Mar 2020 04:23:19 -0700 (PDT)
Date: Tue, 24 Mar 2020 11:23:17 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 1/3] arm64: clean up trampoline vector loads
Message-ID: <20200324112316.GG4892@mbp>
References: <1938400.7m7sAWtiY1@basile.remlab.net>
 <20200323121437.GC2597@C02TD0UTHF1T.local>
 <20200323190408.GE4892@mbp> <2067644.cOvikPKVsA@basile.remlab.net>
 <20200324105217.GA20256@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324105217.GA20256@C02TD0UTHF1T.local>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_042321_701793_0ADFA48B 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: james.morse@arm.com, will@kernel.org, linux-arm-kernel@lists.infradead.org,
 =?iso-8859-1?Q?R=E9mi?= Denis-Courmont <remi@remlab.net>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 24, 2020 at 10:52:17AM +0000, Mark Rutland wrote:
> On Mon, Mar 23, 2020 at 10:42:30PM +0200, R=E9mi Denis-Courmont wrote:
> > Le maanantaina 23. maaliskuuta 2020, 21.04.09 EET Catalin Marinas a =E9=
crit :
> > > Should we just use adrp on __entry_tramp_data_start? Anyway, the diff
> > > below doesn't solve the issue I'm seeing (only reverting patch 3).
> > =

> > AFAIU, the preexisting code uses the manual PAGE_SIZE offset because th=
e offset =

> > in the main vmlinux does not match the architected offset inside the fi=
xmap. If =

> > so, then using the symbol directly will not work at all.
> =

> Indeed. I can't see a neat way of avoiding this right now, so should we
> drop these patches and leave the code as-is (but with comments as to the
> special requirements that it has)?

I'm going to drop these three patches from -next for now but I can take
any updated comments (they are pretty much missing from this code).

Thanks.

-- =

Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
