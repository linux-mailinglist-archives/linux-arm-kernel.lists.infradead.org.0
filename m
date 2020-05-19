Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 592EE1D9044
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 08:48:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E/NVAZy84aeWojdBh9zCJ74Cy00DsoJIGHyY7Jhyaqw=; b=XKXTM39jkKGu29
	pa3OZy3pQtIvmsJDAGxvldQvFufCLog3p2cebwIw655YhcQ+Uxi6L+Ah0kiahedaEGTDwlg0kH9U2
	FXCpe1/y3EgPzLmAsZoskg4o0igOC+3poZPuqRCNrmu3zAQltGyQe4n3CkePCxNW0VOws37Q7g2a/
	XqqZoibHYIb+Uvrx2Rn17vLbDMoyrSS3CWwWt0a+zQcew3Upod/T55tyfibKFmbJJjaImAIyRRR3X
	1S4UlNtm0qOrFIgZcO9UGWtCPdOtFg39NJaNSngh8a1HR63VbzY5dZ9a3U1WkIW6bDazwS6hJ5Kl6
	tfzoWdrQ9Lp+aNIps0Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaw38-0000wY-5N; Tue, 19 May 2020 06:48:26 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaw2z-0000vh-1J
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 06:48:18 +0000
Received: by mail-lj1-x241.google.com with SMTP id u15so12488294ljd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 23:48:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WsAbqI29raOKmaDZfzjwRCgLNeDp8dAj/rKR6c3lLhM=;
 b=tuHZnLrABgGUIvnnLmYJt3ZG2g313FM2F48OHFYb9BTOD95F6kXtuV01EGVKlYM8a5
 J9pubY/erz1bGwNuDcCt9AHO32hvzOKxal6lbrpIHokmHaXUYTWuymjz//iJAlmoED3k
 0J+horHcMIcVSn9is7eHpgmMMQnSJYOoc6g8v7L8iA0wXwNiX7v72JblBSCXMXzE+U9j
 aY3sgZZML/R5BZTRTbXVssNN39bAYPP87ciVQMsukfx2+gxCinuoIhgeKH8LliSNh8Vy
 tmPZSh+FrHIJ9lCyddYCVUR6x8oDW3ovx7rMRsNFQm+eGwfp2d1V5S2ZV4tSPDg8qzvX
 BkEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WsAbqI29raOKmaDZfzjwRCgLNeDp8dAj/rKR6c3lLhM=;
 b=A1cGubV98SUKZpYuF6p9SnagYYTQbt5sxeSI48Ct5NgQyEwfUHW6IqgFNhlrN++QJc
 BxzW0TYPq7FbRH+sTNdoG82+pfG7PgtX2FGiS1MZCnbkh2D7r3qyqlGHUcQXcdJIpFvw
 MGM9COMIVaf5E+sBhKpMD6+CXCTJfDyBqmsAqGpX8r4A8PkOPjxgPpaRLMR5d1EM857G
 G3ltqgpseAGt2nSex4o5JI9+AyKtWYGr4w810DoO4PeuU+WQqFjRvttGQYDmTqcp5bBo
 +7+Tlzz+VF30XjV5adr1IbBQpCa2h9Ri5qACSNrKu4wzruOPfxDfwoQcr8xTi70ugsSq
 hdeQ==
X-Gm-Message-State: AOAM530XuFVN9mxIeOqNJcr9LAc7V3g557ND0hcJsM/Qo03kzGceSSWy
 29uQzHVEf0cy3P78PSjWusnVLQdBpq/8vG8FUC4dWg==
X-Google-Smtp-Source: ABdhPJw0NjDCoXpLPMqsNAxi9sVRj6FK14oxPqb/GSvWHxxxbkhsVgnm03D1EwJ3jx+RIMYeGCIHEy6X/IXdyEruNZQ=
X-Received: by 2002:a2e:9907:: with SMTP id v7mr3773551lji.0.1589870895203;
 Mon, 18 May 2020 23:48:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200516124857.75004-1-lecopzer@gmail.com>
 <CAFA6WYNwp+_ENiS8QDao5+RXyt5ofJZyq6c5CKG_d0CNEmBNYg@mail.gmail.com>
 <CANr2M19unLW8n0P2DiOYEZ=GZcaD-L2ygPht_5HNtNZ6e4h6xQ@mail.gmail.com>
 <20200518104524.GA1224@C02TD0UTHF1T.local>
 <a9002b5e-aec5-b6e0-7174-87b93351d60c@arm.com>
 <CAFA6WYPKD0Kkn5yQiKZQkM+tT0iW4oPnndegD-iau9EwB5DYog@mail.gmail.com>
 <20200518141946.GA3164@C02TD0UTHF1T.local>
In-Reply-To: <20200518141946.GA3164@C02TD0UTHF1T.local>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Tue, 19 May 2020 12:18:04 +0530
Message-ID: <CAFA6WYP7QhcQZrWua7NOqaqOO8Zd8QeWpHr4_QbDZFgjQ+Qung@mail.gmail.com>
Subject: Re: [PATCH 0/3] arm64: perf: Add support for Perf NMI interrupts
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_234817_087035_E40C7803 
X-CRM114-Status: GOOD (  27.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jian-Lin Chen <lecopzer.chen@mediatek.com>, Will Deacon <will@kernel.org>,
 alexander.shishkin@linux.intel.com, Catalin Marinas <catalin.marinas@arm.com>,
 jolsa@redhat.com, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 acme@kernel.org, Lecopzer Chen <lecopzer@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>, mingo@redhat.com,
 linux-mediatek@lists.infradead.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 matthias.bgg@gmail.com, namhyung@kernel.org,
 Alexandru Elisei <alexandru.elisei@arm.com>, yj.chiang@mediatek.com,
 julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 18 May 2020 at 19:49, Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Mon, May 18, 2020 at 07:39:23PM +0530, Sumit Garg wrote:
> > On Mon, 18 May 2020 at 16:47, Alexandru Elisei <alexandru.elisei@arm.com> wrote:
> > > On 5/18/20 11:45 AM, Mark Rutland wrote:
> > > > On Mon, May 18, 2020 at 02:26:00PM +0800, Lecopzer Chen wrote:
> > > >> HI Sumit,
> > > >>
> > > >> Thanks for your information.
> > > >>
> > > >> I've already implemented IPI (same as you did [1], little difference
> > > >> in detail), hardlockup detector and perf in last year(2019) for
> > > >> debuggability.
> > > >> And now we tend to upstream to reduce kernel maintaining effort.
> > > >> I'm glad if someone in ARM can do this work :)
> > > >>
> > > >> Hi Julien,
> > > >>
> > > >> Does any Arm maintainers can proceed this action?
> > > > Alexandru (Cc'd) has been rebasing and reworking Julien's patches, which
> > > > is my preferred approach.
> > > >
> > > > I understand that's not quite ready for posting since he's investigating
> > > > some of the nastier subtleties (e.g. mutual exclusion with the NMI), but
> > > > maybe we can put the work-in-progress patches somewhere in the mean
> > > > time.
> > > >
> > > > Alexandru, do you have an idea of what needs to be done, and/or when you
> > > > expect you could post that?
> > >
> > > I'm currently working on rebasing the patches on top of 5.7-rc5, when I have
> > > something usable I'll post a link (should be a couple of days). After that I will
> > > address the review comments, and I plan to do a thorough testing because I'm not
> > > 100% confident that some of the assumptions around the locks that were removed are
> > > correct. My guess is this will take a few weeks.
> > >
> >
> > Thanks Mark, Alex for the status updates on perf NMI feature.
> >
> > Alex,
> >
> > As the hard-lockup detection patch [1] has a dependency on perf NMI
> > patch-set, I will rebase and test hard-lockup detector when you have
> > got a working tree. But due to the dependency, I think patch [1]
> > should be accepted along with perf NMI patch-set. So would you be open
> > to include this patch as part of your series?
> >
> > [1] http://lists.infradead.org/pipermail/linux-arm-kernel/2020-May/732227.html
>
> While it depends on the perf NMI bits, I don't think it makes sense to
> tie that into the series given it's trying to achieve something very
> different.
>
> I think that should be reposted separately once the perf NMI bits are in
> shape.

Okay, fair enough. Will keep it as a separate patch then.

-Sumit

>
> Thanks,
> Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
