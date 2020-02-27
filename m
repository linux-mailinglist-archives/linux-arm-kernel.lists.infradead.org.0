Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D6A170E5D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 03:20:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jUxkOIJwftEfw39BvbxLYHZjLYN0gyxkLTKRMJ+Gf+A=; b=QlGOyAK1F59DLg
	mtnesMt4PlViHkZkkrTA+jjhF+bnvXIWatecM5TQcYZH+NNN1Rs5sfVPz+48prOB1NikKkZon09rI
	ZThyvZp2g42QBskHPUUx/CYes1hSaBzJJgAPIoAscCIMOUKuV9voOXdtJysK6bAcGr2PgSQF8/guJ
	JyKjLrfp4f+EVUZcaH2KCT9jchcR99Vknu3OxAs5zff6WQuparJIwSal/kDIvmsbUoh4ipng+PKE1
	ep2QKHcEa0zDDmBJf+g8B5/kvT+BYYr/GhjOL9HdW/Mv3FWMrRKqU/J37TJrf//R3t6qqETeQGy3W
	YQkOgb3ES99RZb1sk9ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j78mc-0008FT-Jr; Thu, 27 Feb 2020 02:20:14 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j78mN-0007zh-Lt
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 02:20:01 +0000
Received: by mail-ed1-x543.google.com with SMTP id p23so1335839edr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 18:19:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hcoWdnerPpa+zK/P0vhU/glnANAYYkOXJMkEDIK7xws=;
 b=wzbCuA9QiXCM7mHhhSCgncYM8569BHI6sWQ+xH1QRtBzu+lzaH6WeTEIwDfMt7p0Ve
 kiY32WrT84HIo+OtF8SQZxzonFiHqkdMXF+IGiI0YU70fn3Yak7fPKNlAClyc6Q8jWt0
 HEK20pyCaYwE1yXgb+J8ziQ+apUmgP/QQhi2sMskhkZ4uWJXi3afcJjszVHHTz4U4IQc
 wCD6KMycSs0go0RrEh+g7DdkFYx629BAY2wVNidtyFBhPmfWlg/rsr94w6fi+L/XuC6i
 2rcv5mv0bve+MGvrg4j1uXlpC00w3blFDCELnEdT9hyZIKkFoqrGsjdBTeeUyYTXa6Nk
 w+pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hcoWdnerPpa+zK/P0vhU/glnANAYYkOXJMkEDIK7xws=;
 b=Bexk17cUUbrjXG0YFrbm9QjhDXoFGXxrhmP1o/t/IqLvhKz0OeBIMauLgHsXYaFapC
 HJjxn/0Kw8vhycePOsYplKTYQya9VySYEKRlbzEZH/XNrKXa5PvrAEMszp2CHIlGK+Ap
 UgzAUHRIcE9QObwJc2RtIiw5UsFoBN2ZztUt3nuo3xXXmKT5SJIhF5Ffb2ZFAqAe48bl
 34pePGnXgTZGHMkXvgXQcfDDrqYSaBJoFEX7U6v8wPKPmwHzRuFaDn9CJNNfzNnvgmBA
 2h/ERe+VfBMKkCRBeBGjbV7PUbJ+RgF1VIM7ueb1khTKHztIrti1/7uPK4krcGz4UPpb
 nfaw==
X-Gm-Message-State: APjAAAWhChWV86npuW5nLtAPjExCLzndBdYwY50fszRWx5x/YGAr2b7X
 3i4U8jDMfkG8ZxBPKuPiKjuaA/Y5PN417sGpZ194jg==
X-Google-Smtp-Source: APXvYqxV82iVTF2fjXLhO7hMAa9T8sAAsObqUH93eZ2i9gkhZj1PxFnbPWvO6D5UsLB2NwghFAoAYCwXFQNOl1l1nGw=
X-Received: by 2002:a50:ef1a:: with SMTP id m26mr1299388eds.289.1582769991844; 
 Wed, 26 Feb 2020 18:19:51 -0800 (PST)
MIME-Version: 1.0
References: <20200109032851.13377-1-shawn.guo@linaro.org>
 <20200109032851.13377-3-shawn.guo@linaro.org>
 <20200226113105.GA16925@e121166-lin.cambridge.arm.com>
In-Reply-To: <20200226113105.GA16925@e121166-lin.cambridge.arm.com>
From: Shawn Guo <shawn.guo@linaro.org>
Date: Thu, 27 Feb 2020 10:19:41 +0800
Message-ID: <CAAQ0ZWR0JNxJV=Ly1yONGo-9cYTt8DZPwp+Qsfuger1katEFHg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] PCI: histb: Correct PCIe reset operation
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_181959_719627_510CB9AD 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
 Jun Nie <jun.nie@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 26, 2020 at 7:31 PM Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Thu, Jan 09, 2020 at 11:28:51AM +0800, Shawn Guo wrote:
> > The PCIe reset via GPIO in the driver never worked as expected.  Per
> > "Power Sequencing and Reset Signal Timings" table in
> > PCI EXPRESS CARD ELECTROMECHANICAL SPECIFICATION, the PERST# should be
> > deasserted after minimum of 100us once REFCLK is stable.
> >
> > The assertion has been done when the GPIO is being requested, and
> > deassertion should be done in host enabling rather than disabling. Also
> > a bit wait is added to ensure device get ready after reset.
> >
> > Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
> > ---
> >  drivers/pci/controller/dwc/pcie-histb.c | 20 ++++++++++++++------
> >  1 file changed, 14 insertions(+), 6 deletions(-)
>
> Shawn,
>
> this looks like a fix, please tag it as such and let me know if
> it has to be backported, in which case also the previous patch
> should I assume.

Hi Lorenzo,

It is a fix, but we recently realized that the problem needs to be
fixed in a way that does not break existing DTB.  So please ignore the
series for now, and we will try to work out a better one.  Sorry that
we did not update the thread in time.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
