Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5DD38890
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 13:09:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HUDcgVM3hWFYjWnlGgFW+x+Ag/Aj/zNtbTTR1DQlFl0=; b=AhSxGUeMn2foFV
	klzgEUrXl7RNx5G9PGgcsCaTd9DLBPz79z1nBVsoFkTB8x9PPUpDMva87fbcHFS/JbyLimXzJxnKM
	rFQifWvrns9WgR31OazECopt73cYUPbIdVs1Ugd957yd6rkusQSKMo2Jsf0eFndkgu5o/j1WH+BUa
	oKXVUithMaXM9K8eTU/04kEBurDNr5N5+lsxOAEI4JrPcheNs8FKsEthT058Lrgda+TvXDcTZGVkC
	IUNuFVGbSvxZzq6RQbMfn9gTCJ9DDGKlKGyC+O9WDafBvi0KWvQNue1+R2fX+8Vm02eInEfpUj7y1
	240MJsdDaYdtH/HX6zXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZCkI-0008Mp-5i; Fri, 07 Jun 2019 11:09:18 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZCk7-0008MP-LZ
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 11:09:08 +0000
Received: by mail-it1-x144.google.com with SMTP id x22so2085922itl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 04:09:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4CuFVs80agBK+t28DynbWcbR1IyT1mk+D5vYDwloILM=;
 b=TdDFfVALonHX25UwQFJtO3sqMmxd/dQyZBgp/JwcYPUWeG71JDVwDE4UIQ2zzdgc5h
 dS6sD7TXQTrNhZgbe6vc89B0oJlEfVeFHTdgM7pabd7pXzAloyA4I6xjWJ32tLY4v9SB
 XErhCOyfpCrz1O8dZ0S2QmvcoQno2io1gB+MqsWQNlM0uWb8j3Ie/zxtmP0b4s+VFgjj
 8MNcjuzKe1OIfJnWRs2VKKz/R3kePhUnXNmnc0G28W1fs82oPuHSA9zPz/gdP2ZbYHUk
 rdqUIgMQCfb2qK4GOCFwy7rdt/k3SIxnkx/jmn6pnKkqWuk4aSUW4MSh2izkB5s6kacL
 4c+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4CuFVs80agBK+t28DynbWcbR1IyT1mk+D5vYDwloILM=;
 b=EQ48GKzrP9G5/PjA9fHB3HJZkwk+imSiz13IIn+zVap75nlarcNHcsNaqHNMugvgvt
 oTDoSXH9wAC+K3MSM/h7xZug2gZmgmJqfRvDJc5S0RFNN/+WLTCK4vzXmj3LyE8syzL8
 U5yxsHumU/+PbFudRG/t9Z5rWoB5u2yitjlAO5rNTbbnrplk673q67m3X/jyI7RXom16
 t/4edt+fAP2E575AyXV5G2vQzu2UNolLjCE+skGJJmgJ3RpuH/eYPuuo8MgRkOwWUhkr
 4zZVbamkdyY75waGWotpc7yMQlJzBkuZYzYyyYy6clXTHN+g9cH5/SlAWmqYjMC0o3+x
 lO3Q==
X-Gm-Message-State: APjAAAXcc5xhazcpKXn56ZOi9W9GFEJre4+cR3MKF9/CNXqsbEwIMH02
 HZQuywbqhyoW5KodXQC+4PHU4bvuygOur8N8mQ4CLw==
X-Google-Smtp-Source: APXvYqy+u89bT+ToKVXbGhc20GyNGrWe3C3FoDT3WJNZnupiXCWuif5gv3m1UKEtSYyHF3MfamtT5Xh10NJGnyKbIMU=
X-Received: by 2002:a05:660c:44a:: with SMTP id
 d10mr3330139itl.153.1559905746503; 
 Fri, 07 Jun 2019 04:09:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190607082901.6491-1-lee.jones@linaro.org>
 <20190607082901.6491-2-lee.jones@linaro.org>
In-Reply-To: <20190607082901.6491-2-lee.jones@linaro.org>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 7 Jun 2019 13:08:55 +0200
Message-ID: <CAKv+Gu8UZOKxfkm8Wsc3JB_OYNW08fDp4dBS_7L41GLztcx_Pg@mail.gmail.com>
Subject: Re: [PATCH v2 2/8] i2c: i2c-qcom-geni: Signify successful driver probe
To: Lee Jones <lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_040907_700413_6A998891 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: balbi@kernel.org, wsa+renesas@sang-engineering.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-usb <linux-usb@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Brown <david.brown@linaro.org>, alokc@codeaurora.org,
 linux-i2c <linux-i2c@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Andy Gross <andy.gross@linaro.org>, Jeffrey Hugo <jlhugo@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 7 Jun 2019 at 10:29, Lee Jones <lee.jones@linaro.org> wrote:
>
> The Qualcomm Geni I2C driver currently probes silently which can be
> confusing when debugging potential issues.  Add a low level (INFO)
> print when each I2C controller is successfully initially set-up.
>
> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> ---
>  drivers/i2c/busses/i2c-qcom-geni.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
> index 0fa93b448e8d..720131c40fe0 100644
> --- a/drivers/i2c/busses/i2c-qcom-geni.c
> +++ b/drivers/i2c/busses/i2c-qcom-geni.c
> @@ -598,6 +598,8 @@ static int geni_i2c_probe(struct platform_device *pdev)
>                 return ret;
>         }
>
> +       dev_dbg(&pdev->dev, "Geni-I2C adaptor successfully added\n");
> +
>         return 0;
>  }
>

Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
