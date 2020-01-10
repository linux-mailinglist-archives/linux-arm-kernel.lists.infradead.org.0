Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC6711371EC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 16:56:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lb2qy6teCy4CecNsJHaYBJMVcbw9HWftyF2lSyAd+Ns=; b=uM6LKMciEnSMgV
	hV5SNJtMGqfQGlEHrWirzOGG37hLMGajRKZJP+TQvvNDgvd7jlZAT5Rvv2ydW84WR2kj2wvyJ/JzM
	at9a7zLVCeQT6Vq6im6EvXjz9u+a6Licdi2siLLUeRrx+7Whn9s3OHc01B24QUaAOBYpgH0KIis10
	Yn0FPW/P0ej/N3S835PdUoCQpxj5fLyf8FmA/O3z+gwUpB5hbPCC9rr3hEXTZOUitOLz7jOdSprAS
	hraAmAPx2LLhjcgfmueHQYGElmwGSy93NDDukkrJc/QyS5JghKbFIEr3Oq88Hg7SVw1IwHYUnObS4
	Ll5zQvw9jWSJcYSNrn1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipwds-0002hv-Od; Fri, 10 Jan 2020 15:56:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipwdi-0002gz-HC
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 15:55:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EA04730E;
 Fri, 10 Jan 2020 07:55:57 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 46F403F6C4;
 Fri, 10 Jan 2020 07:55:57 -0800 (PST)
Date: Fri, 10 Jan 2020 15:55:55 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] arm64: kernel: Correct annotation of end of el0_sync
Message-ID: <20200110155554.GE33536@lakrids.cambridge.arm.com>
References: <20200110155004.3577-1-broonie@kernel.org>
 <20200110155322.GD5889@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110155322.GD5889@sirena.org.uk>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_075558_615024_8FB9E64E 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 03:53:26PM +0000, Mark Brown wrote:
> On Fri, Jan 10, 2020 at 03:50:04PM +0000, Mark Brown wrote:
> > Commit 582f95835a8fc812c (arm64: entry: convert el0_sync to C) caused the
> > ENDPROC() annotating the end of el0_sync to be placed after the code for
> > el0_sync_compat. This replaced the previous annotation where it was
> > located after all the cases that are now converted to C, including after
> > the currently unannotated el0_irq_compat and el0_error_compat. Move the
> > annotation to the end of the function and add separate annotations for the
> > _compat ones.
> 
> Sorry, just realized that a variant of this is in the series that Mark
> posted earlier this week - please ignore this.

I'm happy to rebase my entry rework atop of this patch if it gets queued
now, so I'll leave it to Catalin and Will to choose.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
