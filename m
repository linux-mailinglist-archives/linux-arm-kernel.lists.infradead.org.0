Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E78EFED8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 14:40:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4jiUSTvX4NbcL5HnM6/i7CMByB5GlHB560xQOGd26vk=; b=jU8ApQm7xA8g1V
	Wf+8z1aV7JLP8j5lCVh++SQCY/+8WE4J9QFuj6PjtPoLayObIodRPLCobGI1buyf5QZCQqkc+LcJo
	h0bzS9QHhrVD8gyw0r2zdePC1L5rb4TjYGOd13h0pMCZgINKw06/yaT+QB+h8p+bIZD3uKmQV14HF
	1QuiatmBKkrMHydGSYyagjK8Hhj53FOtJ3C171ROxSEU6wwC4g9hOnhsJuerGK+4blnOAV0J68AMq
	SQKDcC/emvFBMNkOoCgnTQa2Kay5++lBsebc8nOWmueqQabvtMQTd8N7vYotyZSmJINx0n1gmxQpW
	45CGWnPSs68bjU4SMEdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRz4D-0003IP-WD; Tue, 05 Nov 2019 13:40:18 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRz3J-0002e6-VR
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 13:39:23 +0000
Received: by mail-lf1-x141.google.com with SMTP id q28so15182809lfa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 05:39:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Lx5R9M91hw7AQVda3fVTqgIBHSsPMaxO/h4yjUZoaW8=;
 b=k6g6cO2fM1MMRiLFe2P8iE5XAHYbi+WXSuOSXE8xnJWuIhVPed3MbZ3m9hKARNQrHk
 N5WsKk2MfaUglbZIegtZ+++oeNUoQKfoQGyjO3SkiX4yyEoBbUaPQJ0srvCfF23bzzeS
 1W9jF9YSUZ++8ksYphJyafz4H95+Ma3x06UYDvbFJa+2uclCviVZM0gLqwXOLcYPmtOh
 qFGVfJ9bPsQurvh7Cnl7/1j0+kp4JTmKp1H2DUhva8fqEkh8eyUw+dey8YwK/voPFxW+
 tOZmsBPzF8sfuzheVITh7K3g5N0ayQKUe5OEUAdiPPYxZ9cIXZcE+ey48EkybVSAy5e8
 4kow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Lx5R9M91hw7AQVda3fVTqgIBHSsPMaxO/h4yjUZoaW8=;
 b=pYYk5Pk+j7kHI4CQxjWT5wv9h+n6dCq5fmW4vynriECuLzlANqXc8AkTjy9TdlQkUu
 D0GiP8ZXJNPQrk+o80GmUetZO8ORCKgh29h/JBctJpQjqM7fsbyP5KIukwrb+GiJzNEC
 2y/HUif3F13GfC+Rpkd7DT9obyA1ZdYpUriZK5Q29/Kenq2Usewwnr48c0vv8H5Gx+QX
 vYKLgDRVF8agqaIGa2riVGA0GXVj/iITVvxsCFJoeUA5u0BhM0xT7HXhOae7+26An7VZ
 9WJpccxuSHBanIFTDmjF38obrutPrlnLTPUqLxVfK90m+X6BOY9CO5a630PW0HBp0H2o
 QdGg==
X-Gm-Message-State: APjAAAXm/b4VUBKsMiTcAaMfwHz93u8U7ASUcK/snIFpbJSRVrmW4Qm3
 z602QugVg9v7VdpG+AE9xe588PdA6Oybk5Cf5w+Fjo8G
X-Google-Smtp-Source: APXvYqy6/Bvo/lpLBs2iQA2NV4NQ/VGk+XF/CFmx4niHqIZM0x+xiZ0F6hLG2xqiT2ABjcj3NVLdXYSKMgiABYhAXv4=
X-Received: by 2002:ac2:4a8a:: with SMTP id l10mr13068099lfp.185.1572961159968; 
 Tue, 05 Nov 2019 05:39:19 -0800 (PST)
MIME-Version: 1.0
References: <20191105133555.21893-1-aford173@gmail.com>
In-Reply-To: <20191105133555.21893-1-aford173@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 5 Nov 2019 10:39:14 -0300
Message-ID: <CAOMZO5CaAAkO5PwWZwtj_afJnH=Ad-EJyppV3LuH+XpDuNWxRg@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: imx6q-logicpd: Enable ili2117a Touchscreen
To: Adam Ford <aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_053922_043587_894AECAC 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Marek Vasut <marex@denx.de>, Shawn Guo <shawnguo@kernel.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, linux-input@vger.kernel.org,
 Adam Ford <adam.ford@logicpd.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 5, 2019 at 10:36 AM Adam Ford <aford173@gmail.com> wrote:
>
> The LCD used with the imx6q-logicpd board has an integrated
> ili2117a touch controller connected to i2c1.
>
> ili2117 support is scheduled to be introduced for Kernel v5.5.

Maybe this sentence could be put below the --- line?

It will look strange to read this commit log in the future :-)

> This patch adds the node to enable this feature.
>
> Signed-off-by: Adam Ford <aford173@gmail.com>
>
> diff --git a/arch/arm/boot/dts/imx6q-logicpd.dts b/arch/arm/boot/dts/imx6q-logicpd.dts
> index d96ae54be338..a5025f3009a9 100644
> --- a/arch/arm/boot/dts/imx6q-logicpd.dts
> +++ b/arch/arm/boot/dts/imx6q-logicpd.dts
> @@ -73,6 +73,16 @@
>         status = "okay";
>  };
>
> +&i2c1 {
> +       ili_touch: ilitouch@26 {

node names should be generic, so:

touchscreen@26

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
