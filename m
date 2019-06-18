Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 332494AA9A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 21:04:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j5JMAHFhAz4KsgUZ1naDethV1zw25s6Tpl7WxJJp4PQ=; b=d8NAe+g01T5M81
	9notNoD+UEdl/Phja7TBBKrmkcYG5uRhQp4fRWeFaReWsqM+dfrfo+7aV1TUpwcDVRzD1hgYENQC/
	FZlWBRAuv71uLEA4DM5vJF1PoHvLtWMPyVe50tHEvuS7S2r8xpjT3FPteZyHASPG/iyrBCgNP2/9o
	OATRF8sEIyqw8S3G/L80OT09VWiMcXQljuuqmx85RjCmwRp200rRkgzUY0qF8S7UfbtRcvknL0ecc
	em3G6cEg3gY0lkO+pJ4NdMRBHWGmNq3qamEUuqpVpQxcGG/IxVfz42xVrjU4AVtVsFKC8CGjk/FZc
	nT6dYFQjjGYkAUEDOh2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdJPS-00026N-Ih; Tue, 18 Jun 2019 19:04:46 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdJPE-000262-Jl
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 19:04:34 +0000
Received: by mail-io1-xd42.google.com with SMTP id r185so26396050iod.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 12:04:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=a/uPUQoJ6eu9AxAlNMMd5WX6nBQBlPI8ohAXNes42aw=;
 b=bXsdOgNNhHUU2Rh39DVh//DYSa8wLO17UKjyb5/VQukQMLaldrf+4dIX59LX69TnYN
 K3WlokHw19Le+wRnE5hPEsWSMb2KbaNDx5aQ+C7b7g5d9yDelAgekAyu8ertsRj+QOT3
 guCRjWqHYE+PLmbZPW3w3AonMOFEZxCC6+RetJ7CfwQSLIkUVWb/FJnImmatNF3vq349
 fbNv1IfWTHrF6RCtOhKB+5LKmi1QtyGn5XN1Ti6YIvMVc6IkJkfULVAYcZ5EvLqVk6na
 ndPSUblNdlZ3TZRg7jeFrHSRj7Rcwi2SpNUAZ8Ww8069HASVMOREAOYZwsIDziRy2bDW
 HlYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a/uPUQoJ6eu9AxAlNMMd5WX6nBQBlPI8ohAXNes42aw=;
 b=o1fg3xK2AEsjYjSylVO6kYl1PT4vB05gnwOQW0ubU2jiwH30jYGMEAGU59WolAIlZO
 aY0TnxHIUiINlIVozpkGfc5rRndSLTnuvunyioAnk5d78G6bv8YpzC3cI9l4BgRFjMgS
 UPuVmOKaC3+C0M9wQ2kV7N88LnvIEplFX3QkT3PSZ0I1ugRLP0+cJBZdcLGdchc/Dmun
 ZX8R1lClgaq/vqqyParSmo2xHSPPfLdTnourLf7o8D/oree2YQHDi0e5MjvssvSNK6UA
 k5gfvudsOQjWrQ0jmBmrD6bTkDgQAzMJsqPMBRCpvAcUnqBzp+HNjskf2UlB5/MOkF3Q
 6X8Q==
X-Gm-Message-State: APjAAAVOjzGVRDsD8+PWroZNeFgnA3MAuIuUyQ8oO3dVaCAPnX6c9+LB
 OrwgW+eLVWXYhz2H0YI1FBAjFZjG4OPr9CGdmIY=
X-Google-Smtp-Source: APXvYqyuCjkE0XkrMs+AVF+eYtg4xPIL2ITAp0mwmOnta8bq2cWffxL5pzIh0ImORxmb0xK8gWevVNC32cPKk+1JltA=
X-Received: by 2002:a5e:8e42:: with SMTP id r2mr26795246ioo.305.1560884669745; 
 Tue, 18 Jun 2019 12:04:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190525181329.18657-1-tiny.windzz@gmail.com>
 <20190525181329.18657-2-tiny.windzz@gmail.com>
 <CA+E=qVdh1E8Y7dZO0JSS4DJE2bo=98MuSKRt7nmeFg-td7Ua9Q@mail.gmail.com>
 <CAEExFWtjNridLsMXOnBe2mJOPhUOYJ6G3wGF3gx=0oQoQROOGg@mail.gmail.com>
 <CA+E=qVeOSw=_z4OiQ4++z8g-KN29UYVXGicNd3PtHobg4xaG+w@mail.gmail.com>
 <CAEExFWs58UNcVcQNnwK3dk5cpmfQRnjdRWAmYs5M1t_ONr1Bpw@mail.gmail.com>
 <CA+E=qVf-_2DWbf55bCnjbkZH9N4a1_K16OxN9=o=NrZAV7GXPA@mail.gmail.com>
In-Reply-To: <CA+E=qVf-_2DWbf55bCnjbkZH9N4a1_K16OxN9=o=NrZAV7GXPA@mail.gmail.com>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Wed, 19 Jun 2019 03:04:18 +0800
Message-ID: <CAEExFWtcNUVKc1-9MVgwoq0QErn3nhSHWTpzQNpcydQRPh9uqw@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] thermal: sun8i: add thermal driver for h6
To: Vasily Khoruzhick <anarsoul@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_120432_644155_61AD9ED2 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Linux PM <linux-pm@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, rui.zhang@intel.com,
 paulmck@linux.ibm.com, "David S. Miller" <davem@davemloft.net>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 15, 2019 at 7:08 AM Vasily Khoruzhick <anarsoul@gmail.com> wrote:
>
> On Wed, Jun 12, 2019 at 9:50 AM Frank Lee <tiny.windzz@gmail.com> wrote:
> >
> > > If you have a git tree I'll be happy to contribute A64 support. IIRC
> > > it was quite similar to H3.
> >
> > I built a ths branch and I will do some work later.
> >
> > https://github.com/TinyWindzz/linux/tree/ths
>
> Looks like you forgot to add your patches to this branch.

Done.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
