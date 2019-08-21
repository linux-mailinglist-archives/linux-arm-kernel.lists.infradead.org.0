Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0841598460
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 21:29:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=atRUmT7yNlxYoVYoJrHwwVvBotmIxoUJPrTbrLnYBAo=; b=AQIFdXjgV4AyxM
	4q0qNHwnAylTAjq8xa+SWKqYvBg5L5BDQaTSmHQM7TXvd/pWJEDv4LYx03B5ddsvp+S9U80qu0ZJV
	fTdkDLUD5IdPBGAY0xsXONLnvCht21JmPBXvnqTsEPuB0iiEL/c6MW87E6bxFDaEd6Auxm3AX+njZ
	TQUhvoP6PtyNN5LTOXlrgtCi7A7QYA5M93U526xfcpm9PYhgRJsuUthdevWDDVIy92UCK6ZrXX+Wn
	FqgxSgLDqgmImZ7HxU5ltObvmERpyeDVSRZYPAMcgKTBivXoYXsMjwTd6PTxDDnOnoHF+C3ik1aHn
	cumD3GlL3sqD6EwcBeAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0WI3-0005tD-Gg; Wed, 21 Aug 2019 19:29:03 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0WHv-0005sr-Rm
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 19:28:57 +0000
Received: by mail-io1-xd43.google.com with SMTP id i22so6986406ioh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 12:28:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jfec0mvVC9M+nXvWP6tW40j27cDmVyaV4qDP3OCdODc=;
 b=VXW4CIYFyycAtYCCu9hGMa02XdPi7rZJs/JFT55LNFaP6QYf0t6hOEYYYUshiHiags
 4vsOKgRuDZ0Yx+OIaCqIJLv1n0Vm4PcfOOdpCfcHfKmTZCxxkRY9xIppavO+8en0t+f1
 ghX8RN+LrekyDPKsxxShGtglR9YbBiVyHD56EkW5xpD1ufeyjgcHn51S7l0GeOtWpv8y
 DS62JABG11fZtGYDMQz+5AWSt7P2x509JnZDQPLccp09NUx3EW+giqmH4eQsZowCBObQ
 Q4hcCLHndCcY7kei5idB/T7lAE+a4w7VJk8Qnz8jNb8OXXlgbwgwrQnGigz3FQGpn75h
 EqbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jfec0mvVC9M+nXvWP6tW40j27cDmVyaV4qDP3OCdODc=;
 b=aWr2Os196VDzknJ6qL8PY5er6K8LWIp3EGfzR+f/b6KbvLNjLVkabiQk61fSZSpfLJ
 D/mDGM+e9Y7lWyT5PEzkXfA9j2gLxhREdEfwh8/xcNUCSYsIHd2YAXczcFjZ5y+a7ukO
 26zpWQy2ja4ZHHqbO9K+1fZowsxI0v19kf/rPRedb6lQIgMU8nJesFmUk/SsL5TYLJHo
 QrnZ8mTcGdouzQtpLdAOTmHzvDh9/28BaDjone/xjeGzb19rdg0hs5EOmkT1AaNkvRI4
 VA3PQd6Z3JKPStxHTgi5Ukw8fwg5ihLP7yyQrRJXdMEwU0UW8ye122C6Igs/TsPEpgaZ
 jrcQ==
X-Gm-Message-State: APjAAAWDToLSLT1oiLMmD07jV/NPBANNzLueB807g/2PyPCqKFihJY7e
 ZVV9+SXl6z0dE/aaU/5e9d+TtKinAApQ8Xal+qdHe5PJ
X-Google-Smtp-Source: APXvYqy9w37/XJasm19/nhl++e/TQ6eHM1jV2Dyy4nJi5Ixw79vqtoRL1Dlpe38nZTfS47OJp41vk8IwZd6Jnx6kH1I=
X-Received: by 2002:a5d:8908:: with SMTP id b8mr17319011ion.237.1566415734583; 
 Wed, 21 Aug 2019 12:28:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190820194155.28992-1-mathieu.poirier@linaro.org>
In-Reply-To: <20190820194155.28992-1-mathieu.poirier@linaro.org>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 21 Aug 2019 13:28:43 -0600
Message-ID: <CANLsYkyrJTDeNNXrmNLgwRD7W00aj=YMtAx-DeezZk_xiVw05g@mail.gmail.com>
Subject: Re: [PATCH 0/2] Coresight: Fix for v5.3-rc5
To: Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_122855_956962_330F641D 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 20 Aug 2019 at 13:41, Mathieu Poirier
<mathieu.poirier@linaro.org> wrote:
>
> Good day,
>
> Please see if you can add the following fix to the current cycle.  If
> you think it is a little late I'll simply lump them with the set I
> have for v5.4.

I found an issue with a corner case - please ignore this request.

>
> Applies cleanly to your char-misc-linus (d1abaeb3be7b) branch.
>
> Thanks,
> Mathieu
>
>
> Yabin Cui (2):
>   coresight: tmc-etr: Fix updating buffer in not-snapshot mode
>   coresight: tmc-etr: Fix perf_data check
>
>  .../hwtracing/coresight/coresight-tmc-etr.c   | 26 +++++++++++--------
>  drivers/hwtracing/coresight/coresight-tmc.h   |  6 ++---
>  2 files changed, 18 insertions(+), 14 deletions(-)
>
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
