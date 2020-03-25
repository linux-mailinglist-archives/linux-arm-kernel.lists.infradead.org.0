Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B34192774
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 12:45:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ubYkhz+oDsAEwZFY3aC0QYfiur2PQRsbz60hX4t+8/Y=; b=U40sjllU+nikSt
	Aosg8WNNKfmMF9BBt+9m4wmNl5GUryl+FdDQEEIkPjdIESAZGMv6cR8qRwM3dA/jMk5qjexBlWKXP
	f+G7Y56qrAv2xgAdxM0ObeBZE0/BQ1JSDy/FHPnF6WLjCPIcCKhwkQHowlO2WfBvE9WmdvG6WoNSj
	Lv411QM3XLyKLCdZE7VTiNQkPoZrCD0Sky6A0YRcE35mFEU4MVGklf8lJRcsrATsZ5AtcLrJJN3O6
	1khcX4NHfzRzYD39/K6QmzklgFlvHuCJRmK6ooruh3yybn1T9WdWIszHtYOOVzwiYEb4jZibdk/9T
	byEZrK+v3SXMIHQBtnvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH4Tf-0004Mv-9W; Wed, 25 Mar 2020 11:45:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH4TL-0004HX-S7
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 11:45:25 +0000
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com
 [209.85.166.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 819742078A
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 11:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585136722;
 bh=feUfzVqMn/cgtqqVh3lV2rv2NlCW5TbLBBgFLBvyE1A=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=PLp3qnAwb8amqv0P0bKEFsufSmvqhwWehGPGhIDseAV6mVlS6vxqn2EqiCh1Go5sa
 YAIAjk93N8l/y98GZ0XUNIyaIHRjZIh7dOgT7kGSlAVAfcoSQTRSLIxOgVK1n5Z0P3
 xr2+ciJJZz+FsxwFv9QCiurfNGUsWd/1BxdTLxRs=
Received: by mail-io1-f52.google.com with SMTP id q9so1897452iod.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 04:45:22 -0700 (PDT)
X-Gm-Message-State: ANhLgQ25cv/n6s476iJWoSe9SSBuER2B8qDi4G3O9yOxdT4yLrhVpbSu
 oYNHa5JxhN2NnylaaPlqqKgnJdOXBAzkUcWckHg=
X-Google-Smtp-Source: ADFU+vsgn5bSaiqX53PNf/K2+W1ldzxeeGFCyDOP7aQcyvzAirF/46cbqggUvktMRaBAUXCbyx3LmgaoJyyYiNzjQls=
X-Received: by 2002:a05:6602:2546:: with SMTP id
 j6mr2450622ioe.171.1585136721872; 
 Wed, 25 Mar 2020 04:45:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200325114110.23491-1-broonie@kernel.org>
In-Reply-To: <20200325114110.23491-1-broonie@kernel.org>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 25 Mar 2020 12:45:11 +0100
X-Gmail-Original-Message-ID: <CAMj1kXH=g5N4ZtnZeX5N8hf9cnWVam4Htnov6qAmQwD58Wp73Q@mail.gmail.com>
Message-ID: <CAMj1kXH=g5N4ZtnZeX5N8hf9cnWVam4Htnov6qAmQwD58Wp73Q@mail.gmail.com>
Subject: Re: [PATCH 0/3] arm64: Open code .arch_extension
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_044523_994523_25DAB87F 
X-CRM114-Status: GOOD (  18.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Eric Biggers <ebiggers@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 25 Mar 2020 at 12:41, Mark Brown <broonie@kernel.org> wrote:
>
> Currently several assembler files override the default architecture to
> enable extensions in order to allow them to implement optimised routines
> for systems with those extensions. Since inserting BTI landing pads into
> assembler functions will require us to change the default architecture we
> need a way to enable extensions without hard coding the architecture.
> The assembler has the .arch_extension feature but this was introduced
> for arm64 in gas 2.26 which is too modern for us to rely on it.
>
> We could just update the base architecture used by these assembler files
> but this would mean the assembler would no longer catch attempts to use
> newer instructions so instead introduce a macro which sets the default
> architecture centrally.  Doing this will also make our use of .arch and
> .cpu to select the base architecture more consistent.
>
> Mark Brown (3):
>   arm64: asm: Provide macro to control enabling architecture extensions
>   arm64: lib: Use ARM64_EXTENSIONS()
>   arm64: crypto: Use ARM64_EXTENSIONS()
>

Hi Mark,

I don't think this is the right fix. What is wrong with keeping these
.cpu and .arch directives in the .S files, and simply make
SYM_FUNC_START() expand to something that includes .arch_extension pac
or .arch_extension bti when needed? That way, we only use
.arch_extension when we know the assembler supports it (given that
.arch_extension support itself should predate BTI or PAC support in
GAS or Clang)



>  arch/arm64/crypto/aes-ce-ccm-core.S   | 3 ++-
>  arch/arm64/crypto/aes-ce-core.S       | 2 +-
>  arch/arm64/crypto/aes-ce.S            | 2 +-
>  arch/arm64/crypto/crct10dif-ce-core.S | 3 ++-
>  arch/arm64/crypto/ghash-ce-core.S     | 3 ++-
>  arch/arm64/crypto/sha1-ce-core.S      | 3 ++-
>  arch/arm64/crypto/sha2-ce-core.S      | 3 ++-
>  arch/arm64/include/asm/linkage.h      | 6 ++++++
>  arch/arm64/lib/crc32.S                | 2 +-
>  9 files changed, 19 insertions(+), 8 deletions(-)
>
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
