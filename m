Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD407C4A66
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 11:19:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nPJSz9GHV/RHkbc51CRKEaFJiyF4h6RpjJWIqYpnvog=; b=PU6uTqzuXOIHyw
	nTAkFlUKDN4ClsxSSkYe6ufumHzJnoiQ4mV9CqnuD6YnhG/vdIjFXpamBigkayzbPQ9/+PYQVJwv7
	88hj1A3TmPufBQWXSzpCZUaT0Va91iD7uhPH2OyoiFQ0HtcaiuObQJqXjk7eGVuZmDCiDD66Tqp6B
	7Mx/IRSffBv2Fo3k9qb/vtcmWjo2uiWkH/Eq5G2lkSiRrZ5vVASVkmmmgr7dNmG2XTR4A7agZtIp1
	/+RXqw83hMuL7vumzwFYYDLH79Sta5d89vO/Uelp+eWVlyOEu6acy7OXWZjHUdAMObYd5FQKyH2o/
	mFaF3tOZAoRVRu0asm4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFamo-0008Ry-CI; Wed, 02 Oct 2019 09:19:06 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFaV6-0007bw-1G
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 09:03:44 +0000
Received: by mail-io1-xd43.google.com with SMTP id q1so55190883ion.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 02:00:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8OMb6qYz7L39aWv7huGiD2tvBbT7Ji7GJd30UEGa+oU=;
 b=XAemzTfZ5XTN/w/nxCS7Stgtb84tkodIy5FcsHED/wIXFB68x1T84J/iRef3lIzVa4
 fnzEuGlZckmxDnTqZ+Mq/yOgQrL/lOSg3RiWSZjPsv+OzgBAMy2BjMLaZ9Y53O3ZFG82
 VGgyS/ChXqJQ9XqFmU1oaDphAfsJbO4SE/cFAH1gD+Z608Rzu8hr9fKMWwwSo/MtyPlT
 LgmT5DtzoM7getSdU5n1/TBljBlFye3lZO0BpJ6Gib74zZGiusnBPV3gGwaiU3Fcb4jx
 CrsAZKpUl7lBQPAzDizJpVsNJaBGcMGELRQlhWwEgPYgsP7X9wUGi8v4w/Ry7G6cQPXX
 L0Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8OMb6qYz7L39aWv7huGiD2tvBbT7Ji7GJd30UEGa+oU=;
 b=s3gDCLmNqn/1kBT4uz3Jjq1D3OlvmAu6lDN8jUUilqeB5ulN6qEPRXwc8KJgfLGAOC
 gRugEdJnax8WedrWKrlg6KxtdVh5GBpXbhdt8znEOFX6aYWCtDCCJNvcYEa88L/5/cMn
 kysrOqxZ/pLhjb92XY2d/IRPOwDR9ORHULFueH+H9N+VOMQKWHgupYR1CmCT8nt5aNbw
 VPGY+aptG1Cvs2oPU2KvYBKIEyYzvUj+YFAk3iBvgBxwiZGiIi4WjyigGw3ZzC1p7OeZ
 SfX0lHy7A3rH8V4P6NPG3U/kqzJCZxMe3bofDycggJ6S1zeE2p9AE7Xkv79LJzasv863
 c0ng==
X-Gm-Message-State: APjAAAUwaDtkzKCvMl5cyya+5bTXNphY5WIpug7jmZHhDZ6NGM77VX2q
 FTN1yXBJs0iWzLLqG6HBH6Ug7bKjrU8nt6HaRbjFDA==
X-Google-Smtp-Source: APXvYqwEzjF0lbQ2ABgEhpFVDzqJdfpxcmC8WbxgaqLG7Ibv/dVo8qc6NFmWgAb3blXoWa15bzoJ2xyQyu2JM1jS9Iw=
X-Received: by 2002:a92:98d3:: with SMTP id a80mr2849757ill.167.1570006843856; 
 Wed, 02 Oct 2019 02:00:43 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1568224032.git.hns@goldelico.com>
 <20190916162816.GF52127@atomide.com>
 <DAF6ACB4-AD7E-4528-9F4B-C54104B5E260@goldelico.com>
In-Reply-To: <DAF6ACB4-AD7E-4528-9F4B-C54104B5E260@goldelico.com>
From: Viresh Kumar <viresh.kumar@linaro.org>
Date: Wed, 2 Oct 2019 11:00:32 +0200
Message-ID: <CAKohpo=44UkJ3RBjtB8F3=1D9HzicULh303jF2uowiboa2328g@mail.gmail.com>
Subject: Re: [PATCH v3 0/8] OMAP3: convert opp-v1 to opp-v2 and read speed
 binned / 720MHz grade bits
To: "H. Nikolaus Schaller" <hns@goldelico.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_020100_396284_FA37E906 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Note: SpamAssassin invocation failed
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Tony Lindgren <tony@atomide.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Enric Balletbo i Serra <eballetbo@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?Andr=C3=A9_Roth?= <neolynx@gmail.com>,
 =?UTF-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 kernel@pyra-handheld.com, Teresa Remmet <t.remmet@phytec.de>,
 Javier Martinez Canillas <javier@dowhile0.org>,
 linux-omap <linux-omap@vger.kernel.org>, Adam Ford <aford173@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 17 Sep 2019 at 16:35, H. Nikolaus Schaller <hns@goldelico.com> wrote:
>
> Hi Tony,
>
> > Am 16.09.2019 um 18:28 schrieb Tony Lindgren <tony@atomide.com>:
> >
> > * H. Nikolaus Schaller <hns@goldelico.com> [190911 17:48]:
> >> CHANGES V3:
> >> * make omap36xx control the abb-ldo and properly switch mode
> >>  (suggested by Adam Ford <aford173@gmail.com>)
> >> * add a note about enabling the turbo-mode OPPs
> >
> > Looks good to me, when applying, please provide a
> > minimal immutable branch maybe against v5.3 or v5.4-rc1,
> > that I can also merge in if needed for the dts changes.
>
> Should I resend a v4 with your Acked-By added?

I will pick them up in a few days. I was waiting for rc1 to get released and
am on vacation right now. Tony already provided his Acks.

--
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
