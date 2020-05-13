Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D83E31D22DF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 01:19:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FTwZ9j/ZQUs2i2C2KO7/7ywSuesOU0fr1WDISFqlsHI=; b=uhanJdSAHYN9Gw
	C4I9OpUPHW2n57OcGF4rXZh1KxXMl43ExBCkgOf8laV1TzoT+5Ez7tmeLdV7TSPbkgxC2uoKmbAHc
	MRBPYzs/AAWQJZlx0bX7EWFR/9Qctel9kk6KhEz4bj/YDIW92UD+RfvEUhbha96rZSGlPI918TcO2
	rOEa5bZi0zKhW3sZPlwydlKFbJmQaFCIkpFQWJAOyS+/4einNleCUr+vYmmYy6lGtzGmQw6DZxWsz
	FtcBai9YiNxUap3ZuVcBK+g8orHisF+a+0oHwjc8gn2iu1aUz+4Z1fAJaXzAmaCS2hlOvZOZMZizl
	J5kscaU1cAX3Ixwxq0Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ0eo-0005TE-5X; Wed, 13 May 2020 23:19:22 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ0ee-0005SB-RB
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 23:19:14 +0000
Received: by mail-qt1-x844.google.com with SMTP id c24so1369327qtw.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 16:19:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NzQVGwBy98yyKuXlmBNvWD4o+eLGqCxtgVxPgKw63Do=;
 b=d91N+o6UMzxTsz1St1Hu66m8IAaS2jE1/WCro4T3FXi2sc/4AHW4ODcGwfEnvDzHjj
 /PKKX5txh+2AdFLEuJtnkNNG0IRWzECKUG3SGfFwrIcEdqW19nhO2jFicMOUMvz6T+C1
 tNR/mldiveHPbJerAbyvqheERVBHSeb8Q1lg0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NzQVGwBy98yyKuXlmBNvWD4o+eLGqCxtgVxPgKw63Do=;
 b=tRiKTOHQG0ab3cAeXs1svKbLpsZZdgUQdPicc2GwNkmrzmNJS3GkEUkTA6vzT2bD6e
 DU1gQXdPHGSIBqafs+x0NduwHz3zq54fCmFgqACrUoJMkxQ2nul750hXZcjgANY6v5uZ
 cIN5LHNZQK0TCm4ELAWIUTJqiApYAYAhezrUKmy1N9ltFgFSga4LrIPK23hK/UmHo3HU
 8lAynHoZagGMY736d4gCJncYbi7xf+SUyn1CKvADA0lyoid8TfB2OGl98+1rcAgUuuID
 Eg4HLF+8JlzlfilC0HPqNs3Wm0NsJN1t29ah9hRaYCgBm8C94kEv0lqawV8BibPDLCF6
 N4kA==
X-Gm-Message-State: AOAM531R8/S8edMzdJtMKN9aCFXX2AUWTYC6VE76K49fGKo8zg30ygRR
 XJzXOa1dsOJccRiWt3qcljW9I/IXK2w=
X-Google-Smtp-Source: ABdhPJwGWt6QmZzo/z2skpRbyLwLBDW7XlZ3mo5mPBX0s9MR1FVbNARflXC1FE3zmmkRxU0lsHCbgA==
X-Received: by 2002:ac8:1090:: with SMTP id a16mr1608974qtj.181.1589411946775; 
 Wed, 13 May 2020 16:19:06 -0700 (PDT)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com.
 [209.85.219.45])
 by smtp.gmail.com with ESMTPSA id k2sm1115691qta.39.2020.05.13.16.19.06
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 16:19:06 -0700 (PDT)
Received: by mail-qv1-f45.google.com with SMTP id z9so789592qvi.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 16:19:06 -0700 (PDT)
X-Received: by 2002:a67:bd07:: with SMTP id y7mr1357400vsq.109.1589411542393; 
 Wed, 13 May 2020 16:12:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200507200850.60646-1-dianders@chromium.org>
 <20200507130644.v4.5.I22067ad43e77ddfd4b64c2d49030628480f9e8d9@changeid>
In-Reply-To: <20200507130644.v4.5.I22067ad43e77ddfd4b64c2d49030628480f9e8d9@changeid>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 13 May 2020 16:12:11 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wq1bnaMnUa09GZzQq5rZeQHUM9WAmxED3foc_Rjdsg2A@mail.gmail.com>
Message-ID: <CAD=FV=Wq1bnaMnUa09GZzQq5rZeQHUM9WAmxED3foc_Rjdsg2A@mail.gmail.com>
Subject: Re: [PATCH v4 05/12] arm64: Add call_break_hook() to early_brk64()
 for early kgdb
To: Jason Wessel <jason.wessel@windriver.com>, 
 Daniel Thompson <daniel.thompson@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_161912_879231_189F7FEA 
X-CRM114-Status: GOOD (  19.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Will Deacon <will@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Frank Rowand <frowand.list@gmail.com>, jinho lim <jordan.lim@samsung.com>,
 Andy Gross <agross@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-serial@vger.kernel.org,
 kgdb-bugreport@lists.sourceforge.net, Dave Martin <Dave.Martin@arm.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Jiri Slaby <jslaby@suse.com>,
 Alexios Zavras <alexios.zavras@intel.com>, bp@alien8.de,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Allison Randal <allison@lohutok.net>, Sumit Garg <sumit.garg@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morse <james.morse@arm.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, Enrico Weigelt <info@metux.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thu, May 7, 2020 at 1:09 PM Douglas Anderson <dianders@chromium.org> wrote:
>
> In order to make early kgdb work properly we need early_brk64() to be
> able to call into it.  This is as easy as adding a call into
> call_break_hook() just like we do later in the normal brk_handler().
>
> Once we do this we can let kgdb know that it can break into the
> debugger a little earlier (specifically when parsing early_param's).
>
> NOTE: without this patch it turns out that arm64 can't do breakpoints
> even at dbg_late_init(), so if we decide something about this patch is
> wrong we might need to move dbg_late_init() a little later.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>
> ---
>
> Changes in v4:
> - Add "if KGDB" to "select ARCH_HAS_EARLY_DEBUG" in Kconfig.
>
> Changes in v3:
> - Change boolean weak function to KConfig.
>
> Changes in v2: None
>
>  arch/arm64/Kconfig                      | 1 +
>  arch/arm64/include/asm/debug-monitors.h | 2 ++
>  arch/arm64/kernel/debug-monitors.c      | 2 +-
>  arch/arm64/kernel/traps.c               | 3 +++
>  4 files changed, 7 insertions(+), 1 deletion(-)

As discussed in the replies to the v3 version of this patch [1], I
have posted a replacement patch for this one [2].  After the cut in
the replacement patch I talk about different ways it could land.
Hopefully that's not too confusing.  I can also re-spam everyone with
a v5 of the whole series if that makes it clearer.

[1] https://lore.kernel.org/r/20200428141218.v3.5.I22067ad43e77ddfd4b64c2d49030628480f9e8d9@changeid
[2] https://lore.kernel.org/r/20200513160501.1.I0b5edf030cc6ebef6ab4829f8867cdaea42485d8@changeid

-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
