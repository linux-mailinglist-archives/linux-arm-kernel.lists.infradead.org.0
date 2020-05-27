Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F5D1E4E5F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 21:40:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/vICIcqh35HnEkbap5Yub5flhqqTC+RMXadzAYVpH6o=; b=FMLY0/10G9JWY6
	yvnk/7HRY+s2WAd4dz5EeW1PrC/FcJ1yIBOimDpJ0lZv6spvqVJ8pAY+DWutEOBBaXD0knJGnLPHN
	avrelr3ReHLaho+c/Ffvzn9hzFdhZpy7tpJdIAMCEA6g928Pr68qb0c6lCeWowy7uGo4ejnX4UwDP
	tliL49bu2nLDYEyiFedmIUywOg7djSf40whkkUvHph7g00HXebHCTIAYIiib1BFfOipJbY4mLOfFW
	nLJp1936kWW2TokXmj9GpMgCvfOcg0g4wwvx0QGHzjl/Ghn1u70nqcPnGm4y8vbA12JMi/y8wG71X
	MpsBVejPecase/f+7WoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je1ue-0005h2-Jz; Wed, 27 May 2020 19:40:28 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je1uS-0005fe-6d
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 19:40:17 +0000
Received: by mail-lj1-x241.google.com with SMTP id c11so28268549ljn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 12:40:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=anholt-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JoA+ltY04rTbNuPqoR5f7m96ZZzh4EiSS3yqsY7/Fkk=;
 b=hPL8fiE399pTijYYRRViKesbZjUEdR+1xrxi15mivx2UishaS/MyGdfufOhOuh4nJC
 9DUnu5lvoCIClNGhanYt78Spn/6lz6zJeb3f1R1yoUauNsfdQgAnT10eHlqd3dA2XxFA
 Wg3afUHR2XHL8Zs4PeqBof/vcTQa6b4reFBUU69cmsy3v+WHduqyYbNr7/uT0POOWyIb
 Pd9gtwh9o1vSLmlP5F8Wg9VveNOpMqacFmDDbP1kCj2b8X4Yz6f0DWDOd4IXybnXLHMc
 rqQth6s35/EOBBV/PYDci0vcE4tOXgfTbpJtEYpdvdMfOxYYHPxZ/7V0n7zGJrXURm7J
 siEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JoA+ltY04rTbNuPqoR5f7m96ZZzh4EiSS3yqsY7/Fkk=;
 b=rSw2znI3/GbzmpC0+8SXSnvM8yj9UqXlzFW/EhgPxT45Nk6pVcaYdHEP3Zsa7Rqyy4
 /DCdh66U1/Pa2N7q4SE1WRboNbdHW1KCvxcKc6m/UqLHNjd5XiJPYpKP5aVFEYN7FwMb
 JNkVm7W0nKYKizoIcS72CH6FnSIcD21QnmZXsnxfTeG8X7gqEZ0P4E0CWvSIa1X4RAfU
 FJ5gjCn3VHTP1QtHxfPYy6i2AjPIAEkfDQMNVQwTq2EBCDhOlQEqxfcn5EldwhxNWTXw
 DYOq+pRsx1XKUVjIrgbawLZ843/VfKCWRBeA4S5hk56nbCZEhI7bTP/DvvdMnN481LN4
 gRMw==
X-Gm-Message-State: AOAM530HVYZvnmCscvUluzF1w04LgCOdzUAudjIdBQH5K9lOHd/KqGr0
 sbfXGu9YoSPxzlUqHd2XBbWnqP6O6UTCFAffXqBmsQ==
X-Google-Smtp-Source: ABdhPJzvKaopQeuSH++NfG6+ePzdECIe55mSMz1vGorLjrgnNGhLypFBTCO3NOV35EuZEgNnmnk7AN6/T2UVknXBfxI=
X-Received: by 2002:a2e:8ed3:: with SMTP id e19mr4027321ljl.367.1590608413785; 
 Wed, 27 May 2020 12:40:13 -0700 (PDT)
MIME-Version: 1.0
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
 <f1b1737fe0665e7191c3d2a3cd9bfafb831866be.1590594512.git-series.maxime@cerno.tech>
In-Reply-To: <f1b1737fe0665e7191c3d2a3cd9bfafb831866be.1590594512.git-series.maxime@cerno.tech>
From: Eric Anholt <eric@anholt.net>
Date: Wed, 27 May 2020 12:40:02 -0700
Message-ID: <CADaigPUpH4DuK_FSVGmq-ZPPCtvxOcdq881h9h3NE1_ODJ6tuA@mail.gmail.com>
Subject: Re: [PATCH v3 055/105] drm/vc4: hvs: Introduce a function to get the
 assigned FIFO
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_124016_248578_21201B8A 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 DRI Development <dri-devel@lists.freedesktop.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 8:50 AM Maxime Ripard <maxime@cerno.tech> wrote:
>
> At boot time, if we detect that a pixelvalve has been enabled, we need to
> be able to retrieve the HVS channel it has been assigned to so that we can
> disable that channel too. Let's create that function that returns the FIFO
> or an error from a given output.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---

> +int vc4_hvs_get_fifo_from_output(struct drm_device *dev, unsigned int output)
> +{
> +       struct vc4_dev *vc4 = to_vc4_dev(dev);
> +       u32 reg;
> +       int ret;
> +
> +       switch (output) {
> +       case 0:
> +               return 0;
> +
> +       case 1:
> +               return 1;
> +
> +       case 2:
> +               reg = HVS_READ(SCALER_DISPECTRL);
> +               ret = FIELD_GET(SCALER_DISPECTRL_DSP2_MUX_MASK, reg);
> +               if (ret == 0)
> +                       return 2;
> +
> +               return 0;
> +
> +       case 3:
> +               reg = HVS_READ(SCALER_DISPCTRL);
> +               ret = FIELD_GET(SCALER_DISPCTRL_DSP3_MUX_MASK, reg);
> +               if (ret == 3)
> +                       return -EPIPE;
> +
> +               return ret;
> +
> +       case 4:
> +               reg = HVS_READ(SCALER_DISPEOLN);
> +               ret = FIELD_GET(SCALER_DISPEOLN_DSP4_MUX_MASK, reg);
> +               if (ret == 3)
> +                       return -EPIPE;
> +
> +               return ret;
> +
> +       case 5:
> +               reg = HVS_READ(SCALER_DISPDITHER);
> +               ret = FIELD_GET(SCALER_DISPDITHER_DSP5_MUX_MASK, reg);
> +               if (ret == 3)
> +                       return -EPIPE;

Oh, FIELD_GET is new to me.  Looks like we should replace
VC4_GET_FIELD usage with just using that header, and also
VC4_SET_FIELD with WARN_ON(!FIELD_FIT()); FIELD_PREP.

Could you follow up with that?  Other than that, 54-67 r-b.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
