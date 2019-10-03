Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C2EC9897
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 08:50:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8AZIt9afs5xtcHLteItNJvWirGa08IlEpt95h0BPxsM=; b=VQ3SHozHqKCIWB
	xbCnxuEl6bqCntECw64jpv4SPGAg11q7QVY0/htqxNohbo0zBV9F1p7NIPKX3wciePmp3qCF+dqIL
	DTL3LG7xdQHf45JYo0+mRo1A6xCo1a/w/eUNfA0p7xkNdA1H70uHYSvZWUvykU5EtkqM/oJks+z35
	8epdBR/gF23ckGAftH5Oq8MB32rtBbXvT0/KFrxzJIB7oSsb7UOhph3CbycIQHHRMEOCEiJam3kLz
	jKELKPhrAGSWCgAu5GWTrNXRIm3qwUkexD1wues870RDHYIQdYzaMOwoZbU2x1obOIiO7DO+UK6wt
	6tNEO5bfsCztJ8cU9Jdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFuwi-0008RA-IM; Thu, 03 Oct 2019 06:50:40 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFuwZ-0008QV-S4
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 06:50:33 +0000
Received: by mail-io1-xd43.google.com with SMTP id c25so2953504iot.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 23:50:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tt/S1MK2hfNRmcchY+VX0l8ftGF+jAU5aVZJF+oZt2U=;
 b=it//+pUV0o+AfLtqgd58MPT3/eGz5NZ/3fJdCcTXH9p/mKoqt8vNSKVtRXo25SyElS
 ubjXKxRDSeAb4aFRKo/9jZCkbm00Q4lM4bVPvOUs6Y+y+15CztcT7PA8pPFcNzG3tmlC
 Xla/5zwL8a+0Cm7HMHu0mixFm6s4bazOxYl0E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tt/S1MK2hfNRmcchY+VX0l8ftGF+jAU5aVZJF+oZt2U=;
 b=as9h4QafGCEw3keECJOqlfxNkH17R9buRsrSVlMAe1T7zzIOHUkY5EMpj3CfFxqyxO
 h/UD4Nq8fTpIHAABCvhzgh0GGy2gOuJBjhdbsTNRR+DMFTTV1fHp05kPWrDXiQZyXOnK
 +1+/pExxKROjHuDqQrDh9Nl9jvdXOI3WJ5q6jkfm5APi57f6FfmYb5gd3R/qPUSQxBo5
 y4owHfbY28dXWFN3meGOm09agnHhbVuweRGaJOXQ8oJj7qwbJmBHocLvC6Ej5GY9mGW2
 s8w8ue+zPXfykPykLbfkKSF2YeDcC3+H6z8zT6mOslrxXIMNLLHeMSqPactGTbsGbRkz
 qGQw==
X-Gm-Message-State: APjAAAUwwIrnKKrCNTeo7anbg7pfpTkbrbsQC63YPcvgr6da6smDqE0T
 L0Ex1c742/ONBa/YT7RIeGLSfnUPKtYRIrWXacM0DQ==
X-Google-Smtp-Source: APXvYqw9C5okno4/FEmbGgjCtziH8L0ligLd5zphx/vdqtLp/tQvohb/XmjYoGGwm1th0cj3JsX+zL0a2/erxOU/7LI=
X-Received: by 2002:a92:c74d:: with SMTP id y13mr8565455ilp.77.1570085428660; 
 Wed, 02 Oct 2019 23:50:28 -0700 (PDT)
MIME-Version: 1.0
References: <20191003064527.15128-1-jagan@amarulasolutions.com>
 <20191003064527.15128-7-jagan@amarulasolutions.com>
In-Reply-To: <20191003064527.15128-7-jagan@amarulasolutions.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Thu, 3 Oct 2019 12:20:17 +0530
Message-ID: <CAMty3ZD95L83dzsBwNghfahZ2mfmmOn0iA40t534i91UN7P_uQ@mail.gmail.com>
Subject: Re: [PATCH v11 6/7] drm/panel: Add Bananapi S070WV20-CT16 ICN6211
 MIPI-DSI to RGB bridge
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_235031_903546_B25027E9 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 3, 2019 at 12:16 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> Bananapi S070WV20-CT16 ICN6211 is 800x480, 4-lane MIPI-DSI to RGB bridge
> panel which can be used to connect via DSI port on BPI-M64 board,
> so add a driver for it.
>
> The same panel PCB comes with parallel RBG which is supported via
> panel-simple driver with "bananapi,s070wv20-ct16" compatible.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  drivers/gpu/drm/panel/Kconfig                 |   9 +
>  drivers/gpu/drm/panel/Makefile                |   1 +
>  .../panel/panel-bananapi-s070wv20-icn6211.c   | 293 ++++++++++++++++++

This would be an overlay patch, which doesn't need to mege. please
correct the same.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
