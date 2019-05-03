Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE8813205
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 18:19:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tMkeGoNseo2Lij5gmUbNspTp4QlWSYpLLMFeFFTPTAM=; b=McoC3YIAfzvjkK
	++7qVZgD1cSrQZTdkP2q4IkgfpjKrvmU4nghoKcGLt6VDKO4mtJqGUDyH/pq9yk8PFbaexqQwWazz
	Pn9xoQlvv4rn3Tzkjv29ukk9Eq4S9nJCtc5Ux8saKXCkliN+2JMHufQTjCmAzesHHA8Ib/wGpOj0+
	s39UuZiJfQrN7GQq3aYw8TNu1iAXlwuki/18BGrlIIJ2Gc4aDuN2iOV36OYcCvpy7xL3W+/gVSwDw
	whnpVgjhIEEQQkx+gHS+eqiq+INgI/s0xXCz4ePCszt+laCi+G6E8yHrgv9ALlSEDnRi+T6bScCGU
	CuZZ6XT6Nc+KW+W84G7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMauN-0007gh-1j; Fri, 03 May 2019 16:19:35 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMauE-0007fk-Vu
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 16:19:28 +0000
Received: by mail-lj1-x244.google.com with SMTP id s7so287662ljh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 09:19:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Z8XfvrWHQrG8pFf6VAlALdHpgI1ybJnNhuKAeSk0E5w=;
 b=l7W6ewczDQ2ADucoNIqF0xL+e4qawtSPR4C9VqshxVgl0k/jz9dxs8IkSjL7boCZMW
 XKS0MzlU8Ls1e8PWmR211xsMUvMDxZPlgFv6cWhxHQxueVNoVx83rWyTyMSsu9e5PvfJ
 br3U4hu9azE0mwWOuPlArn0kCxJrumH4pVtynsuO2k08xCiB6Dv0fOHD3Z5CSmAH9SiF
 jFT37OLSQFaRpHI7A0/LdmBmRt6DHpuUjQar1XDIjfRImOGRBhu9TlcuezUUNbHmHhrh
 PX8e5hJOrrBPwT2w7Nmw0ZtY0k8QYCbDzjOHcF2ghBUSDapIGcUcGT0/kTjWkW8slqS5
 4ONQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Z8XfvrWHQrG8pFf6VAlALdHpgI1ybJnNhuKAeSk0E5w=;
 b=ijz7ecNLJJyPNzSTxqwx3jWMO1gtD0dAJhUR5uRKGU5j6FaQE9y8AxE+2maEGMGlpW
 eQHaYheeCfAZd5LX8TVs/nJ8AYvdUCki6w3/zSVRERr+m4oLNvQD1TX0VIOdr8i6PDsn
 +3OZr8uHPImeiu+4iCPTqOn2BYLbRWowax4IU5nsaKODIqljXIFAXw9hG8CIKW6rqxxF
 BOWkEaFbVwIUQdmWIA/S4VpYh5DHpREVoPj3cnv8ApJ2Md/o62KSeaxx595Mp8bOE+kV
 9PDckK7dyk1ml/1jZ1x59ytKh14kUtPokDsZQn0DcRi1VQeUetb+3+496E0pmBGff+DB
 rPKg==
X-Gm-Message-State: APjAAAWLEGFSVMph/7xdzrmMmVQVj1St4N2vK+euMZttp6hD9DjWASYg
 5+XdD7B9ks45KtaPDozQhZR+UrUnXi5kYal4+XJ6SvWCTJk=
X-Google-Smtp-Source: APXvYqxW3qmsd/asuSY3DNJ6+Q73Pns3CRGPATx7rQ0atM/eDARR4IHBSvqbaAMTXg9wwbSYEjBGgZli9SdvZGYMeW4=
X-Received: by 2002:a2e:97d8:: with SMTP id m24mr5566176ljj.192.1556900364916; 
 Fri, 03 May 2019 09:19:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190503155235.6414-1-marex@denx.de>
 <20190503155235.6414-3-marex@denx.de>
In-Reply-To: <20190503155235.6414-3-marex@denx.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 3 May 2019 13:19:24 -0300
Message-ID: <CAOMZO5C6zDP7W=BVSDGvNA0GtS6iGTHBNTsDjFN_tNdEbL+VEQ@mail.gmail.com>
Subject: Re: [PATCH 3/8] ARM: dts: imx53: Add ethernet PHY reset on M53Menlo
To: Marek Vasut <marex@denx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_091927_022360_A3649A06 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Shawn Guo <shawnguo@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 3, 2019 at 12:52 PM Marek Vasut <marex@denx.de> wrote:
>
> diff --git a/arch/arm/boot/dts/imx53-m53menlo.dts b/arch/arm/boot/dts/imx53-m53menlo.dts
> index 46f990759660..a4cd2c22fa9e 100644
> --- a/arch/arm/boot/dts/imx53-m53menlo.dts
> +++ b/arch/arm/boot/dts/imx53-m53menlo.dts
> @@ -86,6 +86,7 @@
>         pinctrl-names = "default";
>         pinctrl-0 = <&pinctrl_fec>;
>         phy-mode = "rmii";
> +       phy-reset-gpios = <&gpio7 7 GPIO_ACTIVE_HIGH>;

I suppose that this should be GPIO_ACTIVE_LOW instead.

The FEC driver ignores the phy-reset-gpios polarity and it assumes
active low unless the property 'phy-reset-active-high' is passed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
