Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A13057C80
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 08:52:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+cMJWPQnQ9Svc+Dr1U+CZMftBf8lPrwq/SqupAB63TA=; b=ag4fK3M8SJd0Iu
	t9jEOfVOk22ZK6NjeJkewSGvTKufaXFkAXMxihCm6fzXs6Qp62JJgr0/QyEJtH8nR/YKlVOgWACI/
	pZK5bPvUp2dz6FcQ/zCwyw/UeVneJWF2jlv3K6t4xTP0JDTPCKY27c9VPgfG533U3u7YNzZ2G1KmG
	T6Cqwelk4kzaE2heIRb2Hq+1SFAujCnbiRXvnwHZp4EXKnY1KyCopFCKi5D8oWSJnnxP+LEjxoyjU
	UFrcT0hJW1XN4HNFSkAhe/3fpse/I1jRCqaW0UXvMmul4hE0cPgR166J6sqC+yIjh5fc3orgsqlM0
	v8htp/q8b/a/mK0AWgew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgOGp-0007R2-5Q; Thu, 27 Jun 2019 06:52:35 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO8h-0006KM-6V
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 06:44:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=L2Q5XHKelfQkjrwCrn4wOaWyOpvTiODS5vOc84eDxew=; b=fj+MtGC0jZ3f+Zzhb0yQCSO8l
 96rdpSUzF8AO8HV1DX1vqX8wUcl5vJi9IprFNjD8ZZo6SI0T6EHmngd6ZA1CtNrnSQbfbMWTSzHS+
 2xNJjMZYYkGWoXerjQXy4zmQD2OVVJFc3c28uncvdIZqfTEzswlIbbii+Vlgi+7MkRlibju1EkRkl
 VWqMyJeibfDzwVapbVed0WXTeX+YTkx/2thsCRGdGoMK6CezKtNbBBa5JeEj5Kjg821Fn/Z3bj5Qt
 zQ0CtbFG2WwKauuYb9vCOqXy9eaS5aSB64CglNessle1q4D5nLObRyQHrJivrLnpueOhN1Wz4h8KV
 niF9oXpEg==;
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgJMC-0005OS-7A
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 01:37:49 +0000
Received: by mail-io1-xd42.google.com with SMTP id u13so1161344iop.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 18:37:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=L2Q5XHKelfQkjrwCrn4wOaWyOpvTiODS5vOc84eDxew=;
 b=FGS0QkFaBTr98/I3wX3l3Xwn5/UoXj/EdPToMw7TfG1aRgpH+EnONtjqdZhxs34fbo
 Aa3mQUHvVI4LUbCOi1oRI+0oljGBbrqzVCG99hFfjI2V3rbr6YHGEfHcgkwqxMk3b815
 xLanycfZWa9NodV+TommWxgf6QKZID6LlGP8mFd3LUrfZNFS+edvM1CsSrkXdRl3X2Hb
 fZlb1QCtboFHYZ4MXkqLlhEC5RcS7fCp0vYfkuOrGhjjjjxA3eL2eWid+mOJHAOzahhr
 CKVV3otYAynLepoc4pGK6KW5FiNh91E52SLuRPARlTQfKVvs1TXfFlkxtO6du1WnC6X/
 nDCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=L2Q5XHKelfQkjrwCrn4wOaWyOpvTiODS5vOc84eDxew=;
 b=O4zixLAIFiTgreeSYwyUNnQ2bZcEjwO+SLmb4ET/dx77MYxJQIe3oWr43+ojzbCk/Y
 4cir0oBa2LSdtH8Jb63pCu6aBFcIY7iteAOnbwFO73KweO83MDIIPM858rGJhdWdF9gO
 6ZhDL/xJ0r/g0TCtWM5UE1/mTLKV/fGMTBi6L2w4gOOfPTL30198Tlk2TRWLofQQ1H4F
 kuG5DuAKwJ3Pw4GyvzIQDE6hUOiikbvy5Og+AlC4tvvCktw4Z4xmoxPWtbvXY5SHysgu
 NGLOhqWC9RwFYuTYkD2CtyZPg7mzMvxulGtC1+sPyNTeiMwj+NlfDblbotnGAWMKyiSD
 n7MA==
X-Gm-Message-State: APjAAAVL7jEXfDKi4HKSBP1jSfOv74ffnf2IgRKmaoe+vSELxVE02qKX
 J5xnowAB5IoTipEiQjTf9P22qidzfZ59WfmG5V180Q==
X-Google-Smtp-Source: APXvYqzjHVXBPJRsTAL4Ko5kFmM6fTuQiqSMoCWmWcBnzUvY6+yWotykh5i3K3ina2IROBrQGhCo8dMJQyRSib29VSQ=
X-Received: by 2002:a6b:1494:: with SMTP id 142mr1560459iou.72.1561599343195; 
 Wed, 26 Jun 2019 18:35:43 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1561105093.git.horms+renesas@verge.net.au>
 <20190625124924.ubpi3pxwggbz5cbw@localhost>
 <CAMuHMdVj5G6-m9iqQQM5nAQZbhC=GL0DtgUKXff7UBQ8uNwmBw@mail.gmail.com>
In-Reply-To: <CAMuHMdVj5G6-m9iqQQM5nAQZbhC=GL0DtgUKXff7UBQ8uNwmBw@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
Date: Thu, 27 Jun 2019 09:35:30 +0800
Message-ID: <CAOesGMjVE0--LQF2eULx5WgANSsuiYPbmy0bv2HUUirokLJ=vA@mail.gmail.com>
Subject: Re: [GIT PULL] Renesas ARM Based SoC Updates for v5.3
To: Geert Uytterhoeven <geert@linux-m68k.org>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>, arm-soc <arm@kernel.org>,
 Simon Horman <horms+renesas@verge.net.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 9:23 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Olof,
>
> On Tue, Jun 25, 2019 at 3:10 PM Olof Johansson <olof@lixom.net> wrote:
> > On Fri, Jun 21, 2019 at 11:12:04AM +0200, Simon Horman wrote:
> > > Oleksandr Tyshchenko (1):
> > >       ARM: mach-shmobile: Don't init CNTVOFF/counter if PSCI is available
> >
> > Merged, thanks.
>
> Thanks!
>
> > Note that in this patch, code like this:
> >
> > +#ifdef CONFIG_ARM_PSCI_FW
> > +       if (psci_ops.cpu_on)
> > +               need_update = false;
> > +#endif
> > +
> > +       if (need_update == false)
> > +               goto skip_update;
> >
> >
> > Can either be replaced with a goto under the ifdef, or at the very least, no
>
> I believe a goto under the ifdef may cause a "label defined but not used"
> warning if CONFIG_ARM_PSCI_FW is not defined.

Ah yeah, good point.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
