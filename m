Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A8911BCD7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 20:25:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y1NrlNDNM/pPttL0n5VtHHLdml+3h+kN9liBSBrzCRA=; b=Lm3CqTqeKFdVP4
	HlV5jn+mVUAMhyjgk5k947VVD2HhPpfTjhbV/m+RbbLUYvjcX4uJ6eVxr9Wj8Mwp0gn7AXeiBtRwZ
	Nb2lKwf8ola/sDM2+8t957qrE6wQSCSYAUMAkew2EOtqBA2VO/73MBIuYgPUR3rMxmMdUicuBmNu8
	m+MGOpC1gm/jSqCJfW+aMIY1hJD1uU07mDushmlYIyo1tr9Og7mvI26N9aA0ID+kgWwXxsA85lfL4
	sywhjmZZvfjJWsQ+C1ML/t7udqaRt64d76OYXY8ey88WqIfDkX5KRJ1asxbSjY43uDCY3ym6NdC8B
	iDgUcKeLG5sZk3kfyYpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if7cL-0003JH-IO; Wed, 11 Dec 2019 19:25:49 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if7cB-0003Ic-I5
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 19:25:40 +0000
Received: by mail-io1-xd43.google.com with SMTP id c16so2601078ioo.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 11:25:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AuPspogaaJ+YoXMUXjj634J3GCNOXTkD4GxSk/Fu5dA=;
 b=Ov2+zkYxARX/4G2CFUTDrTcWVYed0ALV7FAdS21qi5jU0vfvH/ZWc6qkFyMVL/CgBS
 +ER5AJeTdE2I8ujQ4UsDX4voFpXv0+pzIzsxksN+QOO5l1nU9CKKyJSKVKsZifYCWudi
 aNB4asF6dcNFFMM2FGpYupn60GCY0GLjGLUsA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AuPspogaaJ+YoXMUXjj634J3GCNOXTkD4GxSk/Fu5dA=;
 b=Cxk5CkbXUVPxsuqWuIfd2jGuXvapiC2eLHy9Ra10++6K+S87MYvHSCJop+JFKHOc/T
 JBMoO84emarCSBZKVlYB8rrCs1ym6A58t5Ww8vGavMfvxmB2Ho/AClDfcduFLXnfIi/N
 hP6cR3r9uUuOkw72EO8jsxKGYKP9bgKXjYxJakCZWdvCoBdELJByjcEZ4nBe4P0BaMmT
 h2l7OH5x/eHekKJwaejObOnT5O6s0A9+RA5ncWMvgWzZOwKFZE9igdGIsjEDfsVYA/IS
 zsvE4aw054WLZ+5u/jFDZV587sGqV1mwvaI6P+jYWGvK8fBNy2Hkde47IL9XIe/GoJos
 3jjw==
X-Gm-Message-State: APjAAAVLUkppxpadxJvJshVue/kGmfpTQ1nNc9JG11K/eR8l+e7KdiFW
 +pf7sf1AGdzS3+vEgP/+33m4u7KTXdg=
X-Google-Smtp-Source: APXvYqx9BMKHEWaO23ampIFwDBI7ghDOcGQZDUZn69DO0CYJEQrpWctQiiMFHW/9XsKsRZ3OssIkSA==
X-Received: by 2002:a6b:4f15:: with SMTP id d21mr3718104iob.190.1576092337091; 
 Wed, 11 Dec 2019 11:25:37 -0800 (PST)
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com.
 [209.85.166.182])
 by smtp.gmail.com with ESMTPSA id m65sm970941ilh.23.2019.12.11.11.25.36
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Dec 2019 11:25:36 -0800 (PST)
Received: by mail-il1-f182.google.com with SMTP id u16so20460339ilg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 11:25:36 -0800 (PST)
X-Received: by 2002:a92:d581:: with SMTP id a1mr4302609iln.218.1576092336013; 
 Wed, 11 Dec 2019 11:25:36 -0800 (PST)
MIME-Version: 1.0
References: <cover.1576037078.git.saiprakash.ranjan@codeaurora.org>
 <0101016ef3391ded-57772416-f32d-40e8-acb5-5dd1b6064f73-000000@us-west-2.amazonses.com>
In-Reply-To: <0101016ef3391ded-57772416-f32d-40e8-acb5-5dd1b6064f73-000000@us-west-2.amazonses.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 11 Dec 2019 11:25:23 -0800
X-Gmail-Original-Message-ID: <CAD=FV=X3Akg07hetQOgd0P_wTVWs3QpuCNQ8O6qQ5LK2ZeWSaQ@mail.gmail.com>
Message-ID: <CAD=FV=X3Akg07hetQOgd0P_wTVWs3QpuCNQ8O6qQ5LK2ZeWSaQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm64: dts: qcom: sc7180: Add APSS watchdog node
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_112539_622765_3CFB067C 
X-CRM114-Status: GOOD (  16.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 Guenter Roeck <groeck@chromium.org>, Stephen Boyd <swboyd@chromium.org>,
 Matthias Kaehlcke <mka@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sai,

On Tue, Dec 10, 2019 at 8:30 PM Sai Prakash Ranjan
<saiprakash.ranjan@codeaurora.org> wrote:
>
> Add APSS (Application Processor Subsystem) watchdog
> DT node for SC7180 SoC.
>
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> index 666e9b92c7ad..a6773ad3738b 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -1038,6 +1038,12 @@
>                         };
>                 };
>
> +               watchdog@17c10000 {
> +                       compatible = "qcom,apss-wdt-sc7180", "qcom,kpss-wdt";

If you haven't already done it (I couldn't find it), can you please
add this to "Documentation/devicetree/bindings/watchdog/qcom-wdt.txt"?
 Presumably at the same time it would be good to change the format of
that file to .yaml.


Unrelated to sc7180, but it also feels like something is awfully
screwy here in terms of the various Qualcomm device tree files
referring to watchdog timers.  It feels wrong, but perhaps you can
educate me on how it works and I'll see the light.  Specifically:

1. It seems like the same node is used for two things on other Qualcomm SoCs

If I grep the bindings for "qcom,kpss-timer" or "qcom,scss-timer", I
get two hits:

Documentation/devicetree/bindings/timer/qcom,msm-timer.txt
Documentation/devicetree/bindings/watchdog/qcom-wdt.txt

...and, in fact, there appear to be two drivers claiming compatibility here:

drivers/clocksource/timer-qcom.c
drivers/watchdog/qcom-wdt.c

That seems super odd to me.  Is that really right?  We have two
drivers probing against the same device tree nodes?  ...and that's OK?
 If so, why does only one of the bindings list the SoC-specific
bindings names?


2. The actual nodes look really wonky.  A few examples below:

2a) arch/arm/boot/dts/qcom-apq8064.dtsi:
compatible = "qcom,kpss-timer", "qcom,kpss-wdt-apq8064", "qcom,msm-timer";

...why is the SoC-specific compatible string in the middle?  The
SoC-specific one should be first.

2b) arch/arm/boot/dts/qcom-ipq4019.dtsi:
compatible = "qcom,kpss-wdt", "qcom,kpss-wdt-ipq4019";

...same question, but in this case there is no "msm-timer" at the end?

2c) arch/arm64/boot/dts/qcom/qcs404.dtsi
compatible = "qcom,kpss-wdt";

...no SoC-specific string at all?


Thanks!

-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
