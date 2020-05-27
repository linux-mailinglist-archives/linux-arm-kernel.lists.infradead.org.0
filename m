Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 878151E4B18
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:55:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ErQ92GV6vU0dgqGVmbVwXL60kN3ERNBCRDO8fAP6e0=; b=hrPU+9La7pFasz
	yYKnF1GdMVG8w9CXI7lr1DfRFOG9vCLeiaEMJgR6BHaTG2OgkB3by26YgT0Ifye7i2apixoe+rvrZ
	lCXJnB1/95kxEIR+oHj1m2z7BGSJqj9o7timr11IJvUo7VrQO2dQx4kxOr1MPs4EGYIcQUvLHwjgP
	cGowcci3XiEZXo1ZroSewz3gCgorOrVBhLzST2TnLVi/Fpix0azfSiFEjfROCwCeRBp13dEewyQfz
	TZ/rSwJuEIGD1d2/l/O1n5cAkNIZaIqb6S+hnYJj0f3gA8yBlInuKZYt7nPFp3s8gxVdOb5fHHMc1
	bsHgq46emUQjYUHzhQhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdzKt-0005Yl-AB; Wed, 27 May 2020 16:55:23 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdzKT-0005Wb-4B
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 16:54:58 +0000
Received: by mail-lj1-x242.google.com with SMTP id q2so29758240ljm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 09:54:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=anholt-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LHmWtQ2TkLP6OGqb3OSxb7myh0DpkLphjU9/234BIPw=;
 b=QS/DeL/4agLgqn43tz2d+1Pv+Wcw+zCxwuarjwcFOqdidEhljsODcljY+PQD4MZcez
 6mcT5xo+Glj6Ozfyadq8H8umAzoBhXKuPdW8HcoZ043jES7AoSHHYu2QJvNfDbke8WKE
 Sd1361f4h8VU3lrRB8HNQrWQJqedcEnX0V0GYfKC+d5yU8R52r3f8aEWrcwoJJo1Lrm1
 rrlOSWgksgreXzlsXtCWma7ALPvRuCLrWDRnRqvsvYq0cqxGjb/3xHPbS33yS/6CjUiS
 7Vbd2apZUjCw2NVUJTdQpNzUFRkW7nKRLrAvi1n05Ykl31i8DWeWBLHOOz7xf4ILLl7/
 7SxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LHmWtQ2TkLP6OGqb3OSxb7myh0DpkLphjU9/234BIPw=;
 b=pKHBygJtuj56s3tKRzKt53ku+y8IGxIv6Jvvj208y+Ftbj0NoMZF5Aa1OmIdKdI+DZ
 oUxJxTY+1URHpabZttWEIUrXt7jOYIIqwxewT4Mz/+Oids2kcNUMzELPq01dEjIozBom
 ne92kYq6zv+URiYdVOqqzbQgYVWzMgRL8+OC8CQ/2m2vsvKKE9Mg//tfIUsMMBaU+ONw
 A2mTZB2mLG6yiIaY76TcTx5Tytryo2us9S73egIXIXswxv6kGxvsyNv5qCPDTMWLwmpm
 p1GjG3RLYsyiX/SRT/99bGOz+LlOBRgyWVRSfwf5OW3rNZz0guYltPuD59Khoe3zFVFV
 nZ8A==
X-Gm-Message-State: AOAM5323ncyhFk39+Ev59n9IwoscJsZQzrnAR9+BZkNbVHkjt+D7m/2n
 fllBfWGoOhDc8k2AhhooPQKMPaVDCLJP0P3/75zx5Q==
X-Google-Smtp-Source: ABdhPJzmJpMkCosVV6yjOyPlOezLCCBsNT9bqO2Vj1q1MAS7G8wJ94i7BKM7SJjLa8tONQ+EvxtbGKO7THS1xmZmk4Q=
X-Received: by 2002:a2e:8186:: with SMTP id e6mr3672178ljg.252.1590598495776; 
 Wed, 27 May 2020 09:54:55 -0700 (PDT)
MIME-Version: 1.0
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
 <d2c1850e38e14f3def4c0307240e6826e296c14b.1590594512.git-series.maxime@cerno.tech>
In-Reply-To: <d2c1850e38e14f3def4c0307240e6826e296c14b.1590594512.git-series.maxime@cerno.tech>
From: Eric Anholt <eric@anholt.net>
Date: Wed, 27 May 2020 09:54:44 -0700
Message-ID: <CADaigPU7c=1u47R9GzvGCH_Z2fywY1foGYEy=KbBikjUQpwUFg@mail.gmail.com>
Subject: Re: [PATCH v3 032/105] drm/vc4: crtc: Enable and disable the PV in
 atomic_enable / disable
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_095457_191580_5AC3C735 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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
> The VIDEN bit in the pixelvalve currently being used to enable or disable
> the pixelvalve seems to not be enough in some situations, which whill end
> up with the pixelvalve stalling.
>
> In such a case, even re-enabling VIDEN doesn't bring it back and we need to
> clear the FIFO. This can only be done if the pixelvalve is disabled though.
>
> In order to overcome this, we can configure the pixelvalve during
> mode_set_no_fb, but only enable it in atomic_enable and flush the FIFO
> there, and in atomic_disable disable the pixelvalve again.

What displays has this been tested with?  Getting this sequencing
right is so painful, and things like DSI are tricky to get to light
up.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
