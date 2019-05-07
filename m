Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3EA16BE7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 22:10:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nskmffLDGEBNrYCfZzI4/BhYQxKkcozmzVnn5/2AaNA=; b=mmZNtLPy344Qk/
	XmoVS3jSWupPWZwwjdrv+yLbRIkolODEIgLSOdwC+MjJm8lse4XJybgYJTq2SeErnqntzA6+q5lad
	3cfDANX3XO2W4sA1C1G59kLW8BDEhKGw66cbC0bbZTPr8UXo7cwLpZE3hD//v0K3WwFcOBv1kaebP
	t28XHrhDHwm9ZY+qxfK7T9jlOEjcWMwB9fQYT9ZoyaR+G0cer4ZMap2gaBtFRlUj25Oo7tJ3BNFB7
	YQZ+alFjn1O+Yx3QiJt2CIhLQ/+K92xrcnBHTm1ytCUj/Rv+IgTB8tWRLznLgZncSCqk7dCZXaIOA
	foe3wJJ5BSHmPukHWrPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO6QF-0001Op-0k; Tue, 07 May 2019 20:10:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO6Q8-0001OQ-OG
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 20:10:37 +0000
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com
 [209.85.208.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 11EE520825
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  7 May 2019 20:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557259836;
 bh=oTBgKL5aXOPYEaA0QsHuiiXhVpGLNi15rpzcfvlc1DU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=VZjgbpZPTl/MncgPQqKajohmdLIAXZzdzcb/Bhhm/oAmiUiWlmtVoQxca7vspL/yU
 HAhS97V8BHdCSYRNeyXDgooemuMlOT29lwnuXoFZ2Lmv1i3VkgmsBpmUB0nbRgBixv
 uZajpFvPyz2ZQJHh9Yo4LwloBjWGpW8991VRkrFA=
Received: by mail-ed1-f52.google.com with SMTP id f37so19862176edb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 13:10:36 -0700 (PDT)
X-Gm-Message-State: APjAAAXTgcHOgfwRI38mEPR+553sNa5hzUNtlrpMlhR0O0y3v/KpvbYd
 WNwx7Y+/mxvozPRSJMZmUEe1XGyDpvFT2RFi3+w=
X-Google-Smtp-Source: APXvYqyiCB9JXQ0wLTLu8EE9iNvVNOx/KZdH3UB/pccMW07rIEOkU5//tddBxsd+La7b72Op9PI0/zra1uHwU6biSAo=
X-Received: by 2002:a17:906:4c59:: with SMTP id
 d25mr14287057ejw.195.1557259834620; 
 Tue, 07 May 2019 13:10:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190507194313.1618-1-mdf@kernel.org>
In-Reply-To: <20190507194313.1618-1-mdf@kernel.org>
From: Alan Tull <atull@kernel.org>
Date: Tue, 7 May 2019 15:09:57 -0500
X-Gmail-Original-Message-ID: <CANk1AXTgzAAH+c6oNe-ALZ5vHhUCcdhWYYAs9mbdYSB+bPabJQ@mail.gmail.com>
Message-ID: <CANk1AXTgzAAH+c6oNe-ALZ5vHhUCcdhWYYAs9mbdYSB+bPabJQ@mail.gmail.com>
Subject: Re: [PATCH v2] fpga: zynqmp-fpga: Correctly handle error pointer
To: Moritz Fischer <mdf@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_131036_807472_593B96F6 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: linux-fpga@vger.kernel.org, Dan Carpenter <dan.carpenter@oracle.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Michal Simek <michal.simek@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 7, 2019 at 2:43 PM Moritz Fischer <mdf@kernel.org> wrote:
>
> Fixes the following static checker errors:
>
> drivers/fpga/zynqmp-fpga.c:50 zynqmp_fpga_ops_write()
> error: 'eemi_ops' dereferencing possible ERR_PTR()
>
> drivers/fpga/zynqmp-fpga.c:84 zynqmp_fpga_ops_state()
> error: 'eemi_ops' dereferencing possible ERR_PTR()
>
> Note: This does not handle the EPROBE_DEFER value in a
>       special manner.
>
> Fixes commit c09f7471127e ("fpga manager: Adding FPGA Manager support for
> Xilinx zynqmp")
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Moritz Fischer <mdf@kernel.org>

Acked-by: Alan Tull <atull@kernel.org>

Thanks!
Alan

> ---
>
> Changes from v1:
> - Address Alan's feedback regarding handling both occurences.
>
> ---
>  drivers/fpga/zynqmp-fpga.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/fpga/zynqmp-fpga.c b/drivers/fpga/zynqmp-fpga.c
> index f7cbaadf49ab..b8a88d21d038 100644
> --- a/drivers/fpga/zynqmp-fpga.c
> +++ b/drivers/fpga/zynqmp-fpga.c
> @@ -47,7 +47,7 @@ static int zynqmp_fpga_ops_write(struct fpga_manager *mgr,
>         char *kbuf;
>         int ret;
>
> -       if (!eemi_ops || !eemi_ops->fpga_load)
> +       if (IS_ERR_OR_NULL(eemi_ops) || !eemi_ops->fpga_load)
>                 return -ENXIO;
>
>         priv = mgr->priv;
> @@ -81,7 +81,7 @@ static enum fpga_mgr_states zynqmp_fpga_ops_state(struct fpga_manager *mgr)
>         const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
>         u32 status;
>
> -       if (!eemi_ops || !eemi_ops->fpga_get_status)
> +       if (IS_ERR_OR_NULL(eemi_ops) || !eemi_ops->fpga_get_status)
>                 return FPGA_MGR_STATE_UNKNOWN;
>
>         eemi_ops->fpga_get_status(&status);
> --
> 2.21.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
