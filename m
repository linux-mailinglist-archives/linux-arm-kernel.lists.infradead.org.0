Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D00B184F45
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 20:27:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fELf9iJ5Tl6ZX1D2ygBICE3/yiwWDcji+nFJKHR5mIY=; b=FKc/X/2BLL/tG1
	Uw2ZBhJ89e87TelbqJ7BeUt/6/ut86w80H6gDlieJXcCGHQ6rZM7QEO4t50y8CRoV4TS85+6r0joI
	zuKx/IVQxnrKy6B/Eb0WU6od8gODmpTubUZnxiE/iqHWW20r31PEyBaal6FNhfHUxtx5czJi507u9
	CUgtCHUzr8gA4U5tpF51sWUlfR1rgudjFcnNp4iRCWaTZOoMlc3D4OOlYVhk7uOsPjnuC22oP4a4K
	RoRoIDL3G0DuDiodVsE/Qh+wLFExeUx23RO1Jysk3QEPrBoDdrD4e23tLJ59GPXvjYgdZ7f5tEuuu
	DEThAtlvhYXqziIAlQ5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCpxf-0002UJ-8C; Fri, 13 Mar 2020 19:27:11 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCpxW-0002TR-8J
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 19:27:03 +0000
Received: by mail-wr1-x442.google.com with SMTP id l18so13494780wru.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 12:26:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1pG2P4gJmNI7Qn+nP1qasHd1nymYVND/EIcK9k9tKMg=;
 b=LG80tKO32s6P3MMoAvcgefezx+DsOR8dap92rwBTuBKgel9CwL8fK28dLQdZqH+13Q
 BDn0bD02jpUSBMmJV1N8FXyV+LdVXVFTqM+NR8hGB0pDhZzFk3R1mn5zcCvAeEJnkmJ8
 6s4s1P7pWqd8RdT+zvgsjJ27QI0qfavvn3zYpelZqTQVvjLM35cI5tV5FIaYmseEHMQT
 hAln01F48F108FzoZxxoe4vkJKphlgzV1mwGaTGGX2zBNji7hf5RjjBO2Wg7D/ZqEFK8
 /KN+uUtY4YJW71Fi7tbFLMNBMSC5+wYCJ68zHCyp6aIv6pz4URmyRWVDm8xMbw/mhoqB
 TrwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1pG2P4gJmNI7Qn+nP1qasHd1nymYVND/EIcK9k9tKMg=;
 b=bvZebunhbhyiINE99VNJeUfkImU/Dx2/a3CwNtTPs0TSYOI9nIeB/gbkeCTX5Vpgeg
 Jpmof1Okp9HdN61Gf/uxCuJLI/06k00RWbo5gBLx8RK9OdyIZ55FCUefg/S9OZCXybnK
 mvr3cJHaI48wATtHQSHt1oBxaANx+wnsMBhFC4T0p6pYlmIECOb0zlbV5wfTV9fQ2yCs
 QwpwsbkdFO+KPrdegf9SZLgVbATcZqHGXkgRw6AG/l3fOMjopkv+zz5Hokm2Dtvc+g/z
 apmNdjIDGclliKO3iqtGdTxHdrDb9L5z43tbcu2DSDBQkax3pvEj8f6nBcJe8XNe1Xxd
 hBKA==
X-Gm-Message-State: ANhLgQ2UNbSttW5jCeoAyGtOICX9tC9ojyU9ke6MQ7jalpT2SJ5FLOjr
 aPHh9h/FpLWfpUzlxYi1AQLSM19rbItIhg==
X-Google-Smtp-Source: ADFU+vvi7ViW/Oe085hOiFD7DEEBRsb6UehypN9PKy4YZYAW3HGcdQQ0YeSpwNsLn2ch7WRCpCPxAA==
X-Received: by 2002:adf:dec8:: with SMTP id i8mr19986530wrn.326.1584127618599; 
 Fri, 13 Mar 2020 12:26:58 -0700 (PDT)
Received: from giga-mm ([62.68.26.17])
 by smtp.gmail.com with ESMTPSA id o3sm19528945wme.36.2020.03.13.12.26.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 12:26:57 -0700 (PDT)
Date: Fri, 13 Mar 2020 20:26:56 +0100
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH -next 008/491] ARM/CIRRUS LOGIC EP93XX ARM ARCHITECTURE:
 Use fallthrough;
Message-Id: <20200313202656.ed9ca1d31aaa1ccc9eaa9844@gmail.com>
In-Reply-To: <e26a22c41c72290be469229f578e80c9e6dae5ed.1583896348.git.joe@perches.com>
References: <cover.1583896344.git.joe@perches.com>
 <e26a22c41c72290be469229f578e80c9e6dae5ed.1583896348.git.joe@perches.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-unknown-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_122702_298734_A94E1DDE 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alexander.sverdlin[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Hartley Sweeten <hsweeten@visionengravers.com>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Joe,

On Tue, 10 Mar 2020 21:51:22 -0700
Joe Perches <joe@perches.com> wrote:

> Convert the various uses of fallthrough comments to fallthrough;
> 
> Done via script
> Link: https://lore.kernel.org/lkml/b56602fcf79f849e733e7b521bb0e17895d390fa.1582230379.git.joe.com/

I think the patch is OK, but the automatically-generated first
commit message line has a room for improvement.

But, as I understood, it has chances to be re-sent as one patch for
all files.

> Signed-off-by: Joe Perches <joe@perches.com>
> ---
>  arch/arm/mach-ep93xx/crunch.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/arch/arm/mach-ep93xx/crunch.c b/arch/arm/mach-ep93xx/crunch.c
> index 1c05c5b..f02e978 100644
> --- a/arch/arm/mach-ep93xx/crunch.c
> +++ b/arch/arm/mach-ep93xx/crunch.c
> @@ -49,8 +49,7 @@ static int crunch_do(struct notifier_block *self, unsigned long cmd, void *t)
>  		 * FALLTHROUGH: Ensure we don't try to overwrite our newly
>  		 * initialised state information on the first fault.
>  		 */
> -		/* Fall through */
> -
> +		fallthrough;
>  	case THREAD_NOTIFY_EXIT:
>  		crunch_task_release(thread);
>  		break;

-- 
Alexander Sverdlin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
