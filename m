Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3670C1664
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Sep 2019 18:54:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9e+rk3KahMDYWjMSrYYvVRXm1iCw1Bxv8shD69+xcus=; b=WU/szqgp2f/e9qtJmDf4XUVFFq
	wJUOXBc2odlgij7N/idIb0eA0OOZ4wHCfRbmxgijMJEwIFyXfm/Sy6vL6VYLdkB4+ALStRQx7pRgo
	AhTnlz6vEFncHXT29VyGRNqFpn4zF4C32JCAiJr3X/EcAjXWkyv4Kf6FDA/PKBJmz4ItgPMAswWiu
	EKmYCtv38XCjvTzErcPwRjZwHUrC9A/fauKYiu2Lw945+ChkE9iYr8Nvq38nefLPiZtBOW7lDTnOp
	6NLEJGFBrHdn/6lVijaSsmpVzMTwxaHg/VjBRMP+aJaMTd/bqvWgD+9v8DwtG7GHa0/jcRPP1c1sC
	OpIgrg7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEcT3-0001Jm-1G; Sun, 29 Sep 2019 16:54:41 +0000
Received: from mail-ua1-x936.google.com ([2607:f8b0:4864:20::936])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEcSu-0001It-9d
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Sep 2019 16:54:33 +0000
Received: by mail-ua1-x936.google.com with SMTP id r19so3407166uap.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Sep 2019 09:54:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=hKXN3UH5ikId6K7/+YiazTXZNhGquUsUZgxZDxQd10Y=;
 b=WPB7OKJ3oTtP+x/hIwIN+DcngOG06NPx4RnjbFvVdD5u4DcrIV3MH8ThyUMtF0kf3N
 6F9Q1x3IuEEWjxDXJqyI4pwOe/YijKNoeX9GqDmU6sactOcUEQzAsXtBZ3gIcnI2V+d7
 L3kh2zZTFQfzwka3oNMQv1wRsdHVXXc2/Ma4tj0uIoEK1eIb3cc4HHOsYP4vft0UMmu1
 x5BO/okxSAyM2+lYQ3SUsuEBQgNcQ9VPsnnb0kTVhWeSQKemee1QEsDjnhhvooBgyE8t
 i32kEcogqZX+90pYCbjUE1jdamhMT/ntak6Ke7MOWnwhLFPBCnYiPOdHgpn9IiDKQKMW
 gt9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=hKXN3UH5ikId6K7/+YiazTXZNhGquUsUZgxZDxQd10Y=;
 b=NjOxGWjehhJEBqhtMAz1yhFpHMLszQ3TlgRSPr4WYy2S69dkGpsEF1TZj7YFBKoxvQ
 c43FQFdG9N2PiWsBERAMIp8qbdr0mVTfDkhimm4N6ob2RauQMnQYji2EdOqEhj+/vHw+
 s8DVaWU+NVIlX/c+hq12fW9aLe8WxiDBFZWIhzTRMqt/wNtYzp6JSxohYN6jNH5EhvVb
 B2kSO/x9Y+MTVmZc3pHF4yhnl/kLInA06uVVp7TnqGmiiXUdQ347HN4/1S4+1HHhww79
 PVMK7MuNCPCk4zgX9IV8BKYeLQSmCby3x51XRMjS0UAgwSw8ySeEMtSB61GYgRq3a3ph
 9ETQ==
X-Gm-Message-State: APjAAAU39+NbdBrdyioMhbvOAV0jsrLUZJueevxFTXT8x+feuoqcr4qg
 gkRymGEMff5lP8nfW65jJmqt9R0Wx7ynHPB6tNI=
X-Google-Smtp-Source: APXvYqzgyzbvTiXo3YBeaDoGYv87AhsnV9Wj2PykCpUkpRDq9o4W3/XL83+x1tUr7skuswWAXfuvFe5bAeU+1n3sJns=
X-Received: by 2002:ab0:3310:: with SMTP id r16mr4589762uao.22.1569776070321; 
 Sun, 29 Sep 2019 09:54:30 -0700 (PDT)
MIME-Version: 1.0
References: <CAOuPNLgH=JQeT3=tZ_AdBsV0e-S_JNEe4CtpFW8Wj5NfYW5PsA@mail.gmail.com>
 <CAOuPNLjqm+Dv5RARP6dzZRKSttCvqoLe7MNYOeChAGUWX1krRA@mail.gmail.com>
In-Reply-To: <CAOuPNLjqm+Dv5RARP6dzZRKSttCvqoLe7MNYOeChAGUWX1krRA@mail.gmail.com>
From: Pintu Agarwal <pintu.ping@gmail.com>
Date: Sun, 29 Sep 2019 22:24:19 +0530
Message-ID: <CAOuPNLgZ3kjBaCmXkXHZrncYqUxsNYKiXQqptoDBT_EWfjpNqg@mail.gmail.com>
Subject: Re: imx6: hdmi black screen issue after resume
To: p.zabel@pengutronix.de, bob.beckett@collabora.com, 
 dri-devel@lists.freedesktop.org, open list <linux-kernel@vger.kernel.org>, 
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-pm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_095432_360163_1BCA12EA 
X-CRM114-Status: GOOD (  18.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:936 listed in]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>
> On Mon, Sep 23, 2019 at 1:28 PM Pintu Agarwal <pintu.ping@gmail.com> wrote:
> >
> > Dear Philipp,
> >
> > I have a iMX6dl custom board with custom Linux Kernel 4.8.
> > I have both LCD and HDMI connected to the board.
> > And we are using weston/wayland as the display interface.
> > In normal boot, both LCD and HDMI display is working fine.
> >
> > But, currently, for one of the requirement, I am trying to explore and
> > support hibernation image booting on it.
> > Currently, we are able to resume the system without display.
> > Also, if we make the entire imx-drm as modules, and then install the
> > modules after resume, even LCD is also coming up.
> > But HDMI display is black out.
> >
> > After, resume, when I try to launch the weston, I noticed the following errors:
> > enabling vblank on crtc 0, ret: 0
> > drm_vblank_get: CALLED: vblank->refcount: 1
> > ------------[ cut here ]------------
> > WARNING: at drivers/gpu/drm/drm_atomic_helper.c:1121
> > drm_atomic_helper_wait_for_vblanks+0x228/0x24c [drm_kms_helper]()
> > [CRTC:24] vblank wait timed out
> > .....
> > [drm:drm_atomic_helper_commit_cleanup_done [drm_kms_helper]] *ERROR*
> > [CRTC:24:crtc-0] flip_done timed out
> >
> > ....
> > [00:06:42.600] Warning: computed repaint delay is insane: -5069 msec
> > [00:06:42.665] unexpectedly large timestamp jump (from 397522 to 402648)
> > ....
> >
> > And, when I try to reboot the system, the system does not reboot.
> > And I get the following error:
> > /wayland # reboot
> > ....
> > [17:55:01.180] destroy output while page flip pending
> > ...
> > imx-ipuv3 2400000.ipu: DC stop timeout after 50 ms
> >
> >
> > -------------
> > If you have any clue about this issue, please let me know.
> >
> > Any help will be really appreciated!
> >
> >
> > Thank You!
> >
> > Regards,
> > Pintu


Hi All,

I need some help, on the above issue.
Finally, I could boil down the issue to be vblank refcount issue.
After system resume, vblank ref count is getting screwed up, because
of which vblank_enable is not happening.
As per below code path: drivers/gpu/drm/drm_vblank.c:
drm_vblank_get()
{
[...]
/* Going from 0->1 means we have to enable interrupts again */
if (atomic_add_return(1, &vblank->refcount) == 1) {
    ret = drm_vblank_enable(dev, pipe);
} else {
    if (!vblank->enabled) {
        atomic_dec(&vblank->refcount);
        ret = -EINVAL;
    }
}
[...]
First time, everything seems fine.
drm_vblank_get: CALLED: pipe: 0, vblank->refcount: 0, vblank-enabled: 0
..
drm_vblank_enable: calling - enable_vblank
enabling vblank on crtc 0, ret: 0
...

But, after resume, somewhere during HDMI initialization, the refcount
is getting incremented.
drm_vblank_get: CALLED: pipe: 0, vblank->refcount: 1, vblank-enabled: 1
Thus, due to the above logic, drm_vblank_enable() will not be called,
if previous refcount is not 0.

What I further noticed is that, after resume, during hdmi_setup the
refcount is automatically getting updated.
drm_update_vblank_count - storing vblank count: diff: 1

This does not happen in normal case.
Now, I am not sure, why the vblank counter is getting incremented
during hdmi setup.
Is it like, hdmi setup is taking slightly longer time for
initialization, after resume??
Because of which the vblank timestamp counter is getting disturbed.

If anybody observed this issue, or aware about the fixes, please let me know.
It will be of great help.

Meanwhile, I am further continue to debug this more..

Regards,
Pintu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
