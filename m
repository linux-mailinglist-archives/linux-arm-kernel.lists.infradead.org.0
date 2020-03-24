Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C32F190A38
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 11:08:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lQ07Rgtag8a4QX7crqN95xZ8F6TjWNIWbjq03/tzOS4=; b=YpXzHgJOOtAUXI
	roSJSIQY4DLQFBRuUcD8iaupDZ0p7ulsZs2tJEqBHYMKT8YeYd4MPtE8zkrt3ZKgOJOJZDt27kXHx
	azwxwITBgliw/h5wSeUBPO7CWDg66Tsjf6MlaTBsdkO1f5tPSI1YFC7iLGWzwo+jsOZ9hOkgAX2Kz
	j4HV8qAvD/kluVrVRzb6aNSAm4GG4q3xwNXDqfgkSMOpFKu6OMX/Y4hiM9rgxfrZz5Q0FlFAVqh1L
	bnT9vVDHJQffk6RiUFBFc8tmfV7ixrxv8fXiXpRybDJg2YI/yQjs1K0IGQm5nCJWeLvz4Ei00hYW/
	JZwEsK3tBkaXgJt8QbMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGgTm-0004YB-CS; Tue, 24 Mar 2020 10:08:14 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGgTe-0004Xh-9r
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 10:08:07 +0000
Received: by mail-lj1-x241.google.com with SMTP id f20so2050144ljm.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 03:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+hZ65XZAECI13h5Z48hKUJAU3w4Fn/BePKlMWYL1X7s=;
 b=sMtlkbmRrGvFqFI2UE7UZ9aJQQKui0autDOPLlrUmhH2phCgjl6GzCZwMxGFgScJCf
 cccphOb9FEx1IGESneXBEmoWW5Fu4gB6HTYhAc4HYMFUw5y+XKBCGwuLFCrC9fXW+bW5
 jlcjjQm9EoKkH6XmAgdJCIe6s6bzhOoWSxlTJwqDL9sC56oGKELNlav8RzC72vTXi3uz
 lNpgbCJYhVDPcrbInSNHZIc0gfbflElYObjImQxyhaRwxeAKusNE9hIlqnyW3IbhihTi
 TiNYmMGKCnRTc81EK33ldsuGxjR61njADkbQjEHkVSfXi2Nre1avm5ztxTwuvO7wTA9v
 oZ6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+hZ65XZAECI13h5Z48hKUJAU3w4Fn/BePKlMWYL1X7s=;
 b=YC6LcQEDjfi33yzIgb3+pcskWw13erbGQEB+z/wPru+ReX4skQNi7CtRFSQX6i4Eta
 Cjm30pkh2DLJ0kRNWu9pkVreOKBRAitymn6j4b8OO9p7eoPfRcfeUzuPpT0C+0kSIZ2w
 ifoYX+f8+WYisZDNpMSIXt4/2qZ7PMU7JVK9tQuKwd/UdDUY6PhdZlMvgkNkt7YZAPi1
 RO90TjoGFLIXn7xV3Z4Rm+or7pIvxikDzgFmP1I633iCn5zH7R6zdLVKujvAoAHY30YE
 3rAOneqS4YGaI+ABpS256IvgMHqZAEoxMdc6urf8w7oz49ZCms5Rf1QemceBUwA5HxF1
 LJDg==
X-Gm-Message-State: ANhLgQ2C0u6bYS3vUWu6piaM9FQNrLKsP3iI+9+4gkxN5X9gD2bAkIdf
 4cwuCd4rLfYKwiBdgK8Fb3Dw9xpKK1u/AB0fLWtrr6UH
X-Google-Smtp-Source: ADFU+vtRqjkRCEZR9MK8m4ZlzFWlSjfnv7BQ6lm4n2aXIuPChe1msp44enWhw5wSMm4GPDbu3642TEonLEbWqwvhm2I=
X-Received: by 2002:a2e:8350:: with SMTP id l16mr16009466ljh.202.1585044483534; 
 Tue, 24 Mar 2020 03:08:03 -0700 (PDT)
MIME-Version: 1.0
References: <1584879089-12123-1-git-send-email-amittomer25@gmail.com>
 <2f0d4f51-203d-70aa-f64e-6bf663f06f9a@suse.de>
In-Reply-To: <2f0d4f51-203d-70aa-f64e-6bf663f06f9a@suse.de>
From: Amit Tomer <amittomer25@gmail.com>
Date: Tue, 24 Mar 2020 15:37:26 +0530
Message-ID: <CABHD4K_dM8S33NTZr8S63fEecrgjV_YDzQmGanUZTc67fucYwQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: clock: Use "CLK_ETHERNET" for the Ethernet
 clock
To: =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_030806_342167_3E9DB66F 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: robh@kernel.org, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Andre Przywara <andre.przywara@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andreas,

> Never mix changes to bindings and drivers. Separating them exposes the
> difficulty in the change your proposing:

Thanks for letting me know, wasn't aware about this rule.

> > diff --git a/drivers/clk/actions/owl-s900.c b/drivers/clk/actions/owl-s900.c
> > index 7908909..5293086 100644
> > --- a/drivers/clk/actions/owl-s900.c
> > +++ b/drivers/clk/actions/owl-s900.c
> > @@ -648,7 +648,7 @@ static struct clk_hw_onecell_data s900_hw_clks = {
> >               [CLK_DE0]               = &de_clk.common.hw,
> >               [CLK_DMM]               = &dmm_clk.common.hw,
> >               [CLK_EDP]               = &edp_clk.common.hw,
> > -             [CLK_ETH_MAC]           = &eth_mac_clk.common.hw,
> > +             [CLK_ETHERNET]          = &eth_mac_clk.common.hw,
> >               [CLK_GPU_CORE]          = &gpu_core_clk.common.hw,
> >               [CLK_GPU_MEM]           = &gpu_mem_clk.common.hw,
> >               [CLK_GPU_SYS]           = &gpu_sys_clk.common.hw,
> > diff --git a/include/dt-bindings/clock/actions,s900-cmu.h b/include/dt-bindings/clock/actions,s900-cmu.h
> > index 7c12515..2247f1c 100644
> > --- a/include/dt-bindings/clock/actions,s900-cmu.h
> > +++ b/include/dt-bindings/clock/actions,s900-cmu.h
> > @@ -121,7 +121,7 @@
> >   #define CLK_DDR1                    97
> >   #define CLK_DMM                             98
> >
> > -#define CLK_ETH_MAC                  99
> > +#define CLK_ETHERNET                 99
>
> The bindings are not supposed to change in breaking ways. What you could
> consider instead is to define CLK_ETHERNET as alias, keeping CLK_ETH_MAC
> for backwards compatibility.

Sure, I would try using CLK_ETHERNET as alias in U-BOOT and see how it goes.

Thanks,
-Amit

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
