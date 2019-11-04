Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5443EE3F0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 16:35:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zHzpN1/SICF2O+TicXcVNSeo/0siwTNsdwiEEQIg/IM=; b=pmUP6yqMddWk1K
	AXl7FSKvr419YjHkGMHvxW43yUDfJr6JQzl8hFMXYkAKa8789o+NX0S6sDCdPqnb++k/plXNQ3Ibg
	7AOy2lYPFW/th2zWgORuNJTwQxcIHaz7KRUIsOIjtnPMk9CfNWpu4YMvKoGCnWf46YKVrpO8XiZSo
	gWzWdQrz+QeMYx5l0PbkSSY+/FcJQpMPLzs+9PdECz6lROuoLIkama6V2dH00OT9ZWGe5eKZO8D6s
	wPr1N0vfKTjwJqn24LzbuEVDxr3BPtLDg1LIPLp79nCLv9eZ2/niuoEqQM3H2diVESXWK0237EhP3
	2ozeFqa7tvo/HmJ3xSdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iReOZ-0006ux-2m; Mon, 04 Nov 2019 15:35:55 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iReOS-0006uP-8D
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 15:35:49 +0000
Received: by mail-lj1-x243.google.com with SMTP id m9so18091028ljh.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 07:35:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2gHuiLO7og745XJNw3g0G5hTaWSPN2O4Py1ymt1s8lA=;
 b=vb5swnB0Zimxbp54PAEDpN3fc2ntGzlfDiHa8SXTG2MOqiyFiNssKaM/gRQWP/VGa6
 pdHMrlrzamAiYWXRgNhIJ8ixJOHZYktydfH6ch0OVlSO2mtEY4czBLE62CrphXEbV5Ao
 oxG/y8hTaGG5uDF+I2YwBu+uL3nP4rbAomHLh/888PFfgGdhDDagdDCj0+I6Y5gjz1b5
 4zTNIbX6tPYatPkizcnBfwQLe7Dz/Q987/GLd+YtMq7M1sykhoUelbIsiVbZFqmUIAyB
 vnpVglev5zvAIR89jWwrUcUCZPfxDHP2GgpFk2CRRHyR7sw8llAV9pwP2PduTQMSBT/Z
 wBNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2gHuiLO7og745XJNw3g0G5hTaWSPN2O4Py1ymt1s8lA=;
 b=Zq+4zT8gLsniJb/pBYUSV4vgYanBvYbmK+4pWxxGj/jiGo6BmIcuUAwhI+UYBr7qTy
 G4peZMwGbkTnVSos5P7WQEs6sTvn/l3HlVK9CU0ZVoIKL+jh/MyFFYnYRgAiUWcvTBJw
 DMT07bpqREotBXDJYObW/sxjGR9FxsYQmJ4ZlfYGkTtKsXklYLD9n+DuECbkLmRx7cKQ
 qGX0FyDM2XBD4zXi+j9mkNu6UVo+0o/EjkKxpMK7fTw9LBlE3fCl2pExvghLW1BsJIiH
 /ztgRenSWo+h2CyjEK3wkA0SALJI/YqgP8pmSSiTR+/ZEWw4MEPqUN2e7w1bJ4v4vaiO
 DvLw==
X-Gm-Message-State: APjAAAUtLO8KKxQjWagqLteoYEOHGz8JJ7+3x7VJOLWWJCBewVeOppz0
 EH3dtuwQXXDDISpx8vNVKioUa5s4+yO9HuUQKad7cw==
X-Google-Smtp-Source: APXvYqyQYB/lSdek2O3HcmnK0Sy6vuSnsziarHtWr7U82KwjasLBk664GvWgm//Wp0sc1sz+wrYTLu0epXxiUArFPCo=
X-Received: by 2002:a2e:161b:: with SMTP id w27mr19390165ljd.183.1572881746505; 
 Mon, 04 Nov 2019 07:35:46 -0800 (PST)
MIME-Version: 1.0
References: <20191022160806.42971-1-mripard@kernel.org>
In-Reply-To: <20191022160806.42971-1-mripard@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 4 Nov 2019 16:35:35 +0100
Message-ID: <CACRpkdbf+RPu9FGp+cAhEJFdXNXdXvmawFCwTyi3t9+4F-yLkQ@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: pinctrl: Convert Allwinner Pin Controller
 to a schema
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_073548_414028_496BE182 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 22, 2019 at 6:08 PM Maxime Ripard <mripard@kernel.org> wrote:

> The Allwinner SoCs have a pin controller supported in Linux, with a
> matching Device Tree binding.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>

Patch applied with Rob's review tag.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
