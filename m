Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B758D185
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 12:52:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V2ZHvt4xTgA+aV9+clOm1EhGpUBsx5RtomPTRWUNfhI=; b=LCIDnSpV6Hnaz7
	Krp14ssPcRkB7MogqW2Z0aK0jIS+nz0B5FzCw298tWfSSVXQYnmqC5IC7e2k0EX4T8XQuFVMcEJb4
	uP1COH2dEhDaJRRHya86/zD1bvmBZLlwQEXrZIgEHwnw5FqnUBd3scLWZtUtF1l1+jfN2XfzeEAvR
	5+Xm5JE5nKdMrsq1+Zyw+jj9WI4/Ftt1azhuGFNQbzYY3jbXNM3McI8QoTR4GzKqn4ezY9lzoUNhy
	f5R6mhU8hyqEWN/500QdDyCbhosikWlSSl3lw5wJLNxj6Jn0J/g8k9RpuRCwCNxogJVlLiuQJqVAX
	wocpTIz62T1x2g0s/yFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxqtN-0000Xg-SE; Wed, 14 Aug 2019 10:52:33 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxqtG-0000Ws-TB
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 10:52:28 +0000
Received: by mail-qt1-f196.google.com with SMTP id e8so9064291qtp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 03:52:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gIlI8GZP2jKHJrudr0IHxwtNWdUm8jTFI/qGZBpe/rY=;
 b=bMbUamFyNJFGWVi89BmmnMAp9hr/AExZq1kGEPJTN7QFBr5Sx9WM7HH8mipPsfBzEQ
 mngQKRo2GbXBEqz1ulvWh0rZybWARmaoucEVKBk2vG33g1M56rYW759kKn7aQrR9W5AZ
 MGnbtje6JgAX97NG7C2ooE+Mw/lRnU/Wi15rj0U8nTh7vJyA7il+7CJ0u/9379MLvzDk
 27FRwo/Sz++pRHjGBYgYUKNbqpXf2YoxU40WVQjvl9Fam8jGR51b2HSoAWJp9rcyfOTQ
 +ffnQJKqz7aL7VnQAQUgjhfbDgHF5WJTovdwJHlBPi4re1oKfFme8tfGGO3rsjaYjIph
 pJDA==
X-Gm-Message-State: APjAAAWEah4pGvAhl+C7zbgqAsHI82YkSowQHqUu5/dq56K+5Rz1wEIH
 XHE4J4YjC7ANpWhBnHzdIHUqwLXWUaxchg8xR7w=
X-Google-Smtp-Source: APXvYqzb85S16/2mVtcRLSk4l+uLQbceGTBlDXqCp+iONwPetFR/QG8krUCqT1RuruE/1KPh7tvRoIkeZDjvB+UNth4=
X-Received: by 2002:aed:3363:: with SMTP id u90mr37420132qtd.7.1565779944278; 
 Wed, 14 Aug 2019 03:52:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190814084949.70867809@canb.auug.org.au>
In-Reply-To: <20190814084949.70867809@canb.auug.org.au>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 14 Aug 2019 12:52:07 +0200
Message-ID: <CAK8P3a0CMAHLUPs8=8DttW_kFWdYbR_De04s5aNSEWkHgHLJOg@mail.gmail.com>
Subject: Re: linux-next: build failure after merge of the arm-soc tree
To: Stephen Rothwell <sfr@canb.auug.org.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_035226_946843_06EE2AE2 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Olof Johansson <olof@lixom.net>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 12:50 AM Stephen Rothwell <sfr@canb.auug.org.au> wrote:
>
> Hi all,
>
> After merging the arm-soc tree, today's linux-next build (arm
> multi_v7_defconfig) failed like this:
>
> arch/arm/Kconfig:720: syntax error
> arch/arm/Kconfig:719: invalid statement
> arch/arm/Kconfig:720: can't open file "arch/arm/mach-ks8695/Kconfig"
>
> Caused by commit
>
>   eb4f78f8b8cb ("ARM: remove ks8695 platform")
>
> I applied the following patch for today
>
> From: Stephen Rothwell <sfr@canb.auug.org.au>
> Date: Wed, 14 Aug 2019 08:46:39 +1000
> Subject: [PATCH] arm-soc: fix up bad rebase?
>
> Signed-off-by: Stephen Rothwell <sfr@canb.auug.org.au>


Thanks for the report. I folded your fix into the original patch now.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
