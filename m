Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D927115CA58
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 19:27:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8HH4nIcY7gD2Tkigu7GURk+zCsDnBfcVILu5eSRlXQc=; b=jrhrFC0l9VdQme
	XDbKMCoZC3p58H7C56eFGrBl2c3RgYgbesjiVRgK4m4IblgBtOcklUKeG5AjKjDfE3+Dvwgd9HMle
	WcaPD4B3F4+YR77H4uEIUVSzydWP6/y4vhMZ6UTuzs38wpgtbVAXH0cIRYJAYbqFPooU/bcUvNmnE
	TgfRQj6LNYZqFnGkHahB7e8nts+Rz76PO8FszJPF5V37Q5vba2cSagUEh52soEZ375cW0nYBHJM5i
	9O4LI2/LpdyUK/dJyMDIOBPq7UTnX8v+q+3FyBnvCvrilBW9X44jo1WHKpk1sI/myPlkJ6TJSWtak
	T97G3PHiV2uW01voU5UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2JCg-00022M-FM; Thu, 13 Feb 2020 18:27:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2JCX-00021N-L5
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 18:27:02 +0000
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
 [209.85.222.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 75958217F4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 18:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581618419;
 bh=Tgkvt23nlRf0XRm+t9xKVRBeZnNy7mLvrbdLPrq1dno=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=bz+2U90q4xyRoqgdjfbIX6rHvFOv6QdyFS6R6dKIw0F240hKve4cOqhYLU6RzTo0/
 xYdsNw0MvvYnOGpW6fTmgezOVEAz5tB7pLxYFgxHqnypwKMrBJCb0typQTORRXWsQ1
 h3oFcMDISvLmyBj62uGuw7KgJxdfMKD092DRS7Qc=
Received: by mail-qk1-f174.google.com with SMTP id o28so5281456qkj.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 10:26:59 -0800 (PST)
X-Gm-Message-State: APjAAAWR7BLhqyfs07CaPRIp3VOKh0lE7g/Jf9O9YKzUaPiZ22aAQooI
 mxACUAvmuAzT18IjNBfI30KfWdM3hk0PItvOtg==
X-Google-Smtp-Source: APXvYqydhKuBg+/ZrL4Cf+7gEQaOWH7r03zYxO/RkcD73vQs6Tc8XsgSRSpX2/PYrxCooFDmMvbFm0IEPx+1x/u9y3A=
X-Received: by 2002:a37:85c4:: with SMTP id
 h187mr17247898qkd.223.1581618418620; 
 Thu, 13 Feb 2020 10:26:58 -0800 (PST)
MIME-Version: 1.0
References: <20200213165049.508908-1-jean-philippe@linaro.org>
 <20200213165049.508908-4-jean-philippe@linaro.org>
In-Reply-To: <20200213165049.508908-4-jean-philippe@linaro.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 13 Feb 2020 12:26:46 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKZP9u7bFsVT=5TzqmnHWm_bvH39ffkbN3q9-k32ynVig@mail.gmail.com>
Message-ID: <CAL_JsqKZP9u7bFsVT=5TzqmnHWm_bvH39ffkbN3q9-k32ynVig@mail.gmail.com>
Subject: Re: [PATCH 03/11] PCI: OF: Check whether the host bridge supports ATS
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_102701_737776_E76ED514 
X-CRM114-Status: GOOD (  17.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 PCI <linux-pci@vger.kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Hanjun Guo <guohanjun@huawei.com>, Frank Rowand <frowand.list@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jonathan Corbet <corbet@lwn.net>, Will Deacon <will@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, linux-acpi@vger.kernel.org,
 Len Brown <lenb@kernel.org>, devicetree@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, David Woodhouse <dwmw2@infradead.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Lu Baolu <baolu.lu@linux.intel.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 10:52 AM Jean-Philippe Brucker
<jean-philippe@linaro.org> wrote:
>
> Copy the ats-supported flag into the pci_host_bridge structure.
>
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
>  drivers/pci/controller/pci-host-common.c | 1 +
>  drivers/pci/of.c                         | 9 +++++++++
>  include/linux/of_pci.h                   | 3 +++
>  3 files changed, 13 insertions(+)
>
> diff --git a/drivers/pci/controller/pci-host-common.c b/drivers/pci/controller/pci-host-common.c
> index 250a3fc80ec6..a6ac927be291 100644
> --- a/drivers/pci/controller/pci-host-common.c
> +++ b/drivers/pci/controller/pci-host-common.c
> @@ -92,6 +92,7 @@ int pci_host_common_probe(struct platform_device *pdev,
>                 return ret;
>         }
>
> +       of_pci_host_check_ats(bridge);
>         platform_set_drvdata(pdev, bridge->bus);
>         return 0;
>  }
> diff --git a/drivers/pci/of.c b/drivers/pci/of.c
> index 81ceeaa6f1d5..4b8a877f1e9f 100644
> --- a/drivers/pci/of.c
> +++ b/drivers/pci/of.c
> @@ -576,6 +576,15 @@ int pci_parse_request_of_pci_ranges(struct device *dev,
>  }
>  EXPORT_SYMBOL_GPL(pci_parse_request_of_pci_ranges);
>
> +void of_pci_host_check_ats(struct pci_host_bridge *bridge)
> +{
> +       struct device_node *np = bridge->bus->dev.of_node;
> +
> +       if (!np)
> +               return;
> +
> +       bridge->ats_supported = of_property_read_bool(np, "ats-supported");
> +}

Not really any point in a common function if we expect this to be only
for ECAM hosts which it seems to be based on the binding.

Otherwise, needs an export if not.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
