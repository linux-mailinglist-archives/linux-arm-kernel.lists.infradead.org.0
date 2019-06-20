Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB914CF99
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 15:51:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EQG64dS8hSCVBUBf8JQ6aadelExetWljFbwGSwRhxfM=; b=Der/dcNC1yw4v6
	r3swrhreen7hJ+xDRP0tg01E8HqGW/+ymZq9zydzGkgabNOLx+IrkrkMQnIE6mQMcAbBw+j91Q7kp
	FsGufp8g6j3EAh+4/lPq8ItdMkVAjJ/LUzJ7J0XJoqnvDk9r1gvfxUbFeYLuEb0pLdWwNwn9sMVdO
	vHg1s1RRJzB6Htww6HEh2JEnoexEFP+BPPKC6YJZzBNOLe4ACUeuoEt7FQXPKfs29C3saAhid7Wmv
	O6MDzBfWubLDIG49eNlph20G9+7+6qy3jYcTGy2n+SyRD3SWM/nuvjNIihhhXndRirQxMtuUvAy1B
	FTQ7WwU6F/XIx8oavLBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdxTH-0005eE-JV; Thu, 20 Jun 2019 13:51:23 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdxSy-0005cn-LO
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 13:51:06 +0000
Received: by mail-ua1-x943.google.com with SMTP id 34so1646951uar.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 06:51:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2IFwlqbKib7dWbeVbv8X2YweFdeF4XDbaSTOpsTFt9E=;
 b=cnBfFGGl3pJdpKp1MmBsF47mWvkNWCygNpH36R5cENrnDyoojF55rqerYfDLfwbbTj
 RFNj58C5CUCULzDhnJhuuGUawX8GzXHIVIZhOz7jX/xVeIdC14e76z4ee9EhQzScRn3r
 yZyPrtDQwDjqyu6vqRuq4CLTKqp19vhLDP1kzyZlJral0qqZUmCvS5srHMy+sgfXo7OX
 8J3/HDJJtVqUJPoO9R3c2uQaBqDPo5Hb8yFlY4a3lZNrdJXrZ2uvs7wDiEP1uZSr6Jfu
 RATefM9/IOvINHrRt3pDF9AMIZimpQikwZUjdX3vOvvUC0JBvtUIxqFbJK3SbyUB77sX
 swNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2IFwlqbKib7dWbeVbv8X2YweFdeF4XDbaSTOpsTFt9E=;
 b=ShegbQAz7eMNzEatG5+qJmnhe5ObNBR7Y4sV90aI+Z7NoZosCHDNyQv6YVG5rGVsj1
 xtAERh5U9pKyCTAjiAngrHsE+GCMc9a3484hInaNDCbyLp5ZyqPjYucqMBt6x1+tWM68
 dLH9nnO2uZOK1yOlH3HeiUGCcBGvbc4F7qn0bswYqVZuGFt2xkkrhIc/QN/Yqjd8LQEG
 pg8h6uAuEJU5bHTZ1AgJePEzDtP2SmMp1dx4xxm1eQPdk1sHFaCTu0xtNFgzshjrU90G
 DqG0JJmu0jFMooLVwPehGnupojDFEN48wK6MxWreqSGyWd00r4D2YQCz1Ecg3KZgEun0
 Ig6A==
X-Gm-Message-State: APjAAAWRKZ01BHPWfSawQMptXYQV2hWf9MgvaLpbRlbOj6qL/SrCL2c+
 l8N8DIL2JJKJNCuZ9IE64vsWVTtDUq+NMcfR0tA5YQ==
X-Google-Smtp-Source: APXvYqyZXCFrwLLbuKH87ntBoB1uPTcKE017Mrw8Z9+j3VOUxMLwq/g1pwfocngRvtK/nHu4TYQODtwzbAxVOv/4r8s=
X-Received: by 2002:a9f:242e:: with SMTP id 43mr8151929uaq.100.1561038663128; 
 Thu, 20 Jun 2019 06:51:03 -0700 (PDT)
MIME-Version: 1.0
References: <1559577325-19266-1-git-send-email-ludovic.Barre@st.com>
 <5b7e1ae5-c97e-5a21-fc3e-7cc328087f04@st.com>
 <CAPDyKFrULRk=cHzVodU9aa6LDX9ip-VPHNwG7QXhmNZrMpPjGw@mail.gmail.com>
In-Reply-To: <CAPDyKFrULRk=cHzVodU9aa6LDX9ip-VPHNwG7QXhmNZrMpPjGw@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 20 Jun 2019 15:50:26 +0200
Message-ID: <CAPDyKFr_KNpNY-xgGdKXdAnmmD5OD1=wxgs2LmBAUJOn0mZwqg@mail.gmail.com>
Subject: Re: [PATCH V3 0/3] mmc: mmci: add busy detect for stm32 sdmmc variant
To: Ludovic BARRE <ludovic.barre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_065104_720174_4174AD70 
X-CRM114-Status: GOOD (  17.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
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
Cc: DTML <devicetree@vger.kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ludovic,

On Thu, 13 Jun 2019 at 15:13, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Thu, 13 Jun 2019 at 15:02, Ludovic BARRE <ludovic.barre@st.com> wrote:
> >
> > hi Ulf
> >
> > Just a "gentleman ping" about this series.
> > I know you are busy, it's just to be sure you do not forget me :-)
>
> Thanks! I started briefly to review, but got distracted again. I will
> come to it, but it just seems to take more time than it should, my
> apologies.

Alright, so I planned to review this this week - but failed. I have
been overwhelmed with work lately (as usual when vacation is getting
closer).

I need to gently request to come back to this as of week 28, when I
will give this the highest prio. Again apologize for the delays!

Kind regards
Uffe

>
> Br
> Uffe
>
> >
> > Regards
> > Ludo
> >
> > On 6/3/19 5:55 PM, Ludovic Barre wrote:
> > > From: Ludovic Barre <ludovic.barre@st.com>
> > >
> > > This patch series adds busy detect for stm32 sdmmc variant.
> > > Some adaptations are required:
> > > -Clear busy status bit if busy_detect_flag and busy_detect_mask are
> > >   different.
> > > -Add hardware busy timeout with MMCIDATATIMER register.
> > >
> > > V3:
> > > -rebase on latest mmc next
> > > -replace re-read by status parameter.
> > >
> > > V2:
> > > -mmci_cmd_irq cleanup in separate patch.
> > > -simplify the busy_detect_flag exclude
> > > -replace sdmmc specific comment in
> > > "mmc: mmci: avoid fake busy polling in mmci_irq"
> > > to focus on common behavior
> > >
> > > Ludovic Barre (3):
> > >    mmc: mmci: fix read status for busy detect
> > >    mmc: mmci: add hardware busy timeout feature
> > >    mmc: mmci: add busy detect for stm32 sdmmc variant
> > >
> > >   drivers/mmc/host/mmci.c | 49 +++++++++++++++++++++++++++++++++++++++++--------
> > >   drivers/mmc/host/mmci.h |  3 +++
> > >   2 files changed, 44 insertions(+), 8 deletions(-)
> > >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
