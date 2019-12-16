Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23275121B7D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 22:09:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HtnCKMYpdnLFP27YHC4jfpoQFzNU04UypoVCEgu9RxU=; b=uMdPNrCFNi7X1c
	NGjDT9TFeCpw8FT6a5VyaY16cVa56FcGaaznkbYGbMUSiQglA1ts6jLbhGscfnPXGN+aoXrVPwlKw
	UWDGSxS9tS6fs5bNWQVqcETlSO6PnlJIBICHApAUzaJVgTJuW2i3+tlhnjcJbcPNU5BPHiKNGzMj+
	0qg2iBN40io2Iq5bg+qZumYRbdcZBwIQ6l54PWlkIsXwiCH2jWcr/qEJ8kaXtdnU6segHdKBhL4My
	xubzAwLaOWWG/TjX/lsAesgub5zHU8M1WRtdfZlJKzgCPq7l7gEymmXTOuwt5g8x07G+H2djsZNaR
	pBpQonMLGr29etEdL7Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igxcC-0004Dq-A2; Mon, 16 Dec 2019 21:09:16 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igxc1-0004Cy-6L
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 21:09:06 +0000
Received: by mail-io1-xd41.google.com with SMTP id t26so8148273ioi.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 13:09:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9XKO95LrgUJdQH2M6aS3B45u9tLfPn3HpUUUiAVQLoA=;
 b=qsmmqdUMVLn9soEO7iljMQx+BdYo1M7b+D/KnFZIAUtStJ7phMHyQXvNKKvaizqu4Y
 wNswTJ7cIGvbgctHA+bF7wHPKODead1bmqQhViZMul47+17Duuw3pcmzUqrq4yv+hOFK
 CD6+k9NgJzy2N/GCHsKvVYBZALzZRKgZbZgm0HokFj33eWRfQqhuBIW9N5mFsTLCraaH
 eBd3dxU6B0VcSfKhQ0jTJzKskfAr91bjJemFUwxT5pbY+6pzqTQXveKPvOR7LGT2vTN/
 I4GTMpUb38nqMz67QfWIOzyHGwj+HI+2n9nJDOlqwgId1E04Yi1+3kGuvL0NZp20/5TB
 NJnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9XKO95LrgUJdQH2M6aS3B45u9tLfPn3HpUUUiAVQLoA=;
 b=IV6StmPWmLXaraoFKAB5QFHEkqh0Ps9LUAQONcPl06vNPXYx6OgIasZMrPewTBmkbM
 M88kGJObfOV+HLvKed0Syf+/WBfPbXg81WqzgmiCVWSUNYP9EKySpoNafl83jFGwiGqG
 bGsevbkNz4z3qv3VKt5iHKCg6ep3Gr6FzilD4WXG7YdFX8gTrnIU1KDV1AWXiHGZozbx
 vSuh6hzoGItnefDLf92RjveskyHiRgKlSTtXSOO4ZkeKgc2TuwYAfJswVEav1aCtyLzb
 NxFWAhNZ7mMlfqeYQu2i/M5q7+6zs78WFU/IC5SMW43mpqQzUl8FzC9Z0izKHgdlRUoL
 vFwQ==
X-Gm-Message-State: APjAAAXRVai1TInlkGSkRVSu+bJQ5pongxmFTM8FsdB8MnRegbqI7Lll
 d56kiFrPz4CAA7Dh/nqNyWCcYgSQI8xxPCcMhT3kGA==
X-Google-Smtp-Source: APXvYqy3FlgcCLF0YbioAtrebMVIf/uIe5yi8WD+zW5eCUIzwob/hzy/Ohu8usZQA0aV9gHzcmfgr9PsKPG9RXOD6hE=
X-Received: by 2002:a6b:8f11:: with SMTP id r17mr1010285iod.50.1576530541898; 
 Mon, 16 Dec 2019 13:09:01 -0800 (PST)
MIME-Version: 1.0
References: <20191211230902.5414-1-mike.leach@linaro.org>
In-Reply-To: <20191211230902.5414-1-mike.leach@linaro.org>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Mon, 16 Dec 2019 14:08:51 -0700
Message-ID: <CANLsYkx9UBYOfOjW-jg_CmQrOC-f0z+gUfun72+uYhadyaJAJg@mail.gmail.com>
Subject: Re: [PATCH v6 10/15] dt-bindings: qcom: Add CTI options for qcom
 msm8916
To: Mike Leach <mike.leach@linaro.org>, Andy Gross <agross@kernel.org>, 
 Bjorn Andersson <bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_130905_247015_ED6C98DE 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "Suzuki K. Poulose" <suzuki.poulose@arm.com>,
 Coresight ML <coresight@lists.linaro.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 11 Dec 2019 at 16:09, Mike Leach <mike.leach@linaro.org> wrote:
>
> Adds system and CPU bound CTI definitions for Qualcom msm8916 platform
> (Dragonboard DB410C).
> System CTIs 2-11 are omitted as no information available at present.
>
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/msm8916.dtsi | 85 +++++++++++++++++++++++++--
>  1 file changed, 81 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
> index 8686e101905c..68587968f5c0 100644
> --- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
> @@ -8,6 +8,7 @@
>  #include <dt-bindings/reset/qcom,gcc-msm8916.h>
>  #include <dt-bindings/clock/qcom,rpmcc.h>
>  #include <dt-bindings/thermal/thermal.h>
> +#include <dt-bindings/arm/coresight-cti-dt.h>
>
>  / {
>         interrupt-parent = <&intc>;
> @@ -1357,7 +1358,7 @@
>                         cpu = <&CPU3>;
>                 };
>
> -               etm@85c000 {
> +               etm0: etm@85c000 {
>                         compatible = "arm,coresight-etm4x", "arm,primecell";
>                         reg = <0x85c000 0x1000>;
>
> @@ -1375,7 +1376,7 @@
>                         };
>                 };
>
> -               etm@85d000 {
> +               etm1: etm@85d000 {
>                         compatible = "arm,coresight-etm4x", "arm,primecell";
>                         reg = <0x85d000 0x1000>;
>
> @@ -1393,7 +1394,7 @@
>                         };
>                 };
>
> -               etm@85e000 {
> +               etm2: etm@85e000 {
>                         compatible = "arm,coresight-etm4x", "arm,primecell";
>                         reg = <0x85e000 0x1000>;
>
> @@ -1411,7 +1412,7 @@
>                         };
>                 };
>
> -               etm@85f000 {
> +               etm3: etm@85f000 {
>                         compatible = "arm,coresight-etm4x", "arm,primecell";
>                         reg = <0x85f000 0x1000>;
>
> @@ -1429,6 +1430,82 @@
>                         };
>                 };
>
> +               /* System CTIs */
> +               /* CTI 0 - TMC connections */
> +               cti@810000 {
> +                       compatible = "arm,coresight-cti", "arm,primecell";
> +                       reg = <0x810000 0x1000>;
> +
> +                       clocks = <&rpmcc RPM_QDSS_CLK>;
> +                       clock-names = "apb_pclk";
> +               };
> +
> +               /* CTI 1 - TPIU connections */
> +               cti@811000 {
> +                       compatible = "arm,coresight-cti", "arm,primecell";
> +                       reg = <0x811000 0x1000>;
> +
> +                       clocks = <&rpmcc RPM_QDSS_CLK>;
> +                       clock-names = "apb_pclk";
> +               };
> +
> +               /* CTIs 2-11 - no information - not instantiated */
> +
> +               /* Core CTIs; CTIs 12-15 */
> +               /* CTI - CPU-0 */
> +               cti@858000 {
> +                       compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
> +                                    "arm,primecell";
> +                       reg = <0x858000 0x1000>;
> +
> +                       clocks = <&rpmcc RPM_QDSS_CLK>;
> +                       clock-names = "apb_pclk";
> +
> +                       cpu = <&CPU0>;
> +                       arm,cs-dev-assoc = <&etm0>;
> +
> +               };
> +
> +               /* CTI - CPU-1 */
> +               cti@859000 {
> +                       compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
> +                                    "arm,primecell";
> +                       reg = <0x859000 0x1000>;
> +
> +                       clocks = <&rpmcc RPM_QDSS_CLK>;
> +                       clock-names = "apb_pclk";
> +
> +                       cpu = <&CPU1>;
> +                       arm,cs-dev-assoc = <&etm1>;
> +               };
> +
> +               /* CTI - CPU-2 */
> +               cti@85a000 {
> +                       compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
> +                                    "arm,primecell";
> +                       reg = <0x85a000 0x1000>;
> +
> +                       clocks = <&rpmcc RPM_QDSS_CLK>;
> +                       clock-names = "apb_pclk";
> +
> +                       cpu = <&CPU2>;
> +                       arm,cs-dev-assoc = <&etm2>;
> +               };
> +
> +               /* CTI - CPU-3 */
> +               cti@85b000 {
> +                       compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
> +                                    "arm,primecell";
> +                       reg = <0x85b000 0x1000>;
> +
> +                       clocks = <&rpmcc RPM_QDSS_CLK>;
> +                       clock-names = "apb_pclk";
> +
> +                       cpu = <&CPU3>;
> +                       arm,cs-dev-assoc = <&etm3>;
> +               };
> +
> +

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

>                 venus: video-codec@1d00000 {
>                         compatible = "qcom,msm8916-venus";
>                         reg = <0x01d00000 0xff000>;
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
