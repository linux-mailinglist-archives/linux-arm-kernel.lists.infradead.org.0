Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4681AAD35
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 18:15:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f+WUzOR2wezLe3VtON8JLsQnR2zbqS3qU8purQU/xpU=; b=Wur10tzXvVIFIO
	EiT0vOnzLYxd3WceoinP+yrpASLxl6zR6FAphtaFzlsLc0K10+vIr2WpiTr55Xa3s8CRoO0xk+d2W
	rRn0yVQRB6r+oAcAAbRlOSkD5skPILMQMKwOstZc5oDQudZnwfEzbr8VPIoQvxkvVcpLwCMul8Rnf
	D1S7tKkkDX2SEJc09diKff4dyiG0UUXNx4dnOoRUNUMzv2PLGfLTt11AOzjjhSJvAiof2BpmGsvBw
	lF2UjuuAsdUK21v98sNBBLKjOBAHn75MGdGI5wbhbqDw4B0kQGKtZcKv3XPKuFlffGu5rO8Tjz9/O
	a0ANh1jA71xp6b5LY+Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOkh8-0000JK-G2; Wed, 15 Apr 2020 16:15:22 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOkgj-0000IY-GA
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 16:14:58 +0000
Received: by mail-ot1-x342.google.com with SMTP id i27so441685ota.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 09:14:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YY754z9PeJMmvslMfaTQ60iPR2h8d8EcgLpNFKs6TXQ=;
 b=ensIBQhTLfMUhI/AckVjVSeNIMurfIMWlyjQNC/y5Q1n7X+sGHs4D9Oj738io+6WKn
 q2Qz6jdWHlsLR8zgo9vbuOru8r2nwbOuQpjauUXlDEyrjyx+/Oru+42U19TfNVW1bm4Q
 V4m66v0rPlaBKNn4G/i9kCLpyUoayUjPU8Pn0Y9xY3vS6jSERLN8RInC04HBbf5rK3kp
 0mBGR8KABY3swFRi3z9R2jpb0OPQAF6Z5UmZlfGAU0byMnbraf/GjP1Ovebc9H0MGrCG
 BY54TPpG+RrUpYd/cqywxRmA5oCwGKtcaBoGxFvBw5G9hnLrVxJCRNuCj6vAAlkRJHtv
 3kbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YY754z9PeJMmvslMfaTQ60iPR2h8d8EcgLpNFKs6TXQ=;
 b=M0bnUgf8/pHMhHAanuS8x178wktUgrP+Cv3DXo5jgPWUWarwjW38WRm/FUz1Wbu+KK
 0A3uhszN9igJtdPBsuK/kgdaYN6sXYq8+XT76yYfSobm0SbsFIm9bqW6zMcCkw6dkvU5
 Lg0nOuQIEFg65UKH+UnGcwnHxB9AGA7tF094gcmmvGeeQfwmqMG3EDX2DVuVk2AIhoWm
 M5B64ppUAQH3H2Ee+ZgMNW9g9O+7E1v0VTev2xGDIZjeYSJikqkj9ItfcMXY/LrEY1w3
 z6OIQ/wz94EThClwr9rAy5TiQ+9Ns5ciL7d5rwnEE7eDFNhsgglxyXixARdRrorRFE04
 h9rQ==
X-Gm-Message-State: AGi0PuZnX9ZJVK8j/ecvqVoLSID+Jo9SgAnN7XmJceyS5vqCc47Yk4jp
 lvK4768bb/OHnAayBni7Y/ZyLiI6WdB3Xb4Kb1U=
X-Google-Smtp-Source: APiQypKmOr4pyj5woZliOKqqj9jDH9F/Bq9sHVlUWf6TaSVf+a6bzHks4NlheUCnPxbK/0asJqZNCnLSyAr1bvDFDto=
X-Received: by 2002:a9d:629a:: with SMTP id x26mr21214050otk.201.1586967295087; 
 Wed, 15 Apr 2020 09:14:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200225073731.465270-1-avagin@gmail.com>
 <1c1ab662-5475-9d8b-038b-8411b060202a@arm.com>
 <CANaxB-xUYOrVnfLPRYVBiASzCH89sZkD6vTdy8EFjT16ZJhLfg@mail.gmail.com>
 <1d9c4c56-af16-e54f-08ca-76c6570b2d53@arm.com>
In-Reply-To: <1d9c4c56-af16-e54f-08ca-76c6570b2d53@arm.com>
From: Andrei Vagin <avagin@gmail.com>
Date: Wed, 15 Apr 2020 09:14:43 -0700
Message-ID: <CANaxB-w+_4BUOYb-5+w1xBPoZGOzBh-LYOFCY-WSysgbAAcn_w@mail.gmail.com>
Subject: Re: [PATCH v2 0/6] arm64: add the time namespace support
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_091457_559977_93A79D81 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avagin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Thomas Gleixner <tglx@linutronix.de>, LKML <linux-kernel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org, Dmitry Safonov <dima@arista.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 2:02 AM Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:
>
> Hi Andrei,
>
> On 4/11/20 8:33 AM, Andrei Vagin wrote:
> > On Thu, Apr 9, 2020 at 6:23 AM Vincenzo Frascino
> > <vincenzo.frascino@arm.com> wrote:
> >>
> >> I have though a question on something I encountered during the testing of the
> >> patches: I noticed that all the tests related to CLOCK_BOOTTIME_ALARM fail on
> >> arm64 (please find the results below the scissors). Is this expected?
> >
> > static int alarm_clock_get_timespec(clockid_t which_clock, struct
> > timespec64 *tp)
> > {
> >         struct alarm_base *base = &alarm_bases[clock2alarm(which_clock)];
> >
> >         if (!alarmtimer_get_rtcdev())
> >                 return -EINVAL;
> >
> > It is probably that you get EINVAL from here ^^^. I will send a
> > separate patch to handle this case in tests properly.
> >
>
> This makes sense :) Please let me know when you post the fix so I can test it again.

I have sent this fix: https://lkml.org/lkml/2020/4/15/72

>
> Are you planning as well to rebase this set?

What is the right tree to rebase on?

Thanks,
Andrei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
