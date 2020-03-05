Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34A5917AA56
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 17:17:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xf691g0UfSC5+6jhl49prdoqOrqHKsr9Cgtayrc6F8I=; b=GfsIlBwVljxVd/
	IQ6YlME+GkOH6q/OdfZFu6cnK3+K08rAwXvnkKOJs0RUe2CWNxzcuJkZARQMv3zFZgiRd0T0LI1G3
	oFIDQ6LkVcOfTXnBRESE4R1DHje8YEj1Z2mu1iZ3i9o2g+lHBqcW0S6BK4tqbLk6FEN4tqT7NoKTd
	7dX0L2SAMtyS5/gQn95y3kXMqar+in0XUdMExTkAGSwpjU5fFkJzrMmujKgE2a44yMJL1ed5PO1xB
	RvunUKvs24d4yZr1cMtQT8PtZXim25O8K2OVqJ+yrR6mroi44fYUTtxPKUf4omdb8x7itvD6QwNfF
	29zkeNbEGqAanxu4ZcNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9tBQ-0006bF-N0; Thu, 05 Mar 2020 16:17:12 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9tBI-0006aQ-Is
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 16:17:05 +0000
Received: by mail-io1-xd43.google.com with SMTP id n21so7057400ioo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Mar 2020 08:17:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EKjzEJMa9fe0PK3n0GkSSdo/FdjChSUpIwJDlTYh97U=;
 b=QiMaHeiSTJFP6UFJmbCXKjB+4nX0XCEjJu+Rsrs6hvaZ9brVoePcMg71hYOmttDytV
 Dhk1MdOs+qEZGatjDQ4OlqOsagcAfN6ua+iOtlMCg4Vu25OgIbsoGMIkI+TWobK3/lz2
 o78biGJDirONtSS2xRidOq8Mq6L2qZ3tTogPcEaKZ+XxidOZqmPXMBScwoIS6xajXiBn
 MdnAXtKjreVO43RPngwPA8kFjwZfPAjIF/Cfu4tjSQZWDBHgMnCokRplyIQqtnNPKk3z
 v3Xy7ZlT8IAc789E7dXAto/cJFpLbHbSA0H7ZdET+f/HWzkny87uDeD9uBWle7cMAqni
 qjVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EKjzEJMa9fe0PK3n0GkSSdo/FdjChSUpIwJDlTYh97U=;
 b=HNtGq6myvvSZqkap0wQqUAJ+EavXk0V9lXHSZo8/yYMDZikXIzI17NxjWWoswLhkhD
 1BeutSdrTCAsOQUXRZtZ6ZPpnvEdXMHeP+Vx5OipL0utn4m5yicFsBMA3mjQYVX7h3kZ
 ByFUYDBq91yuCtFtUSDq3Bq675HA2tAGqyFjaiC5xmxqg8Om6WLQCltZ8hE/+tORIA+F
 vKIBvPAdgUTG9kwW/gINwgmV+C4i0DkT97NTlhX9dildMXiHF8B1XeQ55HUl58D4A8JE
 wvRKPwSqKjKoLcTf/fga2mapoo7xNWkDx10cvEkRIG/OR/lgVp52/iKCzTfYStm11lqC
 pBdg==
X-Gm-Message-State: ANhLgQ1WyO+Gpcr1ShKeFYhPCpzILE7rBXZlrB7Xr7VN5duCW+Nf5a8Y
 OQpgF/jpVFjfbYvy09nkVeJt2UxNLKL9ZQaTNcOMiw==
X-Google-Smtp-Source: ADFU+vs/EhZ+fp249v7LdQYx8Y8WWjr0qHKosDWHsPMEx9WRmNCCS8qpg2xo/DQYa5d00clxO7cglhbSPdx+Pwph6Us=
X-Received: by 2002:a5d:9b94:: with SMTP id r20mr7035294iom.140.1583425022687; 
 Thu, 05 Mar 2020 08:17:02 -0800 (PST)
MIME-Version: 1.0
References: <20200304142628.8471-1-NShubin@topcon.com>
In-Reply-To: <20200304142628.8471-1-NShubin@topcon.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Thu, 5 Mar 2020 09:16:51 -0700
Message-ID: <CANLsYkzPROdphvmtpZ6YiajZ2dYLrojC-rGYkq4jK2yzTnAJ5A@mail.gmail.com>
Subject: Re: [PATCH 1/2] remoteproc: imx_rproc: dummy kick method
To: Nikita Shubin <NShubin@topcon.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_081704_684798_80A3E0C0 
X-CRM114-Status: GOOD (  15.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-remoteproc <linux-remoteproc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 4 Mar 2020 at 07:25, Nikita Shubin <NShubin@topcon.com> wrote:
>
> add kick method that does nothing, to avoid errors in rproc_virtio_notify.
>
> Signed-off-by: Nikita Shubin <NShubin@topcon.com>
> ---
>  drivers/remoteproc/imx_rproc.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/drivers/remoteproc/imx_rproc.c b/drivers/remoteproc/imx_rproc.c
> index 3e72b6f38d4b..796b6b86550a 100644
> --- a/drivers/remoteproc/imx_rproc.c
> +++ b/drivers/remoteproc/imx_rproc.c
> @@ -240,9 +240,15 @@ static void *imx_rproc_da_to_va(struct rproc *rproc, u64 da, int len)
>         return va;
>  }
>
> +static void imx_rproc_kick(struct rproc *rproc, int vqid)
> +{
> +
> +}
> +

If rproc::kick() is empty, how does the MCU know there is packets to
fetch in the virtio queues?

>  static const struct rproc_ops imx_rproc_ops = {
>         .start          = imx_rproc_start,
>         .stop           = imx_rproc_stop,
> +       .kick           = imx_rproc_kick,
>         .da_to_va       = imx_rproc_da_to_va,
>  };
>
> --
> 2.24.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
