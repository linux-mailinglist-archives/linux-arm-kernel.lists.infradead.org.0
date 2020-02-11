Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBBD6159877
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 19:24:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pSQeamvwNAepNfxFzMRTtehnNcJhCzo1Utf4Sj3fzL8=; b=CE6bzsTTKM8LVt
	mwnGxIRHKBBgcT94puZUP6t37P9xeuRcqyU+rPv+JH3GxI1NFOMxbRC3MgVJOxAkn7lmqxAOL2XYX
	PovxyqPbhIg46rPAvDFxrZynlJ+RPGILR2We/Vzcfm/gr/Ri/xk1GMzfTT2V4YPIG7Bu+hNwHDf3u
	sGFOjKgIpCZW4qEJqVe9e+01kVpar2xGMa9vyKel+El13Yj6YDn3htl+DmGbSQ8vK3flGNHuOfdkv
	3RxLYKR+6+q1W0rVcqu65cAgHOiWooCHgtS1042srmPqZeaf0An7mKrCipZYiNQR2UR01eZa76gNI
	cMkBn4yqM+DkxpvyfPJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1aDO-0002dN-7y; Tue, 11 Feb 2020 18:24:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1aDH-0002cw-13
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 18:24:48 +0000
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com
 [209.85.219.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 820D5206D6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 18:24:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581445486;
 bh=15RkB8/lsxkdGVyrfUT3PmibNwKSs3pakIPq9O2QKGA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=A8Zqm6fJP2FLzduLIBDokEhN/2d/UrH1tTPxjD5ihd4BFsmr4U+TmlhZKIyLl5OeE
 y8tyZK1Z+LwxdaT3JO7a63fwdEV45iurNjgynCzt3Az2dG8qrc/SS5bt9W9L6m3vm8
 E4RlmQ+12GEi7n7znDshSniOcw1AMCbrmborQU5w=
Received: by mail-qv1-f44.google.com with SMTP id db9so5456272qvb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 10:24:46 -0800 (PST)
X-Gm-Message-State: APjAAAU3KyloD0gcH/00nkJ5nLDpVB3uazuxXaRhRtf184Aw05UPlfNg
 fuRXoCqN/RWofw8/Vo2zk6jdeojEjFgnUrSp+w==
X-Google-Smtp-Source: APXvYqxfEK6hEL7IX2KvoJP4sjzXqu7vc6OB5e1z94Q1gXnPXU2WIumcI1fS/UN5s1vfda4olh8aSlNY95DTbeSQkqo=
X-Received: by 2002:a05:6214:11ac:: with SMTP id
 u12mr4114530qvv.85.1581445485691; 
 Tue, 11 Feb 2020 10:24:45 -0800 (PST)
MIME-Version: 1.0
References: <cover.1580570160.git.saiprakash.ranjan@codeaurora.org>
 <ff71077aa09c489b2b072c6f5605dccb96f60051.1580570160.git.saiprakash.ranjan@codeaurora.org>
 <20200206183808.GA5019@bogus>
 <f26464226f74dffe2db0583b9482a489@codeaurora.org>
In-Reply-To: <f26464226f74dffe2db0583b9482a489@codeaurora.org>
From: Rob Herring <robh@kernel.org>
Date: Tue, 11 Feb 2020 12:24:34 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKeytW=k5efjcfcuK6vbGggdO9nVdwq7YGNtMpzPQHWMg@mail.gmail.com>
Message-ID: <CAL_JsqKeytW=k5efjcfcuK6vbGggdO9nVdwq7YGNtMpzPQHWMg@mail.gmail.com>
Subject: Re: [PATCHv2 2/2] dt-bindings: watchdog: Add compatible for QCS404,
 SC7180, SDM845, SM8150
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_102447_113420_42E8C731 
X-CRM114-Status: GOOD (  16.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, devicetree-owner@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Douglas Anderson <dianders@chromium.org>, Stephen Boyd <swboyd@chromium.org>,
 Andy Gross <agross@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Matthias Kaehlcke <mka@chromium.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 7, 2020 at 12:10 AM Sai Prakash Ranjan
<saiprakash.ranjan@codeaurora.org> wrote:
>
> Hi Rob,
>
> On 2020-02-07 00:08, Rob Herring wrote:
> > On Sat, Feb 01, 2020 at 08:59:49PM +0530, Sai Prakash Ranjan wrote:
> >> Add missing compatible for watchdog timer on QCS404,
> >> SC7180, SDM845 and SM8150 SoCs.
> >
> > That's not what the commit does. You are changing what's valid.
> >
> > One string was valid, now 2 are required.
> >
>
> Does this look good?

No. First of all, what's the base for the diff? It's not what you
originally had nor incremental on top of this patch.

Second, a value of 'qcom,kpss-timer' or 'qcom,kpss-wdt' or
'qcom,scss-timer' will fail validation because 2 clauses of 'oneOf'
will be true.

>
> diff --git a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
> b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
> index 46d6aad5786a..3378244b67cd 100644
> --- a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
> @@ -14,19 +14,22 @@ allOf:
>
>   properties:
>     compatible:
> -    items:
> +    oneOf:
>         - enum:
>             - qcom,apss-wdt-qcs404
>             - qcom,apss-wdt-sc7180
>             - qcom,apss-wdt-sdm845
>             - qcom,apss-wdt-sm8150
> -          - qcom,kpss-timer
> -          - qcom,kpss-wdt
>             - qcom,kpss-wdt-apq8064
>             - qcom,kpss-wdt-ipq4019
>             - qcom,kpss-wdt-ipq8064
>             - qcom,kpss-wdt-msm8960
> +          - qcom,kpss-timer
> +          - qcom,kpss-wdt
>             - qcom,scss-timer
> +      - const: qcom,kpss-timer
> +      - const: qcom,kpss-wdt
> +      - const: qcom,scss-timer
>
>     reg:
>       maxItems: 1
>
> Thanks,
> Sai
>
> --
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a
> member
> of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
