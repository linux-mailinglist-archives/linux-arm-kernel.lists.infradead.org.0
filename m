Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 160F7196D95
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Mar 2020 15:14:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tlql1i+dj/M34zVyaNHzXmmMeH+FmD0jkRYOAwu7iV0=; b=nWjTWm2wkSnNnD
	YToeDX50SmXNnF7Hsi+vpWDDnrr2+WUc+VehWzvtmdC73rW4k+r7hxX8o3/bX5VBmm9dsd9QL4xMi
	15xpQR5FDTmqT2mE/MbO8l3Gz0cmg+QowETesu0iDDgLpjgVDpxs7NisgP1cGagEAJPvE7VDqHpio
	LTN7wPFZ2M5HY1+IilHhhBzS3U+5ZvQTSyropZwTlWB/Z5/JpVMKgnW/1seD/Hz3c7xxqKElrEnWu
	i2Q4DLZHnyG8rWyI+j/DIfGaA5LN9Ds0JYzhRAWKEJgcVQimIdTCXOsftmiS11QpOP4GY9gNDeA7K
	8tArSCuniPUIYNopq+Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIXlE-0000na-Qw; Sun, 29 Mar 2020 13:13:56 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIXl8-0000n9-De
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Mar 2020 13:13:51 +0000
Received: by mail-lj1-x244.google.com with SMTP id p10so14719275ljn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Mar 2020 06:13:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Fm5CE6ofT+ld4NHb7vlvV0gzmTIAB0NmzQRtDrPLdqo=;
 b=ouuivey/dR97UD16lHbtxaDe23rWCq4VZRKkmJvMa5ASwcmpoxWjdoW6U5VS0rMct3
 eApvtAsDq4izIB4Y5tiFlbv7ZwoS+E5dAHrnGlDvDdvyu4rQkHU2CelVocsFEy1QxyXO
 UT9RGJKoVJonS7efcmjNz+KECaudRidlK40v29MS3bRbo92gXmVYEu6MX/1Q9/I/r/VY
 EJ2WUPRNevz9I4yGXu4KuiLQqTs4iEEoGaVrxzH6K9M3+yuncKdCaznFqVPh7W5uoe21
 QpQ4wxIHZTDLoBUotyvMdPlZM5MiTsFhEerlVqduuZYFzwqURT1JN4YafLzn/JpkxWP1
 GYYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Fm5CE6ofT+ld4NHb7vlvV0gzmTIAB0NmzQRtDrPLdqo=;
 b=JcOTNP32Yg1UPpyC1y89qjO+W09k+SIEV2nNRMcQaBPGabUCsVx5j/cR41PIavZkzl
 krrovzVd9UBi1xGtlFodCIf1wboLkjK1Vw5UWyFXE8CxAHZAKhz9WfdaA+9EKV9zKJWE
 EVsKpATmNxhD/EkFcxjANPvFnFFrGFocSdADXiROYFacT933hnWxCff2Ji0TbQUBGI0Q
 HhiCrEvajz60IAyXZqTXiecM/MbrSMP5V2HozwL8jzMqK3Kh6uSCQ9q5FVoW2o7ODVdF
 iiO/oUWlyrzA6b4mIKmcIs2RWb3J658ztTvGw9ligQZys/7NhYC+mPL5cyTr6zLLXTaL
 pdFw==
X-Gm-Message-State: AGi0PuZEukffbC45WW/uHkMF5eDp9OAf8VnDz9uVeuyMWkRljkVIbZDj
 VVnwT/Dpm4ykGkYu6uG5bfFGm0gOEnuQAG/FCA0=
X-Google-Smtp-Source: APiQypKElASdjSWnaOBdC58gTV0Wt00ont2ELD1hXPbLTy0uQ40DB+p2RQwZD+pi9D8nF/waH4pa4cGNCQ5geiA4gqE=
X-Received: by 2002:a2e:9585:: with SMTP id w5mr4791620ljh.178.1585487626080; 
 Sun, 29 Mar 2020 06:13:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200316103911.2681-1-marex@denx.de>
In-Reply-To: <20200316103911.2681-1-marex@denx.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Sun, 29 Mar 2020 10:13:37 -0300
Message-ID: <CAOMZO5D4t1fUtYMc7d+yCGi=sbO0T-TRxqV=fyN9tMj3aNE_qA@mail.gmail.com>
Subject: Re: [PATCH V2] ARM: dts: imx6q-dhcom: Add DH 560-200 display unit
 support
To: Marek Vasut <marex@denx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_061350_486960_D8ACAEA4 
X-CRM114-Status: UNSURE (   7.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Shawn Guo <shawnguo@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek,

On Mon, Mar 16, 2020 at 7:39 AM Marek Vasut <marex@denx.de> wrote:

> +       polytouch@38 {

Generic node name, please: touchscreen@38

> +               pinctrl-names = "default";
> +               pinctrl-0 = <&pinctrl_touchscreen>;
> +               compatible = "edt,edt-ft5x06";

According to Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yaml
the compatible string should be one of:

      - edt,edt-ft5206
      - edt,edt-ft5306
      - edt,edt-ft5406
      - edt,edt-ft5506
      - evervision,ev-ft5726
      - focaltech,ft6236

> +               reg = <0x38>;
> +               interrupt-parent = <&gpio4>;
> +               interrupts = <5 IRQ_TYPE_EDGE_FALLING>; /* GPIO E */
> +               linux,wakeup;

Is this a valid property?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
