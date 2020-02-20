Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D101664CE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 18:29:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PJvGn99PjqLZiHAOhzcJ4pD3t7irMo91vR+1fypyiT4=; b=dXBRgzZqICrI85
	hUlRdMVYG8dv28LYg4dmpgU2hZ0nKNoG9QSY79tHXiSPM6a3zPQC0csxfp9bXdDrGQkYLI9r4oyA+
	ITZ/Yd51cgjq0y/DKEH5AZKFpb1Cr8lxl88hFluVAZikCdgrsnmDQafulsoEKDDAjt/8e7b8kIuCE
	Rq9nysIVD2HgEg90GzXszWqAJkU170KTARoQ/hSPGFS0vzEcn0uHxkuOhZqsKoAfMSkfjTA87MDJG
	AIFCJ23D7v0Lfxtt9xYgr9SAsfBFf1edQublySESmkmj9Mz6ArkeSiW2LOq8lJOiMyS7IfcrGVgxU
	zy/4/+r6rWTXvvgvzzXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4pdE-0008Vi-Uw; Thu, 20 Feb 2020 17:29:00 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4pcv-0008QC-4O
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 17:28:42 +0000
Received: by mail-wr1-x443.google.com with SMTP id c9so5527471wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 09:28:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=thegoodpenguin-co-uk.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=yg7V2Kitryz7uYVlNn64dGZz3YZSbyjf9HbgWJJRDAs=;
 b=CmcyeEBOB0TBNIvz/p5XwnAlafyqGrCgVEgvaMgTdOyuEONJXLWP2BuiWcL4WTxOud
 aUmSx7qqn2snU2zgLbXE/a66nZ3j+UuSMi6wHwMi4skzKVGsuRninJFjVqkPpPvuleLN
 8oPei3Ks+Bok6gh12rhXHBfAPK68q+J3FZYwlmxH1pT4bAB8lri9bhSDZ9SJzQdSiaTS
 ZP/lWL+rjHiKe5nRyh/+DBhzVnRap+ng90tFDcMfJDiN90TXG4QRa9gYT0too8nHBeRy
 1bX7b/t+H2/IYLVuJNZLgSYdBe1IGb/tJnbQF1UMxedMk6fr0hWAmTyry39gpCbWcW80
 Oigw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=yg7V2Kitryz7uYVlNn64dGZz3YZSbyjf9HbgWJJRDAs=;
 b=XnET+e9BSudelmP/tUb0ZjCYOzZdaYgaAWltspN2MTWlKmfPuRxoluLS/Os+oGyjtJ
 a4Id43Yb58GUr4aPXGxy8oQYwyhnlxBKZR+mhqL4GXEMQt9J7AcSM5d3f/gRzsIBfFSS
 qR+DPgmc0Hu0zqKCwxcu9sPucQPWdsO782kUYztu/g132RZxxTVqSyVgOdQy7UMrbFRs
 bscR4cy3GpIWwtzj3Vf5bqrGJ0KEz0hZ39Z24cRClM590YgrujAH9DQuxQDerAqbzHI6
 Rq6CGm2gZdmE3aGIhWBKDNeQJaddL3QPqh3+Lb5RMmFZoju5FUxeWBusPSBwQri0Chhs
 szgw==
X-Gm-Message-State: APjAAAWFHZZ5xA8s8uk0dxTpS+VXfVW6dUt9DtyReA2LYo5t2cPhCFEy
 JvUxYy4pDmZjWko2QiEh95v2ew==
X-Google-Smtp-Source: APXvYqzcciySjNsv1+b17UtCc7Fw4uKQANx0Sd40ea91V7lOrEtBQbKyOMSjPgOQOSdAmaRoO3SEBQ==
X-Received: by 2002:adf:ed09:: with SMTP id a9mr44518842wro.350.1582219719426; 
 Thu, 20 Feb 2020 09:28:39 -0800 (PST)
Received: from big-machine ([2a00:23c5:dd80:8400:98d8:49e6:cdcc:25df])
 by smtp.gmail.com with ESMTPSA id 2sm252807wrq.31.2020.02.20.09.28.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 09:28:38 -0800 (PST)
Date: Thu, 20 Feb 2020 17:28:37 +0000
From: Andrew Murray <amurray@thegoodpenguin.co.uk>
To: Zhiqiang Hou <Zhiqiang.Hou@nxp.com>
Subject: Re: [PATCHv10 07/13] PCI: mobiveil: Allow mobiveil_host_init() to be
 used to re-init host
Message-ID: <20200220172837.GH19388@big-machine>
References: <20200213040644.45858-1-Zhiqiang.Hou@nxp.com>
 <20200213040644.45858-8-Zhiqiang.Hou@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213040644.45858-8-Zhiqiang.Hou@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_092841_204407_E1652F17 
X-CRM114-Status: GOOD (  18.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 m.karthikeyan@mobiveil.co.in, arnd@arndb.de, linux-pci@vger.kernel.org,
 l.subrahmanya@mobiveil.co.in, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, Minghuan.Lian@nxp.com,
 robh+dt@kernel.org, Mingkai.Hu@nxp.com, Xiaowei.Bao@nxp.com,
 catalin.marinas@arm.com, bhelgaas@google.com, andrew.murray@arm.com,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 12:06:38PM +0800, Zhiqiang Hou wrote:
> From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> 
> Allow the mobiveil_host_init() function to be used to re-init
> host controller's PAB and GPEX CSR register block, as NXP
> integrated Mobiveil IP has to reset and then re-init the PAB
> and GPEX CSR registers upon hot-reset.
> 
> Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> Reviewed-by: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>

Reviewed-by: Andrew Murray <amurray@thegoodpenguin.co.uk>

> ---
> V10:
>  - Refined the subject and change log.
> 
>  .../controller/mobiveil/pcie-mobiveil-host.c  | 19 ++++++++++++-------
>  .../pci/controller/mobiveil/pcie-mobiveil.h   |  1 +
>  2 files changed, 13 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c b/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
> index 53ab8412a1de..44dd641fede3 100644
> --- a/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
> +++ b/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
> @@ -221,18 +221,23 @@ static void mobiveil_pcie_enable_msi(struct mobiveil_pcie *pcie)
>  	writel_relaxed(1, pcie->apb_csr_base + MSI_ENABLE_OFFSET);
>  }
>  
> -static int mobiveil_host_init(struct mobiveil_pcie *pcie)
> +int mobiveil_host_init(struct mobiveil_pcie *pcie, bool reinit)
>  {
>  	struct mobiveil_root_port *rp = &pcie->rp;
>  	struct pci_host_bridge *bridge = rp->bridge;
>  	u32 value, pab_ctrl, type;
>  	struct resource_entry *win;
>  
> -	/* setup bus numbers */
> -	value = mobiveil_csr_readl(pcie, PCI_PRIMARY_BUS);
> -	value &= 0xff000000;
> -	value |= 0x00ff0100;
> -	mobiveil_csr_writel(pcie, value, PCI_PRIMARY_BUS);
> +	pcie->ib_wins_configured = 0;
> +	pcie->ob_wins_configured = 0;
> +
> +	if (!reinit) {
> +		/* setup bus numbers */
> +		value = mobiveil_csr_readl(pcie, PCI_PRIMARY_BUS);
> +		value &= 0xff000000;
> +		value |= 0x00ff0100;
> +		mobiveil_csr_writel(pcie, value, PCI_PRIMARY_BUS);
> +	}
>  
>  	/*
>  	 * program Bus Master Enable Bit in Command Register in PAB Config
> @@ -576,7 +581,7 @@ int mobiveil_pcie_host_probe(struct mobiveil_pcie *pcie)
>  	 * configure all inbound and outbound windows and prepare the RC for
>  	 * config access
>  	 */
> -	ret = mobiveil_host_init(pcie);
> +	ret = mobiveil_host_init(pcie, false);
>  	if (ret) {
>  		dev_err(dev, "Failed to initialize host\n");
>  		return ret;
> diff --git a/drivers/pci/controller/mobiveil/pcie-mobiveil.h b/drivers/pci/controller/mobiveil/pcie-mobiveil.h
> index 346bf79a581b..623c5f0c4441 100644
> --- a/drivers/pci/controller/mobiveil/pcie-mobiveil.h
> +++ b/drivers/pci/controller/mobiveil/pcie-mobiveil.h
> @@ -166,6 +166,7 @@ struct mobiveil_pcie {
>  };
>  
>  int mobiveil_pcie_host_probe(struct mobiveil_pcie *pcie);
> +int mobiveil_host_init(struct mobiveil_pcie *pcie, bool reinit);
>  bool mobiveil_pcie_link_up(struct mobiveil_pcie *pcie);
>  int mobiveil_bringup_link(struct mobiveil_pcie *pcie);
>  void program_ob_windows(struct mobiveil_pcie *pcie, int win_num, u64 cpu_addr,
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
