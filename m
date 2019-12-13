Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C4D11DD27
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 05:31:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HJ2HJr88nOGlsOUQJ82M8uKFLHlef13PPJAZnU/7Ffo=; b=fzafwebuSlcBUMwWfzT2DFN1y
	2RCTGmxUdC8i9ao63jP04BimFb7ALW6RXBoCb2j8igVM/NyOOi8tlBQINi3DmOldj0gb1QnpHlsPR
	3p4sKdR86+gYianWyupWbJGfb4LJ+FT1Yw3vKO46aFgRjM6MDiMvIIfYL8KQ3qYl+Wyp+bCL1NGIS
	TiPfuYOOT+ZWQ+Gfnkotam5hExCqNsPIPVA3KtZszTd05ymISz5on1SuPRwGfGgKaD2N5JOItB20s
	x39ANGkKlNkOsQyQVnaHynLiU9XrYTxZDKLUHSe8n7hKvbZ8SWiaug9hMHv2m7SVv/cdL/Wutheit
	n/3DKBJKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifcbx-0002h2-Mq; Fri, 13 Dec 2019 04:31:29 +0000
Received: from m228-5.mailgun.net ([159.135.228.5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifcbn-0002gb-KZ
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 04:31:21 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1576211479; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=2dEQvqwynE6D0k73vhsmc99DYPPkKBISeGiPH0xpt3U=;
 b=JE4DepL/IDJZMOjvWEn9V368p1KMz8tSj1jBqDaVS0IpMBc3MsEHQHOHbKnOa+Lkvqr3tbel
 zmrURLVFPL889XR7nDNLOPU+2D7VzfBKDeL7iJR2uzHpX9ZJCaDJEusInJytGER/95xB3U2P
 Kzn3u1uq/W+KWn0HUOLuq3+0inE=
X-Mailgun-Sending-Ip: 159.135.228.5
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5df31412.7fbe31093110-smtp-out-n01;
 Fri, 13 Dec 2019 04:31:14 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id E0340C447A0; Fri, 13 Dec 2019 04:31:13 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 3FE2DC433CB;
 Fri, 13 Dec 2019 04:31:13 +0000 (UTC)
MIME-Version: 1.0
Date: Fri, 13 Dec 2019 10:01:13 +0530
From: saiprakash.ranjan@codeaurora.org
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH 1/3] arm64: dts: qcom: sc7180: Add APSS watchdog node
In-Reply-To: <CAD=FV=X3Akg07hetQOgd0P_wTVWs3QpuCNQ8O6qQ5LK2ZeWSaQ@mail.gmail.com>
References: <cover.1576037078.git.saiprakash.ranjan@codeaurora.org>
 <0101016ef3391ded-57772416-f32d-40e8-acb5-5dd1b6064f73-000000@us-west-2.amazonses.com>
 <CAD=FV=X3Akg07hetQOgd0P_wTVWs3QpuCNQ8O6qQ5LK2ZeWSaQ@mail.gmail.com>
Message-ID: <6453ced1f718bf3a214c404b08f8c35b@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_203119_727142_690B7DD5 
X-CRM114-Status: GOOD (  18.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [159.135.228.5 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE
 TREE BINDINGS" <devicetree@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 Guenter Roeck <groeck@chromium.org>, Stephen Boyd <swboyd@chromium.org>,
 Matthias Kaehlcke <mka@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Doug,

On 2019-12-12 00:55, Doug Anderson wrote:
> If you haven't already done it (I couldn't find it), can you please
> add this to "Documentation/devicetree/bindings/watchdog/qcom-wdt.txt"?
>  Presumably at the same time it would be good to change the format of
> that file to .yaml.
> 

This was the copy paste mistake from sdm845, I will convert the wdog 
bindings
to yaml and add missing SoC specific compatible for SC7180, SDM845 and 
SM8150.

> 
> Unrelated to sc7180, but it also feels like something is awfully
> screwy here in terms of the various Qualcomm device tree files
> referring to watchdog timers.  It feels wrong, but perhaps you can
> educate me on how it works and I'll see the light.  Specifically:
> 
> 1. It seems like the same node is used for two things on other Qualcomm 
> SoCs
> 
> If I grep the bindings for "qcom,kpss-timer" or "qcom,scss-timer", I
> get two hits:
> 
> Documentation/devicetree/bindings/timer/qcom,msm-timer.txt
> Documentation/devicetree/bindings/watchdog/qcom-wdt.txt
> 
> ...and, in fact, there appear to be two drivers claiming compatibility 
> here:
> 
> drivers/clocksource/timer-qcom.c
> drivers/watchdog/qcom-wdt.c
> 
> That seems super odd to me.  Is that really right?  We have two
> drivers probing against the same device tree nodes?  ...and that's OK?
>  If so, why does only one of the bindings list the SoC-specific
> bindings names?
> 

This was before my time, but scratching my head and some internal docs
and git history reveals that watchdog was part of the timer block in
APQ8064, MSM8960. However in IPQ4019, watchdog was standalone and split
from timer block.

Below links gives us some more background:

https://groups.google.com/forum/#!topic/linux.kernel/UnDgqU8QgLU
https://patchwork.kernel.org/patch/5868261/

> 
> 2. The actual nodes look really wonky.  A few examples below:
> 
> 2a) arch/arm/boot/dts/qcom-apq8064.dtsi:
> compatible = "qcom,kpss-timer", "qcom,kpss-wdt-apq8064", 
> "qcom,msm-timer";
> 
> ...why is the SoC-specific compatible string in the middle?  The
> SoC-specific one should be first.

Yes, SoC specific compatible should come first, I guess they just didn't 
care when
it was merged.

> 
> 2b) arch/arm/boot/dts/qcom-ipq4019.dtsi:
> compatible = "qcom,kpss-wdt", "qcom,kpss-wdt-ipq4019";
> 
> ...same question, but in this case there is no "msm-timer" at the end?
> 

IPQ4019 had watchdog as standalone outside of timer block as explained 
above.

> 2c) arch/arm64/boot/dts/qcom/qcs404.dtsi
> compatible = "qcom,kpss-wdt";
> 
> ...no SoC-specific string at all?
> 

Needs a SoC specific compatible, I am going to add this in my coming 
patch.

Thanks,
Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
