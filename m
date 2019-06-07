Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25764395CC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 21:34:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x46Lqaujkc/jGKxAgGwCjpf8bAia/MbVCcKPfUoeOjw=; b=L4IhrhJfx0OdDr
	nelIVhbPP731VQJzRKyT7pmTnWNAbdA8DnkSE60lXA0Q4zabNFhWhakvhJzXf1KkYXiT0Uf9NEIRj
	dHHsXkmNX1HQFjbwMJepSfib7IDk/6j+cHUScUkEoqIXYrTjK4u2xVcrjb8I3EoMGKdtixVkIG7hC
	5fbPEDCqJn/NhZ6iifVQ4Nv9tk2d+ihdD8OEl6T5teprDwGoPSDnlOb2Se2iAGNURICsFpIb6dglB
	5bS5Dpu//8EBe8YXaYM2105E/M45wfYADf/dzQuWPQwkmaFs+CgjUnbIlZcZY97hdTSEtTYgkj9Mn
	vN46NsIp1rEnC2/yZxMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZKd7-0005Fw-8G; Fri, 07 Jun 2019 19:34:25 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZKct-0005DY-QK
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 19:34:14 +0000
Received: by mail-pl1-x644.google.com with SMTP id bh12so1197317plb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 12:34:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=wpKUd2nT5fJdpxBIuy/BOsoGuLISr+yeuc18GcpDf6g=;
 b=tf63b50aos3gIs6Uh0x0ZPeVIy4dEEbpe9EQmwGyT5+A2Gw+N/fvymG2EdZPGIy8L9
 5xNyeQKO8zT6AP0IKirJTEmIaiKb0OS22rDKMOn0xOxkquKtpLyow98OJ4nggW92g6My
 9pdMTgF13mlwfqUP3g8TWHhyUpxL9SbblVrXJdKjTdqxqojrU5td0HmAQ0uovPfbnxVC
 drUELbnT0qtfXIoREosTwsWm+DTIQBTK17ZyUprcwTpWecwDd1KhtfUWf8qd3HewI/gj
 yccWS8LfVbTTNCkPA7VUiFxQPzMCcZkELxdnOr46rMOQzYY/LSG5VMTANT0WWgP6jyeo
 1SaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wpKUd2nT5fJdpxBIuy/BOsoGuLISr+yeuc18GcpDf6g=;
 b=V0ISo5loxHZhiQJ89xdRSGF0RjK/g1kZvE3Osd2APE8flqGCwtkSA1W9r2MAIVMv6C
 FhuoIbY50+BbgDSfHqRLuQhUlLT9+oSmbvGD9/Lw5b/KC0VqW6iTTWvuWEwsCzYr37IO
 9YX/mVzoCQDGWP1unJV7SG8MvAOCaDrZasLr2kQuC+VMaMgHtQj3xtBB7iBetK8s2bvJ
 3SYCr6746sn2OwddbO+uQ2gFa3rZwwg7dnTFU5KOMXUTPuBE4hkJr2MW/9EddQdsX52X
 QesR31lnLYIZ8VwEkLftOS5cb4kXMFdURF0GPOjWFYqdf38cz4N8BeDLmV4saLL6Pl6U
 xEtg==
X-Gm-Message-State: APjAAAXOqihhcXCheCyoN9JMQ/WhNjW7bBvCwkj+bosjf+aWMhpIFDa0
 eHZIechC88XDWWyCw+w5A6qtIQ==
X-Google-Smtp-Source: APXvYqxSC7rw05vLxn/PlSEW90GOUry7OdvPp1Qde6epr5HHI6UoO46GU4ItChia53NkMezfJO+8dA==
X-Received: by 2002:a17:902:2883:: with SMTP id
 f3mr57841151plb.111.1559936050681; 
 Fri, 07 Jun 2019 12:34:10 -0700 (PDT)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id o26sm2726497pgv.47.2019.06.07.12.34.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 07 Jun 2019 12:34:10 -0700 (PDT)
Date: Fri, 7 Jun 2019 12:34:07 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH 00/18] ARM/ARM64: Support hierarchical CPU arrangement
 for PSCI
Message-ID: <20190607193407.GB24059@builder>
References: <20190513192300.653-1-ulf.hansson@linaro.org>
 <CAJZ5v0gbK3AFCVC1b9LyXeMOM8fKR1=ECXZwaeSYRSqcK0UgYA@mail.gmail.com>
 <CAPDyKFpU3u248Gi+FnrVdY-EWXJQuu14uNV9d3Xs0W-K-EMEhg@mail.gmail.com>
 <20190607154210.GJ15577@e107155-lin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190607154210.GJ15577@e107155-lin>
User-Agent: Mutt/1.10.0 (2018-05-17)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_123411_859988_7A5B3705 
X-CRM114-Status: GOOD (  21.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Linux PM <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Kevin Hilman <khilman@kernel.org>,
 Amit Kucheria <amit.kucheria@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tony Lindgren <tony@atomide.com>, Lina Iyer <ilina@codeaurora.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Niklas Cassel <niklas.cassel@linaro.org>,
 Souvik Chakravarty <souvik.chakravarty@arm.com>,
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri 07 Jun 08:42 PDT 2019, Sudeep Holla wrote:

> On Tue, May 14, 2019 at 10:58:04AM +0200, Ulf Hansson wrote:
> > On Tue, 14 May 2019 at 10:08, Rafael J. Wysocki <rafael@kernel.org> wrote:
> > >
> > > On Mon, May 13, 2019 at 9:23 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:
> > > >
> > > > This series enables support for hierarchical CPU arrangement, managed by PSCI
> > > > for ARM/ARM64. It's based on using the generic PM domain (genpd), which
> > > > recently was extended to manage devices belonging to CPUs.
> > >
> > > ACK for the patches touching cpuidle in this series (from the
> > > framework perspective), but I'm assuming it to be taken care of by
> > > ARM/ARM64 maintainers.
> >
> > Thanks for the ack! Yes, this is for PSCI/ARM maintainers.
> >
> > BTW, apologize for sending this in the merge window, but wanted to
> > take the opportunity for people to have a look before OSPM Pisa next
> > week.
> >
> 
> I will start looking at this series. But I would request PSCI/other
> maintainers to wait until we see some comparison data before we merge.

What comparison are you asking for here? Do you want to see the
improvement this series gives or are you hoping to compare it with some
other mechanism?

> If they are fine to merge w/o that, I am fine. As of now we have just
> 1-2 platforms to test(that too not so simple to get started) and the
> long term support for them are questionable.

Why is the support for these platforms questionable? People are actively
working on these platforms and the feature set constantly improving.

> Also with SDM845 supporting PC, we have excellent opportunity to
> compare and conclude the results found.

That's correct, ATF exists for SDM845. But with the standard choice of
firmware you will get OSI and I don't know of a board out there where
you can switch between them and do a apple to apple comparison.

Devices such as RB3 (96boards SDM845), Pixel3 and the Windows laptops
are all OSI only.


So landing this support is not a question of PC or OSI being the better
choice, it's a question of do we want to be able to enter these lower
power states - with the upstream kernel - on any past, present or future
Qualcomm devices.

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
