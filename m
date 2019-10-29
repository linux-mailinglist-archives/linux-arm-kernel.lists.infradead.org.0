Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F65E8C43
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 16:58:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M6CAZUKFUfm9TjbrKAOHOgx1b3MUTdKcfd3+892m1+g=; b=TrNBleY1nAbvym
	CeV0KqOM/sq1yetkcRrwjYK8ebeUVaACMKYgwy9HorjSYr+7LVIjWqK6XbxEPOgOJ6Pw9F+DSM7HG
	x2QvCzHrca6QkGY/P4K9N636jo5UFTny2qgxbexkiwK9GsL5wPih/YT2OMKOFCKtYmLA1deweMFLD
	MVdpIux1N2Q6Ilxjjh9MofO7dxOS+rZKJ7I5YMrgAPye5vO14nNYOBh9itLkR6HJ2GF1K39qxWoR4
	Spybyr6N1pDxBNE8THderUM0O42nrf3zSUW8r9bbozGsluQodw3Tbgm/J7AcvMVBkp98d36UJZhwF
	E2vDEn6cqnE3sK1iYGVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPTtY-0001CN-CH; Tue, 29 Oct 2019 15:58:56 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPTtI-00019o-HM
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 15:58:42 +0000
Received: by mail-wm1-x342.google.com with SMTP id c22so2991853wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 08:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ogyg03BfT8gaHZbuV4/3535qjZlsTqwkzaB+k+qmJSk=;
 b=auxvEGz+98ZDBi/3qT4estTcr/B0w8IzvpYRBlJghVDt+kEZTN1DrBp6hsX/szCm0S
 Ntg3b9Z1+ejknx7Ccrkleqkzjl8Ky11vHSpEAGmlWVbc6JJnMtLuoVbGHlLb8LrKT3cn
 uKPaHB3q+wCzJC2R81txkKTpwzgO4YZ3vvsV8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ogyg03BfT8gaHZbuV4/3535qjZlsTqwkzaB+k+qmJSk=;
 b=F4vH5cl3Ya3BNB42zH/8HE4G59vYtocUc/02w7HlAW7rfox6gGFXOkeoEeDXtg3moe
 QtWWTLd3Ebpr5RE0kVzmLLXr7P6yMXyQ1Is+YsaeD9pVfePXUmJyvBvAlvFCAK394I7m
 2pIc8cCiGopOGMP46wqSdBwpiLNOTu1zGP1NtiUwtICZpEnwMngIrRJkTWf9QyyzH8jH
 kug9zUWyNRDi0uoRvUr5BpB9B931D/UYVZxDp4QhUIiZ4//Wowj/Sz+RGBQrSXPPp+Gu
 cFUuB0++NaWripaC19fnE6Cj7PkjSk0F6vHgNVKY/quedEIotnpoxfC3NNeaj9hGB0OC
 i2ew==
X-Gm-Message-State: APjAAAUSLFAkcZLo5KKrXxofEowphESUj1j3SXDBrhTPmnlO4Ing7aaK
 0/HhYvlfHc8CFUyKwoimyZr52Jp/SkIjKQQ4A672UQ==
X-Google-Smtp-Source: APXvYqxXBunHeyxtZsAWTCPejceTiGMbnnAGC4cBuQxzLelWDxFoP9zriSI9AupBxaoECqcivUoGxX1DNc3YZFr8rtQ=
X-Received: by 2002:a1c:6282:: with SMTP id w124mr4723287wmb.172.1572364718992; 
 Tue, 29 Oct 2019 08:58:38 -0700 (PDT)
MIME-Version: 1.0
References: <20191028163256.8004-1-robh@kernel.org>
 <20191028163256.8004-8-robh@kernel.org>
In-Reply-To: <20191028163256.8004-8-robh@kernel.org>
From: Srinath Mannam <srinath.mannam@broadcom.com>
Date: Tue, 29 Oct 2019 21:28:27 +0530
Message-ID: <CABe79T4uF0vnxAbbR-ckr4uBpni3KmD2RYqSS_jUh-KRDFLvzQ@mail.gmail.com>
Subject: Re: [PATCH v3 07/25] PCI: iproc: Use pci_parse_request_of_pci_ranges()
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_085840_593716_7641032F 
X-CRM114-Status: GOOD (  18.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, linux-pci@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Michal Simek <michal.simek@xilinx.com>, Christoph Hellwig <hch@infradead.org>,
 linux-rockchip@lists.infradead.org,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Ray Jui <rjui@broadcom.com>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Ryder Lee <ryder.lee@mediatek.com>,
 linux-mediatek@lists.infradead.org, Andrew Murray <andrew.murray@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Scott Branden <sbranden@broadcom.com>, Jingoo Han <jingoohan1@gmail.com>,
 rfi@lists.rocketboards.org, linux-renesas-soc@vger.kernel.org,
 Tom Joseph <tjoseph@cadence.com>, Simon Horman <horms@verge.net.au>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Ley Foon Tan <lftan@altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

I reviewed and verified this change.. It is working fine.

Regards,
Srinath.

On Mon, Oct 28, 2019 at 10:03 PM Rob Herring <robh@kernel.org> wrote:
>
> Convert the iProc host bridge to use the common
> pci_parse_request_of_pci_ranges().
>
> There's no need to assign the resources to a temporary list, so just use
> bridge->windows directly.
>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: Ray Jui <rjui@broadcom.com>
> Cc: Scott Branden <sbranden@broadcom.com>
> Cc: bcm-kernel-feedback-list@broadcom.com
> Reviewed-by: Andrew Murray <andrew.murray@arm.com>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  drivers/pci/controller/pcie-iproc-platform.c | 8 ++------
>  drivers/pci/controller/pcie-iproc.c          | 5 -----
>  2 files changed, 2 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/pci/controller/pcie-iproc-platform.c b/drivers/pci/controller/pcie-iproc-platform.c
> index 9ee6200a66f4..375d815f7301 100644
> --- a/drivers/pci/controller/pcie-iproc-platform.c
> +++ b/drivers/pci/controller/pcie-iproc-platform.c
> @@ -43,8 +43,6 @@ static int iproc_pcie_pltfm_probe(struct platform_device *pdev)
>         struct iproc_pcie *pcie;
>         struct device_node *np = dev->of_node;
>         struct resource reg;
> -       resource_size_t iobase = 0;
> -       LIST_HEAD(resources);
>         struct pci_host_bridge *bridge;
>         int ret;
>
> @@ -97,8 +95,7 @@ static int iproc_pcie_pltfm_probe(struct platform_device *pdev)
>         if (IS_ERR(pcie->phy))
>                 return PTR_ERR(pcie->phy);
>
> -       ret = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff, &resources,
> -                                                   &iobase);
> +       ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
>         if (ret) {
>                 dev_err(dev, "unable to get PCI host bridge resources\n");
>                 return ret;
> @@ -113,10 +110,9 @@ static int iproc_pcie_pltfm_probe(struct platform_device *pdev)
>                 pcie->map_irq = of_irq_parse_and_map_pci;
>         }
>
> -       ret = iproc_pcie_setup(pcie, &resources);
> +       ret = iproc_pcie_setup(pcie, &bridge->windows);
>         if (ret) {
>                 dev_err(dev, "PCIe controller setup failed\n");
> -               pci_free_resource_list(&resources);
>                 return ret;
>         }
>
> diff --git a/drivers/pci/controller/pcie-iproc.c b/drivers/pci/controller/pcie-iproc.c
> index 2d457bfdaf66..223335ee791a 100644
> --- a/drivers/pci/controller/pcie-iproc.c
> +++ b/drivers/pci/controller/pcie-iproc.c
> @@ -1498,10 +1498,6 @@ int iproc_pcie_setup(struct iproc_pcie *pcie, struct list_head *res)
>                 return ret;
>         }
>
> -       ret = devm_request_pci_bus_resources(dev, res);
> -       if (ret)
> -               return ret;
> -
>         ret = phy_init(pcie->phy);
>         if (ret) {
>                 dev_err(dev, "unable to initialize PCIe PHY\n");
> @@ -1543,7 +1539,6 @@ int iproc_pcie_setup(struct iproc_pcie *pcie, struct list_head *res)
>                 if (iproc_pcie_msi_enable(pcie))
>                         dev_info(dev, "not using iProc MSI\n");
>
> -       list_splice_init(res, &host->windows);
>         host->busnr = 0;
>         host->dev.parent = dev;
>         host->ops = &iproc_pcie_ops;
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
