Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DC211187ED
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 13:19:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VydD3THIHtgQZK1yFfLAQZ0OWAOObu3FyMhhJKdUMxc=; b=NsC0DHyxOe64Y8
	L2cHjEGPqQghZc3z5XoQPdvgBFYfiKf4X15U3fEm/43kqE3HHGVzqvyPBgU6oR2VlBf7Refxy5RJI
	qDpNpOxi2FNwPQFUEOBEueykAhf6q0DXh+vbOkEQjGiDs4AghZmIKw2+va/c6W9YNhDcZqIhkuoLA
	+liTtFecwG2ev00/X87kHvIVHYVPHh3/MIG9uX5TrWTtOmSpfW9uhJdKQOHEl9rEVHq+KJFZoUF4L
	IWb8HyJmMwksZGr/bzkEDtCJlWJsqBipr26hkyToCHeswvPft40B8RsfqyC4y6MkwvNo1wpPDSozG
	WIGH7M/8mcJyZiGCAX+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieeUP-0001ct-Ly; Tue, 10 Dec 2019 12:19:41 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieeUG-0001cU-Ct
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 12:19:33 +0000
Received: by mail-lj1-x22a.google.com with SMTP id z17so19565085ljk.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 04:19:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mZr/+6HpSIONAz05WKaRqDWYK5bxI03ma7Dp4hXBj4Y=;
 b=nMUGE9ojdwfx0CYOyowero9vGQjdbfF89mEUclB2RMCR99DXXtRTKdjAe9UYrHCXl+
 yMd9U8yaKIpJHa/pzllZRZm3WZvZeiI/65EemTHFHEqwtx/7QGrssXMNS8tCkhb0qJyy
 SOo72CzR9bc5QntEM6TCY5c84vgzQ2/+JwHwCvlr6Ez8e7P7pfQiNmK/gNeJFso3heF6
 UF3H7O83XG6Yx5JR+uWjto0uCIURwxn4ndrt+ajjQwiy5mifPQ8hhTMCXdBIZatE4sCJ
 H1nANPPM5+5XL0zZi+MTgE28Zkep3Y4GSdRMsEET/FY6wWlfBto/AArG3dJHlBJSr8xY
 gzLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mZr/+6HpSIONAz05WKaRqDWYK5bxI03ma7Dp4hXBj4Y=;
 b=Y6r12LMpzJszOUh/EjwBrIrv5gwGrIybeFzIyNoURymyodOf9VtjoBMnfSfm8wfVkf
 SVLzONGAHrJIJIZ6Kfdd1/BSeStozFLzNAYcft8aY1ktcV+G23HfnwqK1O0gK8WAQtmT
 gnAxkFIpY2eqBrbWC7Dgx0t0rsHPMnoJ3S98InJkm29q/1N4WuLmawabr+xx2MUwpGKh
 FUZduOu4TmG7Dh2jiUpMO8OFfqdy4TghC/zVcjDT7NROj+Ud/hQQltiCds2miUZuJ+uy
 qLGM8R+sw4wLlnxjpE1ErOXxrdMtcm8Vpgk5VP3c+U3E6ghTuQzsgzlr6ovA5XMA9jO/
 iD1w==
X-Gm-Message-State: APjAAAXGb1VlpZpxIz6iSBnX2MVfiUnKIxWw2Cq6ozj691QndNvKofhI
 wHtUGjYh9Ga4u7OV6QGni06C5fVJzy0vis2fY+M=
X-Google-Smtp-Source: APXvYqww+mmoqgVXNIbfcua+rHzXuSgDDkoZs8OWbxCzt9D+f/gPdFAfoXdomnkfJO5QwjZfHhzqKWF9QGxZRgLWfY0=
X-Received: by 2002:a2e:6e10:: with SMTP id j16mr20421893ljc.202.1575980369201; 
 Tue, 10 Dec 2019 04:19:29 -0800 (PST)
MIME-Version: 1.0
References: <08794fde-cdd0-287c-62bf-e2e3b8c80686@gmail.com>
 <20191203101509.wte47aad5k4mqu2y@pengutronix.de>
 <CAOMZO5Cn993y9VeFN6hPO3-cfNnUKiuFd_rqAZ8htz=dO6t6ig@mail.gmail.com>
 <CAOMZO5BniszDhWKkoWY=P62kv9cY160r9P=pjpbSOZasxJvdBA@mail.gmail.com>
 <77fff313-3f40-6b5e-fe30-5a65a189bdff@gmail.com>
In-Reply-To: <77fff313-3f40-6b5e-fe30-5a65a189bdff@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 10 Dec 2019 09:19:18 -0300
Message-ID: <CAOMZO5Ay6opfhb2cOOFHsbC_kgwreG=0TBAwtwwxM6PVE6tK6w@mail.gmail.com>
Subject: Re: Issue with imx_get_temp()
To: Igor Plyatov <plyatov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_041932_459303_D5175BF5 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22a listed in]
 [list.dnswl.org]
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
Cc: Amit Kucheria <amit.kucheria@verdurent.com>, linux-pm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Marco Felsch <m.felsch@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Zhang Rui <rui.zhang@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Igor,

On Tue, Dec 3, 2019 at 11:36 AM Igor Plyatov <plyatov@gmail.com> wrote:
>
> Dear Fabio,
>
> > Does the following patch help?
> > http://code.bulix.org/l3rz2e-982595
>
> Thank you!
>
> Patch applied and will be tested.
>
> I will inform you about results.

How did your tests go?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
