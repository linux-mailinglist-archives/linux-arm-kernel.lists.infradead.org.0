Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 792ABDFDEE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 08:59:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ipsb03CDQWZoeSofaXr+H5GBiEoWeHfvB70FB9k02Fk=; b=dMcGnSNobu7hpC
	SYdxl2wXxrsFwG6+yZeY3F4Sswc9TtzKqOv3ssfbEkfzBCO4P8jabb0EeFVtDCbYyguZXWvtY1qeG
	ubistUx/C5QxkQAgd5GMQLEVZLtltN6lustnlP2ClLjKNeIjEnx0m+4J4e2/n8OwITScVThPJ03cE
	2SmgopqNrtW84i0uc4RHgHS01Tmg9/aMeABuBcGoBDFN38DLvv/lnILKz5CQyeMNEIM9w8rAecZOH
	Qu7ciOVzKU9EOGtyL68W28SUwTz8D99krVfNt4MZuv7l9ZTqSsWrrfUNePugPr+7ruP6TU5Ukee/G
	n1xeAZu2YTezsPifHx2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMo8h-0000mi-Kb; Tue, 22 Oct 2019 06:59:31 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMo8Y-0000m4-5G
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 06:59:23 +0000
Received: by mail-vk1-xa43.google.com with SMTP id q25so3345900vkn.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 23:59:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=48GsjoJkha+FkK4BjEpjxR+SeBNRB+aPyJf6ECBpNI8=;
 b=hbyPJZlxSdwm88myuhdtJEWIniVP1HiyEFgnExhI8LirSFCoAssFt32rZiA6ATyVm1
 RfPrjPXMTCjoAwM+OIdY+RZmtVg+qMxVFAFdE1sSNExUcHfa5QU/axOjkyW9NIhXAnMw
 12HfGq8+/d7D00ifWT3bp1gIIGhSCTcWH+AOmyLfDPf2pm+QQayGYH6BM5PnZcao+fGx
 EN2Ht1omTOCmgsUVR6YVT2YLw5ezM3kXz8KQFgXSzvnivqvBoEff2XKL34V5JzZ7ygvs
 6ovL3ZC5dP+zoCqhRdoblDoZCU9DAwv3bVwBcsq87BrFkpXHAkgA+4tHyuorekroJaA5
 kHPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=48GsjoJkha+FkK4BjEpjxR+SeBNRB+aPyJf6ECBpNI8=;
 b=fDQsm2v/Jaj3hgDnkN4TFQNvQaRAZMh/uDjm49OWdl8pYXes563dEZ9UyA7aJy3dqg
 LHzyfkgdpNRs1vyWm2ipECfEIzxukMNzalOsMBC5jvY2/vGfgCAZ5DyMj2ioYH5wYUwL
 JvDVOZ2vIL7ABOuvq1+Ir2oIbI5w5cZ0Dy4BRDhUkG/rmHLTW7yilbT+X/4oucsdl0bY
 iu5GRxHG3OeQwqJbqATlufMegbAU91mDuznPEUJfXMWtyuKKVx5qN0Wcp/wezdqKOpoj
 Clfo2jGMC9iwQzMdYyGb9uv2GkrFnOXyI+5RFNNLa0F/qPnMUyiL+4OAFlflCx4Qng9c
 3kVQ==
X-Gm-Message-State: APjAAAXmD8sAAAUyljRKNWqLdrEKzrU90fU9WWN/UaXSxxKqtRmep2rl
 jB1BtBRrS3Lxy2UdY7WVit8e/ir36zS13bGBuo0Qjw==
X-Google-Smtp-Source: APXvYqyQp/ZBzqbnbb99OA7AcxXgKHIl2AlPbDn895oCL9HPi5AEBH3Op7dbJ+nVlsWjQf3q2l3n/Tbcy8/XA0+cyS0=
X-Received: by 2002:a1f:a293:: with SMTP id l141mr1033147vke.43.1571727560670; 
 Mon, 21 Oct 2019 23:59:20 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1571510481.git.hns@goldelico.com>
 <9bd4c0bb0df26523d7f5265cdb06d86d63dafba8.1571510481.git.hns@goldelico.com>
 <20191021143008.GS5610@atomide.com>
 <3FDBE28F-B2C5-4EDE-905C-687F601462B6@goldelico.com>
 <20191021171104.GY5610@atomide.com>
In-Reply-To: <20191021171104.GY5610@atomide.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 22 Oct 2019 08:58:44 +0200
Message-ID: <CAPDyKFryqo3wF-GphhytNqrDL4rbZ7Qou1Ki3e2_5w-yh2o=uw@mail.gmail.com>
Subject: Re: [PATCH v2 07/11] omap: remove old hsmmc.[ch] and in Makefile
To: Tony Lindgren <tony@atomide.com>,
 "H. Nikolaus Schaller" <hns@goldelico.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_235922_206609_5627FF52 
X-CRM114-Status: GOOD (  15.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: DTML <devicetree@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Kalle Valo <kvalo@codeaurora.org>,
 linux-omap <linux-omap@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

- Trimmed cc-list (could be a good idea for next submission as well)

On Mon, 21 Oct 2019 at 19:11, Tony Lindgren <tony@atomide.com> wrote:
>
> * H. Nikolaus Schaller <hns@goldelico.com> [191021 17:08]:
> >
> > > Am 21.10.2019 um 16:30 schrieb Tony Lindgren <tony@atomide.com>:
> > >
> > > * H. Nikolaus Schaller <hns@goldelico.com> [191019 18:43]:
> > >> --- a/arch/arm/mach-omap2/Makefile
> > >> +++ b/arch/arm/mach-omap2/Makefile
> > >> @@ -216,7 +216,6 @@ obj-$(CONFIG_MACH_NOKIA_N8X0)          += board-n8x0.o
> > >>
> > >> # Platform specific device init code
> > >>
> > >> -omap-hsmmc-$(CONFIG_MMC_OMAP_HS)  := hsmmc.o
> > >> obj-y                                      += $(omap-hsmmc-m) $(omap-hsmmc-y)
> > >
> > > The related obj-y line can go now too, right?
> >
> > Yes, I think so. It is a construction that I have never seen before :)
> > Therefore I did not recognize that it is related.
> >
> > > And looks like common.h also has struct omap2_hsmmc_info
> > > so maybe check by grepping for hsmmc_info to see it's gone.
> >
> > Yes, it is just a forward-declaration of the struct name with
> > no user anywhere.
> >
> > Scheduled for v3.
> >
> > BTW: should this series go through your tree since it is an
> > omap machine?
>
> Or MMC tree as that's where the code change really are.

I am okay with that. I will have a look at the series and provide some comments.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
