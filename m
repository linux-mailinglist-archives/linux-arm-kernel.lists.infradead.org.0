Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 802FC12D072
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 14:51:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b7nksXNvUO2zlaYvUhSnxam9nOFNqoUksDTLtjlo+uY=; b=l3nfkp4uV1JBR4
	Gz4oF6wQgCgNIQfolD97ivY3HTWm6z1/PVlVZCFTxdUiHHCFRyBWru3yO6PnK0GObAj1xQLub0jXi
	yF/lqVvPW3c0eYHhaZdb7JiasK62JCRDRvrhRyIAdQJ9yB2tGwylE/t4W6t8iEb0JlXU8y/MoXVvE
	8J6RKz9hA+t1vI1GkSWFM3WDHlL0Ue1+N/SVLMgXd2HdKO6JB8DFihjbZw/guolXFrdMiCSMkcShT
	mn7vw8y0R6sLIbf6zVjQaiYUefO4KHLX2k/JwIOQFiu0AFVz30XN35vlXKo7tsLyYSU68IUk+wp2y
	1kOtdpxdOLRaUZsc6JxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilvRe-0002Jk-Mw; Mon, 30 Dec 2019 13:50:54 +0000
Received: from mail-vk1-xa31.google.com ([2607:f8b0:4864:20::a31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilvRY-0002J0-4I
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 13:50:49 +0000
Received: by mail-vk1-xa31.google.com with SMTP id w67so8275190vkf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Dec 2019 05:50:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XkMGH5DQxq4vpQ2V6RpbSRMhiMiNZc/V1Nq34hSwIJk=;
 b=CdmuDXJVWhggBHQW+pJHb6TNOzPvoOAZ7687gifPylrQZxVlozKmptWbBXg6ZvIkZu
 cSqCpWBasg60LSZFxQc68XKGx9tGCTYU/1glw3qAd+j+PnScVx8y7/q7mH8JpjHAT5W9
 Z/9McLaAraQ3JOb8JHt6V0DPC6dpkL0tKD7GiqySLNj0KbpcRoSq8VLLF/YFzGp4277e
 yuOUGCFS3HHDim9Piq8i4Ve//zYDej7JIhFASN0gjkPfAca7mPla61VF7h1NhswQaTSP
 Bh/xohmtzFWp2TZ40Oq/berVwITGSAmsaECxo+5Kdz28ttDCRmv2KCr0fO77F+miqcHk
 Vwfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XkMGH5DQxq4vpQ2V6RpbSRMhiMiNZc/V1Nq34hSwIJk=;
 b=g31Z8j+Ee39NeZ23SNUNoC5ZmycSONYBFrxUFvBVnp8hqSgpDXum8OZEaxMuy9sZIJ
 0RltTI2PZeABz2ju+B4i5pfhq2/z10yS4FPh5KlWiJ8fwNDrDTbq+ZWHDE3zL5bwQpts
 sdL2InMSJ3rhCnxvQDxdFw3ejH/A4Kdb4vgT4n5+3AfgP0IG1Ce7QkBLZ9MHXHXb8IfZ
 OdBZfkKANAocChLtRopcsnNK9SQZzfhzomYo/iPDfH3D5G3s7fylR76wcOiadyjVwRll
 NyGxDLmYEqhdEPcH8awx2vlcbzcqXqqMz2dhdiPX95Jv5ZMy5/AmaWu8UIS2egch5DRR
 /iCA==
X-Gm-Message-State: APjAAAWzawelBIS1JTrSg6dp4o11EVqYlXHerloQ+48g9nEplBQ+3ACM
 e8cTBPzTIiz9XKdmhwJMj0tijEd71oL5Cltm/k4=
X-Google-Smtp-Source: APXvYqxLXFi9J20jdLU7H/ZiNuY8RrLKbXtPjBGXHbT9hV1C1voWZ2Ea3/nczoyLc4wggA/hUuYx3UiwGsQLQlVnEL0=
X-Received: by 2002:a1f:7c0c:: with SMTP id x12mr38200964vkc.41.1577713845386; 
 Mon, 30 Dec 2019 05:50:45 -0800 (PST)
MIME-Version: 1.0
References: <CAOuPNLh8dsSCq850afbj4OiHhZ2swBWZP=BTUrXrXhdpTjZs+A@mail.gmail.com>
 <CAK7N6vpawfLSVcHCg_3aQ0M8L=j77ZeGfmUZ-J4hpUkWu0fkWA@mail.gmail.com>
 <CAOuPNLii26WcDnwD7ZkMX6ux7VRspw7nMEKJK0QF+j95YCHPOw@mail.gmail.com>
 <CAK7N6vrSKM8pU0+gquCu1x52GjBTaqFbwqtj_v8dzd+3-g4D1A@mail.gmail.com>
In-Reply-To: <CAK7N6vrSKM8pU0+gquCu1x52GjBTaqFbwqtj_v8dzd+3-g4D1A@mail.gmail.com>
From: Pintu Agarwal <pintu.ping@gmail.com>
Date: Mon, 30 Dec 2019 19:20:34 +0530
Message-ID: <CAOuPNLicwavzWQZAqzyLdc12Rb=yo49QxrRM3Zr0KOGrhCtJpg@mail.gmail.com>
Subject: Re: interrupt handler not getting called after resume
To: anish singh <anish198519851985@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_055048_196419_01F954B5 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a31 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pintu.ping[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pm@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Kernelnewbies <kernelnewbies@kernelnewbies.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear Anish,

On Thu, 5 Dec 2019 at 00:55, anish singh <anish198519851985@gmail.com> wrote:
>
> On Wed, Dec 4, 2019 at 1:49 AM Pintu Agarwal <pintu.ping@gmail.com> wrote:
> >
> > On Wed, 4 Dec 2019 at 00:28, anish singh <anish198519851985@gmail.com> wrote:
> > >
> > > On Tue, Dec 3, 2019 at 6:12 AM Pintu Agarwal <pintu.ping@gmail.com> wrote:
> > > >
> > > > Hi All,
> > > >
> > > > I have one general query.
> > > >
> > > > If an interrupt handler is NOT getting called (for one device) after
> > > > the system resume (from snapshot image), then what could be the issue?
> > >
> > > Most likely during resume the interrupt was not enabled. So check
> > > irq status registers to see in the working and non working case.
> > >
> > Oh sorry, I forgot to mention one thing.
> > After resume, I can see that the interrupts are visible under /proc/interrupts.
> > # cat /proc/interrupts
> >            CPU0       CPU1
> > [...]
> > 416:          1          0       IPU  (null)
> > 417:          0          0       IPU  (null)
> > 418:          0          0       IPU  imx_drm  ===> HDMI
> > 419:       2242       2       IPU  imx_drm   ===> LCD
> > [...]
> >
> > The interrupts are coming only for LCD display and thus its irq
> > handler is getting called.
> > But the interrupts are not coming for HDMI case, thus HDMI gives
> > "vblank timeout issue".

Just wanted to update you that I have resolved the "vblank timeout
issue" for HDMI (by restoring clock data during resume path).
Now the ipu-v3 interrupts are coming even for HDMI crtc.

But HDMI display is still not working. May be this is another issue.

Anyways, thank you so much for your support :)


Regards,
Pintu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
