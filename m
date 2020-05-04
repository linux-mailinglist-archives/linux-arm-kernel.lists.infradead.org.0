Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3671C3E4C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 17:16:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ka3MjrruZI5f+StVwHBlHlY+J+lO+XzOwO0v8LTpp8k=; b=P5RHrRn2y1zrFc
	GEUmijbD3z9/mJn9PmLVf9ht2gb0YjrED565RHpL9nqjoKEAgLB8zpJdOidT5d8a34EbexIXobBfn
	Sg173dO9TO6AHbxzk4Z9ZK6V5i6DFiK3l+xjRhQ74gpVUbM6PTeQzezvmbz+V5Mm3sFkk1+aSkpam
	1ZSL5rBLn9jcxLk2+eLfIAF2r5pRgEAWuEza7FUXv/e/g+Uh9OmiR7xe1KP0FMnVF5X6WMk/A3ZLq
	bWy+bDbZTHOX1SyoFrE69b47P7UN6LnsqMG4D8HnNTUjwkUNBaeMX8AJXEmkuHYUt+sAUTEwuuAn4
	MrbYTkO/L/yFRgKOlXlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVcpb-0004BH-Le; Mon, 04 May 2020 15:16:31 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVcpT-00049n-EZ
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 15:16:24 +0000
Received: from mail-qt1-f171.google.com ([209.85.160.171]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MBBCI-1jQel83JnS-00ChGm for <linux-arm-kernel@lists.infradead.org>; Mon,
 04 May 2020 17:16:20 +0200
Received: by mail-qt1-f171.google.com with SMTP id g26so10404647qtv.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 08:16:20 -0700 (PDT)
X-Gm-Message-State: AGi0PubiFBEt29fstv5zVmkyLI/JETt3yaTAYmT82gjpXkrf7ee3ZQ9B
 XxNKgVz6oMgBy5ilg2oVouK0UFyxCqeEV5mtC9Y=
X-Google-Smtp-Source: APiQypL5WgUAhbeT4hCo6s57/ai3QBtJeXFaXUuzlX+bmFS85Algr9U95kT2CU1vCl6sA5XuPw/rnlhJ6X2pgdEdJ/U=
X-Received: by 2002:ac8:12c2:: with SMTP id b2mr17657477qtj.7.1588605379427;
 Mon, 04 May 2020 08:16:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200502233910.20851-1-clay@daemons.net>
In-Reply-To: <20200502233910.20851-1-clay@daemons.net>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 4 May 2020 17:16:02 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1m-zmiTx0_KJb-9PTW0iK+Zkh10gKsaBzge0OJALBFmQ@mail.gmail.com>
Message-ID: <CAK8P3a1m-zmiTx0_KJb-9PTW0iK+Zkh10gKsaBzge0OJALBFmQ@mail.gmail.com>
Subject: Re: [PATCH] net: ethernet: ti: Remove TI_CPTS_MOD workaround
To: Clay McClure <clay@daemons.net>
X-Provags-ID: V03:K1:EqETP0wxeN5n9Ip/8RMT12pCDL9on+LX7ChEtGDLjDPd0rKXzHV
 LrfvqQWYJ96ky76FqgCCy+Hfqf3MtW79wVoFqsddHuDHRD8x2AOBhgJyYKk1GFx0Pzm3Y/0
 3fEbCNxTMyr7pPjObx8aH3qWYEFfbT5x3WR3LXjNPODUvNqmzpLNDBOH0VN7D5tYhkGoEqt
 gEFuQd4M+NowfIFgjDIjg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Di53cRikZzA=:bXVly135YD209vDr9aazCQ
 V50rtBe+6AB7EmOv6Rki599DbXpjuZTUp9mMPsVp2agbgygXnkhOI/J04GfaJ/uuUGp8Arl5s
 6iYidSMTuSMoTE13yn1YR7T26qCvQi5QTIng8BG3gKuCrfUsb77jLGkfhyuiucnUZy1vl4nMD
 wwq63OfHFHvIhW8lp7OuqMMKv4M0nr3Jvnmu6zziwmQOrjF6fzGg4EYCO3LiDUx1qgqCDfvwg
 OkesE7nmjFMacQrvhqdJ9efkO6gdLfhtiZ0xfBTUc5p+xR9X4O/mRtQttiWhWB+LorOmMYn/E
 BiumYf0fnFdhIXnhV/fy9dX4l3/s+fCXdqzwmkZSlckuJa7y0YKj2ouAC7JtRY6JkB+w8jbvZ
 zlzGk1ft7H6SNUH6SX3ROIDA/iohO+uTL2kFi9jl43Ou+84V1M2Bq9/d+tZO3i+Z+ivVsv2Od
 AOqOubpWyn4ivRjppGjz0BQNFr16aYYlLqpO1eQ+pV8+GnINmHfh3EY9FKyjCoi+8bQEee1Bl
 rAykfd6WohLxkeWpN0Wiw1y0TALcDwu+LTeszlqxz65qUYkZ+v2f9K+MObjO/T5sHyodOW/H8
 iStBHPBdbuMeQaxZ2qRH497Ed+SxfO+W9EX+6Hhj6SkOod9IxXLjdGxLpeioGF660A6pbRrkU
 sOoUfOEi27qIGzXIYlak+5Bh76EyoVUHjFq0rJo3+XgecEsRQ33oyHBNlxoLWwR5BbdU/HKKB
 Gsc16roEjJC1kpebcuXYPNlZUBtc00p5Hx8mbdNo7ZDBd497D3iI3PKyzez6s0fN+LP+Ic3kb
 znEHXJpcL+YDzdsf8SpdhBYdTEow/rqRWmkCkhBnp1oJUCdN+g=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_081623_779548_F4F75C74 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Tony Lindgren <tony@atomide.com>, Andi Kleen <ak@linux.intel.com>,
 kbuild test robot <lkp@intel.com>, Russell King <linux@armlinux.org.uk>,
 Krzysztof Kozlowski <krzk@kernel.org>, Murali Karicheri <m-karicheri2@ti.com>,
 Jesper Dangaard Brouer <brouer@redhat.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Kees Cook <keescook@chromium.org>, Wingman Kwok <w-kwok2@ti.com>,
 Richard Cochran <richardcochran@gmail.com>,
 linux-omap <linux-omap@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>,
 Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Dinh Nguyen <dinguyen@kernel.org>, "Eric W. Biederman" <ebiederm@xmission.com>,
 Networking <netdev@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, May 3, 2020 at 1:41 AM Clay McClure <clay@daemons.net> wrote:

> To preserve the existing behavior of defconfigs that select TI_CPTS, we
> must also select PTP_1588_CLOCK so that the dependency is satisfied.
> omap2plus_defconfig and keystone_defconfig have not been updated in a
> while, so some unrelated no-op changes appear in the diff.

Please don't do that at all. If you need to add a line to the defconfig file,
add just that line, to avoid merge conflicts and dropping unrelated lines
that have not been caught but need to be preserved in some way
(by enabling another dependency, or renaming the option).

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
