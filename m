Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C82AFD92DA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 15:48:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=erhqFaBkxQjnU0rddnDPQAF9VSuXEzoDVXkmH3lvAc0=; b=kBuLlFapQtIuYF
	25n4TdqrKZ6Vm+2PNNpMJjonhTdXnU8j8AOkt5T/unqqEpd5XhTyFs76mdNRQbcie6hLB4xhruvCO
	GY0zKylu4KDP6TJPRkg6iFuyZBIOWxzdx5R6BoW4WWZQmtJzbNqXxe5i48RXIYhlUqsP0zvoBjdoZ
	ex1A2UxNN83maDKyNfvgapnx5YX11Uuxq2USX6k9XVznRw+B9ZY5sXON9sKa6sgLv2vbd5Ojqp6K5
	9bYO9DFLz+sDaCgD+wI7UuXDmUI4wIFXi62rLJnFa29ht6Ur50KNBrARgOYOOFmPdBKeWUSuhSGTE
	3oY898Otpv/3vXLD2NxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKjeW-0002ke-0q; Wed, 16 Oct 2019 13:47:48 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKjeM-0002h4-0B
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 13:47:39 +0000
Received: by mail-pg1-x543.google.com with SMTP id 23so14350708pgk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 06:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1JVFdwKlaPYassS1P4vCJ7IRfc1G8OZB/8GG6B6QAKU=;
 b=VbkALZgvawS7++VjgchcjceK2EUaIW1czrAF0mzpTmrt9yYBNa0kdMewXd6eeII6gz
 Rkd7dwCb7/i4sQSV1iHUD4XSb0ZwDdBEFLeOlWj9cNMbwtsAAGg1xm7MPyBaRH/Aw/F/
 NU0IrLA+OLExlnUKTUiX8XO6aQ5Lk0hOUUaE0lAvaljh6svWJcDoN7y/NTdprxlOTpGB
 a4gGNorvK7FlKWWxjVRnmhR8QK1vLlp6CNZ/CtTQLicWGGSa1457U263XVcD1beHsWvk
 Wgl9Tu0BIDL1scnqfgsLOQuFvs1A7bG3u0iUMI+HZLOqsPQMeGeijY6CcHD9R4YkqEwT
 dSlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1JVFdwKlaPYassS1P4vCJ7IRfc1G8OZB/8GG6B6QAKU=;
 b=nXTbqyjmmSwGVpXsRtw23M+EkDWUPaUALB36jFnB5A7p6Rx+VYs9ITSMq4WgIetU43
 oEZ10/f12SdvWJ0//jz6EW4lKA+sfXE5zVsFiJ+dl+II513tbadmy7aPBPhy3nfU0Pv7
 T+/x32IL/VQC5+EdH6b9oPd7EpOyVv0tFvbiGTUT7T/EjfceKNA6OFJBtnLR4lirpJk4
 pIKFtTNxhA+Ea9cvM6dKRxWBzFctZbqaWq+kb6aqgb298ri0OjiAJB0PHZchHK5tAg2w
 Y7welWztZoM1DhXnbX0yQXjyhuNybVwSOCcUaHk+4OMjbnUmPocpqJkfIXCHTF1tQ4Q8
 HUPw==
X-Gm-Message-State: APjAAAWNlKYypDaxGc2V8MF+wv9eBv+i+k/YPceYXwBUjEgm7a6I7yB8
 O5+7b/uWpntJmosN2ZEaVk5QCv1NhVh4KeX5U9GklMXAqXg=
X-Google-Smtp-Source: APXvYqykP0o+867649gE2hCiggbrb2pT/G4uDU3UQ8rRMu+wHyVWOvBcypSoHkLga2SYRoYXywWna/jrUWXM6b0JV2Q=
X-Received: by 2002:a17:90a:6509:: with SMTP id
 i9mr5126668pjj.47.1571233653976; 
 Wed, 16 Oct 2019 06:47:33 -0700 (PDT)
MIME-Version: 1.0
References: <15b7c818-1080-c093-1f41-abd5d78a8013@arm.com>
In-Reply-To: <15b7c818-1080-c093-1f41-abd5d78a8013@arm.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Wed, 16 Oct 2019 15:47:22 +0200
Message-ID: <CAAeHK+zbMhErcEo66w6ZH45A3XUH_joUmimOa2RL1t1Q6AV_PQ@mail.gmail.com>
Subject: Re: Makefile kernel address tag sanitizer.
To: Matthew Malcomson <Matthew.Malcomson@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_064738_066558_3B106BC5 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: kasan-dev <kasan-dev@googlegroups.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 3:12 PM Matthew Malcomson
<Matthew.Malcomson@arm.com> wrote:
>
> Hello,
>
> If this is the wrong list & person to ask I'd appreciate being shown who
> to ask.
>
> I'm working on implementing hwasan (software tagging address sanitizer)
> for GCC (most recent upstream version here
> https://gcc.gnu.org/ml/gcc-patches/2019-09/msg00387.html).
>
> I have a working implementation of hwasan for userspace and am now
> looking at trying CONFIG_KASAN_SW_TAGS compiled with gcc (only with
> CONFIG_KASAN_OUTLINE for now).
>
> I notice the current scripts/Makefile.kasan hard-codes the parameter
> `-mllvm -hwasan-instrument-stack=0` to avoid instrumenting stack
> variables, and found an email mentioning that stack instrumentation is
> not yet supported.
> https://lore.kernel.org/linux-arm-kernel/cover.1544099024.git.andreyknvl@google.com/
>
>
> What is the support that to be added for stack instrumentation?

Hi Matthew,

The plan was to upstream tag-based KASAN without stack instrumentation
first, and then enable stack instrumentation as a separate effort. I
didn't yet get to this last part. I remember when I tried enabling
stack instrumentation I was getting what looked like false-positive
reports coming from the printk related code. I didn't investigate them
though. It's possible that some tweaks to the runtime implementation
will be required.

Thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
