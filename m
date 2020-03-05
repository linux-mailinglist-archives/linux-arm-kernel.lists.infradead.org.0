Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 732C917AE37
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 19:36:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CM/74VAsfiV7vhuvXdJSgWXEQz+Y8Vj6CZt1zg/nz48=; b=L3lvmO+5kwrs31
	e+ONuMxsGgpTJDoGdwmMlXuFX22Y5QnwgSylxutMgksItRDReW3KoHxkKj6//mj3NWXxO3h5jAU/Y
	eK83sHx4OLYMQSRWVpXK3CMDA4x3xpUMe/sTQ9OpNI3XSntnK9BT9SI3PEByp2Nw51EDMvThdQfcV
	7P+gqtNE20bIJs0P+194CXbu/b76KMKgs5cAb9sNisNRVYpGFMBX2r+1J6YTeqLU2o77c+HVoE7Z7
	+5h9pT/wsp1mzrrAQzgFigsZmi3moMGuhNuXSGtvzH/OfBLpVvCkWrDnCtgRabVC+roucBpInXNoW
	6OfnjB1kwM2XzZwcs1+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9vMS-0008PD-Dt; Thu, 05 Mar 2020 18:36:44 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9vMI-0008OO-Fg
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 18:36:38 +0000
Received: by mail-io1-xd44.google.com with SMTP id n21so7575109ioo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Mar 2020 10:36:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mrKnuKdMvP4X7ZBG8bgBLmZOKarwJfZtHOJKCgxv4cY=;
 b=OL8/7Nzmih2KKFE4RC52LQULBl5+wCOilEaFZmRZG4knfnM2uqJmM/TALAQyfEQetB
 1VizdjRVZft8JaQ3zu450iaFyYKD30QiObuvgzHcL/s2O3eG0/1G671jWTpnqN6UoqXx
 wDgPmlpVyGW5uj/zaZxVzRXKTgdl+R8Jml9rhwgX9tNI4bQAoKbpxKa/u6yeg7Z5NLr8
 brVXvdVdBkLzAMzYVoLoJ9jrCSkcutvcsXl52bFHdp9k5mGlMmU6mZAFW8GWUt6VkM9+
 aSgaUmn1NdTwljsj0s1yltk9VTxezp9AtVYS92rmnZREaO/rD8c3duJPqMJNS8TTKrWD
 OsQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mrKnuKdMvP4X7ZBG8bgBLmZOKarwJfZtHOJKCgxv4cY=;
 b=lUL9JGsocw4UHM4YknIOOKjpVFhN4xpGZpnvRPhWccIHbJ4/6IfGADGhC+vGs++5O1
 +Air+QMWIPBRW+n7IabkHLznu9XclgYpK15JbgmdYFfGXMb3bhpQI2vUOGxkLMPevsOf
 1cBnlD8XWg0TiYEAbldoAmr3/szbVoJIuSwZ2YI79HtuVs/2yQzyG3mg3+/D1wH6cFQH
 soHx67/8NaA3+M8NO18crR7lwGn5uhjp934njJrOd2anKfOGNoJwoFxAUCylI12che1V
 XcGl+qx/lnCeGuIwdpZ3t32c5CycHfVm1kUeeVjCeGRtERTOixA4G+bSNY+tt4yFkmf2
 q4Ag==
X-Gm-Message-State: ANhLgQ3C5bihx1moR2AIjGrgNcgoKPTFfi7SBX3Kplrjxphhp4kM5VsJ
 8D2oTYAaSTlW19eCA5eRqH8VA4g9gNRFjVPqQZzSBQ==
X-Google-Smtp-Source: ADFU+vuDOioOoFAW5W7R6s++eKhLCLBQi6Mc0cGqhEYuT14UAxXAJS/UWMFmyHl2gev0naSQUePQQBho/wd5WIAIcxg=
X-Received: by 2002:a05:6638:44a:: with SMTP id
 r10mr8592498jap.36.1583433390580; 
 Thu, 05 Mar 2020 10:36:30 -0800 (PST)
MIME-Version: 1.0
References: <20200304142628.8471-1-NShubin@topcon.com>
 <CANLsYkzPROdphvmtpZ6YiajZ2dYLrojC-rGYkq4jK2yzTnAJ5A@mail.gmail.com>
 <264561583429111@sas1-438a02fc058e.qloud-c.yandex.net>
 <CANLsYkxj=1o8Y0V0WedbVirj9seZSArWeCvQvwk+N7wZa2_hPQ@mail.gmail.com>
 <266371583430956@iva3-67f911cb3a01.qloud-c.yandex.net>
In-Reply-To: <266371583430956@iva3-67f911cb3a01.qloud-c.yandex.net>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Thu, 5 Mar 2020 11:36:19 -0700
Message-ID: <CANLsYkyHaZFrCYFxWZVGqy=QwU86i2E2o9ENZ7k2mv70jU9pqg@mail.gmail.com>
Subject: Re: [PATCH 1/2] remoteproc: imx_rproc: dummy kick method
To: nikita.shubin@maquefel.me
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_103636_379359_C9C704AB 
X-CRM114-Status: GOOD (  23.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Fabio Estevam <festevam@gmail.com>,
 Nikita Shubin <nshubin@topcon.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-remoteproc <linux-remoteproc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 5 Mar 2020 at 11:07, <nikita.shubin@maquefel.me> wrote:
>
>
>
> 05.03.2020, 20:54, "Mathieu Poirier" <mathieu.poirier@linaro.org>:
> > On Thu, 5 Mar 2020 at 10:29, <nikita.shubin@maquefel.me> wrote:
> >>  05.03.2020, 19:17, "Mathieu Poirier" <mathieu.poirier@linaro.org>:
> >>  > On Wed, 4 Mar 2020 at 07:25, Nikita Shubin <NShubin@topcon.com> wrote:
> >>  >> add kick method that does nothing, to avoid errors in rproc_virtio_notify.
> >>  >>
> >>  >> Signed-off-by: Nikita Shubin <NShubin@topcon.com>
> >>  >> ---
> >>  >> drivers/remoteproc/imx_rproc.c | 6 ++++++
> >>  >> 1 file changed, 6 insertions(+)
> >>  >>
> >>  >> diff --git a/drivers/remoteproc/imx_rproc.c b/drivers/remoteproc/imx_rproc.c
> >>  >> index 3e72b6f38d4b..796b6b86550a 100644
> >>  >> --- a/drivers/remoteproc/imx_rproc.c
> >>  >> +++ b/drivers/remoteproc/imx_rproc.c
> >>  >> @@ -240,9 +240,15 @@ static void *imx_rproc_da_to_va(struct rproc *rproc, u64 da, int len)
> >>  >> return va;
> >>  >> }
> >>  >>
> >>  >> +static void imx_rproc_kick(struct rproc *rproc, int vqid)
> >>  >> +{
> >>  >> +
> >>  >> +}
> >>  >> +
> >>  >
> >>  > If rproc::kick() is empty, how does the MCU know there is packets to
> >>  > fetch in the virtio queues?
> >>
> >>  Well, of course it doesn't i understand this perfectly - just following documentation citing:
> >>
> >>  | Every remoteproc implementation should at least provide the ->start and ->stop
> >>  | handlers. If rpmsg/virtio functionality is also desired, then the ->kick handler
> >>  | should be provided as well.
> >>
> >>  But i as i mentioned in "remoteproc: Fix NULL pointer dereference in rproc_virtio_notify" kick method will be called if
> >>  "resource_table exists in firmware and has "Virtio device entry" defined" anyway, the imx_rproc is not in control of what
> >>  exactly it is booting, so such situation can occur.
> >
> > If I understand correctly, the MCU can boot images that have a virtio
> > device in its resource table and still do useful work even if the
> > virtio device/rpmsg bus can't be setup - is this correct?
>
> Yes, this assumption is correct.
>
> Despite this situation is not i desire at all - such thing can happen.
> I am currently using co-proc as a realtime part of UGV control,
> so it must immediately stop the engines, if not provided with navigational information.
>
> The imx7d MCU have access to the most periphery that have the main processor.
>
> Of course the kick method should do real work, but i decided to submit step by step if i am allowed to do so.

Ok, the situation is clearer now and I have put your patches back in
my queue.  I am seriously back-logged at this time so it will take a
little while before I get to them.

>
> >
> > Thanks,
> > Mathieu
> >
> >>  >
> >>  >> static const struct rproc_ops imx_rproc_ops = {
> >>  >> .start = imx_rproc_start,
> >>  >> .stop = imx_rproc_stop,
> >>  >> + .kick = imx_rproc_kick,
> >>  >> .da_to_va = imx_rproc_da_to_va,
> >>  >> };
> >>  >>
> >>  >> --
> >>  >> 2.24.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
