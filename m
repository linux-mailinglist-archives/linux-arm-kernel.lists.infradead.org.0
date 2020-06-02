Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B59F1EC3D5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 22:41:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AhORCB7P9M1QkrY0rrGdaFJRUm86mFPRS6L83eiJixE=; b=JYU0YwPAPBndy0
	fmNKiTiBw9nirlxcPAL9FyfRK4XUC2zddUMyvzBjfXXqQAbM904sNDzFwJuGuE+iptiLPXLPKVGaM
	AvmOAY+upG9TFStykj8WaxyK7x5y0yBABiBabCLiXNd0tK/yYe1kd6Ah3Qf+cI9PEdOZOWy5vkumA
	Iy7+dxxyTAqkJe0CX+Oyl1tWz2o0uffxNH2MO8B2ugpl/QTAZjzqwRhaGzkELTy1igtW146dBeDpx
	2PIrCGZqVrr/7soLMSwvuuWNuL68VXsFDKG5vvlVdzdfbGGJS5j7FBKsksbqgbogx9Pzh0Nfj8LNe
	MJTUbUNd5oU1p70RMULg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgDik-00084v-Hr; Tue, 02 Jun 2020 20:41:14 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgDie-00084J-Dz
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 20:41:09 +0000
Received: by mail-ua1-x941.google.com with SMTP id d8so65255uam.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 13:41:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AVYyMcSjnY3DuRRAEtT7qSzzRscOr9lxW6mXOV2xasY=;
 b=FYsG3oRfmrsRcDXZ/KWnWuTlpM499kKjm22ELuoiYyFcRqV+DouPNMpOn60f9gQ+fR
 1TvRZ4la0xj5YwiudOHKVg7Lao+c/dgsQlc3xRnLT5FG1/hv8MI04/dbKUBnKOL22cLC
 57DYrAh4B8gPtiuwRYJqG9R5GyVgZZlTxVs4A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AVYyMcSjnY3DuRRAEtT7qSzzRscOr9lxW6mXOV2xasY=;
 b=IiqWHGq2pwS95vyxjpjplZiC2hndj2HwwA0uW7p3XVmYT/NSg1y3Ff6FSVk2DYjYVJ
 /qCHzndSQgE4HJg4spcP/hAl8ZgrqtfOqv5EMZicW0KtCbYQM8ud7W/wX7FMIaDtqUJ3
 z2iiz/GUwoFayKaaEZwtwbU3M3feoFMobKqKi18SWz3sJnHhrBRpCQ7jLL51R1A6y9++
 BmbPEKI94/mYNvyZvDJ1sM4wAlMnEHZStJLsPAhxNJ48G5nZhqIXXRPKs8qRKJFtTZPH
 nYm6+8EsVeNV+kgZn1CnJLQh96lG5co/Ixj+PkxoGxtwG3yk1R9gv9FeBfUALsOrmi0R
 pgDQ==
X-Gm-Message-State: AOAM533C6by7kqB1PGWe0rapWUzWAJb84oYXhpHtHXXKc0sa1VWK81E0
 L4oPNbZqfbWbipMf3Tw7ABrfzUZUY/Y=
X-Google-Smtp-Source: ABdhPJyg4r6D96mCqUW8omSOupf25ll36Ip4zXsUjsAPT3LpUZmVVq7US/e9BgDfxbi2TcU2BC8fbQ==
X-Received: by 2002:ab0:2748:: with SMTP id c8mr2932947uap.137.1591130465712; 
 Tue, 02 Jun 2020 13:41:05 -0700 (PDT)
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com.
 [209.85.217.44])
 by smtp.gmail.com with ESMTPSA id k21sm479871uan.14.2020.06.02.13.41.04
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 02 Jun 2020 13:41:04 -0700 (PDT)
Received: by mail-vs1-f44.google.com with SMTP id o2so96136vsr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 13:41:04 -0700 (PDT)
X-Received: by 2002:a67:1703:: with SMTP id 3mr20199765vsx.169.1591130464160; 
 Tue, 02 Jun 2020 13:41:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200531110015.598607-1-christophe.jaillet@wanadoo.fr>
In-Reply-To: <20200531110015.598607-1-christophe.jaillet@wanadoo.fr>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 2 Jun 2020 13:40:53 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WOp9yVGt9hosO6fGTSqstjqO=nddTLr5tD04cfvHHL7A@mail.gmail.com>
Message-ID: <CAD=FV=WOp9yVGt9hosO6fGTSqstjqO=nddTLr5tD04cfvHHL7A@mail.gmail.com>
Subject: Re: [PATCH] arm64: debug: mark a function as __init to save some
 memory
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_134108_487987_862B489E 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: paulmck@kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Sun, May 31, 2020 at 4:00 AM Christophe JAILLET
<christophe.jaillet@wanadoo.fr> wrote:
>
> 'debug_monitors_init()' is only called via 'postcore_initcall'.
> It can be marked as __init to save a few bytes of memory.
>
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
>  arch/arm64/kernel/debug-monitors.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Seems OK to me.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
