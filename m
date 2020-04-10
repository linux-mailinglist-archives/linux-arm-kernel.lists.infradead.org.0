Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC471A3E2A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 04:24:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pNl8vfgXT9B14zJZxjjcgpUpJvBTxRwJZq43qstLgrc=; b=DgCHrkH4Ef04Jd
	6guT7ycwbKadYfsz4OaFnhI3qGcn21FRzc6kWC6i9UgLRursThYNBx6KY0niQ3THBR2G5T79WPX7V
	jZkN88cGWkNGGwZ+lYvIL44+/3I1HDLVaPGQ8/NcnV2slOdqL+RXtVuV4w/1j2TQIpK4GvWlsDF1U
	YbndJHCSb4RhLNM+wuIP81rYrLG+npBw9XiN4wDhbIqHpFwWyqU/uI1JmpPnwKHLQWySVPa/B7yHc
	6qt0VvxeAgowbR0v4RmqEdsGiQnYskhU1bJv56KN+59mk+6LMMo1z6twjkAhgbc7lnQUxCoErnrbJ
	rLp8iMwGpOaH0u0JaIhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMjKl-0001ht-JA; Fri, 10 Apr 2020 02:23:55 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMjKf-0001gn-LN
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 02:23:50 +0000
Received: by mail-lj1-x242.google.com with SMTP id n17so599824lji.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 19:23:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=C7nub2iC7HflOtCQHAAafbgeNv5reSfX1ICVh/feaUg=;
 b=JFVBcnHtGbIdWIzex5YH9WvtY0JYL61bG3IWoWHDvhab8sS7zyKzabEW+N1KhP6CDJ
 o//t4xh1c9ED3fWEGmYjw8T9ATBMJ/HsSaaCo2OzTHaNWXgova2j3RPoUf7Jcb/KRTfd
 thrhVzgcQM1Cdxy4FaObzOCGdPDYBMaTZAh9N14VKmxdNK2cxmxyAuU5S+jBoK6qlwH9
 SdXdmi1R2j4UVjl94PbHzLTiGa8dXQ+8UN2Tj2PggHIHyEcZC9GQblO15j3CWmobYXZQ
 C2ZtS8XrVOnIW0U/pRCtlF/VPDHqKhnaU/byLhjlQEN/YjHPMXbO8ctaE6Hs/jQceDBx
 YdHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=C7nub2iC7HflOtCQHAAafbgeNv5reSfX1ICVh/feaUg=;
 b=sd0+lqbCQAuACKkPmuxx8txenWbz9sHxSzYod5yINFAZF2jBhqg/QWEJY3dToZSlpg
 jz/jE0LMIyG8nE3hRwR2xCz/Jz+vqS2wYjb+s7z/7b3jUbs788MNBSB3C2yWfrwNQ/ZW
 Wg+VTqOp+fh23zZ7YdkZXvLo4edGPk6w9tZxgc5z489VTmZdf4I1z7C7Er8Fh4kN7FtO
 4BrykHsSnlXYsj+RpxPihMMxl/B2rPOVPgc0WBAoWm9Fmh0YYIsKS4gafmwJyh0b+xoc
 42kyeLUSppwEFPXaWzb5uQySNCaYKhIicTPEE2B2WGhqv8rYBeoQF7Hp6eOuaVSZhJcr
 xeRQ==
X-Gm-Message-State: AGi0PuaKEy3Yu+CHKo+zBJ+Q8cIrw1DVXpY8+jVbQThxLoWDkuq3Kvwb
 mdB5VAJZadhUQ9ozVSK7lLGQ12KkR4VO/JZpX6I=
X-Google-Smtp-Source: APiQypLnZGTvqOGESVBjKQo4/Lj3hRB1ay/3mDXASjqrLo7VK00BjILY9FTR5FqYsL8gYvGI1WpmBu69VNNGszWlHjI=
X-Received: by 2002:a2e:974d:: with SMTP id f13mr1694240ljj.178.1586485424861; 
 Thu, 09 Apr 2020 19:23:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200410004738.19668-1-ansuelsmth@gmail.com>
 <20200410004738.19668-3-ansuelsmth@gmail.com>
In-Reply-To: <20200410004738.19668-3-ansuelsmth@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 9 Apr 2020 23:24:12 -0300
Message-ID: <CAOMZO5AKYO3xLsp4k6_fJCV9qW=rAtRKEGWnxksixU794dOw8A@mail.gmail.com>
Subject: Re: [PATCH 2/4] drivers: pci: dwc: pci-imx6: update binding to
 generic name
To: Ansuel Smith <ansuelsmth@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_192349_698695_94D8B357 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 <devicetree@vger.kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Richard Zhu <hongxing.zhu@nxp.com>, linux-pci@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ansuel,

On Thu, Apr 9, 2020 at 9:47 PM Ansuel Smith <ansuelsmth@gmail.com> wrote:
>
> Rename specific bindings to generic name.
>
> Signed-off-by: Ansuel Smith <ansuelsmth@gmail.com>
> ---
>  drivers/pci/controller/dwc/pci-imx6.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
> index acfbd34032a8..4ac140e007b4 100644
> --- a/drivers/pci/controller/dwc/pci-imx6.c
> +++ b/drivers/pci/controller/dwc/pci-imx6.c
> @@ -1146,28 +1146,28 @@ static int imx6_pcie_probe(struct platform_device *pdev)
>         }
>
>         /* Grab PCIe PHY Tx Settings */
> -       if (of_property_read_u32(node, "fsl,tx-deemph-gen1",
> +       if (of_property_read_u32(node, "tx-deemph-gen1",

This breaks compatibility with older dtbs.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
