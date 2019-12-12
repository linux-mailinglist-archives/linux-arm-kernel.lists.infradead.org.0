Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8E311CFAF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 15:23:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CKZB/J+HbQck0FDsu47D4MQ3Q9m2N6wnR+rZHc3RtCk=; b=spGs0osSMEdpkl
	nxi80tclU6HEpxv8bqvFOwUCpAUNEDaK+2zXYccb3D1lz/sLVdp2Oz4wekLbrLk7uqBHSEgmODt88
	vqGgVEJFOOV9F2CUEpDAT0Q5+feFCOIhSCsKS4Wfx9YaIqwNwxjBvmENEu4K5+c5A7rXt4+WQIhTC
	9xCRAGLbAha/+GCXzZhuhUZvj6xmvFLk9DpGsZZBob7iviGZ2Iaiqf3ZKhPJWdlMRgNNJAe7RPF1R
	yoYE//EBvUrte1cd6+B4yLpSfZnheTmSUaCNW0+zMmseXyC4W2q52wgvb1S149CtML6AEJKnlieo9
	X3ATr0y6cvEAHe0PE0kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifPNB-0000CT-1S; Thu, 12 Dec 2019 14:23:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifPN2-0000C2-9P
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 14:23:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2D02E30E;
 Thu, 12 Dec 2019 06:23:09 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 667BE3F718;
 Thu, 12 Dec 2019 06:23:07 -0800 (PST)
Date: Thu, 12 Dec 2019 14:23:05 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: arm_smccc_smc as generic smc interface?
Message-ID: <20191212142305.GD46910@lakrids.cambridge.arm.com>
References: <20191209180752.GJ35479@atomide.com>
 <CAHUa44EJAjL+MGqgKd6YvQAg0z4hRYXb9MeTqsTYhAe-RBZt+g@mail.gmail.com>
 <20191210153840.GL35479@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210153840.GL35479@atomide.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_062312_372371_2442F010 
X-CRM114-Status: GOOD (  12.63  )
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
Cc: Sumit Garg <sumit.garg@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 Volodymyr Babchuk <vlad.babchuk@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, "Andrew F. Davis" <afd@ti.com>,
 Olof Johansson <olof@lixom.net>, Russell King <rmk+kernel@armlinux.org.uk>,
 Marc Zyngier <maz@kernel.org>, Andy Gross <andy.gross@linaro.org>,
 Colin Ian King <colin.king@canonical.com>, Will Deacon <will@kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Tue, Dec 10, 2019 at 07:38:40AM -0800, Tony Lindgren wrote:
> * Jens Wiklander <jens.wiklander@linaro.org> [191210 08:10]:
> > On Mon, Dec 9, 2019 at 7:07 PM Tony Lindgren <tony@atomide.com> wrote:
> > In <arm-smccc.h> there's already been made room for some Qualcomm
> > quirks, perhaps it's possible to use or extend it to cover the TI
> > cases you have in mind.
> 
> Yeah that's my thinking too as long as there are no issues using
> arm_smccc_smc() for non-optee cases.

I don't think that we wan't to turn the SMCCC code itself into a generic
SMC interface, and this boils down to how divergent the TI calling
convention is from SMCCC. What are the differences?

If the conventions differ too much I think having a parallel interface
is preferable. We're going to be extending the SMCCC code for SMCCCv1.2,
and I'd rather not complicat the common code or the 64-bit code for
this.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
