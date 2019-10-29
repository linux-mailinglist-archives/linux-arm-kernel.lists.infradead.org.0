Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A90AE8927
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 14:15:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZSfnkt3eSjxIPm+EHW6QMA1bjKgN1baoWD8gWviM+mw=; b=Q5/5+b5ivsrBi5
	ovQg8D2a5rwfHNG6TGkdUNmZqhbA3RU4NAU3byzmVW1r1xaleYiSnR8FkuMi052CJDOMHJOCh212w
	rD+JafZaRA6A5cTISQiuonX3Qpa0N0/dOqi8ZPwYx0vW+w/2520Llcr6pK6Up83lQWTe+YAhesHkf
	FfZxFQBreLaCcVikUh702W403goRpMV1oQQPNQsJo4Wxe/xiWKVk4NRy7r6e/gMd77hzJv3okyVDX
	wR29rIpEqSS3hckl+E8pp0Dx72pPzVLPJTqT2lVVqftDJn2iYMckf9BSOoYVT4VPOgWGSLK6dmRwj
	Z8dj344D1kpK2GYjk3QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPRLZ-0004ZS-IQ; Tue, 29 Oct 2019 13:15:41 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPRLP-0004Z1-2x
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 13:15:32 +0000
Received: by mail-lj1-x242.google.com with SMTP id m7so15229969lji.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 06:15:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rQbCwQn4OcCXCHFwwmFatk+l/n8S/B77Id3xHHz9OsQ=;
 b=hZjxpuAgz7brG/rgG0uL289gCvd0Rg+88SXtx9mT7soxurM5WbTxvC1hQ/lW/drlyR
 wXm8QSuoxTtFS380W5cBhc+CWa6zdNldQWI5Z7iYoXnhFcTkJJoSWA/mUpPSTN9nILM2
 o0hdPoyUu2RlEnrDpVfatezm1YRMLbsCb2kQZx1vd6xmo/sjU9ffvr+4tGMLGX1iBbgN
 HjA33qGO4LaEfelPQxH0Qtm8nbxY2owSG3UliwWk9PLtpSyTCg70RiaotxwE5P/tTNNL
 4/+BJck94WL0BsUuYjAzgaFG74yvXqKueQivrG3a/z+li8SYPnjsU+XJBvnrsz7rCPPp
 xfZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rQbCwQn4OcCXCHFwwmFatk+l/n8S/B77Id3xHHz9OsQ=;
 b=IHDbANYNVaIF+YKPfqz9etdu7V4qDdvVjy50sRDj+1EGMaiNXTjCDYQ6jCpj5mD4Qu
 Q8OjzSvusk2jcfgl7fzePwAHuRKaoq12o9EJl87SWpGMmVNLxsg6+bvAGjIkg7uiXJOQ
 CfpRORyqdOBxfsr2Q6fMg6hVyWbs0ZZEzaUvmT7IpwCTUU2XbWD0kGEfUIvhtjGdWR90
 K+1QctB1TscOC8jIIIoVX9rqGs/YaIljK3bbNRfwIoFXvW6jAoHTtzLm+oMsNLM7itOA
 1rKfunjQNrgGBqovVtxZep4ID8PXFqmSPar0ftNzSreA8wU5XPpl+tlsAOC5J69NNv47
 CcVQ==
X-Gm-Message-State: APjAAAU948eGoIjcF51LFbqtGDpOJZcBocZ17Yy4IdIqoRo0XjEULYDk
 phgOdadjeX0nFWfziysXFawtzxSySChzeJ9Rvt4=
X-Google-Smtp-Source: APXvYqyAwsBC9wzuv9VJycNb0BcgLvYOqtu9D89Ede9Rm7uVYGbmJDn/HV4nb+IlolpfBAIr7w5KPoyDEC0kHOBnxgk=
X-Received: by 2002:a2e:819a:: with SMTP id e26mr2713781ljg.26.1572354929138; 
 Tue, 29 Oct 2019 06:15:29 -0700 (PDT)
MIME-Version: 1.0
References: <1572343372-6303-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1572343372-6303-1-git-send-email-Anson.Huang@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 29 Oct 2019 10:15:31 -0300
Message-ID: <CAOMZO5CnBCbM2uhDpgUgRVXkVsPTDw27CxZUp3+FMZi+7DH1XQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: imx7ulp-evk: Use APLL_PFD1 as usdhc's clock
 source
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_061531_156647_DFFB03CA 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <Linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anson,

On Tue, Oct 29, 2019 at 7:06 AM Anson Huang <Anson.Huang@nxp.com> wrote:
>
> i.MX7ULP does NOT support runtime switching clock source for PCC,
> APLL_PFD1 by default is usdhc's clock source, so just use it
> in kernel to avoid below kernel dump during kernel boot up and
> make sure kernel can boot up with SD root file-system.
>
> [    3.035892] Loading compiled-in X.509 certificates
> [    3.136301] sdhci-esdhc-imx 40370000.mmc: Got CD GPIO
> [    3.242886] mmc0: Reset 0x1 never completed.
> [    3.247190] mmc0: sdhci: ============ SDHCI REGISTER DUMP ===========
> [    3.253751] mmc0: sdhci: Sys addr:  0x00000000 | Version:  0x00000002
> [    3.260218] mmc0: sdhci: Blk size:  0x00000200 | Blk cnt:  0x00000001
> [    3.266775] mmc0: sdhci: Argument:  0x00009a64 | Trn mode: 0x00000000
> [    3.273333] mmc0: sdhci: Present:   0x00088088 | Host ctl: 0x00000002
> [    3.279794] mmc0: sdhci: Power:     0x00000000 | Blk gap:  0x00000080
> [    3.286350] mmc0: sdhci: Wake-up:   0x00000008 | Clock:    0x0000007f
> [    3.292901] mmc0: sdhci: Timeout:   0x0000008c | Int stat: 0x00000000
> [    3.299364] mmc0: sdhci: Int enab:  0x007f010b | Sig enab: 0x00000000
> [    3.305918] mmc0: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00008402
> [    3.312471] mmc0: sdhci: Caps:      0x07eb0000 | Caps_1:   0x0000b400
> [    3.318934] mmc0: sdhci: Cmd:       0x0000113a | Max curr: 0x00ffffff
> [    3.325488] mmc0: sdhci: Resp[0]:   0x00000900 | Resp[1]:  0x0039b37f
> [    3.332040] mmc0: sdhci: Resp[2]:   0x325b5900 | Resp[3]:  0x00400e00
> [    3.338501] mmc0: sdhci: Host ctl2: 0x00000000
> [    3.343051] mmc0: sdhci: ============================================
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Thanks, with this patch applied I can get SD card rootfs to get mounted:

Tested-by: Fabio Estevam <festevam@gmail.com>

I think this fix deserves a Fixes tag so that it can be backported to
older kernels.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
