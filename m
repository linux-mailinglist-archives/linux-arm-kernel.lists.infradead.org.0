Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C806D30514
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 00:58:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=avcIRUAHBibh/U8/c2DXqRxHBaWBroZfBGr7BYagVRo=; b=Y3aVdBcdYerIwF
	9XOGZLKEHyRCbh4J4oy5qkyPW5GHE4W/3jYcQRLWOEeLhnTnkPfyceR1oK0E9BQ8Z+ZaEDSs61hNf
	2P9edwpJ4dAXkGiMIvxKbPWYXVTd9jCTWYsTxc4lzxJJ+FCOLKv96FC+tmvr0k1pHldHF5oTGJls/
	UV0YXA3XYguZiJgse0r3W/pxW/KtFeA/yB2XNZIqiv1I75xEotm4lUFR3dvV0R6M95m1WCE6oNiq8
	OZg6IpDWkOuOJeqyW1+s9iWD/wWaYZxzx8AaSVNlatPHerbVoqthOcF97Sc/lEHZDeu3cNhjFzJ3J
	0tU0GdStZ1vKtkANtp+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWU09-0007Gm-2D; Thu, 30 May 2019 22:58:25 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWU01-0007GS-HA
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 22:58:18 +0000
Received: by mail-pg1-x52e.google.com with SMTP id w34so2828907pga.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 15:58:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=g3fyQ5vC911DtgxXJ3PgVEWFheMcjPz72If1BfifQAs=;
 b=ctDFoVHOn/KGxReSwUExeuF/3FnwVQymU+8BTgoe14+ebN5HOY0ciBPooqMPFOZQdU
 eu5uIryUWSY/uU1YUIq/tLjuK+Eh+ADB2H9TXfwbUXVOTCSQFJqQeRkvVTrXPC5D4ctj
 tdQXRzKnLQ84JZpwahzQYP0kNSSvS074L5rrpvwMNqfnt8kOCCgqTyQTqPCpebSwvawY
 NeKVKZjOGBFnx35r0+iI/YDaMOr6A/oFBgb+PpqToS9VAlAW/5KvCmx/78lc0iGXxs37
 usoU5uo/WXwrO9BHpJEsv0vZgCyhwlSUW+r8sX9RHgIxaIpLzvS2y6v99AQQ4xJ3walw
 MeRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=g3fyQ5vC911DtgxXJ3PgVEWFheMcjPz72If1BfifQAs=;
 b=B8z2D/aH/KS1UB71qM0V62P9dcdsjwWYFyhQo7FNNt5hzMFZ3IBuDkHAGllGaNz+gq
 yzHwzKmjOJMLKO6VPiHWHdLkeGDTqk6LmvkwFj70QbM/pXYb9R5IbcRUZ+A4euaptkgD
 uAVNe4tg9i47W2oHz8vLnWlos4QtvS4wyhyz36LYlrJQSA+hl076L9/QEw/ARTGlEfwF
 kPaZDl18kKRc3G5yrqil9k1/ciLhz4Ak2+EjqWvtkEE5KsolShRGrzy1DCgn/+dsRJ8Z
 /EoRr84LfWzji5DIHZ2FHExKtwBTkmH8n2B/nS7oGbG56mLA+6rZ6NUEeN/Mg2a5ksv3
 yVWg==
X-Gm-Message-State: APjAAAXesnR1Cs1XNMzNW5t119H5PJZegUbLTNrIMt2Ow4Wl0SP8BQ7T
 Ktu7WeSbvf3qD+wTpCcGdqj5+5VX1JrsWHfS2xAWZg==
X-Google-Smtp-Source: APXvYqxue3upVLHsWnlCEto+CuyURWG3yRToxHEvczF75YfvyVuzKH0CymMBgJEyoDKlg4OVBEGY2vmJ8o7JU4NIPnk=
X-Received: by 2002:a65:52c8:: with SMTP id z8mr5778125pgp.10.1559257096141;
 Thu, 30 May 2019 15:58:16 -0700 (PDT)
MIME-Version: 1.0
References: <CANA+-vBHL9a9fXDWxALXXuJk6r8ObZZjhrGp-p5JUnfOThEV5g@mail.gmail.com>
In-Reply-To: <CANA+-vBHL9a9fXDWxALXXuJk6r8ObZZjhrGp-p5JUnfOThEV5g@mail.gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 30 May 2019 15:58:04 -0700
Message-ID: <CAKwvOd=W35EwxS+g46tZVfhO9gDVH=g8oMhhHkZ+DHUqiYq7CQ@mail.gmail.com>
Subject: Re: CONFIG_FRAME_POINTER support for Clang
To: Tri Vo <trong@android.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_155817_599200_C3DC211D 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Ian Rogers <irogers@google.com>, Russell King <linux@armlinux.org.uk>,
 Stefan Agner <stefan@agner.ch>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Matthias Kaehlcke <mka@chromium.org>, Manoj Gupta <manojgupta@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+ Some more lists/people

On Thu, May 30, 2019 at 3:56 PM Tri Vo <trong@android.com> wrote:
>
> Hello Russell,
>
> I'm trying to implement support for CONFIG_FRAME_POINTER when building Linux
> with Clang compiler.
>
> Currently, CONFIG_FRAME_POINTER relies on function prologue that is emitted by
> GCC using -mapcs flag. However, APCS is obsolete and Clang doesn't support it.
>
> So in order to accommodate Clang-emitted frame layout, I'm thinking of
> providing Clang-specific implementation of code that relies on frame pointer,
> most notably in these files:
>         lib/backtrace.S
>         arch/arm/kernel/stacktrace.c
>         arch/arm/net/bpf_jit_32.c
>
> This will likely involve putting "#ifdef CC_IS_CLANG" statements in the source
> code. Is that OK?
>
> Another caveat is that Clang implementation of backtracing won't be able to
> dump saved registers or dump precise pc value of the caller, because IIUC that
> information is derived from APCS's fixed prologue.
>
> What do you think about this approach?
>
> Thanks,
> Tri



-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
