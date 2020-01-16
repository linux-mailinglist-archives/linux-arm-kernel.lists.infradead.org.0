Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA18E13D90C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 12:33:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fE+l9NROKmTxu5/5FDqV2uWud0WaIo+3lBvUNYTC2xw=; b=MejkneMtYzvmdL
	D03Gl/KeCVQurbGM0xDUAcZptQTyQUyuhyIXPrHvxBcZsTc/xoIOiXPQrJd+QYmE5JRT5FKVRpWxh
	vqP8X4q7309XY80/37LBB80SxgInsdkDf/tbkTsACuVvgZIjRlhEPka1gtHP60M0WDO5uE46bmmIg
	PjWINiHScFZlWtPoGLH/RFw2LYEIo1LzvtwxymXLMp1GfrPM2WHv9actGaTUSsoPSCmSk8qGspv26
	Z9OBtPnyyyK7ekKOIoK6tHq15ei0ioGAK1dWbhqbzVXYp8EYuPRFlJx+suSS+irNaWmpwJyXPnwyR
	Mb0jK9T8QWrY13v0GsYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is3P2-000788-HV; Thu, 16 Jan 2020 11:33:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is3Oo-00077a-Dr
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 11:33:24 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6A8972073A;
 Thu, 16 Jan 2020 11:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579174397;
 bh=IlHhfu7+wBiA/4o45jiNknVmWVgInlmzqIT0tYxSLP4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MooqElTPqG2+0jdVGgSMXJmfbEFdpgJi1L3SP7SUpnyuhoUEKFwV0XcG346ZRsTN5
 GUb/f1tp+jhxxIEOoG5D9Q9V7NZxLksBlPnm6FLXxZijwRfWEt1V7QF0DvnKlA9bun
 qBeny/AOkzfqh+Mw77Fqkvo4Lrttp+/ja9hoooi4=
Date: Thu, 16 Jan 2020 11:33:13 +0000
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v10 2/3] arm64: random: Add data to pool from setup_arch()
Message-ID: <20200116113312.GB16345@willie-the-truck>
References: <20200110122341.8445-1-broonie@kernel.org>
 <20200110122341.8445-3-broonie@kernel.org>
 <CAKv+Gu8He-SmqH3cTOCReOntFaOWvdKmEAfxxAy7QW6GzHd=Pg@mail.gmail.com>
 <20200115091615.GA21692@willie-the-truck>
 <20200115120703.GH3897@sirena.org.uk>
 <20200115124238.GF21692@willie-the-truck>
 <CAKv+Gu-eUkAtft9d+=zvnHiqQUBRGSJX9M03zF1i9Ms+oMstAA@mail.gmail.com>
 <20200115170459.GM3897@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200115170459.GM3897@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_033318_488088_14F453C3 
X-CRM114-Status: GOOD (  13.01  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 05:04:59PM +0000, Mark Brown wrote:
> On Wed, Jan 15, 2020 at 02:36:32PM +0100, Ard Biesheuvel wrote:
> > On Wed, 15 Jan 2020 at 13:42, Will Deacon <will@kernel.org> wrote:
> 
> > > I'd also really like Ard's ack on anything relating to RNGs.
> 
> > Patches #1 and #3 are fine with me, modulo the HWCAP bit which I don't
> > deeply care about.
> 
> > But the way this patch works around our workaround for mismatched RNG
> > caps between cores doesn't make sense to me.
> 
> I'd be totally happy to drop patch 2 entirely, it's a *bit*
> marginal if it's useful - I mainly wrote it because it's so
> trivial to do not because I think it's a wonderful idea.

OK, tell you what -- please resend just 1 and 3, with the HWCAP addition
(because we're not going to resolve that in time for 5.6) and I'll queue
them up.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
