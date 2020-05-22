Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05DC31DF107
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 23:24:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zrh3CLkI0rQXmeSsiR9DDZ2K1mnzfAB9roG4WNlkWiA=; b=jG+eVE5FD7PhF5
	D7aA1+mRsvVVPfae8NbNQJfYyoE5fhV+5vlveSfaKpx3pcJL0xPoL5bCz7U8WTjXQ9kpTo4JhvBfd
	TJ92ubHs7PUdF3cferWME/3t/kNwhFqrDNoOJv5DNXVbgqUPEpCp+GUABFNtrALiXZPf8pFSHnPBy
	PmMqO6M44uvG08RdVcEzg+KPjFLJeR/xp3CuvAmaNHCGGj6Q9GfrdwLFfUqLgX3VrZq23QEL+7ZM+
	U48125rdVKyLA1xE5WnmKlhGMz2YilLe+MeUxYCH3bZwBKm0lhjwQIthMs/v3SBJimkzSNeRJKWYm
	6nWyg0IKUWWZN/sBdu4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcF9S-0004kw-Bc; Fri, 22 May 2020 21:24:22 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcF9H-0004kG-3p
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 21:24:12 +0000
Received: by mail-il1-f193.google.com with SMTP id j2so12149933ilr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 14:24:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5YCi9Dp13bDOmLIrC4hBxAOPuLUqxhaS10/WtAvU6TE=;
 b=MePJCuzYw+6braPCeia+/hrarPUNf258T80k1drbDxq9TGm9a/B58MrvZBNHFIoyib
 WI7+akCVjmcBkBq1lyAVkJRdl50ePYOIUhH5TfgHBj2hyEMe21pYuTTkfMN/d/oxNTRD
 q6bc/wpAmNJEYJQ7WmAhJgGKoFX513PRt2JU5hYYqk5XD2p9iJ52i3QM1aUnyDs6fzJ2
 2FjcFPFj03rqMZbDcIT1FJwheMngQYfidbhRXHm5JV8Tiv2gljdpY0RoeYiE5URsgLoV
 quvwREpktYhIBBwwUykZiHmWd6QTlbXM8NoSMv+0Ke2a7LUqt7FcX0i6BO6/mJPBzh7z
 2qkw==
X-Gm-Message-State: AOAM530fOr10/9aOc5Pmfi0EM5RE2yCpNu494F7G67wuZvy652cAqnIy
 /fxAfw+cVAG6ieJGEUyzBXUJNtndMGA=
X-Google-Smtp-Source: ABdhPJz7mdjhiMNX503v7xd3CJOLapOtrRwMpd87BdmF0PJlFGBtd2F/66rE2g32cWjcWpTFamGQhg==
X-Received: by 2002:a92:98ca:: with SMTP id a71mr8198982ill.178.1590182650014; 
 Fri, 22 May 2020 14:24:10 -0700 (PDT)
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com.
 [209.85.166.173])
 by smtp.gmail.com with ESMTPSA id f9sm5339317ile.39.2020.05.22.14.24.09
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 May 2020 14:24:09 -0700 (PDT)
Received: by mail-il1-f173.google.com with SMTP id 17so12146887ilj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 14:24:09 -0700 (PDT)
X-Received: by 2002:a92:c401:: with SMTP id e1mr15870971ilp.134.1590182649355; 
 Fri, 22 May 2020 14:24:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200518221904.GA22274@embeddedor>
In-Reply-To: <20200518221904.GA22274@embeddedor>
From: Li Yang <leoyang.li@nxp.com>
Date: Fri, 22 May 2020 16:23:46 -0500
X-Gmail-Original-Message-ID: <CADRPPNST6qhAHAEKXAnnJhQhoyb=r5O5YVs2KJW5qNgOjanu-Q@mail.gmail.com>
Message-ID: <CADRPPNST6qhAHAEKXAnnJhQhoyb=r5O5YVs2KJW5qNgOjanu-Q@mail.gmail.com>
Subject: Re: [PATCH] soc: fsl: qe: Replace one-element array and use
 struct_size() helper
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_142411_154948_5C5F0643 
X-CRM114-Status: GOOD (  15.49  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pku.leo[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 lkml <linux-kernel@vger.kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 5:16 PM Gustavo A. R. Silva
<gustavoars@kernel.org> wrote:
>
> The current codebase makes use of one-element arrays in the following
> form:
>
> struct something {
>     int length;
>     u8 data[1];
> };
>
> struct something *instance;
>
> instance = kmalloc(sizeof(*instance) + size, GFP_KERNEL);
> instance->length = size;
> memcpy(instance->data, source, size);
>
> but the preferred mechanism to declare variable-length types such as
> these ones is a flexible array member[1][2], introduced in C99:
>
> struct foo {
>         int stuff;
>         struct boo array[];
> };
>
> By making use of the mechanism above, we will get a compiler warning
> in case the flexible array does not occur last in the structure, which
> will help us prevent some kind of undefined behavior bugs from being
> inadvertently introduced[3] to the codebase from now on. So, replace
> the one-element array with a flexible-array member.
>
> Also, make use of the new struct_size() helper to properly calculate the
> size of struct qe_firmware.
>
> This issue was found with the help of Coccinelle and, audited and fixed
> _manually_.
>
> [1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
> [2] https://github.com/KSPP/linux/issues/21
> [3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")
>
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> ---
>  drivers/soc/fsl/qe/qe.c | 4 ++--
>  include/soc/fsl/qe/qe.h | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)

Applied for next.  Thanks.

Regards,
Leo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
