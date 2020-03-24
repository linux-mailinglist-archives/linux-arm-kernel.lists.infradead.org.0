Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 137D7191477
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 16:32:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Kr4APJ4TLyafaNF+8A0HsVKZByG266mXLJILKaV+yg=; b=AsK5dtSY3Juo6L
	cYFLDLtCdf3seZNBD98wxivu8WN74cXBWR2Qk2Hg/BsDPWmmDmSE0YE+MO+Ixe7k4spSRSufSWRpl
	ryuc+gA7NHpxqaGe4isL2hmMkTzxYln6NAd8BiknAQRCPybZjMlOyWlJbECxeC//ot5h0ehE4H4Ih
	zY77HDs2P+NSa0ruSe5OjAe8+H1DGUIUUOvWioBWyDXU4rMSRX/n5P0VWN0PfGn5CjGx4tqt/A7Co
	5/3BRwBucZ3guCRO6pjH0vhc8Adz1zfLbEK2GtwOf6E+vRR7qm/H71z93QaMJ0wfTzX5ebs8xjokX
	3d/GrmTVgpBT7EftzTCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGlX0-0006GX-DW; Tue, 24 Mar 2020 15:31:54 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGlWZ-000683-AV
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 15:31:36 +0000
Received: by mail-io1-xd41.google.com with SMTP id k9so7822949iov.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 08:31:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TvsXpRudrZXefQZMYk6cuc0cWu2RbTQ4gqZzuO1RbrE=;
 b=BjHea3wsg4pgRhuX5WvEm0e9slsyWVMuRNw2u5Xiba9mrWowe3NHzi4SMiyOfhRZl2
 VHDjDIl3XwbleetS0cuDb3fDQmZNs4rtS5UMl6A/IqxHlA8aVz2dgfdAnwibWW3zHMJO
 n2aHiBktj1ddQWYVNRo/NJaqEgppcrEZFUixzc7tqvXoNjZCCbBfSXvlXCxi0tSpDzgn
 PnB0zxefpTre2CedKpmwwlVJvSdiN/tui9ky+kB2VGxExJ2YYcZvF97AiqIUV1iHsU44
 8PeuvVizzF3Lv/O2Bjg/nLDrz3V3einDnFaD6unLfWe0DvAjH7zUFur458nDcdXefd/A
 OWMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TvsXpRudrZXefQZMYk6cuc0cWu2RbTQ4gqZzuO1RbrE=;
 b=hxpseKIx4ieIlCQRdsKedkEpo6UhAqLh6M0KChDlAYrWEWeedUubBGUYJAw2bvqjhk
 Jv6bICwabBIE1QKsRXziHag9ivlCxZn7W86yA6Uj8FuQmmrr1CtMCAFx5QFYg5twPDG5
 OOOYBDSMhYLcaflOhj2gHdhz7BtyE5fJiTsFeIg/GPXIXseEQnQsj3zxgrEmFDWgUhoZ
 iTx95VQANplPzDtxvZwXAZDIMcqYcutFqZc9jB/1psPwbbfpNE+Fu5xTVCbtjho9g+Ca
 i5FpQHBwwFGjBXM1UwwJRlBrrItqbIfS0NiP5uu2o1vUtRa6SkPdreF4MaD3oCM1po6H
 ziXg==
X-Gm-Message-State: ANhLgQ1I6QbGrB7vAU9/dKTqrHVkgIdXqrKgiayMg/cQK3A1tR0SGzHb
 G1eVl3LiQ+Z7QntlxdWDoP9O2vQO3/82kiYHGlyP5w==
X-Google-Smtp-Source: ADFU+vuvx4HnHO0hvtSOlMwQMQBrgQYOkwH/y5TjDGcYLA1l6gQGvtVy1A0STfXLgY8fOuyRtSObqclduiOLIK8p0pg=
X-Received: by 2002:a6b:ed17:: with SMTP id n23mr24380151iog.165.1585063886297; 
 Tue, 24 Mar 2020 08:31:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200324042213.GA10452@asgard.redhat.com>
In-Reply-To: <20200324042213.GA10452@asgard.redhat.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 24 Mar 2020 09:31:15 -0600
Message-ID: <CANLsYkwVybRG9L6gDJTzZ=eXut66vJYfuEtOfLzaYaVpdybT1A@mail.gmail.com>
Subject: Re: [PATCH] coresight: do not use the BIT() macro in the UAPI header
To: Eugene Syromiatnikov <esyr@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_083127_545065_E6C0ADF8 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Michael Williams <michael.williams@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Chunyan Zhang <zhang.chunyan@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "Dmitry V. Levin" <ldv@altlinux.org>, Pratik Patel <pratikp@codeaurora.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 23 Mar 2020 at 22:22, Eugene Syromiatnikov <esyr@redhat.com> wrote:
>
> The BIT() macro definition is not available for the UAPI headers
> (moreover, it can be defined differently in the user space); replace
> its usage with the _BITUL() macro that is defined in <linux/const.h>.
>
> Fixes: 237483aa5cf4 ("coresight: stm: adding driver for CoreSight STM component")
> Signed-off-by: Eugene Syromiatnikov <esyr@redhat.com>
> ---
>  include/uapi/linux/coresight-stm.h | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/include/uapi/linux/coresight-stm.h b/include/uapi/linux/coresight-stm.h
> index aac550a..8847dbf 100644
> --- a/include/uapi/linux/coresight-stm.h
> +++ b/include/uapi/linux/coresight-stm.h
> @@ -2,8 +2,10 @@
>  #ifndef __UAPI_CORESIGHT_STM_H_
>  #define __UAPI_CORESIGHT_STM_H_
>
> -#define STM_FLAG_TIMESTAMPED   BIT(3)
> -#define STM_FLAG_GUARANTEED    BIT(7)
> +#include <linux/const.h>
> +
> +#define STM_FLAG_TIMESTAMPED   _BITUL(3)
> +#define STM_FLAG_GUARANTEED    _BITUL(7)

Greg, if you want to pick this up right away:

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

Otherwise let me know and I'll add it to my next tree.

Thanks,
Mathieu

>
>  /*
>   * The CoreSight STM supports guaranteed and invariant timing
> --
> 2.1.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
