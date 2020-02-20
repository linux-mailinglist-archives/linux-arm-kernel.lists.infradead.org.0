Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F3D1664D8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 18:30:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sJggB8u5Y2C4gIrWotPIZQEdhe2GTInhuCgOkEaKNik=; b=TgHCy01Coup8D/
	k0XfWxBruqDqlF044O0OnoW706Jx/T5rwSxcm0jSeni3IY4e1gg7ABfvLe032h6S9//c9tpFWmwy8
	sxF8XnNGmuvj21XuvOELjxFDJ4jdXOPjYkeesSJJWXPots/evc0+w0+0CQXtkQKAGWEId+cl700Uv
	6Bb0wzMRW2VecZ4UdjplQ01ssKXFA/lQ7/F2YdTjrWUrv2tS8hpVnnzBxacSWHDvTX07iFzeEI6g8
	w5Apf9HdevMnmBaYb/FEpF1dz9cXEfXxmrYMwa56k35zGBZgDh5pAcTIWtIYEaXfSwF1LeF9mylnT
	1hMk8fo0PZ7oqaLISOxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4pdu-0000OU-2W; Thu, 20 Feb 2020 17:29:42 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4pdg-0000KC-Je
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 17:29:29 +0000
Received: by mail-wm1-x343.google.com with SMTP id b17so2964899wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 09:29:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=thegoodpenguin-co-uk.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Q4qx3jqbEI2LXNLHh2qRlEwTiPf4rASGS8w/sDrnmwg=;
 b=n1Zj7J6egyyu4XSEYNvVUsPUeC5N+ThU079hVverQJdLd2AnzZZi+nOVLVMiYmD/d1
 VLNAtYvTyKBk2g3m4+c54bVWhSvP4hn2rZk81KnDZ4j7zlDNJUyzaJ9lkFsqbdyimamA
 2azfNkSSpWMwnok41dG0eHUk6YUAWnKXAaRLBRBRBqBREaYrOcaPeOm9w3GFOKA+Lrjq
 fX3CyMHoE0gmNRULIVXotRQX+QVtk9AglCEf0fXIUzZFIo7aYyu5o4X95BzxLSwYgFIF
 o5TYPi1ofCdxQkjrz0/0aNtECIQOfrRXA3hou5A3EmDEPIzhbeXqiZ9bg8X4PUM9MQbD
 NuTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Q4qx3jqbEI2LXNLHh2qRlEwTiPf4rASGS8w/sDrnmwg=;
 b=mWoFnzKbHnMWNbAo50D3TBIoqIiII6Hbb2XqCglA8KCOSeX2eck9khxm+kd+L50Jb4
 dvdyxW34m/s/nsBTeuQ4ZhWF8ONVBIK7JVTSOiDI1HgHuHgvf8mMO2xHeOvEAqpLIRCY
 NAiwLToygi78CuT6PQrSMTKMAEN+yAtKU6HlGj+OajNOuMCkHtmSimlBHKkeor8Dp3Ks
 wyQlPe0lozV12foW9YFkcMnr/cWr7pFo4gCCZQ+VDKpaP0Mz94Q0C5kba9pzs3Cgbr1m
 7D7usMyNigWEgFA67DlEu0jxeqY50Dco8hqaujHFnvljZAvKRdUOvDsfCuNv+wVxxglE
 Lvig==
X-Gm-Message-State: APjAAAUdFMqZ/m14h3YaAyx2KDwiRN4BXtBs/e5ECZAVV2K+8Fo4boKy
 gwNCWI9yxUzw/Rywco0CRcohQQ==
X-Google-Smtp-Source: APXvYqyuQKe1vF0yue4IgSN9scP6sj+6hjjPhnMRt+A7UulmjNFLWqQr6QTq4iwV57oNLCIAzEIlYw==
X-Received: by 2002:a7b:ce8b:: with SMTP id q11mr5753542wmj.100.1582219767346; 
 Thu, 20 Feb 2020 09:29:27 -0800 (PST)
Received: from big-machine ([2a00:23c5:dd80:8400:98d8:49e6:cdcc:25df])
 by smtp.gmail.com with ESMTPSA id e1sm244147wrt.84.2020.02.20.09.29.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 09:29:26 -0800 (PST)
Date: Thu, 20 Feb 2020 17:29:24 +0000
From: Andrew Murray <amurray@thegoodpenguin.co.uk>
To: Zhiqiang Hou <Zhiqiang.Hou@nxp.com>
Subject: Re: [PATCHv10 08/13] PCI: mobiveil: Add 8-bit and 16-bit CSR
 register accessors
Message-ID: <20200220172924.GI19388@big-machine>
References: <20200213040644.45858-1-Zhiqiang.Hou@nxp.com>
 <20200213040644.45858-9-Zhiqiang.Hou@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213040644.45858-9-Zhiqiang.Hou@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_092928_647014_7C48E014 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

On Thu, Feb 13, 2020 at 12:06:39PM +0800, Zhiqiang Hou wrote:
> From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> 
> There are some 8-bit and 16-bit registers in PCIe configuration
> space, so add these accessors accordingly.
> 
> Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
> Reviewed-by: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>

Reviewed-by: Andrew Murray <amurray@thegoodpenguin.co.uk>

> ---
> V10:
>  - Changed the return types to reflect the size of the access.
> 
>  .../pci/controller/mobiveil/pcie-mobiveil.h   | 23 +++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/drivers/pci/controller/mobiveil/pcie-mobiveil.h b/drivers/pci/controller/mobiveil/pcie-mobiveil.h
> index 623c5f0c4441..72c62b4d8f7b 100644
> --- a/drivers/pci/controller/mobiveil/pcie-mobiveil.h
> +++ b/drivers/pci/controller/mobiveil/pcie-mobiveil.h
> @@ -182,10 +182,33 @@ static inline u32 mobiveil_csr_readl(struct mobiveil_pcie *pcie, u32 off)
>  	return mobiveil_csr_read(pcie, off, 0x4);
>  }
>  
> +static inline u16 mobiveil_csr_readw(struct mobiveil_pcie *pcie, u32 off)
> +{
> +	return mobiveil_csr_read(pcie, off, 0x2);
> +}
> +
> +static inline u8 mobiveil_csr_readb(struct mobiveil_pcie *pcie, u32 off)
> +{
> +	return mobiveil_csr_read(pcie, off, 0x1);
> +}
> +
> +
>  static inline void mobiveil_csr_writel(struct mobiveil_pcie *pcie, u32 val,
>  				       u32 off)
>  {
>  	mobiveil_csr_write(pcie, val, off, 0x4);
>  }
>  
> +static inline void mobiveil_csr_writew(struct mobiveil_pcie *pcie, u16 val,
> +				       u32 off)
> +{
> +	mobiveil_csr_write(pcie, val, off, 0x2);
> +}
> +
> +static inline void mobiveil_csr_writeb(struct mobiveil_pcie *pcie, u8 val,
> +				       u32 off)
> +{
> +	mobiveil_csr_write(pcie, val, off, 0x1);
> +}
> +
>  #endif /* _PCIE_MOBIVEIL_H */
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
