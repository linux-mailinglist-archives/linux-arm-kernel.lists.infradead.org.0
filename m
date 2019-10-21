Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B22B7DF829
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 00:43:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5F7uYJOxDwhkX+agR4YADn9tfLppV7zg5lum9tSnoak=; b=dCVcOAuGiNyZ5b
	cuUbb6lBaSTVtoTFih6t6bX4qoV97/Qehc7lYaNfvyUWQUDHGQMGy9nRshrLaL03z1YB5sqoZzHyS
	9N2j8rICK6HIa5CmLKT1TpTv/ZY+cvEbHqCqllt2GsmII6SBe73gFIFyTxxy8BrM8UUGzYVGSc1i8
	3oNJc9ycywUPP1GsLXucbl/4UwDzF6RuxwmjjY+rQ+sueLyDCoA69yntP6g+2hsI+bnl1X3Mt4cKD
	Imro66Tic+tqZ0/xeSacaC6ZGHsgWbTrq5YTpnctdNwTjoItPdExlUPxmYRsOBaju4HkfzhLgypfU
	paLHSXyC+xqRxNWEmVwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMgOo-00051W-Kf; Mon, 21 Oct 2019 22:43:38 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMgOf-00050u-VT
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 22:43:31 +0000
Received: by mail-vs1-xe42.google.com with SMTP id l2so10009964vsr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 15:43:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=a8E0A8Vlgzb4xSRYYj/bS6TXPUSZill0B9wa3qYYw0E=;
 b=b7OnnKIICEZMVXFl1NmYOdDcFZHXchQiF9AA/1N5pJuawnuvHkVE1IlsM/lRRh2pOy
 +tASGs8d3rjxlFCky/tFGjrZodoX0p4Deov9tvP++w+7DeZr8MYEjdMkf7sAhwlH6Gxc
 WJv6o+CSvqzoTlGP8vtZanFkkIcmQzBroXGREgjwNEhr/HuPvHIR+xU/UJcSYgDti2V1
 r1cQGVXNTkoPdaT2rZPVCTE/vqwrjXU7v+mianqUEVDhMJMb0ii90mYChlbeJqqrrVsO
 xszro/NyKQZOLCMnYcBtQPbBwGcEqBHnQ5xmgMZkhV8tOojOjuh3cxC3jt2Py6yycBJU
 fm5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a8E0A8Vlgzb4xSRYYj/bS6TXPUSZill0B9wa3qYYw0E=;
 b=m+ajaIU2t8E0UpwZcRasLPfXt+WOTNbqI4HsxJW/tkWjdmalLfLdsVcV7gPWwb5L0P
 WHDJPI8hOXkmqzj9+PMkV64m0RAaMOC+pVX5h5NyqK5bqGKPlNXwI5rbn35JtCzU6TjW
 m+hsiuDb1BU/Wq6OidEh6fcwIjx5cTa2LeVqLIgLFNU36wl8ZKCxa5puQKg4OPGZ3si+
 iVNwCYZGWUnnPp1z+uIIVJQBer2OnuX4/bvBWSM6K1+jTYdMrNrNIsMh19r7Xp9kjG17
 wZg5AyNYbpsWbMmTfLHKU7dw0ZGB5CBdw8rlFkgrPvLNfK/PoJ/VzzUCDuMnNlvSd3ze
 NLsg==
X-Gm-Message-State: APjAAAXC3DtUAzlz+Iz+GV/IZ9kNtgiz6XMaslUYnV8njgN0ZNN0e0J4
 12P1KzesQ5+nnvvTNX04+w/ddo3K0OLoyv2Hse3vxg==
X-Google-Smtp-Source: APXvYqxm3g+B4XpEPIU+7n7e+ETZjean8RmHMKds1LlOCp+Q7indJHinK9NpFNA5K8TZ8NnejNJPfqBCKWSQ8YgLxPA=
X-Received: by 2002:a67:fb44:: with SMTP id e4mr113225vsr.112.1571697806489;
 Mon, 21 Oct 2019 15:43:26 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-14-samitolvanen@google.com>
 <20191021165649.GE56589@lakrids.cambridge.arm.com>
In-Reply-To: <20191021165649.GE56589@lakrids.cambridge.arm.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Mon, 21 Oct 2019 15:43:14 -0700
Message-ID: <CABCJKucm2ETxe2dgJhb4Ruzq72psFMGsx=0D6TVnJ-_DL2FgfA@mail.gmail.com>
Subject: Re: [PATCH 13/18] arm64: preserve x18 when CPU is suspended
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_154330_037642_944F3C7C 
X-CRM114-Status: UNSURE (   7.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 9:56 AM Mark Rutland <mark.rutland@arm.com> wrote:
> This should have a corresponding change to cpu_suspend_ctx in
> <asm/suspend.h>. Otherwise we're corrupting a portion of the stack.

Ugh, correct. I'll fix this in the next version. Thanks.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
