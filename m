Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D56994F447
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 10:13:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YvrqZJerDKbz6vx7OIfx/+BGh1VKm2GU6qySdATyciA=; b=BD4f9/G4v7Ehvz
	+an7gvdflHwiT1h5d1pwDreQ4UK/vRthBzSZcYTQs98jcdBurkpByHJY98xSE/RhYPFwwMILYAcKb
	7QTMqSQwUgCuN9lE/keZc7VHbte1u4BBsYSMMLOTERw+TZyyyCZkRvI9R4xMsS1zdbfbqb+eHDPdq
	BkjIQVplpNd8Zxzm5/oKUqamb89+t2+FymgvG1Q1vUYsphoROrEUdaGNiR21CiX/3omqULrLuNa4i
	9IquYVw/V+KeRyYg0bICcL2NK0LEYcMIGXWVOFCmUYPvWgPUATODPpRTTnxPNJ7/xAhyQbJFM1mSk
	aAHjFvAkv+Fzxkbe3alw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heb9N-00013Q-M1; Sat, 22 Jun 2019 08:13:29 +0000
Received: from mail-vk1-xa44.google.com ([2607:f8b0:4864:20::a44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heb9A-00012M-AQ
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Jun 2019 08:13:17 +0000
Received: by mail-vk1-xa44.google.com with SMTP id g124so1800077vkd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 22 Jun 2019 01:13:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ymA/9yBKawIC9AWwAvSD2s34Dx6xSFjTiT44S3SfquU=;
 b=b339sLmQAe+unMpoelxrVE0PlDrsmwAKLlJc2aWO9uZTL2X0z/UpMf1LAKKp7+GyNI
 axZOaAOocD9iRmLSjKCgTgHgRCBaqYWedcQCliN9LQCKGO0iyy+rJTwPvoXoJ7ElPwrj
 R2Yd6Ub1lEV60kYZYMzIvKlzc5J2PS9h9C2t0Zyh3OBlo759tL37p/u98HCUITSlCX6Z
 k5AVjx1pgmWAyEAUbgLzuFqdC8XUVaP4ZjrBCybLZbyR6U+PcwsPE5uPzKiBSm5NzSng
 1wLFyGbAhIstMM5W70Gedpyvd4ZCXp/HA0XAxuw21Aq8CN5dmfHicpH+GeVjcbXs62GJ
 5ZyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ymA/9yBKawIC9AWwAvSD2s34Dx6xSFjTiT44S3SfquU=;
 b=MqWWY45wkCbFjhwMriuG6w2gSEeZ6dbO6RAwE5hPUF18LbaHJnR55TYHX+YPZZaHX4
 QRA6QXCUNOo2Bu1H/hvShxtGLMhW6cLuv1eK7/9FTiyomfy0ydT1W5Yt2uxry+YAk/rp
 27YPB9vj6cClfQuEh9o+SGyUcVz4GLJvn68aQPuzsHLQFzwcsR1n/tYa47Tc+A39mgz0
 NKvCpoGW7QuI6mLDKHS3puygnNxZ8/T0ypM/xkx3iBxdbwg2ksERASBxnSTQlviRaMcY
 Ia594ixZF6rDuqETTQ9wPz2SWfoew3xM397bXfB497Z3/1Q7gGCVBFp+CH1foFbLXvm2
 L9sg==
X-Gm-Message-State: APjAAAXvoFb/80tjobOfZWWiiyTfRy16GFy/Z1mygZTSoC16E7pbKbMD
 Ll0yWuVORUs/bKZAn/joN2Mjj+cvGXOtl+V5N68=
X-Google-Smtp-Source: APXvYqwbJJHwrbXk97wpkvnicdIyvUw9qn195B4TTuwW4r9kqbrQvG/gO16g9Jlf+GYXz6b6OO9aKuK1D3XFvAFaT0k=
X-Received: by 2002:a1f:1b0a:: with SMTP id b10mr11176492vkb.19.1561191192828; 
 Sat, 22 Jun 2019 01:13:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAOuPNLiBA9VjEoG_D2y2O5mKiqsDNW1VZXOk1eWXpGY+h86acg@mail.gmail.com>
 <CAOMZO5BcLaS0gXUPi6oN6vjqagS5yf+rHh+EUjmi-Wi1OX7vqQ@mail.gmail.com>
 <CAOuPNLgEEfDca4aeT1+q8GfUfGzbJ4x6JwGf-ROB1pgpXUBHSw@mail.gmail.com>
 <CAOMZO5BY8JcLNMCRCC_d=emy8HR6kE=dB9f5qfZ=ci_c+Jak0w@mail.gmail.com>
 <CAOuPNLjYhkP_kL+q-ZpiDZMMpOHrU88BFBc2agtnCzXt8dihOg@mail.gmail.com>
 <CAOMZO5ADK1L5UMM9XZetHvmjTvmvUg99G7VPdeXitgpctGLCkw@mail.gmail.com>
 <CAOuPNLhZhgN26rquLQq9zHBct1QxK-7hXAza0xk-0QooPGYLNw@mail.gmail.com>
 <CAOMZO5BsJWTw0nCeUboam4kuKyCO3N_Ch5ZW8k5Y9KFtQBanhQ@mail.gmail.com>
 <CAOuPNLjrAU_C_TUKFMs1d0eGsw=AxuG6d6FhNHtHFwVhfYZGgA@mail.gmail.com>
 <CAOuPNLhstoCjxijrnKNmV1iKWjAXvSZ38Z13tfd5bvGbYSqPAA@mail.gmail.com>
 <CAOMZO5CD-QQaZwNfiX6mOLAup4J8dBiqEb_V_6jz_z5jXZ5cEw@mail.gmail.com>
In-Reply-To: <CAOMZO5CD-QQaZwNfiX6mOLAup4J8dBiqEb_V_6jz_z5jXZ5cEw@mail.gmail.com>
From: Pintu Agarwal <pintu.ping@gmail.com>
Date: Sat, 22 Jun 2019 13:43:01 +0530
Message-ID: <CAOuPNLj=L_3RoC=9ws4yn1Q7QLoS3OEZ8FLRrF04HRQtQvc0Jg@mail.gmail.com>
Subject: Re: [IMX] [DRM]: suspend/resume support
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_011316_388517_6A2F6177 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pintu.ping[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a44 listed in]
 [list.dnswl.org]
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
Cc: linux-pm@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Kernelnewbies <kernelnewbies@kernelnewbies.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 9:09 PM Fabio Estevam <festevam@gmail.com> wrote:
>
> On Fri, Jun 21, 2019 at 12:13 PM Pintu Agarwal <pintu.ping@gmail.com> wrote:
>
> > Okay there is some update on the 2nd part.
> > Now I am able to successfully install all imx modules after the resume
> > (no hang).
> > But, I got some errors after install finish:
> > [drm] disabling vblank on crtc 1
> > [IMX]: imx_drm_disable_vblank - called
> > [drm:drm_atomic_helper_commit_cleanup_done] *ERROR* [CRTC:24:crtc-0]
> > flip_done timed out
> >
> > Also I am able to start the weston successfully.
> > But I see LCD/HDMI display is not working (only some backlight is visible).
> >
> > And, I noticed, weston also reports the following errors:
> > imx-ipuv3 2400000.ipu: DC stop timeout after 50 ms
> > [IMX]: drm_crtc_vblank_off - called
> > [IMX]: imx_drm_disable_vblank - called
> > INFO: rcu_preempt detected stalls on CPUs/tasks: { 1} (detected by 0,
> > t=6002 jiffies, g=289, c=288, q=8)
> > Task dump for CPU 1:
> > weston          R running      0   306      1 0x00000000
> > [<c05282d8>] (__schedule) from [<00080193>] (0x80193)
> >
> > Do you have any clue about these errors ?
>
> Which kernel version is this?

Please let me know in which version this issue is fixed.
I will try that.
I think I saw some commit that mentions about it, but I forgot.
Anyways, I am checking again.
Thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
