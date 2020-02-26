Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5485B1708F2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 20:31:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ieJaOjtAzlH2W1g2Fu/ZXWSpwgZDEgq85xS8zREpqF4=; b=UVBYt3LRNbFuWO
	w0N8fww7oRGLKE9OjDdwJOuldY2ReDUDJllmTX1IpuHkPPtCrkobqeFyUrQB1bEt4cWWeISzubpyy
	ViZJgIMnOeXaeGzXThea0EzKKAK/gGQ2lAwXUYI8WFIOXp25hTzGPh2VcpYB5r/fRG8LTizEqhdAW
	dl7VhCIr7cya0ypj+EwcMaJ+GnRrI2yGnK2ToZorviwpQC/eqKFGYS2FAQ3pNnbfHMRp4ztv9011m
	ZXZkM0YFZTOwFrrfXvqIL027gpbTihFfRARMhY3yTVM0tRf2A+cYZ/dytb+dGgj8XJPNFoijEVPrv
	T5cZ749DJkXT+ExUqUGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j72Ou-0006Ja-Fs; Wed, 26 Feb 2020 19:31:20 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j72Oj-0006H3-SB
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 19:31:11 +0000
Received: by mail-io1-xd42.google.com with SMTP id n21so385622ioo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 11:31:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5MFxJeomCczgXDzeNV9Xn+RHt64mPvJ12qZr3RbPrbU=;
 b=dWcCF8s4J9A+iP2iXoWcm3srPwjEatU3HdSYDIVsbNOiHHd7MtnwyuiE9mCNcHaGU0
 qwCoH2p/6/qrCzG/i3ueu4EZqypRCXV4NQTLYaswGjHLOJWyjjeUM9SXiYcQxeTrcELD
 ACUWcICt+Ximqv6VZnywYGgK6FeUCdHP4Ttig=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5MFxJeomCczgXDzeNV9Xn+RHt64mPvJ12qZr3RbPrbU=;
 b=XFT1SmpdKtyF5qrYZVBLgiN/Q8X8ZgwV8E1xTXHHHc2jcwx4S+ZQGLQukM8TSrQucJ
 oSZ70mUMjsFkdHcxuUOacyYGI/Y3du08dvISnJRtmN+OENpeA7ULMX62toGXc/NmDViQ
 FmNdSu3JBTCkr3p0hRIXsXjolWv18m27fgUjDWuSWjY7mt53efFBBs/+JgdnFmEQC1gE
 CQoTwHyJV7hMJIaQjGYM+rq/grNjzjH2xb91JRMjhXH7t7m0Vp9gov3LP3FvkzrpCpl0
 VLPJvt0Xv1kcqHVO3Uvxq0DtgUpr37E+ErzoxsZyjJtqqdN3f6pINAQO6LMq5FjDhe/L
 mCFA==
X-Gm-Message-State: APjAAAUgtRZEvNQr35Sr+drYtr0xp1Pi+L8KjsnWW4YhBb3tVfMysSB4
 XVzPs/8zfP3hDzvGrd49HQIos98CxwNeuA/klM7oZg==
X-Google-Smtp-Source: APXvYqwm7wEEXPS3MuEPhTwwGRUEbcd/4WOJm2XgfK0kRKisj4w+h5pA1wDFpztH3aEcTh+AhwR4v0v1+qCPqLGRK8w=
X-Received: by 2002:a5d:8955:: with SMTP id b21mr146927iot.41.1582745462529;
 Wed, 26 Feb 2020 11:31:02 -0800 (PST)
MIME-Version: 1.0
References: <20200221053802.70716-1-evanbenn@chromium.org>
 <20200221163717.v2.1.I02ebc5b8743b1a71e0e15f68ea77e506d4e6f840@changeid>
 <CAL_JsqL94vtBEmV2gNWx-D==sLiRXjxBBFZS8fw1cR6=KjS7XQ@mail.gmail.com>
 <CAKz_xw2ETZ5eyNfdWU5cF6Qy23E1NqhpFHoLT_CzUDHWTCbw4Q@mail.gmail.com>
 <CAL_JsqLYpSK6HRT4s=hq153xvU_aiPCq3Hk_oZC-7X7e7daA7Q@mail.gmail.com>
In-Reply-To: <CAL_JsqLYpSK6HRT4s=hq153xvU_aiPCq3Hk_oZC-7X7e7daA7Q@mail.gmail.com>
From: Julius Werner <jwerner@chromium.org>
Date: Wed, 26 Feb 2020 11:30:51 -0800
Message-ID: <CAODwPW_FR0gHO_=yfCPwETXvKG9CvgvPddX-EOT=OXDPEkp_Kg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: watchdog: Add mt8173, smc-wdt watchdog
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_113109_909649_E18BBF08 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Evan Benn <evanbenn@chromium.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Julius Werner <jwerner@chromium.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 "David S. Miller" <davem@davemloft.net>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Not quite. /firmware is generic container. I'd expect another layer in
> the middle for the overall set of Mediatek firmware behind smc calls.
> Look at 'xlnx,zynqmp-firmware' for an example.

There are no other MediaTek firmware interfaces described in the
device tree on those platforms. Is it okay if we just call it
/firmware/watchdog in that case?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
