Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3442CAC91C
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 21:58:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=omZi9fcAW1n9YHNJAC74CUr07gQRwMQkB4LNQk7puv4=; b=i1rhvjEB3zsqdR
	00YUc9+eOOE023dVYdXOwrA1612oVb4bYIjkGhbhuzwx3CSky34i/NkG/bBayc1y0mGkDwvloZAZF
	mvyHzUuhq2ej954Qe0pxJtZnyvIyjEChPhULPkZJ4QwTdsr+IDLMtQOdrb1oEE1lag768ucY67V2J
	ik2TSgkXUIZcGrrvzoydntQzeSo4kcJf8HiHQ1fyBfRHPtF/TlpbXcjySnEww2zFmF+C42QD1RYcg
	feG6HE/ydd6V4Fd8SSS+yt+MnCJYhPU262E6uUAYWUZgpXT5K4IWIcDenwx1sbcwFSZJhVaw4kQNN
	3tgRNEzrLz8ratVykhGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6gqg-00084S-9f; Sat, 07 Sep 2019 19:58:18 +0000
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6gqP-00083b-Ku
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 19:58:02 +0000
Received: by mail-qk1-f194.google.com with SMTP id u184so6132947qkd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 07 Sep 2019 12:57:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9NPm7pq2etg3aO5AoopkMdbvIMBa6Oa5m8sS5IwERn4=;
 b=Pj0GUQ33qTt4KG3asDR9IxpCZuu6ogFt5VPGBn5laKyu+D/0VhvOKkaL6K3JHSImVC
 6QtU5t6ivixTsZe+eL9+LPy4kV/F2E5Mu7UnsHjo+KnFRF8ggs1Mni4K0FMSWI/5EbzD
 lSw+BIxECXMeYT4Oa8itBdDAine5/awHcxwZjswSgfVFSCZc33mo3Nu6zC3o2fAcw7gf
 fpe8IHwlhzexAqTmHGxXt58YDS6ObNxV2gIltA1DmHGdOwDcfXFlmLu8UVRCN7en5EBJ
 KQ9A4vcqHynZWyzyx6PZY+iSw8Ik4mtBmg1hwgSnZtew/r1Rh7MX4+KqXfjFUxFxs1Np
 q2tQ==
X-Gm-Message-State: APjAAAWC9dzT3V5X5GSOy8W52NVZ/mxmu54cPM3wWo0L7qNWZK1afjx5
 Tqbesja9UByFoW6HwofbGnZMHk1cTSH7Q0aIfjA=
X-Google-Smtp-Source: APXvYqx8oJMvuPB2/youI+h75v27+Ip96nv7/l7tdwFLO1GMppaXZm3p/ssMxkoocV7Lo+QidZdpBd1QqU5QYX//lI0=
X-Received: by 2002:a05:620a:145a:: with SMTP id
 i26mr15728941qkl.352.1567886278121; 
 Sat, 07 Sep 2019 12:57:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190828072629.285760-1-lkundrak@v3.sk>
 <20190907194040.GB25459@amd>
In-Reply-To: <20190907194040.GB25459@amd>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sat, 7 Sep 2019 21:57:42 +0200
Message-ID: <CAK8P3a0nNEoy31oxFL11Y2VHw-O=m8e8JuuQk+FjiPh94GikoA@mail.gmail.com>
Subject: Re: [PATCH v3 0/6] ARM: dts: mmp2: devicetree updates
To: Pavel Machek <pavel@ucw.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_125801_687774_965D7B96 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 7, 2019 at 9:40 PM Pavel Machek <pavel@ucw.cz> wrote:
>
>
> > Here's a couple of updates for the MMP2 SoC devicetree files.
> > I'm wondering if they could be applied to the armsoc tree?
> >
> > Compared to previous submission, the only change is the addition of
> > Acks from Pavel.
>
> Any news here? Having up-to-date dts is kind-of useful....

Thanks for adding me to Cc on your reply. I'm doing the merged for 5.4
and had not noticed this series earlier (I found the mmp3 series by
accident, but that one looked like it was not meant as a submission
for inclusion yet).

I've added the six patches to the arm/late branch in the soc tree
now, they will be in 5.4.

Lubomir, please send all future submissions to soc@kernel.org
(with Cc: to the interested parties) when you want them to be
included in the soc tree. That way they show up in patchwork
and won't get lost.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
