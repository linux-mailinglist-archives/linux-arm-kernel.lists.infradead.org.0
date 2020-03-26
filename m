Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9617E194105
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 15:10:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XwYNWgm02u0piqXh1hwIbppy7Nh0KXfu8NnDmLSKim0=; b=PHqC01Z9nOkEWV
	5pR6AG+zjiUa0yt7Xg6w4ha689CJVkmJYaXLzrmt57scyLTYCs0tEuykwmr+Y/GSnpg2RoXCt0OjV
	JlAmnsYMhRXGB5ZhxNty0ZtJ37eJV+yUHiJwodp2c17S8/4+x7k36gnYkBsI3DjhvqDQGbTDWjFZB
	aSSzjbf17LHMw1n1tB3sLRRmkbVpGWgPC/SbTi41tSZbCgRwI7Gr2P7ZwFJepBoo2weTAZhbp+oEY
	tmVtEGA1X+XKz+k2c2MOFjvEwvJvpIWP39CZ3eeyjM6zaX8QPhAwZ5MPn5yk7PrNc3z9nW+WtBNeF
	SDP9wHhhRKiXrAiny2Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHTDK-0004ig-89; Thu, 26 Mar 2020 14:10:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHTDA-0004hh-9U
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 14:10:22 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1CF95206F8;
 Thu, 26 Mar 2020 14:10:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585231815;
 bh=PeDZLWIRhhe2o42I/gqvyiiMuKNamoLO8nfHcq+EkCc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=q+HavB7wzgTYW3kPySjLPPoFLj+9aNlpEq50YxNDKKRzsgG7ARI+2fa1J4sYhcmvd
 BTOyHlkLNotN2GwwHNkryJ4W1nlUR+pAx11lVOgV1quJL231pXotHGVltvYV2fn+QM
 DqMa1ugiLPJgmlRKMJI7hjcDNVP3f/Fapum5Uwqg=
Date: Thu, 26 Mar 2020 15:10:11 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH] coresight: do not use the BIT() macro in the UAPI header
Message-ID: <20200326141011.GA1313869@kroah.com>
References: <20200324042213.GA10452@asgard.redhat.com>
 <CANLsYkwVybRG9L6gDJTzZ=eXut66vJYfuEtOfLzaYaVpdybT1A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkwVybRG9L6gDJTzZ=eXut66vJYfuEtOfLzaYaVpdybT1A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_071021_221141_FAF0D4C4 
X-CRM114-Status: GOOD (  16.35  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Michael Williams <michael.williams@arm.com>,
 "Dmitry V. Levin" <ldv@altlinux.org>, Eugene Syromiatnikov <esyr@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Chunyan Zhang <zhang.chunyan@linaro.org>,
 Pratik Patel <pratikp@codeaurora.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 24, 2020 at 09:31:15AM -0600, Mathieu Poirier wrote:
> On Mon, 23 Mar 2020 at 22:22, Eugene Syromiatnikov <esyr@redhat.com> wrote:
> >
> > The BIT() macro definition is not available for the UAPI headers
> > (moreover, it can be defined differently in the user space); replace
> > its usage with the _BITUL() macro that is defined in <linux/const.h>.
> >
> > Fixes: 237483aa5cf4 ("coresight: stm: adding driver for CoreSight STM component")
> > Signed-off-by: Eugene Syromiatnikov <esyr@redhat.com>
> > ---
> >  include/uapi/linux/coresight-stm.h | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> >
> > diff --git a/include/uapi/linux/coresight-stm.h b/include/uapi/linux/coresight-stm.h
> > index aac550a..8847dbf 100644
> > --- a/include/uapi/linux/coresight-stm.h
> > +++ b/include/uapi/linux/coresight-stm.h
> > @@ -2,8 +2,10 @@
> >  #ifndef __UAPI_CORESIGHT_STM_H_
> >  #define __UAPI_CORESIGHT_STM_H_
> >
> > -#define STM_FLAG_TIMESTAMPED   BIT(3)
> > -#define STM_FLAG_GUARANTEED    BIT(7)
> > +#include <linux/const.h>
> > +
> > +#define STM_FLAG_TIMESTAMPED   _BITUL(3)
> > +#define STM_FLAG_GUARANTEED    _BITUL(7)
> 
> Greg, if you want to pick this up right away:
> 
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> 
> Otherwise let me know and I'll add it to my next tree.

I'll take it now, thanks.

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
