Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE1AE79C7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 21:14:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iJMTe4zWiaZXKsJatY+HOtbCScsZAsrsH7zNzbnKHEU=; b=cGhthMFsh2lIUe
	8xOtf3WyGff6ERW3qkmi99XPl0WYYe4TFKCqLIXJeSeHp+FKu9BbZG4GXj7iQQXZpqCpHkXUvdkk7
	4jx8VWiOOREc+M96MQXuy64MzuMwC2eXWM0xaAR+ZKwKdouHom4oHQDfH7ImDzqdwnr1UwZLF8++Y
	HYTOf1OZGWhjT90rA/7dc2fB8nq08kS7YNCxBJ77gvuJkPa92xaFMEdlQzTaaCX6xWSvoaUknDikY
	zFaOukcvBHA2MtrUweItU3Hjawr8+k0JaopkVXvyl655c1SNoeXcLvbB6UF+qpJfXtqK8kif/o6eZ
	EFGS2z+kJHZGdsFbEmgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPBPQ-0001rB-C2; Mon, 28 Oct 2019 20:14:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPBPF-0001qY-Cc
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 20:14:27 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0BEEA214B2;
 Mon, 28 Oct 2019 20:14:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572293663;
 bh=Irzp1W5cxgylHGtZa8iCKi1q/E+rjetb5lI/l5T8Drw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Q6PwP5zh9YEOcoKYVLj3hUV3LizrHajeIzJYAHGdT6MiK2ebFgVEt818XVYbs7EAF
 8EW3r2SQXdo6WtupZ3Z0+oBbrXh/jWvmUtb2x9oL3qwVLji9qaV7t/n2WwNbXxwtzX
 OkCsV9HNGUtJS13sJu/GVpstbP7NcaVWmTmxzVjo=
Date: Mon, 28 Oct 2019 20:14:18 +0000
From: Will Deacon <will@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: next/master boot: 257 boots: 8 failed, 237 passed with 8
 offline, 2 untried/unknown, 2 conflicts (next-20191028)
Message-ID: <20191028201418.GA8317@willie-the-truck>
References: <5db7032c.1c69fb81.888b0.b521@mx.google.com>
 <20191028174857.GG5015@sirena.co.uk> <20191028184019.GR571@minitux>
 <20191028191121.GH5015@sirena.co.uk> <20191028200219.GS571@minitux>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028200219.GS571@minitux>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_131425_452273_E9B244E9 
X-CRM114-Status: GOOD (  19.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kernel-build-reports@lists.linaro.org, linux-arm-msm@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Andy Gross <agross@kernel.org>,
 linux-next@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 01:02:19PM -0700, Bjorn Andersson wrote:
> On Mon 28 Oct 12:11 PDT 2019, Mark Brown wrote:
> 
> > On Mon, Oct 28, 2019 at 11:40:19AM -0700, Bjorn Andersson wrote:
> > > On Mon 28 Oct 10:48 PDT 2019, Mark Brown wrote:
> > > > On Mon, Oct 28, 2019 at 08:03:08AM -0700, kernelci.org bot wrote:
> > 
> > > > Today's -next (anf Friday's) fails to boot on db820c:
> > 
> > > > >     defconfig:
> > > > >         gcc-8:
> > > > >             apq8096-db820c: 1 failed lab
> > 
> > > > It looks like it deadlocks somewhere, the last things in the log are a
> > > > failure to start ufshcd-qcom and then an RCU stall some time later:
> > 
> > > db820c has been failing intermittently for a while now, it seems that
> > > booting with kpti enabled causes something to go wrong. There are
> > > nothing strange in the kernel logs and ftrace seems to indicate that all
> > > the CPUs are idling nicely.
> > 
> > Oh dear.  Adding Catalin and Will.  Is it definitely KPTI that's
> > triggering stuff?  It did turn up some bugs on other systems, though
> > it's a bit strange it's only manifesting in KernelCI...
> 
> I did a test recently where I booted my db820c 100 times with kpti=yes
> and 100 times with kpti=no on the kernel command line, and the result
> was 90% failure to reach console vs 0%. Going back and looking at the
> logs for the 10% indicated that the boot CPU was fine, but I had stalls
> reported on other CPUs.
> 
> In an effort to rule out driver bugs I reduced the DT to CPUs, the core
> clocks, gic, timers and serial driver, and I still saw the problem.
> 
> I have not looked at this with jtag and hence do not know what secure
> world is doing.

Hmm. Is this a recent thing? Neither kpti nor the snapdragon 820 are
particular new. Might be worth checking that CONFIG_QCOM_FALKOR_ERRATUM_1003
is enabled and getting patched in at runtime -- we had hardware issues
during kpti development with this CPU.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
