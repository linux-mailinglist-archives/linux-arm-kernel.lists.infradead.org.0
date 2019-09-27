Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E106FC06B0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 15:52:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=keze5Av+qE0dutSprgpzenao+AY8m6btxkhu3kr/138=; b=mc7enzWHCIy/QZ
	Dye65TT2K0KgVg4vqB3ZryxJ4sdmQr8hP/d3+AalvZdd5UmjlRapuT4GHPwHyTlmOqot2icETOLUq
	whqXl/xlqM9AbrXBYgtKH1lJvMVrf3+vF4NICYiglyFRxjL6oQK/0BUCOCeIqXtEYMnlPHROiS3jK
	N/nZrQ+pmq3OeDqQPKdEHMoDl4FGPWt8QJtP/QHl1wBMyu0G9ltCcrbzK5RGyCcZ0HVyHNL8ret0Q
	AZlZY107EzVmcWg3ZzEhmgNXfpjyU02qn1Mv+HTD5fjcXzeGCnNw4Z4Ufp+i79XCGkGB3RRUxFaSH
	uWvmd9+OpEa6StmhvDrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDqfI-0002dl-CT; Fri, 27 Sep 2019 13:52:08 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDqf9-0002dE-64
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 13:52:00 +0000
Received: by mail-ed1-x543.google.com with SMTP id l21so2398149edr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 06:51:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MYE8qdyxFm0ztb5uuaHx4J1GkCFYinNZTY4Kl0LQPJQ=;
 b=BWDIEsNTfybjsDuclGNqx21aWXtFvBBmIT7mfAfsNewSbILfAi3zAYiJtWF+Zu1p/Q
 cmyENcgbJa61q0M6toYfr8wX8kwVtb6KBB1jC/9txh3tz556EV/YUKI/GW6hCG/SQIyL
 w33Ca4CxcGQa/VvVk8Zco2/tvLw7nEXksqMtB2l3brNHr+JkfAr9GfKdwABbdouT9vQ5
 AkjlMUWgj3cGLBnSqFXu3k0hNj+fdjtC6HNoDsa+Cla71mkGPc1gAazzoVAEqueMQrqr
 vJSNvPQfKYDYVZxrGpBsG1VSNlnBZyUMsG0EAj5li7mkSFIjx/vjC/rXmAn53rbfXQt1
 T1/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MYE8qdyxFm0ztb5uuaHx4J1GkCFYinNZTY4Kl0LQPJQ=;
 b=Ecb1QaXuHryHViziZAKayjAb56D3xycmgN4VZk8cD6LlNK5Eh/PMSPjYfqHKGoWysW
 I47NDshBfwoYF9uv6rjRwzA5VvHXLbrBu9cwnE9jnpnTrezYQGg2pfkcot0d6HZMHEos
 EcyhlDKMGkA3kb4k9uJyrE7YIh0LhAB0sJgw0dNeCJu0E3hmUiS/VTYrE0spHnMhkzpD
 fwWHw30edbCAK1WUgtvSjMHLrDMxJPMiTz2NKvodYZU2AWqMM1AjwFUuEkwhsbvazBMp
 kV0kTsB+AO5WFHA69FYE63yGGD5Zxh0SvgJqPi6PlA8gROubndrFZ5/1qPucRCdEiRht
 fUzA==
X-Gm-Message-State: APjAAAWkaZESMtRpkPPNDmlyJbgn1WySueu42eaM2qGeOW+T9zVvwi/s
 giHdxf6A9wXIRd6iSJr+MCqfgJW8RTtrY9p3CUcRNA==
X-Google-Smtp-Source: APXvYqxTh6F2mTH+sMfS5nE9IZzYKRDDa36nZNEP9qLcQ4guiE5X+LwTiyNuzVj8UJXdIhHVAq6vo8/EmzQOgiI8+QI=
X-Received: by 2002:a17:906:4e8f:: with SMTP id
 v15mr8223442eju.57.1569592315738; 
 Fri, 27 Sep 2019 06:51:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190920164249.6935-1-ja.kaisrlik@gmail.com>
In-Reply-To: <20190920164249.6935-1-ja.kaisrlik@gmail.com>
From: Jan Kaisrlik <ja.kaisrlik@gmail.com>
Date: Fri, 27 Sep 2019 15:51:44 +0200
Message-ID: <CAPnxhu4=CZ+EH76uubVdRrE4MLpiRqfjyD-yFn3doSn_ymE1-A@mail.gmail.com>
Subject: Re: [PATCH] arm64: update Kconfig to better handle CMDLINE
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_065159_249781_22FAA5CA 
X-CRM114-Status: GOOD (  15.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ja.kaisrlik[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: catalin.marinas@arm.com, will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+ linux-kernel


On Fri, Sep 20, 2019 at 6:43 PM <ja.kaisrlik@gmail.com> wrote:
>
> From: Jan Kaisrlik <ja.kaisrlik@gmail.com>
>
> Added a menu to choose how to CMDLINE will be handled. Config strings
> were copied from arm32 port.
>
> Signed-off-by: Jan Kaisrlik <ja.kaisrlik@gmail.com>
> ---
>  arch/arm64/Kconfig | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 3adcec05b1f6..b1dd948f9665 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1538,6 +1538,23 @@ config CMDLINE
>           entering them here. As a minimum, you should specify the the
>           root device (e.g. root=/dev/nfs).
>
> +choice
> +       prompt "Kernel command line type" if CMDLINE != ""
> +       default CMDLINE_FROM_BOOTLOADER
> +
> +config CMDLINE_FROM_BOOTLOADER
> +       bool "Use bootloader kernel arguments if available"
> +       help
> +         Uses the command-line options passed by the boot loader. If
> +         the boot loader doesn't provide any, the default kernel command
> +         string provided in CMDLINE will be used.
> +
> +config CMDLINE_EXTEND
> +       bool "Extend bootloader kernel arguments"
> +       help
> +         The command-line arguments provided by the boot loader will be
> +         appended to the default kernel command string.
> +
>  config CMDLINE_FORCE
>         bool "Always use the default kernel command string"
>         help
> @@ -1545,6 +1562,7 @@ config CMDLINE_FORCE
>           loader passes other arguments to the kernel.
>           This is useful if you cannot or don't want to change the
>           command-line options your boot loader passes to the kernel.
> +endchoice
>
>  config EFI_STUB
>         bool
> --
> 2.23.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
