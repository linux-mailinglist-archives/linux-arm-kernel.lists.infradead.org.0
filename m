Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD43B25022
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 15:27:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BsGD8y/MILran1Yhl8cx3Vwh3N66rezk48X/uj1Bti0=; b=auHKx/tFPxRiMW
	E/3xZ8DxHJAnkYa5eWpRa1KSxU3bn2n1FNJbXykUBrN+l+QFkytT7SFMh+o13d7flvUVg9WL7Nblx
	HBe1E47fRW7CXKDTlbM61xcATyb3mtiy8XO40K8UMZc4KR5Xhg0UKhOd3btPbqKj1jHx5n+fcJdQ0
	uDiViiSkeAI5JM4z1g3VW6A8hIq8zdfhRiulb6FIso+xzGWHn7RYHtjq4gI0smU4GYTfQOrQVQK6b
	fgJn+IKuhqFUpSZpH2vhh6DNfUWcKFXn5LmBXsSFZVIo5705GC88P5YaSmJ3uC0419eaQae9yVk3R
	jWeC1gsUMZbqTXc6QmPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT4nJ-00065T-Tr; Tue, 21 May 2019 13:27:05 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT4nC-00064x-7q
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 13:26:59 +0000
Received: by mail-wm1-x342.google.com with SMTP id n25so1073392wmk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 06:26:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qrp/cCOlFJCvzIc4gQMAUxLU+7cAYh9D4Zth3uCG30U=;
 b=BGix0mkl0u5OQfGkGTujOD8MfOHzU4MYEmrQ2i+91eBnAXKE0bhRFBSfYaAgzMeOlI
 9ONIZrQ/YPo+0QNPpjlrSCzqMAu8ynnOKpefspeJHrh6Kwk5hL9ph5wXS5wa/qQDnTft
 MaN4qXXsIdqL4HSiXkY8mE675oJIwjj9wSW6YJVX0I6xQK0+EUkbRkLADENVvpD0T3bl
 nNhivqvhlkH+3twPkmVCNr/OaW4yC6DO/ChzmVK3xovROhCMNbqwQx48r54i+bWgDk3U
 lAmQd727iyPDH+t/wg8/fepVOzlr54pQ6k3rScOMSLLO1LYYT7ETgWGWtCqyKwfKcya9
 ikWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qrp/cCOlFJCvzIc4gQMAUxLU+7cAYh9D4Zth3uCG30U=;
 b=UvlOHJiy39H3vNhxIaiKUtjSDT7yNRUY/J2RbVB3ksOQn7HUS3aPi8Kz4eLVXfFfPJ
 nifapBnNcWP0dALr4Rx1WBP2/Cml5Y1tMC5cHcsvyZ+pHi6znRl6g/oFz9BPneKXiBgh
 2I/0r96hSBhxCecltz3nTuUc1aAPCy9PjFJjoRf0qtZ2RpYZBqO/YlJTxNdR/IiPISNP
 wui8dLifNUKyTHuMNA0Mv8utvZOOVqGFgvPdORXb+r13nTFZKOvZIWuJaemBPrAnBOV3
 47SkHWWEGo4OxzVq12OGVWaoKak6mfJkSJ+Ub73E+xt+yICNyPvS+qY8YxnkLab7vGz8
 7b9w==
X-Gm-Message-State: APjAAAVMWH1w6bC8onQ22ZxcyLBaOeJb4wCDLOLFJxgUt+mjcOqVBSBo
 oeqcHl7XrTi+pRC6BewiAdQT2REtY9SlWxHLxtg=
X-Google-Smtp-Source: APXvYqzvGLXTpCYDjBTmFlxpnFdDs/GZX8wN3Yik3u04wGLJ1U4Jbdm4OYibVzfWSGgFLb4l674d8SHtW41xH+KCxlk=
X-Received: by 2002:a1c:e443:: with SMTP id b64mr3433813wmh.71.1558445216111; 
 Tue, 21 May 2019 06:26:56 -0700 (PDT)
MIME-Version: 1.0
References: <1555943870-15353-1-git-send-email-manish.narani@xilinx.com>
 <1555943870-15353-4-git-send-email-manish.narani@xilinx.com>
In-Reply-To: <1555943870-15353-4-git-send-email-manish.narani@xilinx.com>
From: Paul Thomas <pthomas8589@gmail.com>
Date: Tue, 21 May 2019 09:26:44 -0400
Message-ID: <CAD56B7dw4kTRuXeKXyT6KbEP9E=B=KqpamL14d96LjGgAfrbGQ@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] arm64: zynqmp: DT: Add Xilinx AMS node
To: Manish Narani <manish.narani@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_062658_279805_C493C07B 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (pthomas8589[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pthomas8589[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, charles-antoine.couret@essensium.com,
 tmaimon77@gmail.com, linux-iio@vger.kernel.org, xc-racer2@live.ca,
 stefan@agner.ch, pmeerw@pmeerw.net, lee.jones@linaro.org,
 marcus.folkesson@gmail.com, lars@metafoo.de, contact@artur-rojek.eu,
 ricardo@ribalda.com, michal.simek@xilinx.com, geert@linux-m68k.org,
 stefan.popa@analog.com, devicetree@vger.kernel.org,
 max.krummenacher@toradex.com, smohanad@codeaurora.org, robh+dt@kernel.org,
 dmurphy@ti.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel <linux-kernel@vger.kernel.org>, amit.kucheria@linaro.org,
 dinguyen@kernel.org, Jisheng.Zhang@synaptics.com, knaack.h@gmx.de,
 olof@lixom.net, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Manish,

Thank you for posting this! It is very much needed in the mainline
kernel, nice work.

On Mon, Apr 22, 2019 at 10:54 AM Manish Narani <manish.narani@xilinx.com> wrote:
>
> The Xilinx AMS includes an ADC as well as on-chip sensors that can be
> used to sample external and monitor on-die operating conditions, such as
> temperature and supply voltage levels.
>
> Signed-off-by: Manish Narani <manish.narani@xilinx.com>
> ---
>  arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 26 ++++++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
> index 9aa6734..f776913 100644
> --- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
> +++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
> @@ -625,5 +625,31 @@
>                         reg = <0x0 0xfd4d0000 0x0 0x1000>;
>                         timeout-sec = <10>;
>                 };
> +
> +               xilinx_ams: ams@ffa50000 {
> +                       compatible = "xlnx,zynqmp-ams";
> +                       status = "disabled";
> +                       interrupt-parent = <&gic>;
> +                       interrupts = <0 56 4>;
> +                       interrupt-names = "ams-irq";
> +                       reg = <0x0 0xffa50000 0x0 0x800>;
> +                       reg-names = "ams-base";
> +                       #address-cells = <1>;
> +                       #size-cells = <1>;
> +                       #io-channel-cells = <1>;
> +                       ranges = <0 0 0xffa50800 0x800>;
> +
> +                       ams_ps: ams-ps@0,0 {
> +                               compatible = "xlnx,zynqmp-ams-ps";
> +                               status = "disabled";
> +                               reg = <0 0x400>;
> +                       };
> +
> +                       ams_pl: ams-pl@1,0 {
> +                               compatible = "xlnx,zynqmp-ams-pl";
> +                               status = "disabled";
> +                               reg = <0x400 0x400>;
> +                       };
> +               };
>         };
>  };
> --
> 2.1.1
>
I tested this with an older 4.18 kernel, and with a slightly different
devicetree (shown below) it seems to be working.

        xilinx_ams: ams@ffa50000 {
                compatible = "xlnx,zynqmp-ams";
                status = "okay";
                interrupt-parent = <&gic>;
                interrupts = <0 56 4>;
                interrupt-names = "ams-irq";
                reg = <0x0 0xffa50000 0x0 0x800>;
                reg-names = "ams-base";

                #address-cells = <2>;
                #size-cells = <2>;
                ranges;

                ams_ps: ams_ps@ffa50800 {
                        compatible = "xlnx,zynqmp-ams-ps";
                        reg = <0x0 0xffa50800 0x0 0x400>;
                };

                ams_pl: ams_pl@ffa50c00 {
                        compatible = "xlnx,zynqmp-ams-pl";
                        reg = <0x0 0xffa50c00 0x0 0x400>;
                };

Also I needed to have the clock defined "clocks = <&clk 70>;".

For the temperatures I get in_temp0_raw, in_temp1_raw and in_temp2 do
these correspond to channels 7,8 & 21 in the devicetree documentation?

thanks,
Paul

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
