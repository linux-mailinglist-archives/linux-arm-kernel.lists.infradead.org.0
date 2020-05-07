Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A3E1C8EF3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 16:33:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PoYwvSbdqyAnyzfzCEnZ5QnALAqC0m3hCSKmxy5XsOk=; b=MpE0D38pJbjQ3p
	EGBZNUCFLPd1NATvdBcui492n6O4r0GtR12GGITRf3u2B+k6pp9vTlvzbp2kLE3YQt6Fx9MY30PRY
	0TNx52oFObqAM6rBilJDkx476pwCLXERkVy7ml2CD7h6jm6OSxpc7DBk2n5uveGwHYgn3o6TQNfat
	jX1hnXIhRaxh4IK3fS3FTUA4UIXXvdUnP+mG5cnySHJAdueLIIlv08mfduYPjhMKXPfhh4mHy+yhq
	Um0RIXCevQPsOkbNvZ22M3mXWA+SYqw9KbTrZPHw67alw9ddsIF6WZa+MMJRM3sgb+IQE1Ndzg4Np
	wA8BlxOTsxznqb2TJr5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWhaq-00075H-W0; Thu, 07 May 2020 14:33:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWhak-00074H-HQ
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 14:33:39 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A7B822073A;
 Thu,  7 May 2020 14:33:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588862018;
 bh=gS5K6uBeqmAnog4nX3dKjqYA8fArLwjZtxMIQ7sUGek=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dIe8iTueE4kje0EI0zxWsGx9yJC3pYoNRMc7MiDM5hy6hb+fTEB3JN2D3JKPWFbgU
 tk9AcWG6GYUjkPJKodCUuMZwUkTO7q0GLd1JVeKMU3h71PabsudG3OJQYh7XLmUVhl
 8l/Q5MbeF3RgLh19w81Su9Ct42QRZv65+8xkW9zM=
Date: Thu, 7 May 2020 15:33:33 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v3 00/11] arm64: BTI kernel and vDSO support
Message-ID: <20200507143332.GB1422@willie-the-truck>
References: <20200506195138.22086-1-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506195138.22086-1-broonie@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_073338_597158_EF9F9E69 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kees Cook <keescook@chromium.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 08:51:27PM +0100, Mark Brown wrote:
> This patch series adds support for protecting the kernel and vDSO with
> BTI including code compiled with the BPF JIT at runtime.
> 
> We build the kernel with annotations for BTI and then map the kernel
> with GP based on the support on the boot CPU, rejecting secondaries that
> don't have BTI support. If there is a need to handle big.LITTLE systems
> with mismatched BTI support we will have to revisit this, currently no
> such implementations exist.
> 
> This series depends on several branches in the arm64 tree:
> 
>  - for-next/bti-user
>  - for-next/insn
>  - for-next/asm
> 
> v3:
>  - Add a patch adding a comment about why we enable leaf support for
>    PAC.
>  - Fix build of the 32 bit vDSO.
>  - Refactor the macro for emitting the ELF note for BTI code so that
>    the flags are defined separately in order to make it easier to
>    add handling for any future users.

Bugger, I'm still getting warnings (clang 11.0.1), but from an allmodconfig
build now:

  warning: some functions compiled with BTI and some compiled without BTI
  warning: not setting BTI in feature flags

(repeated many, many times).

I'll try to get you some more info.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
