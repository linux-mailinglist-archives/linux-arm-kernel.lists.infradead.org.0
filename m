Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B293F0DFB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 05:46:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s9ZHUg7lkXIpt2schpXFYSptgnuUxuWpdPWAQ0oqrP4=; b=dDiolI+qjayozd
	akujkFyFw172j8lECqlc302RbHn9+zEsFgX/l25CDu2tx0bPApjS4iB58Sbqn3gEjkD/UZBTF4kZ3
	FUW/Qm6zfhugCnUMvuCoo9+vUmgv80We87HwkKcWoEVuOL72AkbmCocSOQROSeTR7sdcZVZkS46X0
	hlvlpTXwZKo6Vfw4jukQGgdN0nqjWYxdCk/phrRv8KnLls5BaUVFjZyvh71NbcSYZy3kLRJdpWbQ/
	gmA0MFMK4G67DzEtVFR6I6zY/1RW/iwcLLq/2Nbfk/RfuDLhn4skbRFrY7qxnRPZU933TCeP+Pg2m
	ZC04jwTZR3X1V49aWKFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSDCz-00029u-IM; Wed, 06 Nov 2019 04:46:17 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSDCn-00028o-Uo
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 04:46:07 +0000
Received: by mail-lj1-x244.google.com with SMTP id g3so18331736ljl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 20:46:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gJMPHhKHFX8udqWNx4esBxs7+6CjmiT3KwNBEYCiDu4=;
 b=AGaoiWuH4Fsah/5Mrnysi1CUGLJA95+VACk5fohzuSyNRGRqjFWx/bzNkkjPzfXmn4
 Y56Mfrcr6KlRajYlG8J7KWJAzdar9H1F0kQSjY+NkGPXkylSOBzxNGc8EYAurRfcmB6W
 43XMW6wWO+KuWZ1x2OgcbRKsHTZipTg9iq1cqcSeYN66xeR7uy8Njsi51KVfJz+5ptjW
 6D0z5JCz3b+KpM0c+b+GyEa3DW++SaLoFMLmFNX+jRCwBR7lqHsH0/t1F5oUENfxCUfW
 SzqAF/JT6aUsvr6p7H9ff6QpT6lsCCcdg5dNgHRCLTaRIyLqKDptL5tfjfXLbtrBDfPD
 2HNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gJMPHhKHFX8udqWNx4esBxs7+6CjmiT3KwNBEYCiDu4=;
 b=IftJQmHBrlnrVNcUtQU/3TX2SEPM2HU49xTKIH6W+9awjbrHpLbjGGqXZExclpyd9Y
 m6x1fUk3xy+wUBxGD/grrtIBOlvTt24n1UnkgTErc5YuMkEKoc6gEbHVNuGKkZnY7f/1
 bdF3pGq/yfP2MsBX2+vzRtlIu9oZC3VLm4uXYCL6F4gt+0vpOsJQ6qoZc6129iHwDp/f
 +fMWL7QVJpM0UwXcD6ViKYhiV0sINiHq0uA3otRDJn3tk49EzLjX7FyrxEHbcM4FSALb
 mQJyOPzrzm8eEwPMjGc00H5wlVhmcx0TNXaPrioNerpu/MSNzweGNnUz4it6yjHAe2j5
 U57w==
X-Gm-Message-State: APjAAAWtBq3VkYJz3R+e3b3XSdRv103/WOgAPB0o9hrl7/K7pvhuW0GY
 AIQeQkoM4otQRyWG9w021YruZfBOHIO6QqsHD0U=
X-Google-Smtp-Source: APXvYqzoj6tUsrC/BVFopD/SaOTrIMULCeKMkv2c1g5ElpPga9joMdtHCw+m/HoGVDnKOKrvi8XqjS+oHuccO/VR5HI=
X-Received: by 2002:a2e:2419:: with SMTP id k25mr252654ljk.59.1573015560588;
 Tue, 05 Nov 2019 20:46:00 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191105235608.107702-1-samitolvanen@google.com>
 <20191105235608.107702-12-samitolvanen@google.com>
In-Reply-To: <20191105235608.107702-12-samitolvanen@google.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 6 Nov 2019 05:45:49 +0100
Message-ID: <CANiq72mZC-G_R_RJjapZS+NvkQcrjdiri0NyHUgesFzUpe-MDg@mail.gmail.com>
Subject: Re: [PATCH v5 11/14] arm64: efi: restore x18 if it was corrupted
To: Sami Tolvanen <samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_204605_993673_966EEB0F 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (miguel.ojeda.sandonis[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 6, 2019 at 12:56 AM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> If we detect a corrupted x18 and SCS is enabled, restore the register
> before jumping back to instrumented code. This is safe, because the
> wrapper is called with preemption disabled and a separate shadow stack
> is used for interrupt handling.

In case you do v6: I think putting the explanation about why this is
safe in the existing comment would be best given it is justifying a
subtlety of the code rather than the change itself. Ard?

Cheers,
Miguel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
