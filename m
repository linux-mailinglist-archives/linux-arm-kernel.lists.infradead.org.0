Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A77B39158
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 17:59:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8h/CRwvjBGgOPJZBPkjuWi/w+ORmeGr5wO0zlCqt0J8=; b=KmNeCBzQnW5sXy
	/a/q1SMCMfOAo0aXgTXKMzdmZ/ALem67f9VvyAxWWfdSWACl45mrVEojmXhJcZ00wfENiLROPgXVD
	MvFKk90xbv8WQsHh0kWhgmnXkvL27I7OgVP4f6UYUsTUEdH4dyDY/bTQKwR9+/tHzCdguHHz1j+3F
	VY9srSYtXloFx9Ig8doJWKnRMa6Z2vOdUck0j5d5fQ6MUGQvmKoNHem9Xe8bTaOBbWGHRv7c8tXCI
	MQ4l4Cpf4JqYBCTzleLAPTuHF9zhrhOnK0/4Chg1xxbEIKBXyixUj81uBWiDbvXn+8dZdUZeFo62y
	87txVIP0gS0EZBsIkfDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZHGy-00059s-Oa; Fri, 07 Jun 2019 15:59:20 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZHGm-000599-F0
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 15:59:09 +0000
Received: by mail-io1-xd41.google.com with SMTP id i10so1777302iol.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 08:59:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ewMHrbrVvN4gVJpFfne3Ko4Ig9zBbFgoDweVZi80Iis=;
 b=ikGOtCEI2xkGJiF/rscqmIZGgmjsg2cG96nsYnWF+sShH8/2RPNrrxDEzNKw5puBJr
 CLnGqRjFGkyn7RGCJNhNxASebmtvirIhbTGFy8yS8IHJlPT1QYZkh3YI/fnCzw3C3oXE
 f3zJsVCqynVuZvcKa3O2bzpUsWxceyOPmQaQllIEX2yNH5I7Zj9/HcFMj7HbHPFEpwnG
 xbZ9PFiITzvbQARLu7xHvWWMXXixHxg1c8wkFzVpkPv/K2baTapbCa7nUoSVsxFPrOwY
 AZzZF1hlR0aZP0pb91FILI3U5DLWoL9NX6ga0IYnsPws9Y9Uhxpl/G21jCOVJ5hoORYA
 1W+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ewMHrbrVvN4gVJpFfne3Ko4Ig9zBbFgoDweVZi80Iis=;
 b=fhHZlafKKxaS+t+PqHIUo7tM1iUSabWfbGnATKsFYTkVXPOScGQwFFgplxiCGEBxZm
 zvd7dPUrSD9RK3n1aU0+Tg8NT/hj3tVcALA/b8oC0BYu9azbiqitC+s7hghfXm0FX4q4
 Ybqt93pUFNwGGyhKPmFzvB/P2N7A2dNJtW6RH/r2pQDhq+A6WKKBGNupGPk7+/sfTt4p
 3Dzsu8ublAGRyKaHgAgUxsMipXfAY3ZSa1BMhlyQ+UYXkYjbxksJ0G2ltJ4V+4dCWjnR
 83Ho+qGPKYedxJfuaFbO8+SZfYPxcThpEkghRpQgXZE6ywxgHfa6Pe4Yca1wffilMw6g
 d3tQ==
X-Gm-Message-State: APjAAAWXybFey2l5IvT6phFU0M2GEm+jI50uRCNmL/DRPyPGr4AzkTGC
 EJoES0+uUU+ce9ShnKicdhaoAUEK6pcKo5mEygI4Zg==
X-Google-Smtp-Source: APXvYqwzayJ8qqte/5dnP1Isc+20qODkQw4i0F2UFenu7Y84bawQ8IDq2LnGM+SqRLI+C7+It91yrOyydVLiIKYpWj8=
X-Received: by 2002:a6b:2c96:: with SMTP id s144mr19148570ios.57.1559923145932; 
 Fri, 07 Jun 2019 08:59:05 -0700 (PDT)
MIME-Version: 1.0
References: <1559229077-26436-1-git-send-email-suzuki.poulose@arm.com>
 <20190603190133.GA20462@xps15> <99055755-6525-694e-a15d-5de7318a80da@arm.com>
 <20190607022136.GE5970@leoy-ThinkPad-X240s>
 <78c98c28-4f3f-825b-18e1-c71fb63a80eb@arm.com>
In-Reply-To: <78c98c28-4f3f-825b-18e1-c71fb63a80eb@arm.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Fri, 7 Jun 2019 09:58:54 -0600
Message-ID: <CANLsYkxMeYK+XJYHRvixRL6pwfhP8KjMTi6i1syMEvwNbi5vkg@mail.gmail.com>
Subject: Re: [PATCH] Documentation: coresight: Update the generic device names
To: Suzuki K Poulose <suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_085908_510497_9371AFD5 
X-CRM114-Status: GOOD (  19.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
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
Cc: Coresight ML <coresight@lists.linaro.org>, Jon Corbet <corbet@lwn.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Leo Yan <leo.yan@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 7 Jun 2019 at 02:40, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
>
> Hi Leo,
>
> >>>>    A Coresight PMU works the same way as any other PMU, i.e the name of the PMU is
> >>>>    listed along with configuration options within forward slashes '/'.  Since a
> >>>>    Coresight system will typically have more than one sink, the name of the sink to
> >>>> -work with needs to be specified as an event option.  Names for sink to choose
> >>>> -from are listed in sysFS under ($SYSFS)/bus/coresight/devices:
> >>>> +work with needs to be specified as an event option.
> >>>> +On newer kernels the available sinks are listed in sysFS under:
> >>>> +($SYSFS)/bus/event_source/devices/cs_etm/sinks/
> >>>> -  root@linaro-nano:~# ls /sys/bus/coresight/devices/
> >>>> -          20010000.etf   20040000.funnel  20100000.stm  22040000.etm
> >>>> -          22140000.etm  230c0000.funnel  23240000.etm 20030000.tpiu
> >>>> -          20070000.etr     20120000.replicator  220c0000.funnel
> >>>> -          23040000.etm  23140000.etm     23340000.etm
> >>>> +  root@localhost:/sys/bus/event_source/devices/cs_etm/sinks# ls
> >>>> +  tmc_etf0  tmc_etr0  tpiu0
> >>>> -  root@linaro-nano:~# perf record -e cs_etm/@20070000.etr/u --per-thread program
> >>>> +On older kernels, this may need to be found from the list of coresight devices,
> >>>> +available under ($SYSFS)/bus/coresight/devices/:
> >>>> +
> >>>> +  root@localhost:/sys/bus/coresight/devices# ls
> >>>> +  etm0  etm1  etm2  etm3  etm4  etm5  funnel0  funnel1  funnel2  replicator0  stm0 tmc_etf0  tmc_etr0  tpiu0
> >>>> +
> >>>> +  root@linaro-nano:~# perf record -e cs_etm/@tmc_etr0/u --per-thread program
> >>>
> >>> On the "older" kernels you are referring to one would find the original naming
> >>> convention.  Everything else looks good to me.
> >>
> >> True, but do we care what we see there ? All we care about is the location,
> >> where to find them. I could fix it, if you think thats needed.
> >
> > IIUC, either the old kernel or newer kernel, both we can find the event
> > from ($SYSFS)/bus/event_source/devices/cs_etm/sinks/; the only
> > difference between them is the naming convention.
>
> The cs_etm/sinks was only added with the CPU-wide trace support. So, if someone
> refers to this document alone and then tries to do something on on older kernel,
> which is quite possible for a production device running a stable kernel, {s,}he
> might be surprised.
>
> >
> > So the doc can use the same location to find event for both new and
> > old kernel, and explain the naming convention difference?
>
> My question is really, does the naming convention matter ? What you see
> under the directory is the name. But yes, I am open to add a section to
> explain the fact that we changed the naming scheme, if everyone agrees
> to it.

I think it would be preferable to mention the change - just a small
section that describes what happened and the reason for doing so will
be fine.

>
> Cheers
> Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
