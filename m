Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB7E1F5BFB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 21:33:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UdOIVMXRdTtvNoaGUt640p+qG48GvJGdCOeoIbnTIcQ=; b=VSnAaWsHqm5B4d
	oGNLzNsat+UaVswQV/w0dm/nBZETipmQdlobZQMLD7d/fXi0BVHMBWj3069bsXg3/2SxpY1kWzxvN
	qoh/2+mlTRAZeDhxdSojlls5X/767Qxw4LhbsmTwsEjEXjdfEX9IMU5x4GCosifAvcvCVFsCMsEE6
	erv2M2sKYjhrqWtzu5YWAPT07I+qfxY7CA8lEatmQ50SmPzjMO1M/Y6OWCouvItMAiB57vXwoXXnX
	GjlXOCzxvhjnXeXjr/oaJInGShK4LIRlhNselWJsQNGpZO8+jcHjZze9yzPM1T2oY+p6iuMAYE7Qc
	M5ShU/gmM8kD+34k0U8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj6Tp-0004Mw-SU; Wed, 10 Jun 2020 19:33:45 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj6Ti-0004MV-R3
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 19:33:40 +0000
Received: by mail-lj1-x243.google.com with SMTP id z9so3953222ljh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 12:33:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qqYiZ6Y6itIrxnPxpSfJPzKeOxIw44n8uIkZaVxE90c=;
 b=fL/P90LfHU2hZvRP7iyIKCFTn9IBz4A7+xlXDwNOH2xsnwUUftY5YRDCrjt+xCisu3
 jP26qKwO7lNPFaujkpx5nsxM1vL5CNqj/J743n2KZwO78uUi6SQTBobQmgFzn1NW4EQn
 vYcVhGWb0B+2Ecll8PhdZcHqUZ/A/o04wmYIg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qqYiZ6Y6itIrxnPxpSfJPzKeOxIw44n8uIkZaVxE90c=;
 b=Exsr1x2OuJG2L8dnP/f2JEwd8jZviLbxGG4p9H/jUlMPjjZ0UBZq9ebCls14/z1czc
 KPFhfjfO8DpcNuxtQek1/wQiXg4uYQouVFjhr+qq9hd1nZy5X7jx7yeacSV8T1tubA0V
 shRhZ5TPYzIMrUZx5n2mDrAB3Uq2Ip0lbfFw54+5qW8+5l+/SEqFgsXaeDniPMcBZf1B
 56+o7EzrKL45KlzJflNF+6NByEJxYri9LxW0+NKeiokJyc5x1Pc162PQ+kHRxXhjRoN7
 rfGDwBi11RhCZbx+66oM16GVS23T8ZYp8zsXBgsbcFhOGuhGGSOb8EMifZUa6k+73oLN
 y1RQ==
X-Gm-Message-State: AOAM533YUfXKqVNr5d4GSTmSAVxzZ5ucs+xioEn9KaP86jk4D7SQH5m7
 iY9IQwNhnqEWAGPUjxKZR/0rSMF0eu0C+w==
X-Google-Smtp-Source: ABdhPJxY4WR5vxdIU5uw1/zYqLiP3iFfCQFhWAL7ogk5Ak+/E1jxudAbAFSTbhHk9gIQ59eqL+41HA==
X-Received: by 2002:a2e:7313:: with SMTP id o19mr2557934ljc.27.1591817615460; 
 Wed, 10 Jun 2020 12:33:35 -0700 (PDT)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com.
 [209.85.167.44])
 by smtp.gmail.com with ESMTPSA id h26sm160329lji.42.2020.06.10.12.33.34
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Jun 2020 12:33:35 -0700 (PDT)
Received: by mail-lf1-f44.google.com with SMTP id e125so2165478lfd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 12:33:34 -0700 (PDT)
X-Received: by 2002:a5d:6750:: with SMTP id l16mr5316439wrw.295.1591817201284; 
 Wed, 10 Jun 2020 12:26:41 -0700 (PDT)
MIME-Version: 1.0
References: <20191204124732.10932-1-Jerry-Ch.chen@mediatek.com>
 <20191204124732.10932-2-Jerry-Ch.chen@mediatek.com>
 <20200521171101.GA243874@chromium.org>
 <e31fe64a-c5c1-7b1e-eec1-27111fe43ac2@xs4all.nl>
 <CAAFQd5Ad_cnv0qztZOk9c2H0Y+XO6tRcRmS1t4dBw5qbG-d8Nw@mail.gmail.com>
 <CAAEAJfDboyra5XcEiviJP_3Kk-mDNZH5nstDa_7P7XCV7bu7Pg@mail.gmail.com>
 <20200610190356.GJ201868@chromium.org>
 <CAAEAJfDSr4ne7p2BG_vjLs0zLQ1O+cn4puiALdd2DyAHnTXadg@mail.gmail.com>
In-Reply-To: <CAAEAJfDSr4ne7p2BG_vjLs0zLQ1O+cn4puiALdd2DyAHnTXadg@mail.gmail.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 10 Jun 2020 21:26:28 +0200
X-Gmail-Original-Message-ID: <CAAFQd5BH3xLNGAtbdH0Wy9KqQo30SFL9q9rcjZz8M3eviyY=hA@mail.gmail.com>
Message-ID: <CAAFQd5BH3xLNGAtbdH0Wy9KqQo30SFL9q9rcjZz8M3eviyY=hA@mail.gmail.com>
Subject: Re: [RFC PATCH V4 1/4] media: v4l2-mem2mem: add v4l2_m2m_suspend,
 v4l2_m2m_resume
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_123338_893819_0C8554F1 
X-CRM114-Status: GOOD (  37.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-devicetree <devicetree@vger.kernel.org>,
 =?UTF-8?B?U2VhbiBDaGVuZyAo6YSt5piH5byYKQ==?= <Sean.Cheng@mediatek.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 =?UTF-8?B?UnlubiBXdSAo5ZCz6IKy5oGpKQ==?= <Rynn.Wu@mediatek.com>,
 zwisler@chromium.org, srv_heupstream <srv_heupstream@mediatek.com>,
 Jerry-ch Chen <jerry-ch.chen@mediatek.corp-partner.google.com>,
 Jerry-ch Chen <Jerry-Ch.chen@mediatek.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 =?UTF-8?B?SnVuZ28gTGluICjmnpfmmI7kv4op?= <jungo.lin@mediatek.com>,
 Sj Huang <sj.huang@mediatek.com>, yuzhao@chromium.org,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Pi-Hsun Shih <pihsun@chromium.org>,
 =?UTF-8?B?RnJlZGVyaWMgQ2hlbiAo6Zmz5L+K5YWDKQ==?= <frederic.chen@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 =?UTF-8?B?Q2hyaXN0aWUgWXUgKOa4uOmbheaDoCk=?= <christie.yu@mediatek.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 10, 2020 at 9:14 PM Ezequiel Garcia
<ezequiel@vanguardiasur.com.ar> wrote:
>
> On Wed, 10 Jun 2020 at 16:03, Tomasz Figa <tfiga@chromium.org> wrote:
> >
> > On Wed, Jun 10, 2020 at 03:52:39PM -0300, Ezequiel Garcia wrote:
> > > Hi everyone,
> > >
> > > Thanks for the patch.
> > >
> > > On Wed, 10 Jun 2020 at 07:33, Tomasz Figa <tfiga@chromium.org> wrote:
> > > >
> > > > On Wed, Jun 10, 2020 at 12:29 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
> > > > >
> > > > > On 21/05/2020 19:11, Tomasz Figa wrote:
> > > > > > Hi Jerry,
> > > > > >
> > > > > > On Wed, Dec 04, 2019 at 08:47:29PM +0800, Jerry-ch Chen wrote:
> > > > > >> From: Pi-Hsun Shih <pihsun@chromium.org>
> > > > > >>
> > > > > >> Add two functions that can be used to stop new jobs from being queued /
> > > > > >> continue running queued job. This can be used while a driver using m2m
> > > > > >> helper is going to suspend / wake up from resume, and can ensure that
> > > > > >> there's no job running in suspend process.
> > [snip]
> > > > >
> > > > > I assume this will be part of a future patch series that calls these new functions?
> > > >
> > > > The mtk-jpeg encoder series depends on this patch as well, so I guess
> > > > it would go together with whichever is ready first.
> > > >
> > > > I would also envision someone changing the other existing drivers to
> > > > use the helpers, as I'm pretty much sure some of them don't handle
> > > > suspend/resume correctly.
> > > >
> > >
> > > This indeed looks very good. If I understood the issue properly,
> > > the change would be useful for both stateless (e.g. hantro, et al)
> > > and stateful (e.g. coda) codecs.
> > >
> > > Hantro uses pm_runtime_force_suspend, and I believe that
> > > could is enough for proper suspend/resume operation.
> >
> > Unfortunately, no. :(
> >
> > If the decoder is already decoding a frame, that would forcefully power
> > off the hardware and possibly even cause a system lockup if we are
> > unlucky to gate a clock in the middle of a bus transaction.
> >
>
> pm_runtime_force_suspend calls pm_runtime_disable, which
> says:
>
> """
>  Increment power.disable_depth for the device and if it was zero previously,
>  cancel all pending runtime PM requests for the device and wait for all
>  operations in progress to complete.
> """
>
> Doesn't this mean it waits for the current job (if there is one) and
> prevents any new jobs to be issued?
>

I'd love if the PM runtime subsystem handled job management of all the
driver subsystems automatically, but at the moment it's not aware of
any jobs. :) The description says as much as it says - it stops any
internal jobs of the PM subsystem - i.e. asynchronous suspend/resume
requests. It doesn't have any awareness of V4L2 M2M jobs.

> > I just inspected the code now and actually found one more bug in its
> > power management handling. device_run() calls clk_bulk_enable() before
> > pm_runtime_get_sync(), but only the latter is guaranteed to actually
> > power on the relevant power domains, so we end up clocking unpowered
> > hardware.
> >
>
> How about we just move clk_enable/disable to runtime PM?
>
> Since we use autosuspend delay, it theoretically has
> some impact, which is why I was refraining from doing so.
>
> I can't decide if this impact would be marginal or significant.
>

I'd also refrain from doing this. Clock gating corresponds to the
bigger part of the power savings from runtime power management, since
it stops the dynamic power consumption and only leaves the static
leakage. That said, the Hantro IP blocks have some internal clock
gating as well, so it might not be as pronounced, depending on the
custom vendor integration logic surrounding the Hantro hardware.

Actually even if autosuspend is not used, the runtime PM subsystem has
some internal back-off mechanism based on measured power on and power
off latencies. The driver should call pm_runtime_get_sync() first and
then enable any necessary clocks. I can see that currently inside the
resume callback we have some hardware accesses. If those really need
to be there, they should be surrounded with appropriate clock enable
and clock disable calls.

> > >
> > > I'm not seeing any code in CODA to handle this, so not sure
> > > how it's handling suspend/resume.
> > >
> > > Maybe we can have CODA as the first user, given it's a well-maintained
> > > driver and should be fairly easy to test.
> >
> > I remember checking a number of drivers using the m2m helpers randomly
> > and none of them implemented suspend/resume correctly. I suppose that
> > was not discovered because normally the userspace itself would stop the
> > operation before the system is suspended, although it's not an API
> > guarantee.
> >
>
> Indeed. Do you have any recomendations for how we could
> test this case to make sure we are handling it correctly?

I'd say that a simple offscreen command line gstreamer/ffmpeg decode
with suspend/resume loop in another session should be able to trigger
some issues.

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
