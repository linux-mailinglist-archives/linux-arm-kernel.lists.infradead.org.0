Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66495194149
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 15:28:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hqw1kfAdiw9f4W0vcQl52DIpf93M2A0/ZQYFLG0ITpc=; b=OlGh4gA11raR2B
	59NBl7RBvISGfkGaE/q69ep9rspF12rwH2pQtRdJXuWC6XO048A2jpdXORUB+Pc1HsOTMvEFCH08M
	K/uMJ252+AdDJpnkR9pseAZeUs6NAhY9uw8O+nXSl4kqUfUMDwTTBhQnsgtB2m2NheAZI11HGASHZ
	L9qQc2Tdln5+ubpdq9YOAHRTgqPSSASBmS+1GJ4pIr6iUyV0afMBjP38JAoMbmYZX1pvXO42Y5PfT
	QSmzRx89xvL/h0pG7OXh5gSebzcTSwWi2fmBakU39DIq5G9qBpG2HwMSYaAKkrAyFy81b3Wg5cGt8
	UFIxTcPw5BMYktR8MMbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHTUU-00029F-EM; Thu, 26 Mar 2020 14:28:14 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHTUL-00028I-69
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 14:28:06 +0000
Received: by mail-vs1-xe43.google.com with SMTP id o3so3953490vsd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 07:28:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Nwrqr8fUwcczi1tkKbhoCAaTj0Lz9vANHD/lv6450Ik=;
 b=s0AYeRSme5ZYMG5Hj00MtSphy+ZF1hJEIT/x2laNKAPH6uwyawibNxjdwbP2n3VcAz
 csHlsS0gxGoa5DicQVyRyza5fvlnbU7gXob7YwmrF1iP6Arowk1BTPlr0kz4O3XeecgF
 1zk9ZTQ+jv4zeHagRLkhqZrvKEFdH+oNeK135nUnNRS91hY2ue714O+FEjcV14/4YNSF
 LfEKcr0FypAkSBknWreQBXQ7JbSB7qSlCdDz+6IHoDYmn4ebQwicF5K71DOR0GD0cCFh
 bCHWHd0BIGOXrsyTGs9lNM+SLJBnuSpHOhufi/2mLRvJCbJQ5z5/y/CztJiv8Q92tTQi
 xs6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Nwrqr8fUwcczi1tkKbhoCAaTj0Lz9vANHD/lv6450Ik=;
 b=IOtBX9TApiJyHn+xrfkdGNA2wk592ZRbREH2GyWE4U1YwjDVW3uToAwLdgO7ENcnU9
 K4LA/BLB7+Rt3CK7fcWvjDgtlWj4Da9a7zKYlhIPiCdl/x2Oj0o5uWE3aim1svpN0o7X
 iTkWQvmYS+VsKehcZmhZwjw0hGfiFoOa8ERX9IhKK/8GCvs2bt2iVaAQ5uKE/3GfkrX5
 fg4HwOtW4zoQnANjTMCnR0SBBOBFp/nAFfzoBgpG1NmaRb2TY7qP4BZmybaX8+zOZS5y
 7ydJQZVKJSQe26IaWLLeDevfF1ldAXl6MO/klNoVl/6B1EJDTwbEBeUi/efzpvFzFjMg
 SFxA==
X-Gm-Message-State: ANhLgQ37CBdXrFnW6CaWuYItELlcGowJOZIPF0yCiHUKef2VLkVswbIn
 KYEllCdiaTzPRHKAh0Afi2k0C9ovcq+b5ggvIAxeRQ==
X-Google-Smtp-Source: ADFU+vsDl0E1ShxlqFNIKGgRphr3dXzKQ2BouqsiqJSyqwn2BTjEQZNw7vYZJmX1XaoteUXkIePuQWywtUNQtEW50KM=
X-Received: by 2002:a67:2ec6:: with SMTP id u189mr7072856vsu.200.1585232883289; 
 Thu, 26 Mar 2020 07:28:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200325143409.13005-1-ludovic.barre@st.com>
 <20200325143409.13005-3-ludovic.barre@st.com>
In-Reply-To: <20200325143409.13005-3-ludovic.barre@st.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 26 Mar 2020 15:27:27 +0100
Message-ID: <CAPDyKFpO40Ois8pNwYOeqZrJbV9UeCLok=i8z4GWML+A7TP2-w@mail.gmail.com>
Subject: Re: [PATCH V2 2/2] mmc: mmci: initialize pwr|clk|datactrl_reg with
 their hardware values
To: Ludovic Barre <ludovic.barre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_072805_241665_E2E48082 
X-CRM114-Status: GOOD (  18.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: DTML <devicetree@vger.kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Srini Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 25 Mar 2020 at 15:34, Ludovic Barre <ludovic.barre@st.com> wrote:
>
> In mmci_write_pwr|clk|datactrlreg functions, if the desired value
> is equal to corresponding variable (pwr_reg|clk_reg|datactrl_reg),
> the value is not written in the register.
>
> At probe pwr|clk|datactrl_reg of mmci_host structure are initialized
> to 0 (kzalloc of mmc_alloc_host). But they does not necessarily reflect
> hardware value of these registers, if they are used while boot level.
> This is problematic, if we want to write 0 in these registers.

It could be, but I don't see that we ever needs to do that - at least
not before we have written some other non-zero values to them (through
the helper functions).

>
> This patch initializes pwr|clk|datactrl_reg variables with their
> hardware values while probing.

Hmm, so in principle this change seems quite okay, but I am hesitant
to pick it up - unless it really addresses a problem that you have
observed.

The reason is, this change may lead to avoiding to re-write the
register with the same value it got during boot - and who knows what
is best here.

Kind regards
Uffe

>
> Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
> ---
>  drivers/mmc/host/mmci.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/mmc/host/mmci.c b/drivers/mmc/host/mmci.c
> index 647567def612..f378ae18d5dc 100644
> --- a/drivers/mmc/host/mmci.c
> +++ b/drivers/mmc/host/mmci.c
> @@ -2085,6 +2085,10 @@ static int mmci_probe(struct amba_device *dev,
>         else if (plat->ocr_mask)
>                 dev_warn(mmc_dev(mmc), "Platform OCR mask is ignored\n");
>
> +       host->pwr_reg = readl_relaxed(host->base + MMCIPOWER);
> +       host->clk_reg = readl_relaxed(host->base + MMCICLOCK);
> +       host->datactrl_reg = readl_relaxed(host->base + MMCIDATACTRL);
> +
>         /* We support these capabilities. */
>         mmc->caps |= MMC_CAP_CMD23;
>
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
