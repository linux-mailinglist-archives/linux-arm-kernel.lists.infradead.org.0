Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E36B365AF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 22:41:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bp1wzdKctp4JPchD07v+DNzCA+m2y4X76w2MEinaEKA=; b=ER5ur+amgvvCoO
	aeF389Y/2q2Pr8lMaWnTSanK404ah+p9S0Sj3X5ERZV5xzmHXMmK2m6pUB+hr67/3CFCwCniNKq1R
	JG/XPFdqRyauGioOZ5SBEUIWBXPn+M/EbC2A6cDah0Q+mWsl+z/AQRpXvhA1BZr2VMca0KZHxY2Nd
	XqL+waIs2HE+/HVxCzXwmBHlD14vxc3dHCaJicNeZ8bi1Bp1w18qlyBCvsQSELULKrwPZ5m6IhEvo
	uir0Ujs/FivI+UFyF06TuWBN8lAEW96HrgyjlC8odddQwr1pm0v4N0RBbXOAiLkiP37SftJdUkeGC
	Tawnbu9wNuvspP1035/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYcjG-000198-3J; Wed, 05 Jun 2019 20:41:50 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYcj9-00018f-5e
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 20:41:44 +0000
Received: by mail-oi1-x241.google.com with SMTP id e189so12470605oib.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 13:41:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VG7hExm5hhRslGMHfIJDbnrnuG2niFw1Ee1+Wn5GINw=;
 b=dBzOZzCW4ZMvgQ3LJtEmT51cdQ5zsOJiWRWh8mUJ0hEeM/o9d0/v2qMz9OC9+YNoLO
 fYCn1qON5pcQzWzNd2Qj8813NNaGDHPHKUlVgdYgvol5CRaXNc85W4nmIGP8qacTm+0z
 Swz4vWodatwzbSCCralYISnr6/GCU9vFJ3GrgAKyFfpDW+eyAEqp/8YNZPePNEsjgptA
 w4ijnZz/Mudnmbenf/LS2/Pz3YEDchiXsfiDpfdoXN8wGxNh5co4Rgh7Vg2peDZBvb9S
 EdVHycKFzQ7e67ASS1asbM34MAdZVaMYs3OaGQUVUezKZsGK5gRFX7QHTKs/CdiPMBRg
 5Ehw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VG7hExm5hhRslGMHfIJDbnrnuG2niFw1Ee1+Wn5GINw=;
 b=JuUfNMoAlC5nawxT1Q6kMj4UECqjDVeEl9NoHsgpmwAsiDR7AeDCEa4whTpyHa5uCH
 xjIMLl/AZ0lJnOuERc7o6obWd0zMgQSeTyKPo6cBfX7VSruPnwPAk/I3G1qewXHS9Pao
 AJ5ttIfayRzTnAiIWhLsu7gJtFUraMJwpW82OzlLvJkt0jQixZTRwVZrPYd0e6M7LVYg
 alfZtpsQqXkFZgMVkL33GZOzBciAz24lS/7J0nCqSIo1hx49hm5gXB4phSybTjdUThOT
 kagvwA/tLhJiKfkSVL4QCEmr8JmMCDs5q5brilveqhsa/sAbsvsuBllxnjGZZBdCRe1E
 OGBw==
X-Gm-Message-State: APjAAAX+VLgcdA397uwZSWFvRSCV3FL2oAtUaROt02/+DJVB6PtnGP/g
 NkeOeiTYorqTMwXu6B1gVZtp642/TMB8kHJx5AY=
X-Google-Smtp-Source: APXvYqwUI4OmGQQSr+ze4cMgtR7ECcegoUlrEFr63QH1//OisEkmROYxAFX68SNh/ZVKr04GbZ1HEW11r5w3QDnkVME=
X-Received: by 2002:aca:3906:: with SMTP id g6mr9276536oia.106.1559767302061; 
 Wed, 05 Jun 2019 13:41:42 -0700 (PDT)
MIME-Version: 1.0
References: <1559754961-26783-1-git-send-email-sricharan@codeaurora.org>
 <1559754961-26783-6-git-send-email-sricharan@codeaurora.org>
In-Reply-To: <1559754961-26783-6-git-send-email-sricharan@codeaurora.org>
From: Christian Lamparter <chunkeey@gmail.com>
Date: Wed, 5 Jun 2019 22:41:28 +0200
Message-ID: <CAAd0S9DKqAgFPgLzHiCBiJgE+OmUW7ainyjM_3-RyfCoKEa51A@mail.gmail.com>
Subject: Re: [PATCH 5/6] arm64: dts: Add ipq6018 SoC and CP01 board support
To: Sricharan R <sricharan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_134143_223770_788B630E 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree <devicetree@vger.kernel.org>, linux-arm-msm@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, Stephen Boyd <sboyd@codeaurora.org>,
 agross@kernel.org, linux-kernel <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?0J/QsNCy0LXQuw==?= <be.dissent@gmail.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-soc@vger.kernel.org,
 linux-clk@vger.kernel.org,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 5, 2019 at 7:16 PM Sricharan R <sricharan@codeaurora.org> wrote:
>
> Add initial device tree support for the Qualcomm IPQ6018 SoC and
> CP01 evaluation board.
>
> Signed-off-by: Sricharan R <sricharan@codeaurora.org>
> Signed-off-by: Abhishek Sahu <absahu@codeaurora.org>
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
>
> +       clocks {
> +               sleep_clk: sleep_clk {
> +                       compatible = "fixed-clock";
> +                       clock-frequency = <32000>;
> +                       #clock-cells = <0>;
> +               };
> +
Recently-ish, we ran into an issue with the clock-frequency of the sleep_clk
on older IPQ40XX (and IPQ806x) on the OpenWrt Github and ML.
From what I know, the external "32KHz" crystals have 32768 Hz, but the QSDK
declares them at 32000 Hz. Since you probably have access to the BOM and
datasheets. Can you please confirm what's the real clock frequency for
the IPQ6018.
(And maybe also for the sleep_clk of the IPQ4018 as well?).

Cheers,
Christian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
