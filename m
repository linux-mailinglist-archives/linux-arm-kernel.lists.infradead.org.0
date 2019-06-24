Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7043251CB9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 23:03:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4dic6wk4sGMLm0eRwEa/nf7MCuR5rssDmIy+z0gdPfg=; b=dXc932hFd8KfrM
	AigCmdXis9ApRDH0vgcXOsPsXeQbpkECC2AGWL0zeY1pvSwkzfwBSI3CyIeJZChV3Ahm//61zoXdd
	HeeuhmFkwfH5hMICl1Hxk/yniERQox0BzGRePe8vyPB3PZ8Ap8U8T/3eYKuF7+Fh115UjN27uE38L
	dL0CBQuX0ajWhZ0LyVFyHSPjX+xR6yGPMBh6i1vMFeA/MtDr3Plktuslb//TXKjQFnTPrDUHQgszi
	wZybv4Ds69ND3ABssOjGLTQ3qcVqzgQPfWZ3umSLQX0Cs4vfa/3IBhF9kgbRDEUJvO56wlNmr2x4C
	KxADd0vsgptLA3Ohdorg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfW7i-0007Qf-VF; Mon, 24 Jun 2019 21:03:34 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfW7V-0007OZ-JQ
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 21:03:22 +0000
Received: by mail-io1-xd43.google.com with SMTP id i10so518795iol.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 14:03:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JfPM5u5zHULi0EsAj2odyoB8/J0ppThwZo+61K7LTM4=;
 b=m4NBP5T6AbsiL+WuxSMFw0jHFCwXm91UtIFsDZg5sqgama/MQewVIZLT+svZ3U0aie
 pBBb62m1921NF4rdA3BfJIysO50g8JeXalAya28isWmhhMeavgrl2i+QkDw7cNJ/jk5a
 6xSswfRNTEfe3LY8p8YqPqVLCngtFY7lCAp5q+Usx4VUi6Inf6TlBZ5q6ObvBPs1QL4r
 FADuYOReCC4DKbQO3p6TxehYrYBAa0PdjoNqYezByCmTwdevec7svJl1qOoJcC0w6zdG
 +Kz6WO/AzUJmmdjBGNKOTORTYENLgryjVGAh+NDNhTYR9DyLacl8QsQLPhKm3YduRd2z
 lg9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JfPM5u5zHULi0EsAj2odyoB8/J0ppThwZo+61K7LTM4=;
 b=t478zKfRj8VPFJdRr6oBRGTyWG71bCfk0Oty+Fptqwgp1M9Ty28k+CVIKsQbbpS8Hw
 oItE55aEXPJ0G5BFAvv18J9AzoRmRW/mSkKl4AvdmnjbVTe++J8r2vb4qlB2HnOvcgbV
 Behy6YEDbTTveptnuMTFi0mF4nLK4msUzsjPzFwyoofeZ4zNt4KEQjvw0OIe8owa2RNN
 r7LIujUXizOPmuu23qgaaJDV01+TlkNPZn3ryteUmkP4aa5rcHGm0ML2LLR/1aHlb2Vd
 fuOFOO613bFQUwjn4rHgQSTi5VQEnej0XkuwDF7X8fa8jNAXNlM+OWlHxn7fCs2rbnXU
 isag==
X-Gm-Message-State: APjAAAWxoUY7fx4LVnILgYCdArl9gP28CSQZzCOKOB1uauJOWkNUrshi
 EyzBLWfy5ImTY0DsnO2avbmOsTcrsZ1ytUQpMWg=
X-Google-Smtp-Source: APXvYqzeY0FAUfaeSzLu6lT1/OMIpLP1bOQaZTpuwAXHPyo4IK2bWo3IoGHb3rf3nio/8hmarjP1xs4fCiXKN+4nYX0=
X-Received: by 2002:a6b:bec7:: with SMTP id o190mr1863162iof.158.1561410200560; 
 Mon, 24 Jun 2019 14:03:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190624205432.16727-1-festevam@gmail.com>
 <20190624205432.16727-2-festevam@gmail.com>
In-Reply-To: <20190624205432.16727-2-festevam@gmail.com>
From: Chris Healy <cphealy@gmail.com>
Date: Mon, 24 Jun 2019 14:03:09 -0700
Message-ID: <CAFXsbZqwXw6uTRKDM=JDivyVkshQ-Y9XTUVCNNAyyrcjvB=0eQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: imx7-colibri: Remove unneeded snvs_pwrkey
 node
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_140321_652828_5D8E5BAC 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cphealy[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stefan Agner <stefan@agner.ch>, Shawn Guo <shawnguo@kernel.org>,
 Anson.Huang@nxp.com, linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Reviewed-by: Chris Healy <cphealy@gmail.com>

On Mon, Jun 24, 2019 at 1:54 PM Fabio Estevam <festevam@gmail.com> wrote:
>
> Since commit 4664179fe679 ("ARM: dts: imx7s: Enable SNVS power key
> according to board design") snvs_pwrkey is disabled by default, so there
> is no need for disabling it explicitly in the board dts anymore.
>
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> ---
>  arch/arm/boot/dts/imx7-colibri.dtsi | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi b/arch/arm/boot/dts/imx7-colibri.dtsi
> index 895fbde4d433..0d00aeb64336 100644
> --- a/arch/arm/boot/dts/imx7-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx7-colibri.dtsi
> @@ -267,10 +267,6 @@
>         status = "okay";
>  };
>
> -&snvs_pwrkey {
> -       status = "disabled";
> -};
> -
>  &uart1 {
>         pinctrl-names = "default";
>         pinctrl-0 = <&pinctrl_uart1 &pinctrl_uart1_ctrl1 &pinctrl_uart1_ctrl2>;
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
