Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B3F774EA5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 14:58:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CxPtmiMo5nmtuYYngG/xZAnVujgnrntQ75cVK3kzzeg=; b=U1Vmz/6wfFGg/Y
	klZiBdrQ96qV0E5iyU2tTYknxc+oUTgCQ9Vlcs4wr/Dk+EbzZ019N9SY3FQiug+QYzHL8qVmAvFt9
	mxBLPPmmbBdTbANNyx7f2zu4MhlXY/B+qqpA3X3gudB7YyMSh8ac6v3vgOk4xcqTH1aHjijlRaK8a
	j2dnyznsKOaZw044TX072cLfeMReSsSj58OXkyfZmeOzcZb6ZOLpu4VMh580CXXhEo11wby/z/Hsj
	SPDYU88tEB02CVgrzH/gY+epcm9gqKwpHrAMWtdV7eEHC8qT87ZiCP5DC+TgNRG1/r1WXDNVVa18x
	s7FIHn5vfsuFyxkfcxDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqdK4-0004zo-WF; Thu, 25 Jul 2019 12:58:17 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqdJl-0004z5-Rf
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 12:57:59 +0000
Received: by mail-io1-xd43.google.com with SMTP id i10so96911941iol.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 05:57:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Zw8QWpG8j0EL+1f/JxBtB+EVg+jXBaOVcDPpFEI42q0=;
 b=K6mND/fi/g9b/swg/IUZ42XnbpDHKj16AQz9cokoGFAaoRHMFlgIA+VRavfg0qZdrP
 PRxBqZdTliJJ/ZrTCh61/TI4RDHCo3WwsqLyYMGieu0NET1ILmWr9n3mkBHz7YqdDX8q
 Zu4Mz9NChgH8jm+IoKyn3iiHduRNNqpGehhSXAiFX9bdxraHF5Bj7r2cH73+w6VzlvMs
 gsgBl5xndi9okj0QAEutDNMmmrkc7V2I8I0HOimYiOtOmb0qYSLP7YOw6fLowFsufD7s
 hwj3AQbXw1VEzftSQpUKs21ZzJ5nH+XBKWct1kyCwsnqxnyQPwWVHyZTqNEY4kvPi8cT
 D/jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Zw8QWpG8j0EL+1f/JxBtB+EVg+jXBaOVcDPpFEI42q0=;
 b=GqIpHo8Y87oZfWZhEgYV5qXkpxTVLrq4jijEzknhxtlLWLG5EhX+najOp42I5Aiovr
 6ycPVmsKXqj3iWBbVoHEL7sD15hUDrKdYarhcwNd89MqXPyMzIlsmFmAq8shwsWWiniQ
 1S84oFx+SyKy22y3B6oRo+C6I97tjpT00kFkPfERhOzXC6v22uJtpgPadbqDTLVfG4+4
 Q0U4RkOuz463Z6qdnAuAYEUhQh+6+XQyyqmT/zzPImnigRaefZr7WBWFMSRvq0fXob5U
 43lyCmmvIP/8ucBikloEEcl2wq0UgtbpJ/Rqk35Pilq4QrlsqlSKymAzBwzgMoarBfXT
 gdcg==
X-Gm-Message-State: APjAAAUFOzsQ+e4bA5XFWftcS65UPX+KxG3sHoIuotL5al6ODZRcyqB6
 3JV1TQXSDcXCKYtNOgXai1TH4AV6eXou+mGikIM=
X-Google-Smtp-Source: APXvYqzHz5gmDpIh7oRLyBA4Be4IO2T4r3a6v0TWU+RMO1HPrrr8i8irOjmDme2npo3kVJOMoLPw5dECOj3YQVEcW+0=
X-Received: by 2002:a6b:bf01:: with SMTP id p1mr51679827iof.181.1564059475453; 
 Thu, 25 Jul 2019 05:57:55 -0700 (PDT)
MIME-Version: 1.0
References: <1563289265-10977-1-git-send-email-aisheng.dong@nxp.com>
In-Reply-To: <1563289265-10977-1-git-send-email-aisheng.dong@nxp.com>
From: Dong Aisheng <dongas86@gmail.com>
Date: Thu, 25 Jul 2019 20:48:47 +0800
Message-ID: <CAA+hA=TkrwzWbJQu7Cc6njdQSP--u=Zf+=FcPg-wCZ=rRXoRuQ@mail.gmail.com>
Subject: Re: [PATCH v3 00/11] clk: imx8: add new clock binding for better pm
 support
To: Dong Aisheng <aisheng.dong@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_055757_896857_AF806DD7 
X-CRM114-Status: GOOD (  19.22  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (dongas86[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dongas86[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree <devicetree@vger.kernel.org>, sboyd@kernel.org,
 Michael Turquette <mturquette@baylibre.com>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob & Stephen & Shawn,

Could you help review this patchset?
We're pretty stuck here for a long time and a lot continued work are blocked.
We really need your kind help.

The related DT patches could be found here:
https://patchwork.kernel.org/cover/11046341/

Regards
Aisheng

On Tue, Jul 16, 2019 at 11:23 PM Dong Aisheng <aisheng.dong@nxp.com> wrote:
>
> This is a follow up of this patch series.
> https://patchwork.kernel.org/cover/10924029/
> [V2,0/2] clk: imx: scu: add parsing clocks from device tree support
>
> This patch series is a preparation for the MX8 Architecture improvement.
> As for IMX SCU based platforms like MX8QM and MX8QXP, they are comprised
> of a couple of SS(Subsystems) while most of them within the same SS
> can be shared. e.g. Clocks, Devices and etc.
>
> However, current clock binding is using SW IDs for device tree to use
> which can cause troubles in writing the common <soc>-ss-xx.dtsi file for
> different SoCs.
>
> This patch series aims to introduce a new binding which is more close to
> hardware and platform independent and can makes us write a more general
> drivers for different SCU based SoCs.
>
> Another important thing is that on MX8, each Clock resource is associated
> with a power domain. So we have to attach that clock device to the power
> domain in order to make it work properly. Further more, the clock state
> will be lost when its power domain is completely off during suspend/resume,
> so we also introduce the clock state save&restore mechanism.
>
> ChangeLog:
> v2->v3:
>  * change scu clk into two cells binding
>  * add clk pm patches to ease the understand of the changes
> v1->v2:
>  * SCU clock changed to one cell clock binding inspired by arm,scpi.txt
>    Documentation/devicetree/bindings/arm/arm,scpi.txt
>  * Add required power domain property
>  * Dropped PATCH 3&4 first, will send the updated version accordingly
>    after the binding is finally determined,
>
> Dong Aisheng (11):
>   dt-bindings: firmware: imx-scu: new binding to parse clocks from
>     device tree
>   dt-bindings: clock: imx-lpcg: add support to parse clocks from device
>     tree
>   clk: imx: scu: add two cells binding support
>   clk: imx: scu: bypass cpu power domains
>   clk: imx: scu: allow scu clk to take device pointer
>   clk: imx: scu: add runtime pm support
>   clk: imx: scu: add suspend/resume support
>   clk: imx: imx8qxp-lpcg: add parsing clocks from device tree
>   clk: imx: lpcg: allow lpcg clk to take device pointer
>   clk: imx: clk-imx8qxp-lpcg: add runtime pm support
>   clk: imx: lpcg: add suspend/resume support
>
>  .../devicetree/bindings/arm/freescale/fsl,scu.txt  |  12 +-
>  .../devicetree/bindings/clock/imx8qxp-lpcg.txt     |  34 +++-
>  drivers/clk/imx/clk-imx8qxp-lpcg.c                 | 103 ++++++++++
>  drivers/clk/imx/clk-imx8qxp.c                      |   9 +-
>  drivers/clk/imx/clk-lpcg-scu.c                     |  41 +++-
>  drivers/clk/imx/clk-scu.c                          | 216 ++++++++++++++++++++-
>  drivers/clk/imx/clk-scu.h                          |  50 ++++-
>  include/dt-bindings/firmware/imx/rsrc.h            |  17 ++
>  8 files changed, 452 insertions(+), 30 deletions(-)
>
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
