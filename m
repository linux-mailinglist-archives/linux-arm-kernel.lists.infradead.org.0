Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6769EB7227
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 06:21:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2B0KPOU/E8EPfzHQ7ApriA+GP2NpwH8YlNxxsANHvds=; b=LgTEwtyPrfvVwr
	+GlBDJDt8JobcBp00pfpJP1EzEe2S68WlOGtlC+C7KpymChCMw+ycEiu3FtGwK7iiYPNy+vmJ8vmn
	U0RI9sKHhLD7JgMHtd41QEhMcloaEVo4YXxi+STze4hGzF6oKsm1emRt0JzmI/DiGIBQHEGLQh4wu
	SeQttdhIugxrHE1S4UgKbdKUUkJHihvW6mmFxlKsPDi+oLwl3f5Gh1io6MRkrNxgWKx//orkdb7+j
	7D+GeHZAiBnMgZrDHyzk2wcyxImYH1IDDJWa69Ynex6V1tmLlaPqFSbOdpoywbWbvXWJ/SOLw87OB
	kthakOoDJ2n3PK7JaExA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAnwK-0006p3-Ay; Thu, 19 Sep 2019 04:21:08 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAnw5-0006nW-L2; Thu, 19 Sep 2019 04:20:54 +0000
Received: by mail-ot1-x344.google.com with SMTP id m19so53371otp.1;
 Wed, 18 Sep 2019 21:20:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=j6ktaKerA6qNCNUVOJpqP9XS7SoRgjTBYtdJRVNyhcw=;
 b=B5ZuP2QirBOxP8R4Vuk7t6QPgJAudPXy3O8bZJY+rcApaDVAU+jgjaU9a1iluML0DJ
 3qAi/Gww7GqOOou2O1sYCeFnsWz5mKYSrbCsdVhWdJ5cpO29uBNTWp7wIOZIlHVLEtvy
 klTgBbplg4XmhPpFOIM0us0oSVRyUOaHlum3QlZ1iM2mHWzGZvHVMWiJUMXv8Qjdsxfc
 v+N8xVfUHouGPsbNQePXKRLwRmCRFVSdLKkvntP2TZsa3CSHyRbEBhfeB6gVSH52yi8V
 PrgXhQlB2flQV6fz+YY3NY+e2glt88lyUd2qwncGUCTiySGRTEoNwVn4Qvf7h4MG5cIy
 sC7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j6ktaKerA6qNCNUVOJpqP9XS7SoRgjTBYtdJRVNyhcw=;
 b=DA7K+KRdbPjBEfJkseoVebJGrBeTUYAzI+iC75QkzqqwwWf9YUH1UdTvByrIIGMZTA
 b8QX94WMW7R7XBigijxEzoa8XKsYXhfdBmi1nZDjcM7qyE8eSbnpKLJKD15vIakJ7Lmh
 aAe9EVtqq661Im/r+gD0DYtg2gVx3Jdp0jlZ5+6ogan3ggQqvXwfQfCjoIXFn7yazr4G
 RsQ5d4iG5yORWW/+qNykCdnc2pelz1m6kwot665TfFc3zh/q85VGoibYJS+lwfhEABqd
 TSZIeUKJqseWYkV9tOQXFcfa9EQtIgg8FZjcUK6bb9oOuxXaTDq3UCVXbYjFP7bQIN1y
 yKMQ==
X-Gm-Message-State: APjAAAVNVX8IintoUGhpScfifjhMDV0wCTfHG5YA8x4Tm6wYcURO6zXC
 pJ+7bWRzd1+ea+zQVJ8DE2rS+jkUqTsrix3FtCU=
X-Google-Smtp-Source: APXvYqxjyCXBVLXbbc37aFrdNvvbQpskLVO+apNEFZ3ayPK48X288HghyPp33qNmLTr3e8fC29soNN0avIt7kWpkVFQ=
X-Received: by 2002:a05:6830:1f0f:: with SMTP id
 u15mr5581667otg.34.1568866850204; 
 Wed, 18 Sep 2019 21:20:50 -0700 (PDT)
MIME-Version: 1.0
References: <1c16a43c-3a01-8a86-02b0-1941ab7321dd@web.de>
In-Reply-To: <1c16a43c-3a01-8a86-02b0-1941ab7321dd@web.de>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Thu, 19 Sep 2019 06:20:39 +0200
Message-ID: <CAMhs-H9q16kGOse9pMbj3O9hoOO5de_wa9VRi_HcPo0_GbTw1g@mail.gmail.com>
Subject: Re: [PATCH] staging: mt7621-pci-phy: Use
 devm_platform_ioremap_resource() in mt7621_pci_phy_probe()
To: Markus Elfring <Markus.Elfring@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_212053_693735_AC038D71 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sergio.paracuellos[at]gmail.com)
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
Cc: devel@driverdev.osuosl.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Neil Brown <neil@brown.name>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, Himanshu Jha <himanshujha199640@gmail.com>,
 Emanuel Bennici <benniciemanuel78@gmail.com>,
 =?UTF-8?Q?Antti_Ker=C3=A4nen?= <detegr@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Markus,

Thanks for the patch. It looks good to me.

On Wed, Sep 18, 2019 at 9:12 PM Markus Elfring <Markus.Elfring@web.de> wrote:
>
> From: Markus Elfring <elfring@users.sourceforge.net>
> Date: Wed, 18 Sep 2019 21:01:32 +0200
>
> Simplify this function implementation by using a known wrapper function.
>
> This issue was detected by using the Coccinelle software.
>
> Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
> ---
>  drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c | 10 +---------
>  1 file changed, 1 insertion(+), 9 deletions(-)
>
> diff --git a/drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c b/drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c
> index d2a07f145143..6ca4a33d13c3 100644
> --- a/drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c
> +++ b/drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c
> @@ -324,7 +324,6 @@ static int mt7621_pci_phy_probe(struct platform_device *pdev)
>         const struct soc_device_attribute *attr;
>         struct phy_provider *provider;
>         struct mt7621_pci_phy *phy;
> -       struct resource *res;
>         int port;
>         void __iomem *port_base;
>
> @@ -344,14 +343,7 @@ static int mt7621_pci_phy_probe(struct platform_device *pdev)
>
>         phy->dev = dev;
>         platform_set_drvdata(pdev, phy);
> -
> -       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -       if (!res) {
> -               dev_err(dev, "failed to get address resource\n");
> -               return -ENXIO;
> -       }
> -
> -       port_base = devm_ioremap_resource(dev, res);
> +       port_base = devm_platform_ioremap_resource(pdev, 0);
>         if (IS_ERR(port_base)) {
>                 dev_err(dev, "failed to remap phy regs\n");
>                 return PTR_ERR(port_base);
> --
> 2.23.0
>

Reviewed-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
