Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B08C1BBF81
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 15:28:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NQs8KowItnN+gdc9ojy2YF3y/pHDr8PvxLTI8GCM3QI=; b=k7XiCKs0LP8NOr
	9dAhHH8eZ9QfmKTK2djxepWG8lqgUyr2XNyKx6GJAkMVkDT5MgigkQtCVOTHK2fWtpNCBP5s6WrA6
	wxdCCfwgsiAD+8k3kYhJm6MrJonEh2bMrd+bhFPaSIXCLog43Nvbz+h4/u4jwDyXj4WAvHy3nc/hl
	9/Q49LNdwP445vDOzqhP7veHMYsJmtSsBS93zq8zhcRM85fdHPDuPMdfSa8jrnFilSMZEJG+J85PH
	I2XEofD73mcf9fVpbTITmGgUKgTOUVqL3D82HdzdIpP/rI1AAURFLulyE8RY2WLeV117dTo6pD+c6
	OKpBM9ptYG+sJSzXW7lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTQHf-0004Dn-Od; Tue, 28 Apr 2020 13:28:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTQHU-0004DE-JA
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 13:28:13 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 439F5206F0;
 Tue, 28 Apr 2020 13:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588080492;
 bh=e2h+YGX8UNd7RGu9S/wztUu2W9Zxes42cCR7ChuzclQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IaFvCu6krhFeoqDRhlxn4Rt0HIxMcHkb8PJJjF/01l9E9bBbYc0uSUxxo5MRegT8S
 rcMlMNwdwADZCmdFUqk1E3PWHt/iQ+TBzEOqu6W95E2Gppu3nhQV4pELCaIVMxuAMr
 VdBgg/Q/DMYyELaZHTFaB9/B+wUhZEkt8jkDc01A=
Date: Tue, 28 Apr 2020 14:28:05 +0100
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v10 00/13] arm64: Branch Target Identification support
Message-ID: <20200428132804.GF6791@willie-the-truck>
References: <20200316165055.31179-1-broonie@kernel.org>
 <20200422154436.GJ4898@sirena.org.uk> <20200422162954.GF3585@gaia>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422162954.GF3585@gaia>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_062812_664393_C9D580B8 
X-CRM114-Status: GOOD (  16.18  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Andrew Jones <drjones@redhat.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-arch@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Eugene Syromiatnikov <esyr@redhat.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, "H . J . Lu " <hjl.tools@gmail.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Florian Weimer <fweimer@redhat.com>, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 22, 2020 at 05:29:54PM +0100, Catalin Marinas wrote:
> On Wed, Apr 22, 2020 at 04:44:36PM +0100, Mark Brown wrote:
> > On Mon, Mar 16, 2020 at 04:50:42PM +0000, Mark Brown wrote:
> > > This patch series implements support for ARMv8.5-A Branch Target
> > > Identification (BTI), which is a control flow integrity protection
> > > feature introduced as part of the ARMv8.5-A extensions.
> > 
> > I've not resent this since the branch is still sitting in the arm64 tree
> > but it's also not in -next at the minute - is there anything you're
> > waiting for from my end here?
> 
> It's up to Will whether he wants a new series posted. The for-next/bti
> branch is complete AFAICT, only that normally we start queueing stuff
> (and push to -next) around -rc3.

I'm happy either way, but it would be nice to base other BTI patches on
top of this branch. Mark -- is it easier for you to refresh the series
against v5.7-rc3, or leave it like it is? Please just let me know either
way.

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
