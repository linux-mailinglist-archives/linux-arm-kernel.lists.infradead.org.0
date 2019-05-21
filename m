Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F80624985
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 09:57:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H69Hki8qufjPeiRPbxgtDwSY17uuMTQmsrpAo6cRCLs=; b=MSaNUXyePOYvir
	Z/u5uzN05lcRTSL2niDwhI91tOmkUJdqgqa/Yi40KryS/7CbV94qgA8/HDPxDu76dj24r3wZZZ9c8
	E56+Id0UTs9L2a4SKmWoMMtmmhMdHUPCPaG/WIY93Z9/Dc4mWCTHtwKDmAEHHD8pCRG/tV1Xg9EUh
	5RhwaGnvemVJwJ3oYq5BiD8xsR24KojUXm5f6Zyxh4mFeu4E0tyXmK8ziYxtyM5sa7DnCfqWP479R
	T97fY4aXK5pm9lD7GRorQGWCKj9x0trYYny3XAMMKXjz2UiKgnzseyVuhcybcp4ba50ActcrkIwrj
	d6Xqn87rvn5wes95gCbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSzdp-0002Eo-Iu; Tue, 21 May 2019 07:56:57 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSzdg-0002DV-9f
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 07:56:49 +0000
Received: by mail-vs1-xe43.google.com with SMTP id k187so3605238vsk.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 00:56:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FtQxjrgLrdOuTSlhu4LkRzwqAzUSzK8W0aKxAbgs+38=;
 b=F5EyexQaa0bp0wPObS0GOV2fVBnRHWOPre4mgWtyFd+AZ2jy1wnr/0x0uDEiuWGeJ2
 x54itVgHoIeRfX64D+f8f1ov2JNjm4z9MqJRfzHEdo1QXpZz7GslDUsVAFoSyLagjPrT
 ugwOXDGmwSI5O4Hf9N/TIwdjo3inNrzlsS7ATtZiBJilOcfV2RKJX2F3yjhL3wh0pn7z
 1gJIeiyPYxdIs8kS2q6MkhiVdjsS69JS3nx6xEQ46SMXWxpeaz+KJrawK4ANuLNH/Syy
 x0UMQXrOgL+Y83N/WwWNWxek6DqXC6/mKTFZlj4O9kk3v/z5QlEKUir+Jb1IHzUGMHHJ
 /RsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FtQxjrgLrdOuTSlhu4LkRzwqAzUSzK8W0aKxAbgs+38=;
 b=dT1A0DgI6oeUqQ+CrON1ogP7bVq8QSb3shIAW4fg1A3UWy3PLMGAAMajqs2FXEq9QX
 eMALiaMpkYESUYNWx+JIbFag+/LpGGMvvtFig/ITdGpKYcYf87P3AhY9VdPGgkInncsL
 YJ71UbdlSku/Dj89kYt/6xM72ptpukVpbKAASnkOseOhYW4Xb9WZfkUXUmibaMubxOOD
 6MI0Ubz1NXm0XyCW/0DAi7fShAZLNrWaOT9AyHx6zpFdNGNgw+1rtJ7TxEqzHjesA26P
 OLUhWGqOi36RcmgXv3Z/4ByL1N6jfh0utPm72A2zaWZyUpqxsNDAHsAjYcLJZv8iNDQO
 9m2A==
X-Gm-Message-State: APjAAAVt5oPc4v1bpMGjjAtS/PkXfRxLE/UApGhrYR/d6NXEmbaXis+a
 7KLwGcvGbn6cL2CMfbNBSMEU5RyXCMJGrruYke41JamYkA0=
X-Google-Smtp-Source: APXvYqxy+vnW+gDM9sIawmZ1xfypyZ+973iUhEqyUgGr8DtqjIiEFy8/ahRDodOxF5dcpTZCuXdm3fwUb+Nvl/aPNSQ=
X-Received: by 2002:a67:3046:: with SMTP id w67mr21968255vsw.165.1558425406507; 
 Tue, 21 May 2019 00:56:46 -0700 (PDT)
MIME-Version: 1.0
References: <1556264798-18540-1-git-send-email-ludovic.Barre@st.com>
 <CAPDyKFqbn=UcbwoH_z+yjrjvHQZaMtmsD=n0yrBV7DAK5VRJEQ@mail.gmail.com>
 <74b91eb4-e5a3-38b2-f732-29cdd058eb6a@st.com>
 <CAPDyKFoURwnai1hbCbO+Uh6+hc7A4dYHjWkqeFAEgMQET-BzwA@mail.gmail.com>
 <e884b614-14d4-1cae-5b77-c6aacabb764a@st.com>
In-Reply-To: <e884b614-14d4-1cae-5b77-c6aacabb764a@st.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 21 May 2019 09:56:09 +0200
Message-ID: <CAPDyKFo4Y9PF_QL47rO2c_szUHahPMuzHV=j_SL9dxvAzst17w@mail.gmail.com>
Subject: Re: [PATCH V2 0/5] mmc: mmci: add busy detect for stm32 sdmmc variant
To: Ludovic BARRE <ludovic.barre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_005648_343529_51ED4175 
X-CRM114-Status: GOOD (  24.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

On Tue, 21 May 2019 at 09:38, Ludovic BARRE <ludovic.barre@st.com> wrote:
>
> hi Ulf
>
> Just a "gentleman ping" about the rest of series.
> "mmc: mmci: add busy detect for stm32 sdmmc variant"

Thanks!

It's been a busy period and I am currently traveling. My plan is to
look at in detail beginning of next week when get back home. I hope
that's okay.

Kind regards
Uffe

>
> Regards
> Ludo
>
> On 5/3/19 3:29 PM, Ulf Hansson wrote:
> > On Tue, 30 Apr 2019 at 14:06, Ludovic BARRE <ludovic.barre@st.com> wrote:
> >>
> >>
> >>
> >> On 4/30/19 1:13 PM, Ulf Hansson wrote:
> >>> On Fri, 26 Apr 2019 at 09:46, Ludovic Barre <ludovic.Barre@st.com> wrote:
> >>>>
> >>>> From: Ludovic Barre <ludovic.barre@st.com>
> >>>>
> >>>> This patch series adds busy detect for stm32 sdmmc variant.
> >>>> Some adaptations are required:
> >>>> -Avoid to check and poll busy status when is not expected.
> >>>> -Clear busy status bit if busy_detect_flag and busy_detect_mask are
> >>>>    different.
> >>>> -Add hardware busy timeout with MMCIDATATIMER register.
> >>>>
> >>>> V2:
> >>>> -mmci_cmd_irq cleanup in separate patch.
> >>>> -simplify the busy_detect_flag exclude
> >>>> -replace sdmmc specific comment in
> >>>> "mmc: mmci: avoid fake busy polling in mmci_irq"
> >>>> to focus on common behavior
> >>>>
> >>>> Ludovic Barre (5):
> >>>>     mmc: mmci: cleanup mmci_cmd_irq for busy detect feature
> >>>>     mmc: mmci: avoid fake busy polling in mmci_irq
> >>>>     mmc: mmci: fix clear of busy detect status
> >>>>     mmc: mmci: add hardware busy timeout feature
> >>>>     mmc: mmci: add busy detect for stm32 sdmmc variant
> >>>>
> >>>>    drivers/mmc/host/mmci.c | 61 ++++++++++++++++++++++++++++++++++++++-----------
> >>>>    drivers/mmc/host/mmci.h |  3 +++
> >>>>    2 files changed, 51 insertions(+), 13 deletions(-)
> >>>>
> >>>> --
> >>>> 2.7.4
> >>>>
> >>>
> >>> Ludovic, just wanted to let you know that I am reviewing and testing
> >>> this series.
> >>>
> >>> However, while running some tests on Ux500 for validating the busy
> >>> detection code, even without your series applied, I encounter some odd
> >>> behaviors. I am looking into the problem to understand better and will
> >>> let you know as soon as I have some more data to share.
> >>
> >> Oops, don't hesitate to share your status, if I could help.
> >
> > Thanks! Good and bad news here, then.
> >
> > I now understand what is going on - and there is certainly room for
> > improvements here, but more importantly the actual mmci busy detection
> > works as expected.
> >
> > When it comes to improvements, the main issue I have found is how we
> > treat DATA WRITES. In many cases we simply don't use the HW busy
> > detection at all, but instead rely on the mmc core to send CMD13 in a
> > loop to poll. Well, then if the polling would have consisted of a
> > couple of CMD13s that wouldn't be an issue, but my observations is
> > rather that the numbers of CMD13 sent to poll is in the range or
> > hundreds/thousands - per each WRITE request!
> >
> > I am going to send a patch (or two) that improves the behavior. It
> > might even involve changing parts in core layer, not sure how the end
> > result will look like yet.
> >
> > In any case, I have applied patch 1 and patch2 for next, as the tests
> > turned out well at my side. I also took the liberty of updating some
> > of the comments/changelogs, please have look and tell if there is
> > something you want to change.
> >
> > I will continue with the rest of series next week.
> >
> > Kind regards
> > Uffe
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
