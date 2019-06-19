Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE484BC54
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 17:05:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sdCdd40XK5WtECVWwm47KeZXtvv61XbGP7G6R7CleQw=; b=Dg3qQze3CaVLk5
	IMLHvhATdD7myeyQPh9nF89jY4WHqPFz92oQC6URg/Qs1iS06K7VVg1rOyVukNfLbSQ5TtI06n3Pr
	F0vOw9wC5Y2SfjdcuiQVD1igsa4KJ8VV3rlMfSPzL4A34HzzM0ZsiDV04sEUQSUXLzJxQCvHA0Anb
	SQ6//bVboJACypkQnt7qDemyql3agQElAycopHQa8Xv8S9XwWQAqRfqhi2qNG+0sm2VrY4HljKbaj
	jcGcQi2NcNEBMcnfy4TWkjjH1dgdK3wFZ4TEysng0gvIS20gDb11J+MtQGFIfntGZlLCh/VTUDpa1
	ssXivqgbq6nO/TQk/fqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdc9J-0001oZ-Mr; Wed, 19 Jun 2019 15:05:21 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdc96-0001Lt-Ke
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 15:05:09 +0000
Received: by mail-ua1-x942.google.com with SMTP id 8so10136368uaz.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 08:05:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pkwqFDU1m9y1SmwwSPbuxARBXbcsz4Hg+ImtIjkxe0I=;
 b=fU0DJtyNLrcixK/O0KvTyH0V+rJYMHK4QbYcOjT2Rh7QaHKwWZOt+i3x+KCpYcfPVe
 /ifw9OBIcAIwu0gj3TlxpRPlmtzmnNdySQvWwbR7E3+WQWLRc6A4icFLP5pupx82L+4K
 GjG7iQvhlJi5aPBzh2l1p5k44weDEcw0zJHTLqTx6hMNG5bkDtHRrTD0ajwbF47PvVvB
 1+RMqBuvg1de+T4WXa44lUd0lF42/Sf2Kqb8mqtmqoUoTToWxAAX6qeumOA/DdjL9W2D
 atuV1iDF4pnKrsCvPOYsoUKV/RlDsYZjwv8KtKUHaqlYGtw+ek1WErJN8v/kIHXqN1+7
 T3/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pkwqFDU1m9y1SmwwSPbuxARBXbcsz4Hg+ImtIjkxe0I=;
 b=NCtZgoL26AEfGQ4lEh2bs/gMq2/M6zzopXklD0FN8p5jCer+yqJWAG1KjTlhKC1dmE
 D6RvlgrGz7bop41ZqWxuMCNkLsMr2QFyeLhA79MYZj0BKmhJl5fccEdvQGG20szZJl4F
 FqQegVgZBLybmOAmr5KX1PFsUMfjoV9iGgvB9UPbpg1SPnmPQ5eMUGtbN5KhXJRcO5ig
 lWc5dMqbx0tBkHmuf/jAc/6VxrNaJGtJfA9Qwh1o/71jtmSieLaAxKWrUln9DFFMTdre
 yi6cBapbFkzpO5Hzn7us5Yr9+9q7kNyCNQSBo96pU44qkjyNEcxN0c2eZuBMaROHqzYf
 PUYA==
X-Gm-Message-State: APjAAAUDAl+3Xx3BVGzmnQgVAy1SsMHk3k3TYh24RLEtg70w4C95mfPv
 h4OuZ+aE6nK9fv1siH6aLzBNRgiaqHMZVBvgO2V2QQ==
X-Google-Smtp-Source: APXvYqwK/xA+axdU8X8NLuJu0qn2jf1SXM8PkR8+V9KMrB2p3kYXqlcm7OSWbUsoqisq6XlVx7wqtBrHHdaDOCqLpxs=
X-Received: by 2002:a67:e419:: with SMTP id d25mr6657505vsf.196.1560956706613; 
 Wed, 19 Jun 2019 08:05:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAOuPNLiBA9VjEoG_D2y2O5mKiqsDNW1VZXOk1eWXpGY+h86acg@mail.gmail.com>
 <CAOMZO5BcLaS0gXUPi6oN6vjqagS5yf+rHh+EUjmi-Wi1OX7vqQ@mail.gmail.com>
 <CAOuPNLgEEfDca4aeT1+q8GfUfGzbJ4x6JwGf-ROB1pgpXUBHSw@mail.gmail.com>
 <CAOMZO5BY8JcLNMCRCC_d=emy8HR6kE=dB9f5qfZ=ci_c+Jak0w@mail.gmail.com>
 <CAOuPNLjYhkP_kL+q-ZpiDZMMpOHrU88BFBc2agtnCzXt8dihOg@mail.gmail.com>
 <CAOMZO5ADK1L5UMM9XZetHvmjTvmvUg99G7VPdeXitgpctGLCkw@mail.gmail.com>
In-Reply-To: <CAOMZO5ADK1L5UMM9XZetHvmjTvmvUg99G7VPdeXitgpctGLCkw@mail.gmail.com>
From: Pintu Agarwal <pintu.ping@gmail.com>
Date: Wed, 19 Jun 2019 20:34:55 +0530
Message-ID: <CAOuPNLhZhgN26rquLQq9zHBct1QxK-7hXAza0xk-0QooPGYLNw@mail.gmail.com>
Subject: Re: [IMX] [DRM]: suspend/resume support
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_080508_688635_43627439 
X-CRM114-Status: GOOD (  16.03  )
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

On Wed, Jun 19, 2019 at 7:14 PM Fabio Estevam <festevam@gmail.com> wrote:
>
> On Wed, Jun 19, 2019 at 10:33 AM Pintu Agarwal <pintu.ping@gmail.com> wrote:
>
> > You can think that the version I am using right now is almost 4.9 itself.
>
> "almost 4.9" does not help, sorry.
>
> > Upgrading again to higher kernel version is again difficult, also
> > customer does not want it.
>
> dw-hdmi is well supported on i.MX6 with mainline, so you could simply try that.
>
> Try booting 5.1.11 on your custom board with a very minimal dts with
> HDMI support.
>
Okay. I will surely try it on another IMX6 fresh board.
With 5.1.11 you mean the kernel from mainline kernel.org
Or, is there a separate kernel repo for imx6. If yes, please let me know.

> Then you can test suspend/resume and see if HDMI hangs or not.
>
By this suspend/resume, you mean "suspend-to-ram" or "suspend-to-disk" ?

> > Another approach I tried is, installing hdmi {dw-hdmi.ko,
> > dw_hdmi-imx.ko} as a module, just after the resume.
> > With this also system hangs during installation of dw_hdmi-imx.ko at
> > below location:
> >
> > imx_drm_driver_load(..)
> > |
> > |--> component_bind_all(...)
> >      |
> >      |-> component_bind(ipu)
> >          |
> >          |
> >          ipu_drm_bind(..)
> >          |
> >          |-> ipu_crtc_init(..)
> >              |
> >              |-> ipu_plane_irq(..)
> >              |
> >              | ----> << __HANGS HERE__ >>
>
> I am not able to reproduce this hang. As I mentioned yesterday
> suspend/resume is working just fine.
>
This scenario is not with suspend/resume.
This hang is, when we make hdmi as a loadable module (.ko) and trying
to install it after resume.
In this case, suspend/resume will not come into picture. Not sure why
it still hangs.
Do you have any clue for this scenario?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
