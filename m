Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7086E4EB9A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 17:13:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h8wHsCl/IwB46lwTFMNCgLe1JRcTGe0rC1ZtSFfx/Eg=; b=eKuLIaIkzz3atU
	f4Ytl87VB+y0Sg/7KUzPWYc0knEfUFshk6yag3NG9DkEwPx7ht8FcG7amoOG7+kjFO/AQti+z84hB
	jwqQV3bn4dkqkca3eivYpahUvKn4PEL+dXX15nh06EnLlf9r+9xRpje4PSH74GPcZzd5Pd711F/GG
	Q0fUqvQyRigQ64haIiv8uzubF8XBM5L83C5O3NmVliwzLbmtibBKr0rmrdOdQVCx8fPLCGHrIDIIk
	GQeO2NqtiutU7R0wWBoeaLVqvjCx17QMu5W64vNSrRASb+8rKuBAlfi8CG1sGIJiS+92sKxa6qaj2
	QwC1cBkIGg3jPyu+DuJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heLE8-0000Xo-BK; Fri, 21 Jun 2019 15:13:20 +0000
Received: from mail-ua1-x929.google.com ([2607:f8b0:4864:20::929])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heLDt-0000XI-S8
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 15:13:07 +0000
Received: by mail-ua1-x929.google.com with SMTP id a97so3084796uaa.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Jun 2019 08:13:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zXpqDxLfIfBJYYRkrryXotHeuidmyZAFttzUi4vHcZ8=;
 b=QtvZ8Caqy3Wd/V+8GkF4ZDcxgC1HDyeytgaDVWRX/AWNPdSuaPd+lCKUIN4BRKFLEt
 2nkUJcDcAA8tP4Xv5RH8b0XdGIw53gLwURKJr3peTUyU+lSdbw2rIoH96x+otXE4awDQ
 GM8fODsYP7mv/dMJslqR81lOwMdR9dq+u0ZIgzlaw67LJBTNd1btB0TEv0RoxzdaDkPg
 1iZtD/0L1klrJe/sWBTWjV8ds8+3mfFoSqS39ft3bSLdLxkptb4r55ImsRVOlP1+zkQ3
 56Q8d0SuIAoYq3WkJ9sXOINgFaWLxsPCmPclIbEB5SK6Jrnwq0mnNBbEIHbIvbaA+DlX
 6m5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zXpqDxLfIfBJYYRkrryXotHeuidmyZAFttzUi4vHcZ8=;
 b=o0Wim0fMddQNyGlo7j95cP/DWc6JkaHOiKOnWSS+oiazeLrpJwwpMkZinGa0b7xm7X
 uaSg7zAyo1JueF/O9tNCZTpoorBofe8vCVM9fQFi8VufDLCOKrSHIkhdDIV3p80bvFPw
 HfjL3UwFrvQqG4NJhcmGlI+mPH6sodn98HiiX23QcY+XppobLFzsPoweq+3hGyhNygJa
 0zw3XuHXCgXRcZsuwyWtHdknzJL0ISEGvsMzladayNG0QZNlFfELStr2jzN79mCmAu0r
 LnGkmZS/wnPRNFoslxI1zLn8/MtJiDQroPjD5Eh9vaok5z+uTqkvn0TEpdglga8SlB2k
 zG6g==
X-Gm-Message-State: APjAAAVlTGPWvMWNG2re8FHg8d6p58/SPal15xqzstCn4Dmdk4OkfemX
 jNwT+e95toY0YbEOvYrMhoji36XbKaGMo4dm9EY=
X-Google-Smtp-Source: APXvYqxq5W/TRSvncldtz8iA0RwP6LGygzVHQZ26gcAflq59Xaw8C/VKTE5QdEWv+gLzgMtBZqD/vC1l6+JWvJfv52I=
X-Received: by 2002:ab0:4744:: with SMTP id i4mr21428220uac.63.1561129984537; 
 Fri, 21 Jun 2019 08:13:04 -0700 (PDT)
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
In-Reply-To: <CAOuPNLjrAU_C_TUKFMs1d0eGsw=AxuG6d6FhNHtHFwVhfYZGgA@mail.gmail.com>
From: Pintu Agarwal <pintu.ping@gmail.com>
Date: Fri, 21 Jun 2019 20:42:53 +0530
Message-ID: <CAOuPNLhstoCjxijrnKNmV1iKWjAXvSZ38Z13tfd5bvGbYSqPAA@mail.gmail.com>
Subject: Re: [IMX] [DRM]: suspend/resume support
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_081305_937628_B9A21E93 
X-CRM114-Status: GOOD (  14.27  )
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
 no trust [2607:f8b0:4864:20:0:0:0:929 listed in]
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

On Wed, Jun 19, 2019 at 8:59 PM Pintu Agarwal <pintu.ping@gmail.com> wrote:

> > > This scenario is not with suspend/resume.
> > > This hang is, when we make hdmi as a loadable module (.ko) and trying
> > > to install it after resume.
> > > In this case, suspend/resume will not come into picture. Not sure why
> > > it still hangs.
> > > Do you have any clue for this scenario?
> >
> > I haven't tried this one.
> >

Okay there is some update on the 2nd part.
Now I am able to successfully install all imx modules after the resume
(no hang).
But, I got some errors after install finish:
[drm] disabling vblank on crtc 1
[IMX]: imx_drm_disable_vblank - called
[drm:drm_atomic_helper_commit_cleanup_done] *ERROR* [CRTC:24:crtc-0]
flip_done timed out

Also I am able to start the weston successfully.
But I see LCD/HDMI display is not working (only some backlight is visible).

And, I noticed, weston also reports the following errors:
imx-ipuv3 2400000.ipu: DC stop timeout after 50 ms
[IMX]: drm_crtc_vblank_off - called
[IMX]: imx_drm_disable_vblank - called
INFO: rcu_preempt detected stalls on CPUs/tasks: { 1} (detected by 0,
t=6002 jiffies, g=289, c=288, q=8)
Task dump for CPU 1:
weston          R running      0   306      1 0x00000000
[<c05282d8>] (__schedule) from [<00080193>] (0x80193)

Do you have any clue about these errors ?

Thanks,
Pintu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
