Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 184877B47C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 22:46:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MaTNa5+in8SHS5i8F/671G+jk1h1zoWQtJdtskm5/lA=; b=SwrBaKpuooKKa4
	4M5/Pv61vC6adO67KtyEhrKMLTW7iKnKBTUwJi6OQofhkfZ/RR6Ph/6ycC3gbCSEdMi+gl+pL7N1o
	O0mVbEP6/OIMwvDnZvJKJJCilCPANjZyaQqXdJ0MtPlgQvkQU6idArC+dXPcM0VjR3fQUf6tqXs6d
	755DHaKHbQo1uNYN1Wg7avX1ibg9Nj7F/DBMIfjbamH+c89IAVcsjwtOecNRa/6DjZ2h3fP5/iE4D
	Bju0K4ZV0LNN5EEnC5ty06PPKGX1PjolXLgHONcD7bbPxBOcsqhhAYdPa0F576X/QKNj8UxUBomcT
	9/UV/oM0uk+XJUQw/TGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsZ0z-00061S-22; Tue, 30 Jul 2019 20:46:33 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsZ0q-000611-SC
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 20:46:26 +0000
Received: by mail-lj1-x243.google.com with SMTP id y17so38835545ljk.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 13:46:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Fnv5nFefw/7jm/2yZ6EkTWBwC2rqBjCv97bX7R5gsmY=;
 b=AvjGOU3mXoTh82z+t2IPNAKmRe57uoapezbR5nSLRJ9W0Ck3IR2/8zUBrSBUSry4U1
 7617CGqztHoKjbZgkP8qZxQnC75QnSELpy/gDF9ugrgktdfWr6a9QVMTFoT2TAIX4yQ/
 6pSyIM8StMRjxVouxe8qb9ocN17lIhWeHoFlyAeIN8Jnm6i2hYQrT4lmktKd/i0PGP0d
 JTt2c5XDCb5+3nEzfuIUeVHfYjbpVANzMT8GpBZL5umcOWOHcoGX42ktUc1hm+rNwN75
 yw5ugapCnVk+c4DR2S2xvnoIr8mUrMB/ZtlLVkTeHZCldgfXe1I6+vHeMuFvl0Ifw/g/
 w12Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Fnv5nFefw/7jm/2yZ6EkTWBwC2rqBjCv97bX7R5gsmY=;
 b=lRFyUN3GT8VSGC2AWtOsqzccw7NRa2euXOHKUxzu5ZbgEs83sER9t7m5rAOgYXPfD4
 j/w8HfVo2j3776YrtV3tYeimNSOnTsYBF6Q1/TpXPiGVmffWatDYlwGgq2oQGq0/EI3E
 cKmhTVstY7fbpMeTGPzoVqCH2lXGxwGO+lBFFGF9xEzIxT1Q9mwk5umwHJTm3gOAmayJ
 xCqP05zL5XUh7lfTgnug4zNXcY4yxINvrPIsz0WUoI8JuwcLk/9AnU+Z3k9tzouCKFG+
 zrmcZ4yEO84zNRsUpvIKB7q8m2/O5gjs8wMeN80ETNWCc35RCJS00KfkhxnwXMWQVKO3
 LHcg==
X-Gm-Message-State: APjAAAUrefji109EFHcKxVfbyiXITF0FoQmHVFn2OVEpx4jZnu9cR29C
 SyPc7v2HdLps7TpxVaxHwx8LOGxFGPF0AIscbJM=
X-Google-Smtp-Source: APXvYqwZR0HlzGm1q4rErB7IZwHUYk+BIas+baAMWS2NtitNJ7sN4NcuNxK+n5zq7+I2M7S3roUAK0iOaJi+qlsXg74=
X-Received: by 2002:a2e:5dc6:: with SMTP id v67mr62303623lje.240.1564519583019; 
 Tue, 30 Jul 2019 13:46:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190730144649.19022-1-dev@pschenker.ch>
 <20190730144649.19022-13-dev@pschenker.ch>
In-Reply-To: <20190730144649.19022-13-dev@pschenker.ch>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 30 Jul 2019 17:46:28 -0300
Message-ID: <CAOMZO5DRi6yawn3RF-Mouiejz0nc7htdsCjOBC_EXZZKUZ3nvA@mail.gmail.com>
Subject: Re: [PATCH 12/22] ARM: dts: imx6: Add touchscreens used on Toradex
 eval boards
To: Philippe Schenker <dev@pschenker.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_134624_914640_4193ED36 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 <devicetree@vger.kernel.org>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Stefan Agner <stefan@agner.ch>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 11:57 AM Philippe Schenker <dev@pschenker.ch> wrote:

> +       /* Atmel maxtouch controller */
> +       atmel_mxt_ts: atmel_mxt_ts@4a {

Generic node names, please:

touchscreen@4a

> +               compatible = "atmel,maxtouch";
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&pinctrl_pcap_1>;
> +               reg = <0x4a>;
> +               interrupt-parent = <&gpio1>;
> +               interrupts = <9 IRQ_TYPE_EDGE_FALLING>; /* SODIMM 28 */
> +               reset-gpios = <&gpio2 10 GPIO_ACTIVE_HIGH>; /* SODIMM 30 */
> +               status = "disabled";
> +       };
> +
> +       /*
> +        * the PCAPs use SODIMM 28/30, also used for PWM<B>, PWM<C>, aka pwm1,
> +        * pwm4. So if you enable one of the PCAP controllers disable the pwms.
> +        */
> +       pcap: pcap@10 {

touchscreen@10

> +               /* TouchRevolution Fusion 7 and 10 multi-touch controller */
> +               compatible = "touchrevolution,fusion-f0710a";

I do not find this binding documented.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
