Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1C9105E35
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 02:27:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tLG79QN7ZIXN/cClyKn1QDYcvGUMdDydXEBgO/hCYRE=; b=hQhYZfQkUbW3wF
	g8FmCFg6eS9yabX1JsN5Fv7HWmZXhgmCql2tOMyqG/6rEGNMoJDSj0/lRvPYL++sH9jx65g0Q8r/l
	M7OlmxFHKXJ/mY4dCMjYM79tTj0llCreyhojraMtt3I43H0afvX3YGnT//UaP4Vl5tEb6XO33UT/q
	7k6NoXME1lH7SQ8xLRjtAXVv9gnvigybpwtmmUnv5ND/f/lp8rKIQSmLPqT5qlOHFwZ17AlVYDKz8
	EtyGkvgcx2vHwmTUbBWrsBQeBflz1YBs6xXigiOWYFhXcmNmYJmTgIeYxfxnmnEFKQ3wihsmctF5U
	L+1w52+8Xf0/RqQVSYEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXxj3-0005UN-Sk; Fri, 22 Nov 2019 01:27:09 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXxit-0005TI-MJ
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 01:27:00 +0000
Received: by mail-pl1-x642.google.com with SMTP id o9so2395619plk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 17:26:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TU/4Ef2jiJlWVCQ4cQLrxn75XZh8TZ+zwtkucEXiu6Y=;
 b=m2BETWVpqlllD08mHYTdBJVrgblUy6CNB+DVYcBf9k1lTWIC7q1zlf4DUt7C76yvFH
 G6g+FzKXJOEn6Vlo815oRlNBTnuOYeh6pCdoJ1hx+Svn5rOtOL1wNOb+UEMgHBUphhlH
 P8cv6J335QcanJ1JahmxBQ5wp52tqT2vEclNYvdd1JfgV6k5eQEDGUUqW3uoh8dfQHoS
 9xXdeB8VoyFb6OzA2Q8Ztk9qWRPfX+qdV3hUp7yzrKXrqPW/4+evxgguDIUq/jyml/xl
 uRx2Z/AjTUK5d/DHjDDKOSV8NRou6QR+IdZLRPjDl5zRTY1jkB6dh0gQ9Z1oePhabV1F
 e0EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TU/4Ef2jiJlWVCQ4cQLrxn75XZh8TZ+zwtkucEXiu6Y=;
 b=p23TSfTc2vzXaE/2iOEqrSt8v35PF/bEaw0Mfe9JD/pnE7rU/xKrlbupVu+FRBbNRh
 PVjWQUzPpTerDx3xqYePPxmaIASWxA4db/QHKiucsAXVOIgKGZPzA8yLQCYBXdk8XBWs
 4SNNU9ZsUQ3OZLgVyEKYQI4QXBnO5mdI//3VorOU//99hDfgTRFJalLFbQkgVfPNxjH+
 L9lvbcayfDTuPtyu++dKXPhycy9OMQBrzKvFpaYyHIpwkjFqggBNA38fcJTz4akMcENq
 2iFxUUNXvHgcLgRgaEnyiwMiPoda3Zk/bEnPm/+9irWJeowNz0moGWecAFB3lc6g6W4a
 71Ew==
X-Gm-Message-State: APjAAAWinJLD/gDSnGLo+f/f/VxknAjN+xhhB0FsAJ4x+DSQzgsVCCid
 WPzxGXkb4rYBW4EItSnMiExxeuKl+I3vi89p3EI=
X-Google-Smtp-Source: APXvYqyEm29BCL9dYSdTsXPxmgv2TKuC1svdFqNukvJ2stRS4zyFKH8B0gohRL0YLXx0L/gX9Xmw6kRwgk7gtVPhA6k=
X-Received: by 2002:a17:90a:d818:: with SMTP id
 a24mr14948297pjv.40.1574386018942; 
 Thu, 21 Nov 2019 17:26:58 -0800 (PST)
MIME-Version: 1.0
References: <20191121184805.414758-1-pasha.tatashin@soleen.com>
 <20191121184805.414758-4-pasha.tatashin@soleen.com>
In-Reply-To: <20191121184805.414758-4-pasha.tatashin@soleen.com>
From: Max Filippov <jcmvbkbc@gmail.com>
Date: Thu, 21 Nov 2019 17:26:47 -0800
Message-ID: <CAMo8BfJYEh_HYGuKwKgfwVdVwg-w-AxN=+6zDuYdwB+E_dTSzA@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: remove the rest of asm-uaccess.h
To: Pavel Tatashin <pasha.tatashin@soleen.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_172659_729351_9293CBC4 
X-CRM114-Status: GOOD (  16.27  )
X-Spam-Score: 1.9 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.5 FROM_LOCAL_NOVOWEL     From: localpart has series of non-vowel
 letters 1.0 HK_RANDOM_FROM         From username looks random
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jcmvbkbc[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Stefan Agner <stefan@agner.ch>,
 Russell King <linux@armlinux.org.uk>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, Will Deacon <will@kernel.org>,
 boris.ostrovsky@oracle.com, Sasha Levin <sashal@kernel.org>,
 Stefano Stabellini <sstabellini@kernel.org>, jmorris@namei.org,
 linux-arm-kernel@lists.infradead.org, xen-devel@lists.xenproject.org,
 vladimir.murzin@arm.com, marc.zyngier@arm.com, alexios.zavras@intel.com,
 Thomas Gleixner <tglx@linutronix.de>, allison@lohutok.net, jgross@suse.com,
 steve.capper@arm.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morse <james.morse@arm.com>,
 info@metux.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 21, 2019 at 10:50 AM Pavel Tatashin
<pasha.tatashin@soleen.com> wrote:
>
> The __uaccess_ttbr0_disable and __uaccess_ttbr0_enable,
> are the last two macros defined in asm-uaccess.h.
>
> Replace them with C wrappers and call C functions from
> kernel_entry and kernel_exit.
>
> Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
> ---
>  arch/arm64/include/asm/asm-uaccess.h | 38 ----------------------------
>  arch/arm64/kernel/entry.S            |  6 ++---
>  arch/arm64/lib/clear_user.S          |  2 +-
>  arch/arm64/lib/copy_from_user.S      |  2 +-
>  arch/arm64/lib/copy_in_user.S        |  2 +-
>  arch/arm64/lib/copy_to_user.S        |  2 +-
>  arch/arm64/mm/cache.S                |  1 -
>  arch/arm64/mm/context.c              | 12 +++++++++
>  arch/xtensa/kernel/coprocessor.S     |  1 -
>  9 files changed, 19 insertions(+), 47 deletions(-)
>  delete mode 100644 arch/arm64/include/asm/asm-uaccess.h

[...]

> diff --git a/arch/xtensa/kernel/coprocessor.S b/arch/xtensa/kernel/coprocessor.S
> index 80828b95a51f..6329d17e2aa0 100644
> --- a/arch/xtensa/kernel/coprocessor.S
> +++ b/arch/xtensa/kernel/coprocessor.S
> @@ -18,7 +18,6 @@
>  #include <asm/processor.h>
>  #include <asm/coprocessor.h>
>  #include <asm/thread_info.h>
> -#include <asm/asm-uaccess.h>
>  #include <asm/unistd.h>
>  #include <asm/ptrace.h>
>  #include <asm/current.h>

This is not related to arm64 or to the changes in the description,
but the change itself is OK. Whether you keep it in this patch,
or choose to split it out feel free to add

Acked-by: Max Filippov <jcmvbkbc@gmail.com> # for xtensa bits

-- 
Thanks.
-- Max

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
