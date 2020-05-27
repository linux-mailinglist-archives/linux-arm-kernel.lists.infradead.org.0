Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 169C91E4A8D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:41:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C0qEXpq5BxWASWAnt4GYQArwrN5/FG9/48K/Gcjdhc0=; b=ky+sX2t/JNR59U
	VAJEpACdabSavX9CAS+Ypp8QgMVU2omfgthq+GTjGH6Czsa+LyoZhRjrq6qOg12sUy5iffpLfTzSE
	B99xLoZ60N/DTt6ltuiuXi99WP6ew40dhAM90DapMd8cPNUDmtEm26Fu0wQr/riFzXNXEXRzEVzD+
	3SC9Bkt6trK4N8aX/6HdiWczQ509TJztKIKdeMoKeLZiEP+3zyGx1syVQJ+49BSpHnJFgwgeKjD3p
	DPuB6+85kncxIGd3plB9WsygzFg6h+CqIhkqW9a36JsbelYTtI5/ezkvUHmf+W4w4o7ZYMkOYJuKt
	yGTGVj/QO/Sbw7ohl+9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdz7m-0005O4-Jv; Wed, 27 May 2020 16:41:50 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdz09-0002Qq-1h
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 16:33:58 +0000
Received: by mail-lf1-x142.google.com with SMTP id r125so14803293lff.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 09:33:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=anholt-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4R64lQECAezSIekk6lfrKMmFFora0mq1CFEKW++lIpo=;
 b=XqQQSknDXgHqnwyIRF1WdjWReCla6ArE+ipVeGU+Y0Fs7zp+DK2ItCI09Dq7gx/Dyj
 hJf8C7JzYXLFFiEFPSIdtpTmPXi2couBReRwKrfpziAgeR25ImfBTsGCqZ0900Sg420V
 z/54ca6O8t7uoH9d/pihKqLAZOuKmtUV7Yi6dH5K8BbubPM8Tvv2W8Pxcgdx5oaFi4dZ
 hDRBsfqV/wQ0coxuFblYgulLkwiWqgTgOJw/n3rvVaXBhvE5H8wI2VlOwvKt27ojlEeO
 vURwwXQwETHDoE/k0iaYAURYW/tVRFO8RSQLJtspA+gHvGUH0NqUsG7wshy4+xfs7f5W
 2WJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4R64lQECAezSIekk6lfrKMmFFora0mq1CFEKW++lIpo=;
 b=WalcuG1C1PRDK1w85R4mp6jSv81mSHvn9vkb2Iy4uymXY1npXcwwrw4t2mHxvSlvWW
 8amLjVboASu2NjIjzsJnYLbC0GbVy+XTdVgMrm7vH4DoVo4V3fp+XIqxDHrF/Kj3KfyV
 pbjSw6+IZcBlegg1qOmcSX2HVAW2Rms6YQ6bZZIOn+kxqd3zg7u0shu1/KtWsYO18/XH
 YesXLsZQY/NpMBF8i6aF/il/Wm1rOxDav7vXtro3hQp9qtKdgcLAvCphxnNPehKmvXjb
 TZ3mZPH/RsMPiePJgfPVdnZjo9YwLsO4Wj6MOAenoqzpi5a28gSfmilV2hrApSlTQvfG
 WWwQ==
X-Gm-Message-State: AOAM532UipqCF79sA2EK51ZBqO+ROF6+siJ1aUke23ZmWKP4OJo5/UXe
 1ZCXbu1+xd26kskIrNE11YFhyZQt5pwmMISn2Nkk3A==
X-Google-Smtp-Source: ABdhPJzJGyZZ6OFZilVkNjwkWI14qi3Sk9vJd3/Q9ngB/1XlT/NI9vsgFlwoXIDHHg0zMevhGY3B/9Qh957nmNFRnN4=
X-Received: by 2002:a19:f813:: with SMTP id a19mr3516133lff.212.1590597235190; 
 Wed, 27 May 2020 09:33:55 -0700 (PDT)
MIME-Version: 1.0
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
 <1aaadf9a5176591c891622cb00b0c50f42e569dc.1590594512.git-series.maxime@cerno.tech>
In-Reply-To: <1aaadf9a5176591c891622cb00b0c50f42e569dc.1590594512.git-series.maxime@cerno.tech>
From: Eric Anholt <eric@anholt.net>
Date: Wed, 27 May 2020 09:33:44 -0700
Message-ID: <CADaigPWQdeTd2CGCK-yxq+TAU6xKMVsdZfhSVptn4RSENxpdxg@mail.gmail.com>
Subject: Re: [PATCH v3 015/105] drm/vc4: hvs: Boost the core clock during
 modeset
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_093357_126417_3289C1BC 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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

On Wed, May 27, 2020 at 8:49 AM Maxime Ripard <maxime@cerno.tech> wrote:
>
> In order to prevent timeouts and stalls in the pipeline, the core clock
> needs to be maxed at 500MHz during a modeset on the BCM2711.

Like, the whole system's core clock?  How is it reasonable for some
device driver to crank the system's core clock up and back down to
some fixed-in-the-driver frequency?  Sounds like you need some sort of
opp thing here.

Patch 13,14 r-b.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
