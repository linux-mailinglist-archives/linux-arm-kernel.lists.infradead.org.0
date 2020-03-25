Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4CF21926C6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 12:09:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zdh+HWcCCd9u8YRMxy+G78TkzIlf4auK1R2p335pKbA=; b=WZpQEfn66IOlw/
	84ZkjOQfls7acnQGFEaPlP16cMBiaWJZ4oDqh2OF/aDTUAcIw7Io0ieVGAn1rrJWE0DlPvMzcwseY
	VDw8d0yM393EvWZdxhGfbPuPX2XpssR0tioSLas/Tl25JG7l09vJ4qzHb12PQE4vYrGrhMJPve8C2
	7l+i1vC+55DFXppx0IEqGDhP4YtE/xk5XE794gS3KMkJ1zYsvH+rpiEstnrGMbZHQBwDD7QSK7Br5
	+EjJkwh20HKXXxqmKN8CIBce9w0HmnxMGAdodoQ1R+1SWSxGbASVAk5UeL8K3+QfQWIOaRUJ2dHx5
	DY7u6+sHBIMYyqMGnAEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH3uV-0004aH-01; Wed, 25 Mar 2020 11:09:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH3uJ-0004ZK-I5
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 11:09:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1C7F731B;
 Wed, 25 Mar 2020 04:09:11 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 60E6E3F71F;
 Wed, 25 Mar 2020 04:09:10 -0700 (PDT)
Date: Wed, 25 Mar 2020 11:09:03 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] arm64: head: Convert install_el2_stub to SYM_INNER_LABEL
Message-ID: <20200325110903.GL3901@mbp>
References: <20200323123336.8728-1-broonie@kernel.org>
 <CAKv+Gu-wX+gN+2YiK+PmpLe=+wKBE08yXGDNpwrgcS+eS6hX4A@mail.gmail.com>
 <20200324183354.GI7039@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324183354.GI7039@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_040911_645462_64FD0F82 
X-CRM114-Status: GOOD (  10.65  )
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
Cc: Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 24, 2020 at 06:33:54PM +0000, Mark Brown wrote:
> On Tue, Mar 24, 2020 at 07:19:56PM +0100, Ard Biesheuvel wrote:
> > On Mon, 23 Mar 2020 at 13:33, Mark Brown <broonie@kernel.org> wrote:
> 
> > > -install_el2_stub:
> > > +SYM_INNER_LABEL(install_el2_stub, SYM_L_GLOBAL)
> 
> > Shouldn't this be SYM_L_LOCAL?
> 
> I think it could be, yes.

I fixed up the patch locally.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
