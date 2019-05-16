Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8AAD20D1D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 18:35:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nWcjBIJYlbmkBOt6wA+fTrAEED69vKuOBs0mybf0J50=; b=UIRlHS4FrwQhiY
	zrHu97X0x272GoxV3X3xsMDgQICmrpC3mFU+4Xd024nwbUUfIzqqW8SBUXZBxKOnfLkTCIvd4KYP0
	90W95dru6PqYDoie29RGuGAcaQb2j+Vz1TPdxddVVTLt6aymVfqIIfNdjBjWxblielgN4N2bRMk4U
	Y2LMs+5RBe2kGv74khCVm+w2KqI8v0//2EhbowV5Aq/8R1wCpi9QPcC21tDiit/PTRxzOr1P4DtMY
	4BLbqcsdJFZXVn7qTgUpO7Qqu1imq8/XHj6plN2AEN2QTIVKwpUy6k1J2QbacQQvh56QJ8vEeSgzq
	Aunt2JO9DeHqm81H8q9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRJLN-0002RH-Ns; Thu, 16 May 2019 16:34:57 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRJLE-0002Q9-5e
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 16:34:49 +0000
Received: by mail-lf1-x12e.google.com with SMTP id y10so3176562lfl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 09:34:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=p2G+ucNXk+a8RoYT1Q6cNvma1OaS/tE8RkAEZ52Ybr0=;
 b=RHvocOwMezWRuwXjkeQyqPOz7V85LuU4kf4GZIcx3YDeanv2gC5xc/YWHPDppP3mMK
 0o8f77KTwbYj1ez/Dv3hX7PwNwxA4Re2Ar8kXNUWBg9Qztvw/IYBGP9KPP2vmFVDTgQA
 Yn+09uK8xNOkI08IbEt2zgWt62ZgyojL/3l/I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=p2G+ucNXk+a8RoYT1Q6cNvma1OaS/tE8RkAEZ52Ybr0=;
 b=HiGuozX0s1AL1PGWxc4MYFuKSlKNreToyfajqSbDKcr/5rurBIioq8pLaocnprDcvo
 59/xMq4YmU8PxQP5wPzR3czPtobbR9BsXiD2256xi4BP6e8KUeAIg/UFg/tdZtwYqzBL
 y+EC4p0ikWX1NYtZlimrfu5tW9jksAmvVzFytrHyYKN6xiKKt4RH30zwWs5nsSVBIlA1
 1CPWV2jqweRs1YyTEasMM2bw6HnFIhu/oPy87t5H1KPqYIrgRka1t9SKp+sGg/L/aLzx
 A6/tcxu6v3HRVoZ0z5lWysM7Fko6Hc7IOaw3eOUQD1CIUJA4ksZ9Goxu+dqG2GNBRBT3
 hU7g==
X-Gm-Message-State: APjAAAUzO26VIgrp3gKRuwBR6e+n7xCsMy6/gKrc47n9iKbMIDFmJEax
 rJhibPKhWa5N1U88nA4fgN5cD9dwavU=
X-Google-Smtp-Source: APXvYqxO3wzx+8Dy+gB7ncauo4jRYZMeGFRPLaJ6vcf1pCQQfW8Q5tuRGOryN32thRJiLyszc6BkAA==
X-Received: by 2002:a19:ca0e:: with SMTP id a14mr24506814lfg.3.1558024485570; 
 Thu, 16 May 2019 09:34:45 -0700 (PDT)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com.
 [209.85.167.45])
 by smtp.gmail.com with ESMTPSA id x29sm1045652lfg.58.2019.05.16.09.34.44
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 09:34:44 -0700 (PDT)
Received: by mail-lf1-f45.google.com with SMTP id y13so3130857lfh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 09:34:44 -0700 (PDT)
X-Received: by 2002:a19:ca02:: with SMTP id a2mr24250454lfg.88.1558024484401; 
 Thu, 16 May 2019 09:34:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190516064304.24057-1-olof@lixom.net>
 <20190516064304.24057-2-olof@lixom.net>
 <CAHk-=wj7uZ+rLecwEP+U3jRRPWRoB1QVTr8pHzTcmQadE=Ngvg@mail.gmail.com>
 <aad06de6-b85c-b549-5653-45f9c4ebb384@free.fr>
In-Reply-To: <aad06de6-b85c-b549-5653-45f9c4ebb384@free.fr>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 16 May 2019 09:34:28 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgZFNMJCgs5a2hG=6gZxs0+xc_A7jXsS+EJfAi8h9W6Rw@mail.gmail.com>
Message-ID: <CAHk-=wgZFNMJCgs5a2hG=6gZxs0+xc_A7jXsS+EJfAi8h9W6Rw@mail.gmail.com>
Subject: Re: [GIT PULL 1/4] ARM: SoC platform updates
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_093448_220506_41B2729B 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Linus Walleij <linus.walleij@linaro.org>, arm-soc <arm@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 9:00 AM Marc Gonzalez <marc.w.gonzalez@free.fr> wrote:
>
> Your email client did something strange by changing
>
>         linux-arm-kernel@lists.infradead.org
> to
>         "linux-alpha@vger.kernel.org" <linux-arm-kernel@lists.infradead.org>
>
> which is odd  ;-)

Heh. Indeed.

What seems to have happened is that somebody long ago sent an email
with a missing comma (so "linux-alpha@vger.kernel.org
<linux-arm-kernel@lists.infradead.org>" - *intending* to send to both,
but ending up with the linux-alpha list being the "name" for the
linux-arm one).

And then I replied to that email, and it got picked up as my automatic
contact. So when I replied to linux-arm-kernel@lists.infradead.org,
and it had no name, my automatic contacts helpfully filled in that
bogus name for that list ;)

I will fix.

I note that because *you* had added the right name for the list, this
reply didn't even try to use that bogus contact name.

                 Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
