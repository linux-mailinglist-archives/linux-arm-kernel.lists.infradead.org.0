Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B707D4D41C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 18:48:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=czOzW1MGff2cLCmNJ/PjXbEMBOlwOhkyC2O/sBhRCRI=; b=cZliqHzqWWWxsc
	+sfYRaIJIlJUC5x2+5ub2V5keM+UYsINLpI80vrFhOOBg+X92CD500ivrgkSLwDCLCv+JDLh4hGre
	koJTxjENM3T9LxgTBIB7Qgm/AhrJo2A3COZ8bsrJ3ZOm7idkDEWqabTpFzzjDECUCavJNkrzwECgL
	nC5y5hbY72VfGbgzHp9fwb0knbuRRxf+258JQnimpTKok+Uz5xYrB+xBSmcOxDT0qcDqDH6frWw3S
	mv6J32ZfKiokKdpBBI9ePpJAuuyVBxh1fBZF9rcEOB/Ww3IXOb8vq550IDv27/6U+ZYN70izQWnvE
	jjSkEUHKfGReOgtiCdVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he0EO-0000Om-9v; Thu, 20 Jun 2019 16:48:12 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he0E7-0000OD-OG
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 16:47:57 +0000
Received: by mail-io1-xd44.google.com with SMTP id e5so1119040iok.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 09:47:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CjpOaYnyKD0RsTayg16gvfogk2XpjaDPoqO73aBR65c=;
 b=ByArDbwFNXtNdIyojw8Mre7ux0Uu1QLl803iDxTLS/BvXdzMPv2BEIYZrdyFeg7Ctv
 dg257iVvoN2M/pmjjJnQRdRCJbzRWugPUa1j0EnZAFzWaamc9j4fB5zbWKmXwznr+zt5
 vM7NJhz9Zcbl3NqPzp7G3tj/X+8WStF8nQC2jQRwEejavebe7AQnR2nVtDcW8uoR5/CZ
 9P8jcPyEUOHRt1Y4tyttmXyKQXl17iXT+6qBQH8xxh3Bwz+JdjQNSjusfYONt7DqNrGP
 0BS71YDN/dykwRA5ZxISDIY+JXbsRal9oCVOA/6kerWrlMrs01abAd6o6JJsiUL+4izi
 vFhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CjpOaYnyKD0RsTayg16gvfogk2XpjaDPoqO73aBR65c=;
 b=gnJgddAgpiDL2CpKmzKtbEMNMLNUJBg7Di0oNpw+pcKVGWqDdob380lkDGz99t327j
 H0KQxzjcMXcC2vvWt8i8hPkqY8T5PYHq1NZwRTR6CbGAyOFG8VEkLQmuUMvGGW6OjddD
 Y7Ml5cW8+wtC6YoJToiMrlIPl+7mFPZeAt05PZCnjFTa5EuGuzFi2qSbUIbbZTAizXcC
 p1GwkUCyjU4GloJdad5aJ50xiqbdn5dD7tPkUQSxdZlyhNS+b5x72fn+AAMI0kZTGk5X
 v3tN6IVFUF/fKSjlSSHzAGWQ8pLByQt3PfaBxGrAJmFa6YhcGH1kBPCtWLrhsU3stqSh
 Y//A==
X-Gm-Message-State: APjAAAVCDtOJGV3MDRDaozeRtonbPse4A+eon6htHCTFRslDtgtZgt8d
 fKw4ixrt9yW8Zvh/tGxzYwmRPh1kxCvxEa/zN29DfQ==
X-Google-Smtp-Source: APXvYqyNGZvZvjMyWF+gDkR+YgNbhHPg1VUs3xBv10PE9fj5rT5Bb4UZYMXS3rWuHJO0mJJAmoU6F2KL6Wmkp6mTEdk=
X-Received: by 2002:a5d:8e08:: with SMTP id e8mr14643744iod.139.1561049269864; 
 Thu, 20 Jun 2019 09:47:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190618125433.9739-1-andrew.murray@arm.com>
 <20190618125433.9739-6-andrew.murray@arm.com>
 <20190618132159.GA18121@e107155-lin>
 <15ef45d4-ee1a-3c45-878d-f08f0a84cfeb@arm.com>
 <20190619110749.GD1360@e107155-lin>
 <CANLsYkw-KhMVgTfyBSF4-uv4wxQBBQfzyvVbAnaFSqHhkgX6Mg@mail.gmail.com>
 <20190620114116.GE20984@e119886-lin.cambridge.arm.com>
 <20190620154154.GB25273@e107155-lin>
 <CANLsYkxSBuqKJZQLqR238TGe1p5y7QPyLHSZTAOF++=uzGUJjg@mail.gmail.com>
 <20190620163426.GC25273@e107155-lin>
In-Reply-To: <20190620163426.GC25273@e107155-lin>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Thu, 20 Jun 2019 10:47:38 -0600
Message-ID: <CANLsYkymTnxRX61StUGvKGeiQV6P6YbCg81PSYeBpXLsX5tpiw@mail.gmail.com>
Subject: Re: [PATCH v1 5/5] coresight: etm4x: save/restore state across CPU
 low power states
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_094755_795150_3EB4E18C 
X-CRM114-Status: GOOD (  18.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Al Grant <Al.Grant@arm.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Andrew Murray <andrew.murray@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 20 Jun 2019 at 10:34, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Thu, Jun 20, 2019 at 10:14:04AM -0600, Mathieu Poirier wrote:
> > On Thu, 20 Jun 2019 at 09:41, Sudeep Holla <sudeep.holla@arm.com> wrote:
> > >
>
> [...]
>
> > > Sorry but even then I prefer it not to be default and force extra work
> > > to the people who add support and constantly be reminded that it's
> > > broken and they are deviating from default behaviour in the kernel
> > > which may come and latency penalty.
> > >
> > > Making it default may hide the problem if Linux is used for some validation.
> > >
> > > Also we hardly have 3-4 platforms in upstream that support coresight,
> > > and many are broken except Juno. But that doesn't imply all others
> > > are broken and we just can't derive that unless we have more information.
> >
> > For now we have a clear trend.  To me it is not a matter of broken vs.
> > non-broken but more about what people want to do or can
> > (realistically) do.
> >
>
> No disagreement there.
>
> > The coresight specification is broad and very permissive in terms of
> > implementation defined choices.  It is not because the TRCPDCR.PU it
> > not taken into account by a platform that it is automatically broken.
> > This could be a design choice or a trade off.  We already have two
> > ways of putting a CPU to sleep (architected or OS driven), we simply
> > do the same here for coresight.
> >
>
> Sure, if the term "broken" is inappropriate I am fine if anything else
> is used. The point is we are adding an idle notifier that adds latency
> and must be done if and only if necessary.
>
> How you identify that and implement doesn't bother me much, making
> that default just based on the fact that more platforms need it
> compared to others definitely does. So I am fine if this needs to be
> advertised *not broken* but *by design*, sure go for it.
>

Then all we have to do is make the ACPI/DT property that indicate the
method used to deal with tracer idling mandatory.  That way people are
conscious of the choice they are making.  To be backward compatible
with current systems we default to the TRCPDCR.PU method but print a
warning message, just like we do for obsolete DT bindings.

> My main concern was additional latency that this introduces for platforms
> that don't require.
>
> --
> Regards,
> Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
