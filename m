Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F23D41F5BE0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 21:15:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XPd+VIayY6uiYd3HMHoVhLueSoQy6Ak//yUvswCv0lM=; b=Nbhrg/KNbPe5QK
	ma0fnT+3WMtNlVQehhqPPPDkP65MJ4VR6nGuUqRWVJkalaPlMRpQZXyPADDFolploE0HF5aP8iGt1
	+ocyszepEc0ZuKuvLHEzz1nhm8WQ5sAoxKRaLaEKWl6gfOem/K7RZa7Iu94hXbJNZ6HaF+PztBmnD
	H5yrdLwLzNTAFQJMK9lPgJR6WvoS/D87DJh5Otj4DEplFyL5DZF/jNEbQsCVKVMF/WD+OC45WKJS3
	y+rbINCVBp6EEu3HHnGtAB0Li7vvuSVAT6yqXHaacVjWS6XT9g/Ry45viBFX7UVBQjn+SOEA/EAed
	wiz9ALpjoeE9bAANtcCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj6Bk-0001Mr-Vx; Wed, 10 Jun 2020 19:15:04 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj6BZ-0001Lp-7f
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 19:14:54 +0000
Received: by mail-ed1-x543.google.com with SMTP id t21so2192064edr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 12:14:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hY1EqCjTHPxqFfI2Ha7phQq/vyBFFXs9xfoG48pRam8=;
 b=aJfwS8QKSiJ6H8efGbgr8JxwnYO1ycqGIy32HcO1eG3MGZPBt66ZyhwXGNS+ghpCA8
 MlCtqoDfJ8M3mbV1AgWLpGWf+BrKi4CjjSE3kapuXpX/wW+K7yKW/Wl7WT8jowM/Ie+q
 dLhJivuS+r93N3eMejYqC6BL/icw9TbscMS/1zgtaCagnljzPRliDuw0nNJm6Nu2lNR5
 wxcYpKvMkX70bEiohd4mCcUK6HDV5+JG8XRRb9tMfhGLnF/QWmnmCU+QP4L3ZZLa4KnY
 tJsgeBZGfHZQjF0s4mZCD+HuR/3RzUm1NynteTQZhsux6044q+WAmCrBTpi8exknwZ9N
 RJ9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hY1EqCjTHPxqFfI2Ha7phQq/vyBFFXs9xfoG48pRam8=;
 b=coQv8MdsW8xJhB+Cubf39XXtwEhOsAzZAqWkby4NVDKPvAYPESbwbvtTRb1OeFjO80
 mJEf3uQThlYsfus4gBMhONLsJfdbTZlh5jkW9tcvcR+lmW658mDq6wQifOwE1eg9KRPo
 qMgh7iPUv+iqdjDp9Wc5SzDZm2WEFNDfe5hRW1jGWNZGkJs3EA2orkbSER8kHDEMtixI
 zGoV8QpwRBjQv8MuMJvRnCJnNnInCoB8n0/MMfqEH8IBynUGI5YspFjZP5Angy+UTSO2
 708N3CDMa44sXZ+tQqQ81inPXv/tQkJlVFKsiToycWSHevPv6S2LkHnmIEfW7sabemPX
 B8CQ==
X-Gm-Message-State: AOAM530dy6pYqXBhiW0lh7NsUwFNugQMopEumrKp+m04M1ej2LVMVPzV
 04mxTxCyM8JC3DSgCcjtGwF3k24heC7Qdg84x8cqlg==
X-Google-Smtp-Source: ABdhPJz9i/RGn/VGDboPOGapRKfIYiBLxFTRAkrJWXFnfcy4J6pqbtf/64Ut6cbDRPpojftZ8tGKiCLnT+y4+PGXC7s=
X-Received: by 2002:a05:6402:1153:: with SMTP id
 g19mr3693132edw.127.1591816481715; 
 Wed, 10 Jun 2020 12:14:41 -0700 (PDT)
MIME-Version: 1.0
References: <20191204124732.10932-1-Jerry-Ch.chen@mediatek.com>
 <20191204124732.10932-2-Jerry-Ch.chen@mediatek.com>
 <20200521171101.GA243874@chromium.org>
 <e31fe64a-c5c1-7b1e-eec1-27111fe43ac2@xs4all.nl>
 <CAAFQd5Ad_cnv0qztZOk9c2H0Y+XO6tRcRmS1t4dBw5qbG-d8Nw@mail.gmail.com>
 <CAAEAJfDboyra5XcEiviJP_3Kk-mDNZH5nstDa_7P7XCV7bu7Pg@mail.gmail.com>
 <20200610190356.GJ201868@chromium.org>
In-Reply-To: <20200610190356.GJ201868@chromium.org>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Wed, 10 Jun 2020 16:14:30 -0300
Message-ID: <CAAEAJfDSr4ne7p2BG_vjLs0zLQ1O+cn4puiALdd2DyAHnTXadg@mail.gmail.com>
Subject: Re: [RFC PATCH V4 1/4] media: v4l2-mem2mem: add v4l2_m2m_suspend,
 v4l2_m2m_resume
To: Tomasz Figa <tfiga@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_121453_281722_A9A2B83A 
X-CRM114-Status: GOOD (  30.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Wed, 10 Jun 2020 at 16:03, Tomasz Figa <tfiga@chromium.org> wrote:
>
> On Wed, Jun 10, 2020 at 03:52:39PM -0300, Ezequiel Garcia wrote:
> > Hi everyone,
> >
> > Thanks for the patch.
> >
> > On Wed, 10 Jun 2020 at 07:33, Tomasz Figa <tfiga@chromium.org> wrote:
> > >
> > > On Wed, Jun 10, 2020 at 12:29 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
> > > >
> > > > On 21/05/2020 19:11, Tomasz Figa wrote:
> > > > > Hi Jerry,
> > > > >
> > > > > On Wed, Dec 04, 2019 at 08:47:29PM +0800, Jerry-ch Chen wrote:
> > > > >> From: Pi-Hsun Shih <pihsun@chromium.org>
> > > > >>
> > > > >> Add two functions that can be used to stop new jobs from being queued /
> > > > >> continue running queued job. This can be used while a driver using m2m
> > > > >> helper is going to suspend / wake up from resume, and can ensure that
> > > > >> there's no job running in suspend process.
> [snip]
> > > >
> > > > I assume this will be part of a future patch series that calls these new functions?
> > >
> > > The mtk-jpeg encoder series depends on this patch as well, so I guess
> > > it would go together with whichever is ready first.
> > >
> > > I would also envision someone changing the other existing drivers to
> > > use the helpers, as I'm pretty much sure some of them don't handle
> > > suspend/resume correctly.
> > >
> >
> > This indeed looks very good. If I understood the issue properly,
> > the change would be useful for both stateless (e.g. hantro, et al)
> > and stateful (e.g. coda) codecs.
> >
> > Hantro uses pm_runtime_force_suspend, and I believe that
> > could is enough for proper suspend/resume operation.
>
> Unfortunately, no. :(
>
> If the decoder is already decoding a frame, that would forcefully power
> off the hardware and possibly even cause a system lockup if we are
> unlucky to gate a clock in the middle of a bus transaction.
>

pm_runtime_force_suspend calls pm_runtime_disable, which
says:

"""
 Increment power.disable_depth for the device and if it was zero previously,
 cancel all pending runtime PM requests for the device and wait for all
 operations in progress to complete.
"""

Doesn't this mean it waits for the current job (if there is one) and
prevents any new jobs to be issued?

> I just inspected the code now and actually found one more bug in its
> power management handling. device_run() calls clk_bulk_enable() before
> pm_runtime_get_sync(), but only the latter is guaranteed to actually
> power on the relevant power domains, so we end up clocking unpowered
> hardware.
>

How about we just move clk_enable/disable to runtime PM?

Since we use autosuspend delay, it theoretically has
some impact, which is why I was refraining from doing so.

I can't decide if this impact would be marginal or significant.

> >
> > I'm not seeing any code in CODA to handle this, so not sure
> > how it's handling suspend/resume.
> >
> > Maybe we can have CODA as the first user, given it's a well-maintained
> > driver and should be fairly easy to test.
>
> I remember checking a number of drivers using the m2m helpers randomly
> and none of them implemented suspend/resume correctly. I suppose that
> was not discovered because normally the userspace itself would stop the
> operation before the system is suspended, although it's not an API
> guarantee.
>

Indeed. Do you have any recomendations for how we could
test this case to make sure we are handling it correctly?

> Best regards,
> Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
