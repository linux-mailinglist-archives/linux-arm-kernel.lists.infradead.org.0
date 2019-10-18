Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB484DC0BA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 11:19:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JKzPOAXU59HJocByubso7uq2s7QzPVvAeU+blDiRL2Q=; b=mROJXDB40hdqcx
	pma8Lomg64jSYXtNfyj5Wg22IbvxCJhxjyQdFMLMax42soLtFiE/WT+v2aEM0Z0NfweaUdfXIrvYn
	T6ZYTl/z9xko7uYgJ88fLadZ5RMZ7XnHYGdyCmluu1/N7XH3lThRj1Ju4QnSbyxu9tg2DTYO/bIRN
	dy5Jn4ZpzeF5gDY54fOuTpEwtp7+p3pkjhCi2ECBc7znGf6B6A5p7ATO99zw9OLaLQENA7YK5AIHo
	cJi8vsdL4pgrBWw56ugXZz5MPLZ2sFQo4D7WX/tFgPz6T0jd3yGmRt7L1t5R4KqKTR+s3LnJ0jx7Y
	/wU90NBgXhPtS5kKMuKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLOPm-0002Bv-Lq; Fri, 18 Oct 2019 09:19:18 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLOPb-0002Av-M7
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 09:19:09 +0000
Received: by mail-yw1-xc43.google.com with SMTP id e205so1926502ywc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 02:19:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Z+lQ2vvz51oFYeiM6k7BQbwMui72bfHQHjmRy0L+AxA=;
 b=ACvp92dWges5svxbhRUbOeZgMj4RVHJBCPyqRlUDAbQOWOtKdysk3+ZmIzVP3/p9of
 8QEJ0hTE5RHPa3EX4JMa/5betwdH08Nu0KjN60a++w/MREl7B0IP1Ha/Jvz2Ip6bDDpe
 HiAe2+rRuHb894TeULs91YERSQcOiCXJaQEx/Ni96LitP6ZmM3mlof0Jl7HkdE6VqHvS
 S2RBXc6NpfJIuvRXju4BmvjCvz8xaf5sNYPtzOhg5OluuDcmZf1HTcoZ3bqWnBbfTCCi
 wg/0CizUmf2y7YO5n7SceAu14dPfN4d04yO+VrcCkgBOOk4+O8gzD6FYMXl8xwDIp89S
 S9lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Z+lQ2vvz51oFYeiM6k7BQbwMui72bfHQHjmRy0L+AxA=;
 b=tXaA8w0QC2zZwLqAAlOSCghkgvsuWCB3XnCImM23xgmO9fXDTNEjT5oh9HPbr1WVHf
 kon/gRtgbxnNdWEr1KExtnGKZOfXfFx7jn0MBprDxqhaahwdjcCehubK0LZPTE2pC7jo
 z9VAfLS2bGnmVk6rKHcO0yHTYicy/MkVWOe96GFTtWxfHfjqBxzAzEbbgSwmR7tb3uSU
 bwYcUwypHjL2O3Sxi25whyN/DSGIURNMV5GtfrW06pA6f9DrrxCbYaQrZQhWiVLBW/ku
 qWI916CQFr6OyHdHzrIwAQMPlvFtaSNl/pqqDt4AbgtYobm1PszL27OzbaLN6J1owIQp
 MciQ==
X-Gm-Message-State: APjAAAU0pTeT0IFZ6hJfj7o/GJjM9ziQpmOWVx9jUUMhf+9NkoDNT9eK
 /zg9WmKn6UlyRidEm5CDsldHk2OJWSgZDnmVl/8=
X-Google-Smtp-Source: APXvYqyxtzf+5bBLVuzlkXmXNftfRV/zdGyqW/ymUVUbvCi5HWZYp9XZivPbaMnTq4UTh6nHp++iGJRqsdcPz6YG/iE=
X-Received: by 2002:a81:5742:: with SMTP id l63mr5816824ywb.295.1571390346123; 
 Fri, 18 Oct 2019 02:19:06 -0700 (PDT)
MIME-Version: 1.0
References: <1571218608-15933-1-git-send-email-gkulkarni@marvell.com>
 <1571218608-15933-3-git-send-email-gkulkarni@marvell.com>
 <b8e1a637-faf4-4567-7d3e-a4f13dfa1cf0@huawei.com>
 <CAKTKpr4QoTDjbSxO4CvSH2sNvmrTJKjxi+RZH4mYfyDaaN96Sw@mail.gmail.com>
 <20191017154750.jgn6e3465qrsu53e@willie-the-truck>
 <CAKTKpr5ntp5X6Lvp=rKT_F1E1ftdqtjSWTgpEOqEwaDMH2kc1w@mail.gmail.com>
 <f7c91a7d-1f0e-24be-1491-fd0dae7f1daf@huawei.com>
In-Reply-To: <f7c91a7d-1f0e-24be-1491-fd0dae7f1daf@huawei.com>
From: Ganapatrao Kulkarni <gklkml16@gmail.com>
Date: Fri, 18 Oct 2019 14:48:55 +0530
Message-ID: <CAKTKpr5-m3s_7zE1C=62yjUL8mPURzTBTiR2OD8bgx65LEAj9w@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] drivers/perf: Add CCPI2 PMU support in ThunderX2
 UNCORE driver.
To: John Garry <john.garry@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_021907_724434_ECF282E2 
X-CRM114-Status: GOOD (  20.42  )
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 1.0 HK_RANDOM_FROM         From username looks random
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gklkml16[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gklkml16[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Jan Glauber <jglauber@marvell.com>, "corbet@lwn.net" <corbet@lwn.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Robert Richter <rrichter@marvell.com>,
 Zhangshaokun <zhangshaokun@hisilicon.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 2:08 PM John Garry <john.garry@huawei.com> wrote:
>
> On 18/10/2019 05:21, Ganapatrao Kulkarni wrote:
> > Hi Will,
> >
> > On Thu, Oct 17, 2019 at 9:17 PM Will Deacon <will@kernel.org> wrote:
> >>
> >> On Thu, Oct 17, 2019 at 12:38:51PM +0530, Ganapatrao Kulkarni wrote:
> >>> On Wed, Oct 16, 2019 at 7:01 PM John Garry <john.garry@huawei.com> wrote:
> >>>>> +TX2_EVENT_ATTR(req_pktsent, CCPI2_EVENT_REQ_PKT_SENT);
> >>>>> +TX2_EVENT_ATTR(snoop_pktsent, CCPI2_EVENT_SNOOP_PKT_SENT);
> >>>>> +TX2_EVENT_ATTR(data_pktsent, CCPI2_EVENT_DATA_PKT_SENT);
> >>>>> +TX2_EVENT_ATTR(gic_pktsent, CCPI2_EVENT_GIC_PKT_SENT);
> >>>>> +
> >>>>> +static struct attribute *ccpi2_pmu_events_attrs[] = {
> >>>>> +     &tx2_pmu_event_attr_req_pktsent.attr.attr,
> >>>>> +     &tx2_pmu_event_attr_snoop_pktsent.attr.attr,
> >>>>> +     &tx2_pmu_event_attr_data_pktsent.attr.attr,
> >>>>> +     &tx2_pmu_event_attr_gic_pktsent.attr.attr,
> >>>>> +     NULL,
> >>>>> +};
> >>>>
> >>>> Hi Ganapatrao,
> >>>>
> >>>> Have you considered adding these as uncore pmu-events in the perf tool?
> >>>>
> >>> At the moment no, since the number of events exposed/listed are very few.
> >>
> >> Then sounds like a perfect time to nip it in the bud before the list grows
> >> ;)
> >
> > I had internal discussion with architecture team, they have confirmed
> > that, these are the only published events and no plan to add new.
> > However, If any such request comes from HW team in future, i will add
> > them to JSON files.
>
> Don't you find perf list is swamped with all the uncore events?
>
> For Huawei platform, I find this:
> ./perf list pmu | grep "Kernel PMU event" | grep hisi | wc -l
> 648
>

We don't have such issue at the moment. As i said earlier, the events
exposed are limited.
Total 16 events altogether(DMC, L3C and CCPI2) per socket.

root@SBR-26>~>> perf list | grep uncore | wc -l
32

> That's because we have so many instances of the same PMUs, not because
> there are many events per PMU.
>
> TBH, I would like to delete all the events from the hisi uncore kernel
> drivers, now that they're supported in the perf tool, but I think that
> would constitute an ABI breakage.
>
> Maybe there is a way to hide them, but I couldn't find it.
>
> John
>
> >
> > I have incorporate all your previous comments, Can you please Ack and
> > queue it to 5.5?
> >
> >>
> >> If you can manage with these things in userspace, then I agree with John
> >> that it would be preferential to do it that way. It also offers more
> >> flexibility if we get the metricgroup stuff working properly (I think it's
> >> buggered for big/little atm).
> >>
> >> Will
> >
> > Thanks,
> > Ganapat
> >
> > .
> >
>
>

Thanks,
Ganapat

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
