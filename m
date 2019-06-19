Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CCF24BA0F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 15:34:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bf1zj4KmDbCS7hejntIdM+EFtr/vufVn4V5MFtN10QY=; b=eTXBBZmXIFn8So
	oeBuk77Eo6mF5RSMa2oclnrAiM4c5QM1vjit7Nniw842niySdcGJToDA3kfD+ElPM5oxCWl7EPb4i
	BKnqyClt9kybL9veE9znU8Dgpht7Xtd4Z5O4HpyVjwO3qrD1/EOhF5XzdOZug66HxCuNB0sLAX4FN
	ruCbU13eIsDXQsDtNNOxhhP34X9BHY2zRWtatYJvgHeUNeXT09nP2vfrSQcmT28d3WrdzYHQJj3Gz
	gyXTLIc9WJ2ENQQjk0M1xTlvh3QkHvMQBcNXR3a/Fh3HaPHtXZ8Am0TRtqam+5JhQ+s8Tj0ZjP6Y+
	SIl6Akjz7QbmbZ9pvAkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdaiz-0005b1-Bn; Wed, 19 Jun 2019 13:34:05 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdaio-0005aH-91
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 13:33:55 +0000
Received: by mail-ua1-x942.google.com with SMTP id z13so9822499uaa.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 06:33:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/hOvNsnkdNjDa+A6/yfZ/Thg3iaWZ4X1bBVE79rdUH4=;
 b=ra8QE7eBnzaOXjOx0RMs0LZQe2kPZTC6xR1Rt/o70uPhVeniKXcCavDC3PrQDG92pU
 ErmTmVNphJLe6VZA2E7mn+lz4XP2Hn3Ji2Cdx9QWjH/COc1dbYOt0+uPQFwwzEzMXp8e
 6Jj9ID6vXj/RGBIMl0BSHp9hJqpX8Z+7HM1tpHFG9eYWrQJcSWJszuCedusibuJmFTpE
 i9HIKEvITQsMqq8gOYlNfKCUqAcMK/IoydTG2YSBI9duQVaA5JX7MoE1cKslCGoH8HxB
 fq+n3cIcrKOae3POoib/yOj4IxWA4FqsIoc48CljZJfyOTagnzo8yQHI/J0LW8zpNYd2
 hNtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/hOvNsnkdNjDa+A6/yfZ/Thg3iaWZ4X1bBVE79rdUH4=;
 b=fBgDEA7iJRlxsiLImlPq2yrBdkK0uMPuTtEftYj17pcu9c+DwGZ8h2NzQP955QxpoB
 bovf/4qw5+m1E11GecLogWM6Kq5D7LHkGZFRmjxJAuRwt6UYJFKIoeSwXDztMaWz+sKC
 3hMtaFP4Taj/wAfV6nwU2Mlh1sS9VfMw2lLjeUw8ekkKKwVP3VIY+04iRKoH73yhqj/Y
 DctNpEHRE2skz5qqDkIjYGbxMuM5DTvCvqb74cNlN/pzAIxV918ebkxK/CZ0nZAmXV3a
 fzUfzQCIolvfjls6JU6cyaiTyee0w1zi1PbjFg7gbuCpHCFNiN6aZlw34FQ+Ckmk8Ev2
 XVSQ==
X-Gm-Message-State: APjAAAUyBRBvB6Q9gNkoM3ed7SGQonn0jLn93uAZiJCOXsMEthyoBUZ1
 FRErPO2pFydZriIWEN5aJauVdpU+te6nx8NFZR0A74TI
X-Google-Smtp-Source: APXvYqzXc0QxvHUX0+Zq6+MSDbGCxesWmtXJbSYuo788EfEdCW+LbJBYo7MWWKhK0YKIbtRHuEZqD16YL5NCdT/noa4=
X-Received: by 2002:ab0:6988:: with SMTP id t8mr22144122uaq.49.1560951231950; 
 Wed, 19 Jun 2019 06:33:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAOuPNLiBA9VjEoG_D2y2O5mKiqsDNW1VZXOk1eWXpGY+h86acg@mail.gmail.com>
 <CAOMZO5BcLaS0gXUPi6oN6vjqagS5yf+rHh+EUjmi-Wi1OX7vqQ@mail.gmail.com>
 <CAOuPNLgEEfDca4aeT1+q8GfUfGzbJ4x6JwGf-ROB1pgpXUBHSw@mail.gmail.com>
 <CAOMZO5BY8JcLNMCRCC_d=emy8HR6kE=dB9f5qfZ=ci_c+Jak0w@mail.gmail.com>
In-Reply-To: <CAOMZO5BY8JcLNMCRCC_d=emy8HR6kE=dB9f5qfZ=ci_c+Jak0w@mail.gmail.com>
From: Pintu Agarwal <pintu.ping@gmail.com>
Date: Wed, 19 Jun 2019 19:03:39 +0530
Message-ID: <CAOuPNLjYhkP_kL+q-ZpiDZMMpOHrU88BFBc2agtnCzXt8dihOg@mail.gmail.com>
Subject: Re: [IMX] [DRM]: suspend/resume support
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_063354_346313_E8617634 
X-CRM114-Status: GOOD (  19.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pintu.ping[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pm@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Kernelnewbies <kernelnewbies@kernelnewbies.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 8:39 PM Fabio Estevam <festevam@gmail.com> wrote:
>
> On Tue, Jun 18, 2019 at 11:46 AM Pintu Agarwal <pintu.ping@gmail.com> wrote:
>
> > Thank you so much for your reply.
> > Yes, I already checked the latest mainline kernel changes until 5.2-**.
> > I see that there are many cleanup related changes, but still I see
> > that suspend/resume functions are missing in dw_hdmi-imx driver.
>
> Please see this recently submitted patch:
> https://lore.kernel.org/patchwork/patch/1084057/
>
Okay. Thank you for this reference. This can be definitely helpful.
But a quick look may be feel, this is slightly different.
Anyways, I will have a deeper look.

> > So, I am trying to implement myself.
> > Also, I see that suspend/resume is missing even in :
> > drivers/gpu/drm/imx/ipuv3-crtc.c
> > I am trying this also (not sure if we need this as well).
> >
> > Can you point out some specific patches which can be helpful ?
> >
> > Currently, what I observed is that hdmi bind() functions are not getting called.
> > Not sure who is responsible for triggering this bind function.
> > Or, irq remains disabled after resume, and we need to enable it back
> > again (but how ?)
> > Or, we may need to enable vblank events and thus irqs can be enabled.
> >
> > So, I am exploring many possibilities.
> > If you have any suggestions please let me know.
>
> The suggestion I have is to try to use latest mainline kernel. If you
> see any issues with it, please report.
>
> The combination you mentioned in a prior thread (kernel 3.10 +
> backported drm patches 4.9) is not really something the community can
> help you.

You can think that the version I am using right now is almost 4.9 itself.
Upgrading again to higher kernel version is again difficult, also
customer does not want it.
BTW, I am not talking about runtime suspend/resume.
I know it works normally.

I just need some approach and pointers.
Like someone said rightly, I may need to re-implement bind() function
again in resume path.
I already tried doing hdmi_power_on/off and with that I could invoke
hdmi_setup() function, but the system hang after that.

Another approach I tried is, installing hdmi {dw-hdmi.ko,
dw_hdmi-imx.ko} as a module, just after the resume.
With this also system hangs during installation of dw_hdmi-imx.ko at
below location:

imx_drm_driver_load(..)
|
|--> component_bind_all(...)
     |
     |-> component_bind(ipu)
         |
         |
         ipu_drm_bind(..)
         |
         |-> ipu_crtc_init(..)
             |
             |-> ipu_plane_irq(..)
             |
             | ----> << __HANGS HERE__ >>
             |
             |-> devm_request_irq(ipu_irq_handler)

So, ipu_drm_bind() never returns, and hangs.
----------
So, my question is, which approach is better (as a first trial):
1) Installing hdmi as a module, after resume ?
2) Or, implementing the suspend/resume itself ?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
