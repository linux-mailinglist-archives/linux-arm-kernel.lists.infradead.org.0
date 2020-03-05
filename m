Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A37EE17ADA2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 18:54:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e3+H7e5utsgRJsY/hbI2hrDTrH7obADTMAS6sJD0IAg=; b=lVz4yUWi0S77OR
	9EjPyp3uj0kLzf7iFFZiL/NuBpLgcEPXMwIFF5V4yM/2qln58Cknym+WzeOWAEt8e1W30YQGEfQXo
	ku4fh+5VNsMxaxysO0+DD/59VQr0n+jwSu85Woembk3BedfjXGVYy4+vp84w4v9eZn3zm69O6etqI
	H4fjC3Zr8hJUbjDQnciUG8DrA1AMmODIofva9PkuRoSQa9sOMk+yL3paEXu+nB+WZo39HDP0CkfyS
	t5vhR/+zO6ucymsQ6Hl5Msrb3adQorrlT9eDKTz8kbA0xhr4kqWcj68EKO2IqBHX3znIu/jeYx+N0
	fGrCH0E1RWI5YMEv842A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9uhn-0002UQ-H0; Thu, 05 Mar 2020 17:54:43 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9uhf-0002U5-12
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 17:54:36 +0000
Received: by mail-io1-xd42.google.com with SMTP id u17so7422900iog.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Mar 2020 09:54:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nWP6NJ5Ufnl/Qfwtyeq+O8joFfs1L0Y4YDlGJGw2HAo=;
 b=z7S+oDI+x6CnRYCgv92/5OnTRsGdpp+y0t3e9oT0oJ/0BeDDJdVS9juXISjgw851gm
 GGacPtojUoWQbfZ52pcikVXqGlB2VRO/fKMhYQTD8oWTTfFPhtb7xXXB8WyHznS25jWy
 yv5oCb7CwJ2XoT8GMacjXi0cAGkhZcb9cTYw/3X1/hGYOqcsuYzvjWFQ1S4SeyEKuFNY
 CmWwSw8emOAuD0yxmqR0DmUIiwjPHTaIGm+1dZ80F28Qj0ckaLydGJE+vDGd851gonG/
 49t7i6mWE2mtVf06RGJAShRIKbpdzNzU3lEdkNO+AyffD2WWiKWcd7ww865xl7BcwvBL
 xIRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nWP6NJ5Ufnl/Qfwtyeq+O8joFfs1L0Y4YDlGJGw2HAo=;
 b=UMMh2eadOElXeYx+UYc3MNOKfzJM3qko78v3QJ8xzTZTSTycqBcqama5KB5YmlldG1
 p/hTbhKuldv9FbINQgzqpx+M8jvbsrZi1Bki3EAaBm5WGJYL1BalHj3CYveWNH6k54vi
 tRFmL/p1RxpPHvFrueSVj1PRF3lvMrBYXGTDLpkXFhYgRVAv2E99ORwhTiY9eSD8Glwp
 NJkIe31yRJ5hC1i6jofXF5MiP0MJuv1pF/K3jE7wLHoYScZZvN+Krqhe4LKKVxrg/nkL
 XXLojVeibGljySWg13iYLXA9Y+CZ7C7S1cyGp17rWRu8QsPA3yDG70pj8/qP1e3MpcMu
 u0uQ==
X-Gm-Message-State: ANhLgQ0zKBjQegDMiKSL5DG+jltyRz0toiG87P91pX5OGzXrNgONwS1K
 V+qLehz6FfSoGf1sqOa8Eb6/msD+3X+V3uzBcvmTYw==
X-Google-Smtp-Source: ADFU+vt/zBlELi1bLdW+KjbrwUUGrSXJOGD1C1rzpYL6NqnOhhJywlgeLDkLobXKBOoTHfrNdD3BifjP1rQvlXDxd7w=
X-Received: by 2002:a05:6638:44a:: with SMTP id
 r10mr8443557jap.36.1583430873469; 
 Thu, 05 Mar 2020 09:54:33 -0800 (PST)
MIME-Version: 1.0
References: <20200304142628.8471-1-NShubin@topcon.com>
 <CANLsYkzPROdphvmtpZ6YiajZ2dYLrojC-rGYkq4jK2yzTnAJ5A@mail.gmail.com>
 <264561583429111@sas1-438a02fc058e.qloud-c.yandex.net>
In-Reply-To: <264561583429111@sas1-438a02fc058e.qloud-c.yandex.net>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Thu, 5 Mar 2020 10:54:22 -0700
Message-ID: <CANLsYkxj=1o8Y0V0WedbVirj9seZSArWeCvQvwk+N7wZa2_hPQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] remoteproc: imx_rproc: dummy kick method
To: nikita.shubin@maquefel.me
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_095435_101258_E4F2CD4D 
X-CRM114-Status: GOOD (  20.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
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

On Thu, 5 Mar 2020 at 10:29, <nikita.shubin@maquefel.me> wrote:
>
>
>
> 05.03.2020, 19:17, "Mathieu Poirier" <mathieu.poirier@linaro.org>:
> > On Wed, 4 Mar 2020 at 07:25, Nikita Shubin <NShubin@topcon.com> wrote:
> >>  add kick method that does nothing, to avoid errors in rproc_virtio_notify.
> >>
> >>  Signed-off-by: Nikita Shubin <NShubin@topcon.com>
> >>  ---
> >>   drivers/remoteproc/imx_rproc.c | 6 ++++++
> >>   1 file changed, 6 insertions(+)
> >>
> >>  diff --git a/drivers/remoteproc/imx_rproc.c b/drivers/remoteproc/imx_rproc.c
> >>  index 3e72b6f38d4b..796b6b86550a 100644
> >>  --- a/drivers/remoteproc/imx_rproc.c
> >>  +++ b/drivers/remoteproc/imx_rproc.c
> >>  @@ -240,9 +240,15 @@ static void *imx_rproc_da_to_va(struct rproc *rproc, u64 da, int len)
> >>          return va;
> >>   }
> >>
> >>  +static void imx_rproc_kick(struct rproc *rproc, int vqid)
> >>  +{
> >>  +
> >>  +}
> >>  +
> >
> > If rproc::kick() is empty, how does the MCU know there is packets to
> > fetch in the virtio queues?
>
> Well, of course it doesn't i understand this perfectly - just following documentation citing:
>
> | Every remoteproc implementation should at least provide the ->start and ->stop
> | handlers. If rpmsg/virtio functionality is also desired, then the ->kick handler
> | should be provided as well.
>
> But i as i mentioned in "remoteproc: Fix NULL pointer dereference in rproc_virtio_notify" kick method will be called if
> "resource_table exists in firmware and has "Virtio device entry" defined" anyway, the imx_rproc is not in control of what
> exactly it is booting, so such situation can occur.

If I understand correctly, the MCU can boot images that have a virtio
device in its resource table and still do useful work even if the
virtio device/rpmsg bus can't be setup - is this correct?

Thanks,
Mathieu

>
> >
> >>   static const struct rproc_ops imx_rproc_ops = {
> >>          .start = imx_rproc_start,
> >>          .stop = imx_rproc_stop,
> >>  + .kick = imx_rproc_kick,
> >>          .da_to_va = imx_rproc_da_to_va,
> >>   };
> >>
> >>  --
> >>  2.24.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
