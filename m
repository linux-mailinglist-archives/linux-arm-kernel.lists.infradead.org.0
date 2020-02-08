Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D8E31563C1
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 11:06:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ar0RWPN5oKPN1fHkpi/ddt3Qo48jzalfJLDjU6WfRM=; b=C1rK+YB/toDAxa
	GV74p/frsdZwskeXuRNWSHo80keUVi7y6YFZi/S/acUTLJa4cQyc7REUYAZ87vI5DiadWz48ESUiB
	hVOuiA88U2CI7a2a8lwCsXyi8YMCpEBZ0VssAYXqDBhQfVlHLP8glUFcrmagKxjO+BzhyzCJgAc+v
	1Tvw1BxKQU9kfbVZ/wCETc8UWLEzflzAFpNK8+wCUGzb2plj2zb0elcWtSYkC54zcstALujjpwzbd
	SxkX0ZND5yN649L9e6QDqlszZ+mtDhi0hewI7nPMAfrybjPXB0NHJzEICAh74evNljqS0tMZWDAAH
	PNakJYlHwG7FT0d3eIdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0Mzv-0003ef-F6; Sat, 08 Feb 2020 10:05:59 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0Mzp-0003e7-2q
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Feb 2020 10:05:54 +0000
Received: by mail-pl1-x642.google.com with SMTP id d9so780401plo.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 08 Feb 2020 02:05:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hHm9ScY1W7HbxvW6Q4kkAHk83yXu8ldB5vCdWx34dho=;
 b=JosfX2NhucfWy8tdHRjwCtP3qFTnjdpdENc56F16apcbSS4qDozXpdczm0NtHOKJQ+
 uI98SLwFXqqmeerrFLWR+Q0m2qONO1I5TGyzpIAs6Dup1NA6uKs2+yOpMIrKn77GuU24
 lZnjl4X0qDKfqAUAuR2wQIbFW8k2knOo7zU/ls4Pz/36+M/kgJk5M/BlXDM6mHiiKwI6
 C67MbnXHSSTxjLkmgwZ6II8Fw7B+7SayhxPm4HHf56NoBRL6sf4E4Vcm5Nsu+hUzog5D
 geD91XFDS6ctD6sT+DKJLg/90N2LaQEnh2tfAZ6jpsYnUlrX4dd+tTJ456fkp44DZPTm
 Mu3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hHm9ScY1W7HbxvW6Q4kkAHk83yXu8ldB5vCdWx34dho=;
 b=kMGcZIkbLAQIrkDykJqbZwIV1sisDdx4Y5RCE0HBda99X0v9iSA/eaWL4pQvFJq2Xt
 OrudNnPgRgd1cX5cUeuaU9R+S8NRGx+zy4rHRkF19tQJTNti1+8pbsgkuVwzK6aaZ6IN
 CIQMA80HipAeXWjOfVivAy1CE7ZYbIUaI2XY8TX1je3o2+FiXhSl14e7eKsFB+rIL6c2
 rfUxj0KnG7jPfsDsqFW3Gz/sUH7eKGM82dvirmAAtJOWtB0lVKW3e08sdphyINpwvPyh
 x47KBQuOuWbjuZKGbBigFJi7D0b84x1stQor2W6ydrKXp606LSZfRdSSXCKB5tNNEcct
 y1rA==
X-Gm-Message-State: APjAAAUNXcHpWt+Tmy0TI5a043HFljXj87mClN10N3p63XrC9eS9EAie
 fb4jK3Qskz6FQGHPI8rIn5o4Ch7uvKRAAmxSWJpzZw==
X-Google-Smtp-Source: APXvYqwpSV1P/sXecoyEQnCNmPDZ7xFUP2gfsxGiywdF3N45t/9B9IoeSS9XXyDAVpaN8bquhMmhdAYy4SesweE+eyE=
X-Received: by 2002:a17:90a:3745:: with SMTP id
 u63mr9116235pjb.123.1581156351972; 
 Sat, 08 Feb 2020 02:05:51 -0800 (PST)
MIME-Version: 1.0
References: <202002080058.FD1DDB1@keescook>
In-Reply-To: <202002080058.FD1DDB1@keescook>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Sat, 8 Feb 2020 10:05:40 +0000
Message-ID: <CAKwvOdm=r8BK62QRqhpyek56rMv8fEKmT+=uJ--2pbo49RBg3w@mail.gmail.com>
Subject: Re: [PATCH] ARM: Remove unused .fixup section in boot stub
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200208_020553_125167_B43D151C 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nicolas Pitre <nico@fluxnic.net>,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Manoj Gupta <manojgupta@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Feb 8, 2020 at 10:04 AM Kees Cook <keescook@chromium.org> wrote:
>
> The boot stub does not emit a .fixup section at all anymore, so remove
> it.
>
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Link: https://lore.kernel.org/lkml/CAKwvOdnRhx=SgtcUCyX2ZOGATM8OzG6hSOY9wGQZcwtp+P5WBQ@mail.gmail.com
> Signed-off-by: Kees Cook <keescook@chromium.org>

thanks for the patch!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  arch/arm/boot/compressed/vmlinux.lds.S | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/arch/arm/boot/compressed/vmlinux.lds.S b/arch/arm/boot/compressed/vmlinux.lds.S
> index fc7ed03d8b93..b247f399de71 100644
> --- a/arch/arm/boot/compressed/vmlinux.lds.S
> +++ b/arch/arm/boot/compressed/vmlinux.lds.S
> @@ -36,7 +36,6 @@ SECTIONS
>      *(.start)
>      *(.text)
>      *(.text.*)
> -    *(.fixup)
>      *(.gnu.warning)
>      *(.glue_7t)
>      *(.glue_7)
> --
> 2.20.1
>
>
> --
> Kees Cook



-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
