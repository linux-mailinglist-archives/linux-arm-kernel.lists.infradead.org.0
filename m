Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A76DB1C03B6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 19:19:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AD/ed+55eqjNrQpBHvgo6fWx5URl9xVeIbFHw3O7lT8=; b=gRDk7kOB8Tn6rm
	ewKIhdwde0EFFIqvIcroQbj57Rd+GbX2e6YI+JftJdb3SmHUEquyidN12btF/pf2V9JgumA10UKN3
	jfTv9WHZGRsBgH95qhXiyV21TiVYmfgtS1FTxJ3WAdaB1YyfucnW1AjFxj/2JwBQeE8Y7wbQAXrfg
	RXVxhNDr/txqt/rQo6ALoWc9cxRWRxLClTKrP/SUq86semzteISCQxxvvTJzVGBBgzN+FGmoym6Y0
	HaCc8gfdA4dZDZ8SfJG+tOAJBOL50KcuYXzYlgSqORmEyUFMGM5JiRBtA8WKADPIz51TetOTt14Sb
	L7Yp37YTjn9f78FwdNVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUCpw-000339-Ll; Thu, 30 Apr 2020 17:19:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUCpi-00031Y-RT
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 17:18:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0D636101E;
 Thu, 30 Apr 2020 10:18:46 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 377753F73D;
 Thu, 30 Apr 2020 10:18:45 -0700 (PDT)
Date: Thu, 30 Apr 2020 18:18:43 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 00/10] arm64: BTI kernel and vDSO support
Message-ID: <20200430171842.GL2717@gaia>
References: <20200429211641.9279-1-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429211641.9279-1-broonie@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_101846_933692_CD008B5F 
X-CRM114-Status: GOOD (  16.80  )
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
Cc: Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Kees Cook <keescook@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 10:16:31PM +0100, Mark Brown wrote:
> We build the kernel with annotations for BTI and then map the kernel
> with GP based on the support on the boot CPU, rejecting secondaries that
> don't have BTI support. If there is a need to handle big.LITTLE systems
> with mismatched BTI support we will have to revisit this, currently no
> such implementations exist.

It's fine by me to live with this assumption.

> I'm currently finalizing testing of the BPF support, the in-kernel
> test_bpf tests run cleanly.
> 
> This series depends on:
> 
>  - for-next/bti in the arm64 tree
>  - The series "arm64: Finish up assembler annotation modernisation"
>  - The series "arm64: Make NOP handling a whitelist"
> 
> There is some discussion between Catalin and Will about the use of a
> separate Kconfig option for this, I've left the separate option for now.

Leave them separated, we may do the same for PAC.

We could allow the vdso to use BTI while the kernel option is disabled
but I don't think it's worth the hassle.

> v2:
>  - Enable support for building with GCC version 10 and later, a fix
>    for BTI code generation is being backported to GCC 9 but is not yet
>    available.

Do you have a link to a GCC commit or bugzilla? (for future reference,
no need to update the patch).

The series looks fine to me.

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
