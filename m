Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3091918C0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 19:20:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QXIP2ZXTemt2qNsn1sxKc+5KIwXQ3d8uvTWR6+DAb+4=; b=Dgj9lqxYx0jo78
	b2sSuRsX7RPVjQcUp1n9VGg/VQ3p0YNcTtjqpceTKgMGw3h8jftwVjTYJezzVANqcJ3k7XJXIyGgP
	MtEpF7vHa5cRIJ2pLlilHICMek6HipPysanS3AwkBWEe+O+YHnztzso33Ohw8EmN6eevfZ+kFjmTo
	IBLXg5Xl6Eh7tvW35YTTa8Dp9VJKT/tB7bLCbFF3pveoYYvvHFsxvTv9QTtDjyKEugnYyloDruQeh
	f8nqtAFYvdtuWLS2ARAvI08kkt2iN1FD52zE4a+YzJ9pIQSv441EoraYOe4PPCuwp6gtMQ5ydlnvV
	G6R/fjeo/+5Iw7VTisgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGo9c-0006Jz-Hj; Tue, 24 Mar 2020 18:19:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGo9E-0006J9-JZ
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 18:19:33 +0000
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7B67720714
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 18:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585073969;
 bh=NcM/onMreDLam4PvJlwH4W1pLKj1Wny5DcyrX3KbBFc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=xnVJ2XZOm+X8LXO+wqmx2hhSeVjOVuCybCCaFKvtyFeH+tPiD1lBrIybcJQMLa/zb
 8iwW5JPrgOQPSE//mbQZmTQXYhKJFYLs49scVKiz94MO1bvRsRj1VgwHduyhCQV4Xq
 Q0nHXmGp5xCSRYiBuxHlZOTJSZK7Gx9r3oA10RWM=
Received: by mail-wr1-f44.google.com with SMTP id w10so22795072wrm.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 11:19:29 -0700 (PDT)
X-Gm-Message-State: ANhLgQ34j0FqYMqpDeA1Nbemu6ycSXs51ETpBp4RuCHwzSUeLfaK4V2u
 YjncNQf7ubUjlhXlvP4Bi+Y6FdcBH7gxfAnxkPCBJQ==
X-Google-Smtp-Source: ADFU+vt2VXI8WSRdQDeJpnk3ZFnlIGkJ+DPPkks1ZUGrK5oqxa0xBW64g/kDN+3gXZ5AJkbV4GlcoGJcMG3T/5ePTAY=
X-Received: by 2002:a5d:4fcf:: with SMTP id h15mr31882093wrw.262.1585073967934; 
 Tue, 24 Mar 2020 11:19:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200323191807.3864-1-broonie@kernel.org>
In-Reply-To: <20200323191807.3864-1-broonie@kernel.org>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 24 Mar 2020 19:19:17 +0100
X-Gmail-Original-Message-ID: <CAKv+Gu_UW6KV4My9GSDCHmvqm44Krg+B4efjK_ta2MQ+A2cJNg@mail.gmail.com>
Message-ID: <CAKv+Gu_UW6KV4My9GSDCHmvqm44Krg+B4efjK_ta2MQ+A2cJNg@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: lib: Use .arch_extension
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_111932_675073_F5B5AD7D 
X-CRM114-Status: GOOD (  18.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Eric Biggers <ebiggers@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 23 Mar 2020 at 20:18, Mark Brown <broonie@kernel.org> wrote:
>
> Currently when implementing optimised assembler routines using
> architecture extensions we override the base architecture along with
> enabling the new extensions, causing problems for in kernel BTI support
> which needs to raise the base architecture level for assembler files in
> order to generate BTI landing pads.  We did this due to a lack of
> support for the .arch_extension gas feature in older versions of the
> clang built in assembler but since current versions of clang now have
> support for .arch_extension we can use that.

This is not 100% accurate. Support for .arch_extension was added to
GAS/aarch64 much later, so we should at least double check that it
works on the oldest binutils that we do support.

>
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>  arch/arm64/lib/crc32.S | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/lib/crc32.S b/arch/arm64/lib/crc32.S
> index 243e107e9896..7420dea6afc1 100644
> --- a/arch/arm64/lib/crc32.S
> +++ b/arch/arm64/lib/crc32.S
> @@ -9,7 +9,7 @@
>  #include <asm/alternative.h>
>  #include <asm/assembler.h>
>
> -       .cpu            generic+crc
> +       .arch_extension crc
>
>         .macro          __crc32, c
>         cmp             x2, #16
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
