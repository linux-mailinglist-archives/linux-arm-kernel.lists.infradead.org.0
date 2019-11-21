Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF9C104AED
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 08:01:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c+K74Nm2nWZY4HtwlQw/Tq6tCxUscOHPNXxmyNaQZ+s=; b=deFuhv4g8IpVJ6
	FWdp53Jhh15S4UB9DIRefQ2t/fjF+D00BSeZnG3zs3MIVR9gBsTNhsNwyBxXgqsiaMKE3uUG4AXKH
	r4xLU2vFTFY2isN6lZFNR7i0N/rp+8ej+ZYN6jAaL6KZe8brPCaFHyK74CTv8IhWS0O8TTr6Gwd/D
	ok6jRcCj0TXvfq5ITXKMRs9S3R1pWVuIxtS+GHPiOz2zumaID023pXSnMUMYY/Eff/I8ZI2Ri8qw1
	8w/meaEC0LMYWMtFef1lqte94qauuPHkOiyzIraI5PNeOERqWxGvU78CtUIv19EqBM0DXPy3Uze3H
	dpMWTpufi7E+Gf2S6CxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXgSn-0005qD-PQ; Thu, 21 Nov 2019 07:01:13 +0000
Received: from mail-il1-x132.google.com ([2607:f8b0:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXgSb-0005np-Q4
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 07:01:03 +0000
Received: by mail-il1-x132.google.com with SMTP id p6so2283091ilp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 23:00:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=70XhVJoIf0CSjHrTRztFdyaZcM5N+1vNz44dhwcRPXw=;
 b=SLYBtyriQY7seuHEQlL2JSt3ilAFTLCs46gN0dKVPB6PjkBZRqNh7NltQlrIcE52WM
 NS1NEPu5eptOkKJvpE2HSpv/lFbdetda9B7b5w8JK7jknek+pKEqkv06FYxZ3lzN0R6J
 Cwg+Cbs8vlomam8/SjUZutICyodcTjUUrT+50=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=70XhVJoIf0CSjHrTRztFdyaZcM5N+1vNz44dhwcRPXw=;
 b=WjhNfHlQwM+RRQySs5j8c3fLeLb/hracuoJ/hmsagj+hCcrL7OxAo65cjEzcNUE2rF
 Zw3+j8uL8FvLLnH47nB/44/EKJ/m0mLMmvs0AfgHrb+PFcruHExPyQDu8w21NaFYbdNd
 BKFh6YGWivpSpFEnXoPP/3HZMWwOsq7C+34lgZxBXgxPmUWP4R2SbJ0xGuL4F9NIT1a1
 K+vxAp8KNZChv2NfhfyYWhj7RLInO8mYQm9ps5w7hfve+js+yNGZAxukKfMLQ+5KhrlC
 cQydxVhEDzC4bOh7hf62L/BQEWHpEJ0p417KGLftzh5XFiyi1TxeXE9/vjStlZdoqsDc
 iQkQ==
X-Gm-Message-State: APjAAAXmRMJxADLuYSz/c/twPr8Bpkw7iPMUR376yiGGspCIK/ZAPjMB
 qcRKR/eY5JugpPS0r6EamLaVA7pTWYzOPBXyQn9uAw==
X-Google-Smtp-Source: APXvYqz3PHqe/dC8SrMLZ7oJb4SyckZc5EJzgX4VS4wAMnE4d3D2dWe3D5r10a6CIdA4f7qoQvzM2VsFlosI14iwemI=
X-Received: by 2002:a92:5d08:: with SMTP id r8mr8154845ilb.283.1574319657713; 
 Wed, 20 Nov 2019 23:00:57 -0800 (PST)
MIME-Version: 1.0
References: <1557494826-6044-1-git-send-email-michael.kao@mediatek.com>
 <1557494826-6044-8-git-send-email-michael.kao@mediatek.com>
In-Reply-To: <1557494826-6044-8-git-send-email-michael.kao@mediatek.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Thu, 21 Nov 2019 15:00:31 +0800
Message-ID: <CAJMQK-ivho3T1hnD9axV2EMKT3Srs_5zAXLqwts8nojY15fBGg@mail.gmail.com>
Subject: Re: [PATCH v2 7/8] thermal: mediatek: add another get_temp ops for
 thermal sensors
To: "michael.kao" <michael.kao@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_230101_889746_47C89D82 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:132 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>, linux-pm@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 lkml <linux-kernel@vger.kernel.org>, Eduardo Valentin <edubezval@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 10, 2019 at 9:27 PM michael.kao <michael.kao@mediatek.com> wrote:

> -       tzdev = devm_thermal_zone_of_sensor_register(&pdev->dev, 0, mt,
> -                                                    &mtk_thermal_ops);
> -       if (IS_ERR(tzdev)) {
> -               ret = PTR_ERR(tzdev);
> -               goto err_disable_clk_peri_therm;
> +       for (i = 0; i < mt->conf->num_sensors + 1; i++) {
> +               tz = kmalloc(sizeof(*tz), GFP_KERNEL);
> +               if (!tz)
> +                       return -ENOMEM;
> +
> +               tz->mt = mt;
> +               tz->id = i;
> +
> +               tzdev = devm_thermal_zone_of_sensor_register(&pdev->dev, i,
> +                               tz, (i == 0) ?
> +                               &mtk_thermal_ops : &mtk_thermal_sensor_ops);
> +
> +               if (IS_ERR(tzdev)) {
> +                       if (IS_ERR(tzdev) != -EACCES) {
                                PTR_ERR(tzdev)

> +                               ret = PTR_ERR(tzdev);
> +                               goto err_disable_clk_peri_therm;
> +                       }
> +               }

This for loop adding thermal zone sensors will not work for mt8173. It
assumes that thermal-zones in dts have subnodes (eg. cpu_thermal,
tzts..) amount equal to num_sensors+1. Otherwise tzdev would be
-ENODEV and thermal failed to be probed.
In mt8183 this is fine, since each thermal zone only has one sensor,
but in mt8173, some sensor appears in multiple thermal zones.

In order to let the change also works for 8173, I think if the error
is -ENODEV, and the id is not 0 (0 is cpu_thermal), prompt a warning
instead of failing. Eg.

                if (IS_ERR(tzdev)) {
+                       if (i > 0 && PTR_ERR(tzdev) == -ENODEV) {
+                               dev_warn(&pdev->dev, "can't find
thermal sensor %d\n", i);
+                               continue;
+                       }
                        if (PTR_ERR(tzdev) != -EACCES) {

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
