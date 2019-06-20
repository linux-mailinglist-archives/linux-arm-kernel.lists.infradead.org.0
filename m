Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C059F4D5B3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 20:00:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+g3mbo3DScAcaFVz9fCJrf/5APsFuPS61Amj3HzlJHQ=; b=W6GMwDu+RgFpDN
	BsI1xCyKWj05jP+EefhYc37P+cN4ptSpX7j/6eyk8186qVXeFrgZZRDv13FywBtBQCAm1TzvfT9sQ
	oTdhkVMb2nVFZ0dxB4loAgCNyTqdVTIvqexNiPFrZj0SqhrBqyoknR+lkT+vmj0UyofdYVbmpntI/
	mpyt09X5HOFHLN7j5Nui9tH56r1Cjb5yxF41BUtTaB+YXazXG/pbHOr1ILLtkq+Zc4lYj5QjPBPzD
	392n7j3hwyNkTF50gRxHUo0xsG1DintAtCZIpOR03O0GQEBzdgsCjxICV5F0CAZCKZVGlc1NJnSUX
	LG69wCwcJaXjQtbHYPVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he1MU-0000cU-1u; Thu, 20 Jun 2019 18:00:38 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he1MA-0000bf-1H
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 18:00:19 +0000
Received: by mail-io1-xd44.google.com with SMTP id r185so6104774iod.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 11:00:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=a6gHYMn4DiYjx4+x0P+0mU7HYYsU9Qn0hhfuvOOPEWI=;
 b=KX+c9HUvfPrXpnsPKBhMvQGL5pJxU0Ji2ByV4ojgRcfewSBdfj5dLd0l8Q2r1AJxAL
 mqL1LcgLYZLxCeJVToTvpr/UjFXcN6cawjcVRTiDyyo+FVrWLC8+FhUtlx3+eKOWIDTo
 HvaOSXw5HlX7OKPSSRoxtc7CRSXTknmv/puhg67HkgC4/KXSqPZKG6Rkien+k3Pf9512
 AAiq1B7WY8EQ0yz18i6gS8K+NAsDrPqppIZsquYwrSenk3gofH8+dHT6jYs/zrNsGHJM
 WCcrpiGchFcL3yIKd8ok4vDOcE+0+Uj2HicKBFmU7gOvzJjE/UFMgGOCKIHT6h6aNIoh
 AlUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a6gHYMn4DiYjx4+x0P+0mU7HYYsU9Qn0hhfuvOOPEWI=;
 b=LHDpU0jLpIyrViiYK0gUPCObZUjwhOuSWWRtaaS8PpWOmv46DcQ6rX6eoLB83pM8Nn
 UHfhfONvciCSrv++p9+PGZlY89kFgQTvePTXI5I1E5keSr0/kW4Hn/YLBXiVZNiS7/jY
 49YzobyfpXBpFUDLm+95LSdLpeo12oDw3sxWBJeixmMefv8RNbItir6vtUKr5//0PovM
 6vjtir+038vhIjg3sU1mmcU5yrfQLJweg3dfDOvEZ7fv+WoHbEiaGpGR34NkuPHTTGfL
 HnuGyx0wg7//5yCIhBcmKITIowrbNiFG/olPmb+Wah94DxQfwIlvKClrBtE2wsoZJvOt
 w6hA==
X-Gm-Message-State: APjAAAWITvhlAlso47ys977SbPSEXz0nK4rX4xLf36iDFXJ13JQuonBX
 ec+rbRy4LujhhHIhcX//6oxofeG9Byli9VdVPzZgGQ==
X-Google-Smtp-Source: APXvYqxDzT7XumVudrxn6lRbX5870VezXlE6TO6jD8Idf1m5gVSSqB5JKeypi1AkIctmM4ok4+oXJh58aXnURbbgvpA=
X-Received: by 2002:a6b:2c96:: with SMTP id s144mr80006774ios.57.1561053616966; 
 Thu, 20 Jun 2019 11:00:16 -0700 (PDT)
MIME-Version: 1.0
References: <15ef45d4-ee1a-3c45-878d-f08f0a84cfeb@arm.com>
 <20190619110749.GD1360@e107155-lin>
 <CANLsYkw-KhMVgTfyBSF4-uv4wxQBBQfzyvVbAnaFSqHhkgX6Mg@mail.gmail.com>
 <20190620114116.GE20984@e119886-lin.cambridge.arm.com>
 <20190620154154.GB25273@e107155-lin>
 <CANLsYkxSBuqKJZQLqR238TGe1p5y7QPyLHSZTAOF++=uzGUJjg@mail.gmail.com>
 <20190620163426.GC25273@e107155-lin>
 <CANLsYkymTnxRX61StUGvKGeiQV6P6YbCg81PSYeBpXLsX5tpiw@mail.gmail.com>
 <20190620165427.GH20984@e119886-lin.cambridge.arm.com>
 <9adb65af-a898-462b-ecbc-af972d9331a6@arm.com>
 <20190620171102.GF25273@e107155-lin>
In-Reply-To: <20190620171102.GF25273@e107155-lin>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Thu, 20 Jun 2019 12:00:06 -0600
Message-ID: <CANLsYkyBTZHt0CcOWOpkpFMPXh+JXFdU=bAkC9VjpQHF3Xm6Fg@mail.gmail.com>
Subject: Re: [PATCH v1 5/5] coresight: etm4x: save/restore state across CPU
 low power states
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_110018_117982_15A6FC24 
X-CRM114-Status: GOOD (  16.46  )
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

On Thu, 20 Jun 2019 at 11:11, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Thu, Jun 20, 2019 at 06:00:48PM +0100, Suzuki K Poulose wrote:
> >
> >
> > On 20/06/2019 17:54, Andrew Murray wrote:
> > > On Thu, Jun 20, 2019 at 10:47:38AM -0600, Mathieu Poirier wrote:
> > > > On Thu, 20 Jun 2019 at 10:34, Sudeep Holla <sudeep.holla@arm.com> wrote:
> > > > >
> > > > > On Thu, Jun 20, 2019 at 10:14:04AM -0600, Mathieu Poirier wrote:
> > > > > > On Thu, 20 Jun 2019 at 09:41, Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > ...
> >
> > > > Then all we have to do is make the ACPI/DT property that indicate the
> > > > method used to deal with tracer idling mandatory.  That way people are
> > > > conscious of the choice they are making.  To be backward compatible
> > > > with current systems we default to the TRCPDCR.PU method but print a
> > > > warning message, just like we do for obsolete DT bindings.
> > >
> > > I'll respin the series based on this approach. I'll also flip the
> > > 'disable_pm_save' module option to 'enable_pm_save' - thus allowing any
> > > one to use software save/restore if they wish.
> >
> > If you are going to add a firmware property, please get a consensus on the
> > name here, before respinning to avoid another churn :-). How about one of :
> >
> > "arm,coresight-etm-looses-state"
> > "arm,coresight-etm-needs-save-restore"
> >
>
> Just to be more clear, I am fine with just kernel command/module parameter
> approach and DT bindings may not be required. If at all it is decided to
> take DT approach, then you really don't need command/module parameter IMO.
> I will leave that to you and Mathieu, wanted to make sure I am not
> contributing to the confusion yet again.

Both DT/ACPI and module parameters are needed.

The module parameter is there to overwrite the default setting for
debugging purposes when using the notifiers method and assumes cores
have been prevented from idling - otherwise the system will crash.
The DT/ACPI property is needed to tell coresight which method to use,
i.e architected of notifiers, to avoid latency issues when possible.

Thanks,
Mathieu

>
> --
> Regards,
> Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
