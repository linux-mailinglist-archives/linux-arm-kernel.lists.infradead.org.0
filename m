Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 891FD961FB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 16:08:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3OeWozfPpdlcR5WeFtDBTVWSYL2K4dH8BtEs+4IHo/0=; b=P5DwN+ZloxBw0Q
	iizywLHaEsRTff6oeyyukCR2daKl+KSkvdwIMci2cSTZCZm5e4gggMvX8LtjsRVAI6BJ52cRGNWFS
	rkAXXz7/t0RJph7KTkILG2W8VYEUqjIlPjplkRwjf99pEo8AyyCUTjZLW578bLW9z+1Oxjcbd4MmT
	BSGcfp/1LGmDeTjnS2rH6ceS8dqsMnQIblbiNkf0NChEcpEkWE+PtL3GHBh+7b08Kfcv6z3dx3jZx
	63CIa2djdOj3C4Pyw42pvFVp/rszesw5udwd37XT6aNj3T15WWt3cLTFv92kQGJ8Y7IS4wFO+H59U
	HQr+HWtIRYUil1KLKtpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i04oO-0008Tt-RP; Tue, 20 Aug 2019 14:08:37 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i04oC-0008Sy-5D
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 14:08:25 +0000
Received: by mail-io1-xd41.google.com with SMTP id l7so11679039ioj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 07:08:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fpwbVMYwxUnibszpYPVBni4D9LBJrSdVRZvq8XMF3dc=;
 b=S34JO61XhS+u1GLjLFoTUKed6GVRRSgkk3Arpgx8OBkwxsoKRtiCnQQXdc09+4DtHY
 mbX+nvQfIMniKtrO+zL9vNlQ3VrCRvbep47ibmsFcv52bzUWXaJkCH08iw0XyLM/xehS
 uupRlRmIVwXIJsfpP4zE2GykQqXmDmBX33GLxBd/STXzc0pGgRlakZSOnM53B1xxkIoe
 LZ3jV11bWoW9IGZNgh2e+u1eSPggfJ1bH0cPltjml8wFIhvcWhXETP6ZCQphzaboTXmN
 Oh6VpLXyicoyLZjoSpvg5hE7IjJyflldFgYrxVeRgvcK+0oKeVbXjCcWSxVvPEql4j8b
 8XAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fpwbVMYwxUnibszpYPVBni4D9LBJrSdVRZvq8XMF3dc=;
 b=A00bLNGCgfD7ReSV+wXNPIAYVWNboZ4IUFhvg5eLImVJw7VRyJq4rYYfmpgAjc6MvT
 1Kis+qUhouQgBewblt21ilEKmPLf9R0v3LHFunmESlMLfD52BgD2nDPweI9qacld2/0h
 9wR9b2jkLY6CNtgH1oLYlESzt6zAM8nydGMqMTEJ+I5HKNGAmczar6WmyY6JGOX3O8v7
 peDOO93v7GWqoXSin9tB9n+b8nJG0MOAZ0iYXtMR8L9F49otgPRutHRENubifD97orI6
 H7eed6AhpQZ3bzh7nreQC8ImfkOU5bCmGrcR9fysG100RMnLOD8H4e/hB8qyBMdo5GSE
 u8kA==
X-Gm-Message-State: APjAAAV7DzzuL8BP1Pk0tom/thXx6Xl4ecmtM4lt8XjFTtkgxIK6okSA
 0GWvRANFSfAq2UsiBACFbO2EG7ytRSQgC2JYy3I=
X-Google-Smtp-Source: APXvYqzqt6CWsnAUJZOQaWzeo+IS+I+nQxOIPR7m7CFVURAU5XmkaYUTy/8+9wGOBLp/m+OjVQgL/nYA7Z+kXtbaGko=
X-Received: by 2002:a02:8481:: with SMTP id f1mr3948058jai.112.1566310100786; 
 Tue, 20 Aug 2019 07:08:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190820030804.8892-1-andrew.smirnov@gmail.com>
In-Reply-To: <20190820030804.8892-1-andrew.smirnov@gmail.com>
From: Chris Healy <cphealy@gmail.com>
Date: Tue, 20 Aug 2019 07:08:09 -0700
Message-ID: <CAFXsbZoaZoM=1ue9vDpHhVgCaoymP=y8qza4U9Hsrh2wzsH_bQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: vf610-zii-cfu1: Slow I2C0 down to 100kHz
To: Andrey Smirnov <andrew.smirnov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_070824_200856_BC342DBD 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cphealy[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 8:08 PM Andrey Smirnov <andrew.smirnov@gmail.com> wrote:
>
> Fiber-optic module attached to the bus is only rated to work at
> 100kHz, so drop the bus frequncy to accomodate that.
>
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Chris Healy <cphealy@gmail.com>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>  arch/arm/boot/dts/vf610-zii-cfu1.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/boot/dts/vf610-zii-cfu1.dts b/arch/arm/boot/dts/vf610-zii-cfu1.dts
> index ff460a1de85a..28732249cfc0 100644
> --- a/arch/arm/boot/dts/vf610-zii-cfu1.dts
> +++ b/arch/arm/boot/dts/vf610-zii-cfu1.dts
> @@ -207,7 +207,7 @@
>  };
>
>  &i2c0 {
> -       clock-frequency = <400000>;
> +       clock-frequency = <100000>;
>         pinctrl-names = "default";
>         pinctrl-0 = <&pinctrl_i2c0>;
>         status = "okay";
> --
> 2.21.0
>

Reviewed-by: Chris Healy <cphealy@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
