Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24601131733
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 19:03:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zujtzkBFryV97mkaiNnhSjhftWEB48eca+5g85JsRrI=; b=Hq/kH4oxfV64JM
	Bx0QmqEGdfR/MssczQXneUEyn2KtiX2iHuE3H32E6XkRrFYK9Fap/25h+y6Jc3njurBmn9gUvKjVf
	DAX9tX91pM5yyiJlcEr/CCfmqQ6Fn7geTZn5JLk0EmC3Tgps3MD7JEYiPiwE4HWtOxvunJ1YQQd+w
	DCL5nOY0n9Juo2Fio2/PcX9VvgalEeZGODA/tVOcBw4HHB5oXP0qP+l4QK5xyyoXB5RBwrMkVMD7s
	RBXseaDfIXPxTIdUnFLiw9VWu74QDJadMJVDe0oTwUj+6HtV9A54yhkIGObJco1mNrcr3nQPK5McN
	Rqu2ZFicZxGfg6+hHeBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioWjK-0002eg-HM; Mon, 06 Jan 2020 18:03:54 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioWjB-0002do-C7
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 18:03:46 +0000
Received: by mail-qt1-x844.google.com with SMTP id l12so43107085qtq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 10:03:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NXHuuZed9m4gmjDMxbSt8Ydx4KTmpkC7vJID6XaP7I0=;
 b=MRrkj8EI0gCPmdFxE+7l+GK4uoJ6rM6ez9nHt6AUuGx0FMkXiOZaBPPo6v3ir/4qvC
 UM5lPvnzAegMqlxcvWBcv3A3h05n6p3fJ4wHTpCTlugRpUV3todEv6atqHe976LnXxna
 if18JR4BhGt+t0M9PlWIWDBou86TspPSN28Kqbqr919TE6T9gKIMe/E0zIxV3Oq3Tfnm
 LO0AH25bvTRbBaokmYmmGonA1NFq16uTbNKa5S2pthdQ8j1nL0twPvfvOIY3HlDgZQNg
 YZUB0rAifbrSZjdksMKGwPQs4JtyBqj9GDLvR3mBRdQiAlt/GQkvWduSfMO9EhkKG5Fy
 FoYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NXHuuZed9m4gmjDMxbSt8Ydx4KTmpkC7vJID6XaP7I0=;
 b=HESsu9jP4wrFkBW7L7IWNP0xAJmzlXUO7RshEa31pKcQe2v940jsr7FEF6QYAGQOUQ
 ZB9jZUy6ymgN7ICi5rW3JmaTZTeqFZ50aK/LyPbSX5gocKNPS3QLmL4enF8de1r5r8So
 ttnw24HUWbv9rq6p/ksg6rvB2DfX5apAewN+ShNwCwGaGDepUIiO935fwCCPl9pSK2hk
 aQlADew1XZSv5bsOyoTYv8jZx3clMga6dknHPpXjiGgJ0sNWtHJUI/VcOnZD5uuKU/zU
 3Yr32PWP4yF3bcSwlvoDyAgkSu06NoacLpaBH/Hr2HEndXrwpsTxMgIpY557LAs/kl2N
 ntEg==
X-Gm-Message-State: APjAAAUOeLXsNEwmGtktLxJ1RLGXq0hkKLrCnxagD2BxtRejieq92yS4
 pH4QMp5vls3er6TGrXoh4YOk0WQet7c+KNsVQ9OMnpOo/tiGTA==
X-Google-Smtp-Source: APXvYqzoJpUI0qTBtGKc5HQQ71R+sejfLNU2IySNvN3xwwd+i3ukSvzyjPMESKmBcjWfEsJ28fSXH9mWzvLYPr9q2Ko=
X-Received: by 2002:ac8:5457:: with SMTP id d23mr72628654qtq.93.1578333823652; 
 Mon, 06 Jan 2020 10:03:43 -0800 (PST)
MIME-Version: 1.0
References: <20200102172413.654385-1-amanieu@gmail.com>
 <20200102172413.654385-3-amanieu@gmail.com>
 <20200102180130.hmpipoiiu3zsl2d6@wittgenstein>
 <20200106173953.GB9676@willie-the-truck>
In-Reply-To: <20200106173953.GB9676@willie-the-truck>
From: "Amanieu d'Antras" <amanieu@gmail.com>
Date: Mon, 6 Jan 2020 19:03:32 +0100
Message-ID: <CA+y5pbSBYLvZ46nJP0pSYZnRohtPxHitOHPEaLXq23-QrPKk2g@mail.gmail.com>
Subject: Re: [PATCH 2/7] arm64: Implement copy_thread_tls
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_100345_692345_C51EE451 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (amanieu[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 "# 3.4.x" <stable@vger.kernel.org>, Christian Brauner <christian@brauner.io>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 6, 2020 at 6:39 PM Will Deacon <will@kernel.org> wrote:
> I also ran the native and compat selftests but, unfortunately, they all
> pass even without this patch. Do you reckon it would be possible to update
> them to check the tls pointer?

Here's the program I used for testing on arm64. I considered adding it
to the selftests but there is no portable way of reading the TLS
register on all architectures.

#include <sys/syscall.h>
#include <unistd.h>
#include <stdio.h>
#include <stdint.h>

#define __NR_clone3 435
struct clone_args {
    uint64_t flags;
    uint64_t pidfd;
    uint64_t child_tid;
    uint64_t parent_tid;
    uint64_t exit_signal;
    uint64_t stack;
    uint64_t stack_size;
    uint64_t tls;
};

#define USE_CLONE3

int main() {
    printf("Before fork: tp = %p\n", __builtin_thread_pointer());
#ifdef USE_CLONE3
    struct clone_args args = {
        .flags = CLONE_SETTLS,
        .tls = (uint64_t)__builtin_thread_pointer(),
    };
    int ret = syscall(__NR_clone3, &args, sizeof(args));
#else
    int ret = syscall(__NR_clone, CLONE_SETTLS, 0, 0,
__builtin_thread_pointer(), 0);
#endif
    printf("Fork returned %d, tp = %p\n", ret, __builtin_thread_pointer());
}

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
