Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C625BE2F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 16:26:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0r17zb4gVZcVEjzISuDbf48o8Dx3jkC/DujrKfLHJsE=; b=rH2d4+mrNIm8XA
	i3Qc00qraQ30OMJDiyxIRDGZFr08XiRskW2P5dwDoye/UrE/AF8sSxYeftFMeLontieli52zCbv6V
	tUv47x1LqcCoDSd5ZgOqzDly3jahnzTpPOIPgid2pwRi04xe1BBWQGin8VNu4xz72dxUgSk13m3eq
	msCDHBTAQQT1O33POCAuX3fJP+F7H+67WWUzvS32LJccngdz8ReldNYtRuqXW1LbMqSCqjc/VF5N9
	EBmCkrkT7elg6A0pKY8ZZukqnW7/RZMuTQ5zHhSUEl98U75MYs0+4ZaGN2lMyaEAyMP3KDC7FwZTm
	hw5NlcI4UwEpkRuyYCwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhxFn-0006si-M8; Mon, 01 Jul 2019 14:25:59 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhxFg-0006sK-OJ
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 14:25:54 +0000
Received: by mail-vs1-xe44.google.com with SMTP id v6so9025278vsq.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 07:25:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=prX1E0RG7UeUBzCLq0Q5Oi12RHYXNZyfW5bTMLlL8JI=;
 b=arAwgdST9DjY9vxXrFWg7C4mcvo7W/JT82sW+gnGtZsku0jghjgd5ceLmlW/DD9MeW
 SXkWG25P0KqPSmuIRtC+91B/URngWnXzXO8GJCmxhhbMGJQqlEiWIiugydsHUWvn4xMP
 fLUMKKSyPDRVGraoestBcMoB/SGklheTHS1bG1NorskLUwMXCHe8BQZPTckzxHVWrkH0
 dSgyjWmIUs2c0Togy+4bsvPsYEpRzGGfMHrKl0nRw4vnMSAFdwJFAi62yo8VoJYFgkFK
 k+mbzCq1HV6m3HieHAh0vw3OvFpjQBSH70WCR/VZt+fI0mNEPME9QrW2RFWol/gfdiYe
 BMAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=prX1E0RG7UeUBzCLq0Q5Oi12RHYXNZyfW5bTMLlL8JI=;
 b=Jm1NwWw2uAwAIdj3moJ4h0n1r0TX+fEF8TZg/9bQcVpX9lRN/dZ8uOt1Pfuo72Dq7d
 8KbFOIwAop3udgxLxv4kfQ+mli7Tu+H5LJQh7qsFH28uCI4BbKBkfKq/FT6fvL9D606c
 DcibyUjr7QARGLKbwulDvzmWyyTbhZZucZKqX58Ay0/sDdxn5TCfJl7ZN+fCldG3FtAX
 n93Iyo+3YiFzQMeGZ8JJ1q9FZFUty//2B12xb0KBSGtPSxFkiLw1hAguCl1FZpi6HSOc
 zsO5p004xEvZc4GY9l4KhMPsRWmAJMHmUfCkusrl6twFv9WB8lzTuyvUDgIGrGkdv1F9
 qoCg==
X-Gm-Message-State: APjAAAWj3Bz1In3zDBPYO54fm/fCcSp+9Qp7fDzvxlKO1wGUiZRc6JyM
 aM9XoEe4OFoM/QC6yzs3862QX+aiaH6MmcHC/mA=
X-Google-Smtp-Source: APXvYqzWTG5NkVuWmj3+DO56fz33iIrbZisyvuVAbbQwtuyydaLXGbJH3yLGRx0Z49Q2eGRBQaNkmTqk5JK8s6+zHXM=
X-Received: by 2002:a67:3195:: with SMTP id
 x143mr15188071vsx.144.1561991151262; 
 Mon, 01 Jul 2019 07:25:51 -0700 (PDT)
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
 <CAOuPNLj=L_3RoC=9ws4yn1Q7QLoS3OEZ8FLRrF04HRQtQvc0Jg@mail.gmail.com>
In-Reply-To: <CAOuPNLj=L_3RoC=9ws4yn1Q7QLoS3OEZ8FLRrF04HRQtQvc0Jg@mail.gmail.com>
From: Pintu Agarwal <pintu.ping@gmail.com>
Date: Mon, 1 Jul 2019 19:55:39 +0530
Message-ID: <CAOuPNLg5A1bB-Tmndm4PvsJ40tj0yn-bJ2mfifEpjAF-t84wiQ@mail.gmail.com>
Subject: Re: [IMX] [DRM]: suspend/resume support
To: Fabio Estevam <festevam@gmail.com>, s.hauer@pengutronix.de,
 p.zabel@pengutronix.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_072552_818809_CD172FDA 
X-CRM114-Status: GOOD (  19.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pintu.ping[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Sat, Jun 22, 2019 at 1:43 PM Pintu Agarwal <pintu.ping@gmail.com> wrote:
>
> On Fri, Jun 21, 2019 at 9:09 PM Fabio Estevam <festevam@gmail.com> wrote:
> >
> > On Fri, Jun 21, 2019 at 12:13 PM Pintu Agarwal <pintu.ping@gmail.com> wrote:
> >
> > > Okay there is some update on the 2nd part.
> > > Now I am able to successfully install all imx modules after the resume
> > > (no hang).
> > > But, I got some errors after install finish:
> > > [drm] disabling vblank on crtc 1
> > > [IMX]: imx_drm_disable_vblank - called
> > > [drm:drm_atomic_helper_commit_cleanup_done] *ERROR* [CRTC:24:crtc-0]
> > > flip_done timed out
> > >
> > > Also I am able to start the weston successfully.
> > > But I see LCD/HDMI display is not working (only some backlight is visible).
> > >
> > > And, I noticed, weston also reports the following errors:
> > > imx-ipuv3 2400000.ipu: DC stop timeout after 50 ms
> > > [IMX]: drm_crtc_vblank_off - called
> > > [IMX]: imx_drm_disable_vblank - called
> > > INFO: rcu_preempt detected stalls on CPUs/tasks: { 1} (detected by 0,
> > > t=6002 jiffies, g=289, c=288, q=8)
> > > Task dump for CPU 1:
> > > weston          R running      0   306      1 0x00000000
> > > [<c05282d8>] (__schedule) from [<00080193>] (0x80193)
> > >
> > > Do you have any clue about these errors ?
> >
> > Which kernel version is this?
>

Now, I am using Kernel 4.9 (custom) with some internal changes.
After the hibernate-resume, I am trying to install the modules in
following order:
insmod imxdrm.ko
insmod parallel-display.ko
insmod dw-hdmi.ko
insmod dw_hdmi-imx.ko
insmod imx-ipu-v3.ko
insmod imx-ipuv3-crtc.ko
insmod imx-ldb.ko

I noticed that if I don't install the "crtc" or "ldb" module at last,
then system will hang.
Otherwise, the modules are installed successfully.

But, I get following errors:
[drm:drm_atomic_helper_wait_for_flip_done] *ERROR* [CRTC:24:crtc-0]
flip_done timed out
[drm:drm_atomic_helper_commit_cleanup_done] *ERROR* [CRTC:24:crtc-0]
flip_done timed out

But, hdmi could be detected from the logs:
dwhdmi-imx 120000.hdmi: Detected HDMI controller 0x13:0x1a:0xa0:0xc1

However, after I start weston, there is no display in LCD and HDMI.
I can only see the backlight.

One more thing, I observed that, there was a huge delay after
component_bind_all():
[IMX]: imx_drm_driver_load - component_bind_all - DONE
<-------------- delay --------------->
Then we get flip_done timeout.

So, my question is:
1) If we have to test hibernation on iMX6/7 then which is the suitable way?
2) Is it possible to support this feature by performing module
installation after resume?
3) If yes, then which modules should be chosen as loadable, and which
can be in-built?
    (So, we don't have to implement suspend/resume for each module)

4) I also compared clock_summary in normal boot and after resume (with
module installed).
    I found below difference in clock frequency (pll5, pll4)
    Example:
-    pll5                        1           1            1188000007
+    pll5                        1           1            1040000015

what does this indicates? Is there any issue?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
