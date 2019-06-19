Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56BE94BA5F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 15:44:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V/0p5ccM2aIa3ReoRWN3aFqc31617hkoTOXTjfKvKrM=; b=iqm8WaWw6g7EzW
	A+Tobfzw/GEFb8GHNeDR9oUPDhwTzJbVnSGO4jI7bDNi4XzTWbN00pjedOWaPKQSWYcDl8FB8q5/J
	qPtOPx8ZGZ3y3mqcGxdH0yT4c2y0LdxOlvTiUIBF8PJqCN34kYz6JZXq1fS/EgpU7We/UE0y0yW+v
	THcVfLsDb6dd1Nc6t+6XKIp/wje2H8QIkZTuZKUhY57q33oaT6yaEjzub8m0WzOSntAMRW+Z8uOWP
	ELWt8xsFGTFH5jTrWA3bRW9Yq4/UyXFjMS6V8cfcX2moHv21GwqvMsfWPCNg8EJ1LWxh3T1xJ3qVf
	R1X9UZYSqDnuvvF3YQcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdat3-0004LQ-FE; Wed, 19 Jun 2019 13:44:29 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdasu-0004Kw-GV
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 13:44:21 +0000
Received: by mail-lf1-x144.google.com with SMTP id 136so12168016lfa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 06:44:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Sh/qIBw1XKDUdQ0Wxpr8WG15MJA13mpU4YtnzOpaKLE=;
 b=OIdFgOcig0sQN7irVtXlKzuUYnNpdV1QiD1wZV9NUpIz3rzt9QrMhB2vZdMgO0dDZ5
 N05RhZia6MmkDuZ9lReuExcnttV/eCkIHQgXv/bZyL0H2+jP84zT/qvY96zXDf4iJop7
 UQyt7pn+TmFRgSRFTdk2qnP0JvNi5N6WNQWx0sWNnI/PczhgPk4YRwlkPDEM98kTV7wX
 Ei2qA5i40HrzUql+JbtY/4oYdMRtBrcpkVpmBHsd1GrLZcDURYD1zf2IPuovqT1PZ3jA
 NeBkY8lEZtzL6WQs4D644wb00nPn5IdFpZssFJDs5AGV5X4+jfZu2clZjaHYEiJUIIji
 Vokg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Sh/qIBw1XKDUdQ0Wxpr8WG15MJA13mpU4YtnzOpaKLE=;
 b=Y1SFfj4weqboxTbW3ThNepkwCL/t/uEG9A/b5EiEgBcgXoPDfE+Qhvxo3THVYKmMQL
 ufKm3fh6rv/kNgQiAjg+kIyL03BLxOw5IaTgqEXJ+Osw7AqS4D1QV9NcPFK1aSkxkvXN
 sYIYXkh0krb7hJXWSiJu3rkCUCVM4dY6aJxcbhu14pUOwF0ZCjavJJR/cyGMU3APbyNq
 I+bcR3tIz/KfT6/120zfnugLaimbZnZ301TJ1Xd5uRNcu/K4IwjBomnjUEPI1SQzmUnE
 JdnH5l6TvwZ3VciN4EdOfrJWNIgMgmhu9Xr/uS5wDuvOW3N7Ht5YvI218lKAyH5DGe0y
 IPBw==
X-Gm-Message-State: APjAAAXWKvd/IAYXQmJZmcfUKn3q1NEQE2QBDj9aPKOLRoun7qOZBsxB
 axwaCA/YkU3jwoPEjXtUnwURpnwYYNj6ciVBnHs=
X-Google-Smtp-Source: APXvYqzIHC2qwwy1WwyVkFuivPy0ti/t0LmJDTX/uQQG/dGgpZBVy8Yf6Ax2JhyVKa5qoMS4Z7Nr8uBXW6Fx5oQqAF8=
X-Received: by 2002:a05:6512:29a:: with SMTP id
 j26mr28443954lfp.44.1560951858594; 
 Wed, 19 Jun 2019 06:44:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAOuPNLiBA9VjEoG_D2y2O5mKiqsDNW1VZXOk1eWXpGY+h86acg@mail.gmail.com>
 <CAOMZO5BcLaS0gXUPi6oN6vjqagS5yf+rHh+EUjmi-Wi1OX7vqQ@mail.gmail.com>
 <CAOuPNLgEEfDca4aeT1+q8GfUfGzbJ4x6JwGf-ROB1pgpXUBHSw@mail.gmail.com>
 <CAOMZO5BY8JcLNMCRCC_d=emy8HR6kE=dB9f5qfZ=ci_c+Jak0w@mail.gmail.com>
 <CAOuPNLjYhkP_kL+q-ZpiDZMMpOHrU88BFBc2agtnCzXt8dihOg@mail.gmail.com>
In-Reply-To: <CAOuPNLjYhkP_kL+q-ZpiDZMMpOHrU88BFBc2agtnCzXt8dihOg@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 19 Jun 2019 10:44:31 -0300
Message-ID: <CAOMZO5ADK1L5UMM9XZetHvmjTvmvUg99G7VPdeXitgpctGLCkw@mail.gmail.com>
Subject: Re: [IMX] [DRM]: suspend/resume support
To: Pintu Agarwal <pintu.ping@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_064420_544862_7DE392CF 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
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

On Wed, Jun 19, 2019 at 10:33 AM Pintu Agarwal <pintu.ping@gmail.com> wrote:

> You can think that the version I am using right now is almost 4.9 itself.

"almost 4.9" does not help, sorry.

> Upgrading again to higher kernel version is again difficult, also
> customer does not want it.

dw-hdmi is well supported on i.MX6 with mainline, so you could simply try that.

Try booting 5.1.11 on your custom board with a very minimal dts with
HDMI support.

Then you can test suspend/resume and see if HDMI hangs or not.

> Another approach I tried is, installing hdmi {dw-hdmi.ko,
> dw_hdmi-imx.ko} as a module, just after the resume.
> With this also system hangs during installation of dw_hdmi-imx.ko at
> below location:
>
> imx_drm_driver_load(..)
> |
> |--> component_bind_all(...)
>      |
>      |-> component_bind(ipu)
>          |
>          |
>          ipu_drm_bind(..)
>          |
>          |-> ipu_crtc_init(..)
>              |
>              |-> ipu_plane_irq(..)
>              |
>              | ----> << __HANGS HERE__ >>

I am not able to reproduce this hang. As I mentioned yesterday
suspend/resume is working just fine.

We would be glad to help fixing the hang if you could reproduce it
with a mainline kernel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
