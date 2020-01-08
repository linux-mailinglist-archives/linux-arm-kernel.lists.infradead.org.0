Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86CBB134F8F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 23:44:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eqa5BUZ6V+6P1ULgNKngq3KDXhbul4u031PLlfygnUk=; b=UnaWqMSKxUUfS6
	UND2h+WJyK6N8v+4Co/0/md1EuT8BxiQO8XBI8sBtY2drkcLclFvcE/hgADhx6c6vzXNjY7pAFI4x
	bJvsOp9VMLGRH2Rb5RSDfodan2Sbdz9tIPVgD5MENkAWu110lqxEVPI88X0uM/QT1SnakTI8KZTfq
	j2gT5LoZXgo0nD7KclaTtB6MlkeULNB50G5WVan7RMeeLenthWUikvC32i6BxwaF3vfUqF9IZWG/g
	pJmoXjRKenNNP8UsoYR1D2JXPHQvAS/GnhtgRrBpkTn3aV8kOT/xKyunltbrCRDH6ARMiPrliIM9M
	K7rwjVPAC2wUu3rpbufA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipK4E-0006Uy-B3; Wed, 08 Jan 2020 22:44:46 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipK41-0006T4-A5
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 22:44:34 +0000
Received: by mail-qk1-x742.google.com with SMTP id t129so4233257qke.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 14:44:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Vo+6C1EuzsBLHBwL8bvb08t4OkksMVFETIJoYKx5DTo=;
 b=Wnszb6on0SMp/3XOzNETDRgBA1SdEWJobacWeeLrc4lDfi7vhmtnOldGqbPPBAZbfG
 7wp6u/0G5WV3uSIpGENHwwILKLe4qZ56kKoDHOHcvgCpvAf4N2HVstmon3dD9/r6c9sv
 qlfEDsZVhNNIdGprWFOmlxpJcR4ut9Km4zNUY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Vo+6C1EuzsBLHBwL8bvb08t4OkksMVFETIJoYKx5DTo=;
 b=Ih+EVNf5kgWek02bzO9JhHTBHfxWVXonsX43mNG43nzeJabR4Ebpeb6hfz+KIRrQUA
 jS/tGiIu/PYYr/HqZOH2Qr2eetF4Oi5cQRFy1To5BUwZu30D5YGBPXTjs0tYk1tYUP/w
 dGwkojQxMsq+w0bfKh7lq3wagNA2lkqibAyxH3bQGzNC4lF/mTiYrbxWP1ka8bC7Rz7g
 97v795UJ+1kHc1RxBBRTCVdlurCKqw7CFturqgWX2izeAjj9ncyWBhL2FJnjGLKFxFnj
 btR/C0pylYSWhkPMRsNiMmFc/dZeA6NZjePitUW9wLJrdve4KZV6SfYpZ/4HhIIBD23Z
 SPug==
X-Gm-Message-State: APjAAAUlu+PqfKU5/ysHMlWtEF66m6ZK+yIrE5X3v2GnMxk+tcBReMeO
 QYj8RMZzLG/Yo8JjbNXPpSHz/YGEMThu3CIE3eLCqQ==
X-Google-Smtp-Source: APXvYqxnt7gN4ytrxX2jjjTbvXbu6erGQ6HNZhqe3Pr82LWm38qxIiDN1rgAR/6KRKR7dwyCXJ7fm7aQppC5xk7pbCM=
X-Received: by 2002:ae9:e103:: with SMTP id g3mr6826468qkm.353.1578523471432; 
 Wed, 08 Jan 2020 14:44:31 -0800 (PST)
MIME-Version: 1.0
References: <20200108052337.65916-1-drinkcat@chromium.org>
 <20200108052337.65916-8-drinkcat@chromium.org>
 <CAL_Jsq+jWtrV8-iDzqsefRxr_21jzf7AdSLap8k4hstqK3MBvQ@mail.gmail.com>
In-Reply-To: <CAL_Jsq+jWtrV8-iDzqsefRxr_21jzf7AdSLap8k4hstqK3MBvQ@mail.gmail.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Thu, 9 Jan 2020 06:44:20 +0800
Message-ID: <CANMq1KCTdtKDB4bmdAFf+voTvCECedAKTJHue4H1quhW6SXbxQ@mail.gmail.com>
Subject: Re: [PATCH v2 7/7,
 RFC]: drm/panfrost: devfreq: Add support for 2 regulators
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_144433_365026_2EA964DC 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Mark Brown <broonie@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 9, 2020 at 4:09 AM Rob Herring <robh+dt@kernel.org> wrote:
> [snip]
> >  void panfrost_devfreq_resume(struct panfrost_device *pfdev)
> > diff --git a/drivers/gpu/drm/panfrost/panfrost_device.h b/drivers/gpu/drm/panfrost/panfrost_device.h
> > index 92d471676fc7823..581da3fe5df8b17 100644
> > --- a/drivers/gpu/drm/panfrost/panfrost_device.h
> > +++ b/drivers/gpu/drm/panfrost/panfrost_device.h
> > @@ -91,10 +91,12 @@ struct panfrost_device {
> >         struct {
> >                 struct devfreq *devfreq;
> >                 struct thermal_cooling_device *cooling;
> > +               struct opp_table *dev_opp_table;
> >                 ktime_t busy_time;
> >                 ktime_t idle_time;
> >                 ktime_t time_last_update;
> >                 atomic_t busy_count;
> > +               struct panfrost_devfreq_slot slot[NUM_JOB_SLOTS];
>
> ?? Left over from some rebase?

Oh, yes, sorry.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
