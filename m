Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3ABA162290
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 09:44:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OFI2Qj9Wm8b+h5ZtPqZurLIPxxTgV/AK1da9AabsMtk=; b=B6WozjhUOmX1ae
	MhHSDCRgRu5HYaEcsGLdLB9C2uvHLOJRIlBb5WhJYJIbHt2A9wZuC6G+FWtlpLg+geXke2Vtr64dw
	I82EcTOgFqUwdNrghVBAp9+utYvvax/QJttpvCoofahlLBK0/ZIAH3I/qNS1OWpwrpNO8g2HUD3iB
	dMhurCTsH0vGf/bUw7h/DQoiZ85zemKiLqEyhWGfSYX+wvlJZVw/cttrcOWk8Lx3XV6rfQtMDbV4j
	Li0jRY4HcjG9BLBRosmRwm5b07Lmh4/UpGcVy29j8xyAKdmiW8GRd0WiMHnI0cijisPywsslNQSq0
	QI8RYOm6zy+8XWx4Mqew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3yUI-0007Aj-CX; Tue, 18 Feb 2020 08:44:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3yU9-0007AE-Qg
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 08:44:07 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7D91E2064C;
 Tue, 18 Feb 2020 08:44:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582015444;
 bh=TlD3FF2u/0sqf8LJx48N5oNM15qLnrXXYkP0fgRyaeo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=l1poJR8E/j4pRBB53WHbcZzE9dKNVva5vwMhuhFkRxktBMh/X8qvtbscl1z9cciXj
 igQC+Yfu6w7JdQ6zrF9byK0cFV2kUwbjC7V8KhbHKyflJrtY5Vpgqz7YPHsNvze1Cu
 2Cs4upukx3CD7jOr+2xlf8KdjQ1eqAXp9sU7kb3M=
Date: Tue, 18 Feb 2020 08:44:00 +0000
From: Will Deacon <will@kernel.org>
To: Luis Machado <luis.machado@linaro.org>
Subject: Re: [arm64, debug] PTRACE_SINGLESTEP does not single-step a valid
 instruction
Message-ID: <20200218084359.GA16828@willie-the-truck>
References: <1eed6d69-d53d-9657-1fc9-c089be07f98c@linaro.org>
 <20191118131525.GA4180@willie-the-truck>
 <b3a9ae7e-8a45-7c14-7bc6-1d3b62728a0c@linaro.org>
 <307ece3d-4e9d-21c4-0abf-9f4f3b313e74@linaro.org>
 <82cb3dea-db82-1c71-3b08-957102b85c93@linaro.org>
 <20200213120115.GD1405@willie-the-truck>
 <ae8c0cd4-f072-deaf-f30e-46e2265d6392@linaro.org>
 <5028f457-5b7d-1a88-912f-3fa97b567985@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5028f457-5b7d-1a88-912f-3fa97b567985@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_004405_888131_D78C4B6A 
X-CRM114-Status: GOOD (  22.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 14, 2020 at 12:45:31PM -0300, Luis Machado wrote:
> On 2/13/20 2:07 PM, Luis Machado wrote:
> > On 2/13/20 9:01 AM, Will Deacon wrote:
> > > Sorry for the very slow reply. I talked to Mark about this a bit but it
> > > seems that we never followed up here.
> > 
> > No worries.
> > 
> > > 
> > > On Tue, Dec 10, 2019 at 05:00:18PM -0300, Luis Machado wrote:
> > > > Do you have any input regarding this particular situation?
> > > > 
> > > > It would be nice to get this fixed before the release of another GDB
> > > > version, if the fix is to live in GDB itself.
> > > 
> > > Basically, I'm very nervous about fixing this in the kernel because
> > > whatever we do will be visible to userspace. On the other hand, this
> > > part of the ptrace interface is only seriously used by GDB and we should
> > > make sure that it works well.
> > > 
> > > Does the diff below solve the problem? If so, can you confirm that it
> > > doesn't appear to regress anything else for GDB?
> > 
> > Thanks for the patch. I'll exercise this in various ways to see if
> > anything breaks.
> > 
> 
> I gave this a try with the particular test in GDB's testsuite that exposed
> the problem. It is working as expected now, so we're single-stepping past
> the instruction correctly instead of getting a spurious SIGTRAP.
> 
> I managed to run a few other tests related to syscalls and signals and they
> also executed as expected. But this was inside QEMU.
> 
> Do you see any potential scenarios where this change may break things? Other
> things i should try to exercise?

Could you run the entire testsuite please and check there aren't any
regressions? Hardware would be best, but QEMU is still useful.

> Given we need to be careful with a kernel patch at this stage, i just want
> to make sure I covered all/most the possible cases.
> 
> Otherwise, I'm happy with this change. Thanks for putting it together!

I'll add your Tested-by, but I'd still like review from Mark.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
