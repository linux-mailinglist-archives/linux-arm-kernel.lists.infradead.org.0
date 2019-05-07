Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 454C515FEF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 10:58:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bBCVlljVkKyDeveQia2PZM9oi+LmZ8Bwv6n8lWAivas=; b=ORjpFUS2ogVyYj
	i06PHD+6teEWjW0kbJ0QfderX2lb7uXDmujY1v5rDV6AsfaIifhgywVKkBOriN8FkNdrRqRqm9Svh
	wKyZcd3LK73oHlkRZD77Gv5EPm6zFqp2QGCL7dRboc5I8O7ZWb/cIEH326J+fQbHpkNJHJgsLPXF4
	SO2E8fhP1TOJ5/hPT+Tzs9WGXnuSakzh/ZfqkG9tnuiIRKgrycAip4kiUeiB6dD2iLQiA6+MUmjOV
	bpRaQIHEAOALrM71mDA8gdLEB2zPmyTp8TiToRWOOB5Jy/eJVrSrqkrss/b3x1ObPSsDIqXsA9JAZ
	FUS0eLKeZKrcz7p5YxHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNvw5-00073J-6L; Tue, 07 May 2019 08:58:53 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNvvw-000721-Rq
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 08:58:47 +0000
Received: by mail-qt1-x844.google.com with SMTP id a17so3972149qth.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 01:58:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=N4j8vIu2wMMo6UT4+kjIlyoObNO3WTbPl4WCu+/nidM=;
 b=ctTKjgV+zvGS9Gu1Me48lcXJj5NqtLOU2qUZfsGcBDnwCUXDVEdjcq3QLVxixOlQSa
 xDxe0j3pLX2v9kUw9PZ+P910lyFYWbJbJkIgwu+caLtqZ49bbGbcdHpr8qyqbT9Oy5rV
 ZfEOk3QiUo7CLg9q/N5n5gysIRNWmEcCZxpLQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=N4j8vIu2wMMo6UT4+kjIlyoObNO3WTbPl4WCu+/nidM=;
 b=bCD+F6/NZI+luD2DGCQd+/+5LMC3+Js0kFOhfUpxB+g9umNQJkk114rNf3NrUOTqGd
 E/hGpakMJ27+2yUP4gE5bIHXxahgpVSpJ8gAIU/PhWnkCpQY92q4tgUA28BmbfIZwA2m
 nTI1As/pkTD56Rzo6Vplug/4jyZCzLde9l73xR87Rjo3MtvkZ1oYwAfas4fF3J9TgxNy
 requtik3yKCujL14VcYI7fZnippanok5WYOq7lLmPhP02rhZBGw9IWYlwt1DIKetpZO1
 ZN3pTIx2S7ra4ixFSr1UvFiDI4I5wFUpXMEjD2ujg5WIg41Kwg3PtQnmC6bWy+qCihUW
 NuUw==
X-Gm-Message-State: APjAAAUZCFdcZM5OYfko9JwL4FJ8OJh+pbNR3qZ0zEeyzAdPsqsCoe0J
 CcYqMgjJfdiV2aYHF82Omzw1hh0DigetrzzapatGUw==
X-Google-Smtp-Source: APXvYqwh0Jp85DeTO2qBWgQsuEyExRB1yb+3NzYLBg178fUUMnHKuPVE2ZV5rt3C9hW9+lUMAdlXGFQiVeB/ea6x5qw=
X-Received: by 2002:ac8:3fe3:: with SMTP id v32mr24484207qtk.307.1557219524087; 
 Tue, 07 May 2019 01:58:44 -0700 (PDT)
MIME-Version: 1.0
References: <1556793795-25204-1-git-send-email-michael.kao@mediatek.com>
 <1556793795-25204-6-git-send-email-michael.kao@mediatek.com>
In-Reply-To: <1556793795-25204-6-git-send-email-michael.kao@mediatek.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Tue, 7 May 2019 16:58:18 +0800
Message-ID: <CAJMQK-hKoK1hfK+XJuyExxp3rDWY9py6j3_jwEMfVeJcYYM7XA@mail.gmail.com>
Subject: Re: [PATCH 5/8] arm64: dts: mt8183: Increase polling frequency for
 CPU thermal zone
To: "michael.kao" <michael.kao@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_015846_076116_BE7224E4 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, jamesjj.liao@mediatek.com,
 devicetree@vger.kernel.org, louis.yu@mediatek.com, dawei.chien@mediatek.com,
 linux-pm@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 roger.lu@mediatek.com, linux-kernel@vger.kernel.org,
 Eduardo Valentin <edubezval@gmail.com>, fan.chen@mediatek.com,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 2, 2019 at 10:43 AM michael.kao <michael.kao@mediatek.com> wrote:
>
> From: Matthias Kaehlcke <mka@chromium.org>
>
> Evaluate the thermal zone every 500ms while not cooling and every
> 100ms when passive cooling is performed.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> Signed-off-by: Michael Kao <michael.kao@mediatek.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> index 0b3294b..be879ac 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> @@ -370,8 +370,8 @@
>
>                 thermal-zones {
>                         cpu_thermal: cpu_thermal {
> -                               polling-delay-passive = <1000>;
> -                               polling-delay = <1000>;
> +                               polling-delay-passive = <100>;
> +                               polling-delay = <500>;
>
>                                 thermal-sensors = <&thermal 0>;
>                                 sustainable-power = <1500>;

Tested-by: Hsin-Yi Wang <hsinyi@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
