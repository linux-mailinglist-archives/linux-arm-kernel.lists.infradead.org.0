Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0CAD1F8329
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 14:05:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GHLU1U/xn7gguULZnXMeM6/5jyrJcy6rszYwNVOZsms=; b=MZlEwdlLHSnpI5
	DQY/8/jxUveUAX7+m5SHB8nx8INcRx5yUiYxWYMhOH6JGEOPxpmghZybPOl6eimimTFQYqpJvE6Mv
	sb/jCP7VwS9jtxs+H3wlzRfou9H106em0m1+mNb5gqzPfrnyeaJviVXZeqfsEP/hg+6Z7Y1PgDUM6
	MMXM4FvBbvzknqtR9SK2FiMpbx9udJYAtIktG+/5Yu2Fax5JjivA0+lFu+Psjk+9+jgleLtPvcoVf
	S0Xq1EfmC1DywZl2awHQdQhdTb24B7u38sUIR52CnNCh+mQ10q4KYS11Az/PNGsUHPyWMrwM6COXK
	DDt8/MopkiIjzI8Us9nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jk4ty-0007JY-BJ; Sat, 13 Jun 2020 12:04:46 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jk4tp-0007Ik-TW
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 12:04:39 +0000
Received: by mail-pg1-x542.google.com with SMTP id u5so5402782pgn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 05:04:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LBrsfxO25w2eu+lrtvfG2KxIdSA+88lYE5tWiAEH8qM=;
 b=CU6y3HBbj/n8jNq32wKmlGbKqblgo+cnqIRVSSA2jz7Qn3+T+ejYaQtqm4xEFmL6/t
 7doJiv+0cF/A5BVpe3f6BdSc1JNyzs2vtcAU2MdYBNU0z1Z4K6pnnB0OqimD0U9szNeU
 Y0OGDGOny5I3deJZfLq2iQYSPI6TuvDm35tjCMgWUMDTc7aeUsrQPrVjW0RZJ95djrgM
 fkOzUadFV2+ZCwOOLy9YPEAaO93mgN37StRybZlo/Gzt53gP7b/6k6Y2+2FIy+KU66uM
 8zCY5yan04lXaJw2BW8w52YzWseMaG5U1yaxcdwWAO4LI7vlFWGlp6txNonl2MiiS09l
 aXlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LBrsfxO25w2eu+lrtvfG2KxIdSA+88lYE5tWiAEH8qM=;
 b=rzqiQ366nAcH7aZTonB1wtlMOaWeo+T0t2vpV+q3n8DHNZln25+Eg+aAUBh4O8iBSN
 NxRaGxRCePMN4BRzGRNaFBFKy2aAcscHOD5EGIaXAVJVSz9iX+uwE91bCi30DTG4C13N
 WFwXMw5Fou7B4mFbnlxfr/iklpuQE60g0PvB+wdr6fvoSt27pdNWsfYrlA/GHIu61a4l
 9Dx0GIwG5vmFMVvaSrs+7S4eb3Oe7gN67wxdYs9z3T1afuOGDV7AALKOleSYkb8Weq9Z
 gogOgpJeE6cRO9N0zb4TroaoEQMcxsIZicpeLZMMeDeAgNzz72oz0PyY1qulkon/I0Wr
 l5ZQ==
X-Gm-Message-State: AOAM531H7gmpptPVzd2eqbP/J+7TsZfsIjcRxtej+vb9kD7DcNcPjj5T
 hGhqDWprkNy28u7Z9LBQBnS99t5H
X-Google-Smtp-Source: ABdhPJwmpmABGRrQm+OFl+czCBJy5iA0MDun8zYJpfbPLnNUBn63dzGlclRFHTHT74RVa9NQlqsc9Q==
X-Received: by 2002:a63:e34a:: with SMTP id o10mr14362568pgj.258.1592049875852; 
 Sat, 13 Jun 2020 05:04:35 -0700 (PDT)
Received: from localhost ([49.207.210.132])
 by smtp.gmail.com with ESMTPSA id k12sm8778184pfk.219.2020.06.13.05.04.33
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 13 Jun 2020 05:04:35 -0700 (PDT)
Date: Sat, 13 Jun 2020 17:34:32 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [RFC 1/3] lib: copy_{from,to}_user using gup & kmap_atomic()
Message-ID: <20200613120432.GA5319@afzalpc>
References: <cover.1591885760.git.afzal.mohd.ma@gmail.com>
 <9e1de19f35e2d5e1d115c9ec3b7c3284b4a4e077.1591885760.git.afzal.mohd.ma@gmail.com>
 <CAK8P3a1XUJHC0kG_Qwh4D4AoxTgCL5ggHd=45yNSmzaYWLUWXw@mail.gmail.com>
 <20200612135538.GA13399@afzalpc>
 <CAK8P3a25ffh_2Y1xKDbkL2xU9nLpGbEq7j6xHdODEwUtavgdwA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a25ffh_2Y1xKDbkL2xU9nLpGbEq7j6xHdODEwUtavgdwA@mail.gmail.com>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_050437_972440_ED2A2A96 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nicolas Pitre <nico@fluxnic.net>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Fri, Jun 12, 2020 at 10:07:28PM +0200, Arnd Bergmann wrote:

> I think a lot
> of usercopy calls are only for a few bytes, though this is of course
> highly workload dependent and you might only care about the large
> ones.

Observation is that max. pages reaching copy_{from,to}_user() is 2,
observed maximum of n (number of bytes) being 1 page size. i think C
library cuts any size read, write to page size (if it exceeds) &
invokes the system call. Max. pages reaching 2, happens when 'n'
crosses page boundary, this has been observed w/ small size request
as well w/ ones of exact page size (but not page aligned).

Even w/ dd of various size >4K, never is the number of pages required
to be mapped going greater than 2 (even w/ 'dd' 'bs=1M')

i have a worry (don't know whether it is an unnecessary one): even
if we improve performance w/ large copy sizes, it might end up in a
sluggishness w.r.t user experience due to most (hence a high amount)
of user copy calls being few bytes & there the penalty being higher.
And benchmark would not be able to detect anything abnormal since
usercopy are being tested on large sizes.

Quickly comparing boot-time on Beagle Bone White, boot time increases
by only 4%, perhaps this worry is irrelevant, but just thought will
put it across.

> There is also still hope of optimizing small aligned copies like
> 
> set_ttbr0(user_ttbr);
> ldm();
> set_ttbr0(kernel_ttbr);
> stm();

Hmm, more needs to be done to be in a position to test it.

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
