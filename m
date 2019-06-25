Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2E7554E61
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:08:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e3P70Uh2jQdi8Lh3LJibdU1hP/Bn1fcNOOXuA7+FlHQ=; b=DuxmemE7uYruSr
	pduJa8m+JYty0JN43hbQAxOzdt/wwlaEhYJPoT5xA9ZhtjyTXVphf+m9hb0cpmU+w6PJEE3wcW7DB
	3YmNNpUb0zPR9GGf7MAI+jAUe3sAeW79ShADmqm5QDXfBWzlnk2zh4niFgcooCDxLWShn8ccdRR0i
	kDZlfCa+ip4z+K33noPMP0/JtF7UEMscTwzWKeM0DldYwweCz5c3eFvA2r9SghJ85qM+NCEwXh2qq
	upx1v1v2g1SrnRbcvueSGXcstAVeZ2mOccG7b+dOY/DypvFEpKmyIM2jWgocHPUJH6iJ0V9VXl8u/
	iQEhwzJTVwKJgkT/utGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkFs-0002Tz-L5; Tue, 25 Jun 2019 12:08:56 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkBU-0008Lh-QV
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:04:26 +0000
Received: by mail-lf1-x141.google.com with SMTP id z15so12393258lfh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 05:04:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=qaMXUDYaQbkfA/aFYOp4/KUjjMLF02gbGMper1ihtLU=;
 b=hzL+x2IW27oq3sq1TGhupbcTii2NiX96tsAF89JUZ1L8fw4vt6MDYgB08dZf+sgxa6
 U9hOdWr1tEnTx8VWWLWetTa7A9y+VGEc1vIOWLAaYK5Slo383ebCAEV/x2kXsQaaqNnD
 dWHdM6zgiK3S4tJWvLGOwCwo7Ks/4vSADiiJA0mg+dyhxRvtvZMWTpGa4nZAlekFKPpB
 VcnhWN8qd7iS65jVFAaZZ7k+cwfOw07gIXeBKufakdYFV74p/xsb3xhtip8aw3DbsVo3
 CuyuRtkuxj2AFREM7T31z3wsoWvzJi4Bhop+zlTPDNApaxZqxeYdKcrVZHqWduLcRNDv
 +GMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=qaMXUDYaQbkfA/aFYOp4/KUjjMLF02gbGMper1ihtLU=;
 b=He2LoMyy6Lssix3Qwxsbgta08mOmUubxC0tYxxHkDnuAzB2iM+pzHaGBUCpljCZOG3
 niKPqOUVHrQUU1bbmEVFaisEGagzkWS6tpBmzYVkdx1OzGbYgVEaVkeZ6t3eOhoEEciQ
 xiuLxMgZKn2d/gcpWNZRJ93qXu6gQE+ELqwcKJSMNDQizcRrd47aeMwKKUQAqmCp9e8L
 3jlShM70bGJAwVF2j3hrkLPJfF9OAdlrk4ubUHt1jtepUJkuWgD86IFtB8xe63IyCKFx
 AfwlNaIEFxPI0AWttH6hR9OzMyHyYIr4E/x40U52rFsHTkzB5jWxZjPRVwuaSTGuJvdQ
 ppcQ==
X-Gm-Message-State: APjAAAV3HnF2R+yiTsvBUqbPwdbWR6ifDbceExfVJQwDQ78FQn9yIx6l
 WTa5DGx/Y6Ql2QgT5F4dChjdUcmTSRs8Tg==
X-Google-Smtp-Source: APXvYqw3+IZrwAXuttlTZ919CE6QmLXUHXUZuhrMeXk7fL0gq/VgoOcj2HdW9stIv63Z9N4T5j6YvA==
X-Received: by 2002:ac2:546a:: with SMTP id e10mr31952181lfn.75.1561464262856; 
 Tue, 25 Jun 2019 05:04:22 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id b11sm2232279ljf.8.2019.06.25.05.04.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 05:04:21 -0700 (PDT)
Date: Tue, 25 Jun 2019 04:20:25 -0700
From: Olof Johansson <olof@lixom.net>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [GIT PULL] i.MX fixes for 5.2, round 3
Message-ID: <20190625112025.jtd7vgdxhav33wko@localhost>
References: <20190625011223.GD16146@dragon>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625011223.GD16146@dragon>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_050424_910611_4401E421 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stefan Agner <stefan@agner.ch>, Li Yang <leoyang.li@nxp.com>,
 arm@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 09:12:28AM +0800, Shawn Guo wrote:
> The following changes since commit a019ab40679715ea680cc8561a02888be70bc4=
e9:
> =

>   arm64: defconfig: Enable FSL_EDMA driver (2019-06-18 14:32:43 +0800)
> =

> are available in the Git repository at:
> =

>   git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/i=
mx-fixes-5.2-3
> =

> for you to fetch changes up to 3cf10132ac8d536565f2c02f60a3aeb315863a52:
> =

>   ARM: dts: imx6ul: fix PWM[1-4] interrupts (2019-06-24 21:13:27 +0800)
> =

> ----------------------------------------------------------------
> i.MX fixes for 5.2, round 3:
>  - A recent testing by S=E9bastien discovers that the PWM interrupts of
>    i.MX6UL were wrongly coded in device tree.  It's a fix for it.
> =

> ----------------------------------------------------------------
> S=E9bastien Szymanski (1):
>       ARM: dts: imx6ul: fix PWM[1-4] interrupts

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
