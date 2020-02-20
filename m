Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A83E1664DF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 18:31:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cHzBrQxQj9Wf8H6MNbOU6urxiD4mDnrZotFREC9cN4c=; b=uJe9hWZTdH4for
	VTXs3n1GvrmWx8GkeTIRN4BQKqjY+5YshHr0VK2IQsZ5dFN/MrMk6f415Mz7oekvg+OsP5fntdrn4
	C9xMhGf4xcRYobIHJMOQTYQ4WRwqem5DbZrl1mglgwSLq87BPTLdoRMghu8hEcuu+rlC8vJmaEipj
	6bzaIWRZLuj6yA6jPe2NR10UWogl5BZ25tiob9BpXFjJt1CvmQJBWIb8+wJRpHBUDs3o4PyhbFwlx
	zR+alVl8VAHdNseUr8/0uEMo/LBdSolGxDjrYEL1fHPSa/9LFMFToHxec0T6GtrnSjN7UTI/tkVal
	SlOiYBZG3zgqIl6k7zww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4pfd-0002yr-K1; Thu, 20 Feb 2020 17:31:29 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4pfS-0002yT-Q4
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 17:31:20 +0000
Received: by mail-wr1-x443.google.com with SMTP id k11so5525612wrd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 09:31:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=thegoodpenguin-co-uk.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=S0OEZb6ZbfxyZGgdO3oC5v/q0OGeZVw3eP9vYvQiG/U=;
 b=0AO/dMDS1M6O3Y1MAIlce7yX8iZStnkbe4FyCLeA2xCR158t3j4xoLga0nF5rgnqPg
 Yqjj5zlXqWS0D8fXu0a/+PZ/2rfBs0tDFvLqAfuUlCIlWOVCu5WG7SupP6am6Z5rGoTA
 jCj3zcSICrEASFhHK4YaAxnu3Aust4K9d5WhKM5mJwiPuNDu//O/EhcZSXwhb8ccxCyd
 7igtONy2I24pkPH+B3o0x4y/vYLnL77dwu8HqZOYZ/YKdX5eHh3uAdfKx+LJGkG1/G5I
 vr24oMKwrdCmqODcC3ENKCBPeMQX72lKc0KEiut+vq/sUCCazXRcZZVEltq2iE+RIhb9
 sCcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=S0OEZb6ZbfxyZGgdO3oC5v/q0OGeZVw3eP9vYvQiG/U=;
 b=VEtULaSIo9TSY5pd8gZbyIN3UJ1mpN6ZsTNj8l7lKyyDDnc/zYSUx2So7amWgYnEe1
 mU9tkFGnlRospaaIeTluMLZTpCaXjaCfIa3wYgt0NCiKjFjqX82n0DulG0UAYuF7zyx0
 R2T/91wm3yZyMWVEzWXNcpxMt3n8qKCF9b55p2j1oFMzY39Xg4451FIPKxWHqqjFZCBt
 eUJaa0kLuE30KDJnTBjgKS8Jrj3rVEieo98swsYOa1OGvpv3gtBsoB4Nd88Up0wfAK5P
 FZ/1MWo9K/2oXQkAxLLM9YvCtYeHchBxepFMFeTwYSksmOMLhNNaOuMWIdGUOoz+Y4uQ
 yKaA==
X-Gm-Message-State: APjAAAUEupSw8xEH1l6w75n+W/HRW29XuLe2BfZSw49++hmHwNrXEAIM
 ATTj24DRSZhtksyoWeLxEu1C9w==
X-Google-Smtp-Source: APXvYqyyzZXO5TSoVkK6w2z4UIzWud060LimIz9UfXnvzAZJj1Wld1YI6Wn1KKd/pHRwbYWs9NTRwg==
X-Received: by 2002:adf:f744:: with SMTP id z4mr38804520wrp.318.1582219877525; 
 Thu, 20 Feb 2020 09:31:17 -0800 (PST)
Received: from big-machine ([2a00:23c5:dd80:8400:98d8:49e6:cdcc:25df])
 by smtp.gmail.com with ESMTPSA id y8sm8190wma.10.2020.02.20.09.31.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 09:31:17 -0800 (PST)
Date: Thu, 20 Feb 2020 17:31:15 +0000
From: Andrew Murray <amurray@thegoodpenguin.co.uk>
To: Zhiqiang Hou <Zhiqiang.Hou@nxp.com>
Subject: Re: [PATCHv10 09/13] PCI: mobiveil: Add Header Type field check
Message-ID: <20200220173115.GJ19388@big-machine>
References: <20200213040644.45858-1-Zhiqiang.Hou@nxp.com>
 <20200213040644.45858-10-Zhiqiang.Hou@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213040644.45858-10-Zhiqiang.Hou@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_093118_849058_8CC97F63 
X-CRM114-Status: GOOD (  16.54  )
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

On Thu, Feb 13, 2020 at 12:06:40PM +0800, Zhiqiang Hou wrote:
> From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> 
> Check the Header Type and exit from the host driver initialization if
> it is not in host mode.
> 
> Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>

Reviewed-by: Andrew Murray <amurray@thegoodpenguin.co.uk>

> ---
> V10:
>  - New patch separated from #10 of v9.
> 
>  .../pci/controller/mobiveil/pcie-mobiveil-host.c    | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c b/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
> index 44dd641fede3..db7028788d91 100644
> --- a/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
> +++ b/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
> @@ -554,6 +554,16 @@ static int mobiveil_pcie_interrupt_init(struct mobiveil_pcie *pcie)
>  	return mobiveil_pcie_integrated_interrupt_init(pcie);
>  }
>  
> +static bool mobiveil_pcie_is_bridge(struct mobiveil_pcie *pcie)
> +{
> +	u32 header_type;
> +
> +	header_type = mobiveil_csr_readb(pcie, PCI_HEADER_TYPE);
> +	header_type &= 0x7f;
> +
> +	return header_type == PCI_HEADER_TYPE_BRIDGE;
> +}
> +
>  int mobiveil_pcie_host_probe(struct mobiveil_pcie *pcie)
>  {
>  	struct mobiveil_root_port *rp = &pcie->rp;
> @@ -569,6 +579,9 @@ int mobiveil_pcie_host_probe(struct mobiveil_pcie *pcie)
>  		return ret;
>  	}
>  
> +	if (!mobiveil_pcie_is_bridge(pcie))
> +		return -ENODEV;
> +
>  	/* parse the host bridge base addresses from the device tree file */
>  	ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
>  					      &bridge->dma_ranges, NULL);
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
