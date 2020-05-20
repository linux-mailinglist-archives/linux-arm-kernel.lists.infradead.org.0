Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2A11DC074
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 22:46:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mhcvj7ArHroLVVko5+4ub7W7jRw0IrdHUk2qYsg86QQ=; b=gXjPbotqVrE49J
	Rx0mDGcxIOuIv1fhBKOojx30egxpes104rQsfXl860+HaCrrxbsOvZvctwae19sBtZD3oOcVpqUoC
	DQLQYG5+YcwMUgzEuwhHUHjpWyC38HKZZTNETU8hajcxbtz0HLjplaPI6kiyICUJH5lWzOl8iAXbF
	DLbwqJgQ7YnvBHfuOPjxmTu5PPuc0zbRyJHzKVt6tTx+kDA+pNhGLrgrjewTEzT4paMJxwnp6oXRx
	c/2AQyWo9cTrmjh3zzKGPunsCAzIvce8Nv+3XSqdIdzFOZ3YHzPXhRICRAmq58zIROQyV97RVlY3u
	YSQMvBp/p7doONsPZNnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbVbJ-0000PS-6u; Wed, 20 May 2020 20:46:05 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbVb9-0000NX-GB
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 20:45:56 +0000
Received: by mail-il1-f193.google.com with SMTP id c20so4751496ilk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 13:45:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=PJPc6Xkos1JJWBSfHLuEWUb/ztU6JUGFozPRth5oI/s=;
 b=c2QHA09DYiuZcbuC/rp79loEgJU23CGjUO8XNt69Jfa4CFWrdTHrhrlBMmLTIcf4P9
 vy7Dx2u0iNh+4/uVhgay0StvjrsXyw76ybXxtib06MTQ+soxGedbFnT8ES63CLWFtlvE
 rwLHVpQkS33tiSVsTjkjh3cc7//G4GPDaUf0IASwe/m2ZiFipSfyIbPEinJ+9S3u3DYm
 JeLZ7yH/3W2qVyQ6uPZZAUwXTJWo/Dl7Sl3zZ/3sFPaTmKz2/wEVbgoTWJ+JP+aK2Njj
 YCfNcFaR6syZo4CiYRhk9kJMcRAseOKIsMeKcDBIjl9vWZ4zkyuCQqTDaDd5ZKG2WVDN
 INhA==
X-Gm-Message-State: AOAM530xZjgt6GtQq9JHf+O9VgOkNv39ef3UbnQFk3vTGROwv4S8lqSD
 IqAyx7/vGztOf86wECgwjg==
X-Google-Smtp-Source: ABdhPJzA/vi82RIXoD3jiTdlM1ikMFygzPsAvXo0y2Xvb7bHzqzrE2GznTbs47Fup0foDkFLalmioA==
X-Received: by 2002:a92:8946:: with SMTP id n67mr5278356ild.215.1590007554470; 
 Wed, 20 May 2020 13:45:54 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id r8sm1531353iob.15.2020.05.20.13.45.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 13:45:54 -0700 (PDT)
Received: (nullmailer pid 535579 invoked by uid 1000);
 Wed, 20 May 2020 20:45:52 -0000
Date: Wed, 20 May 2020 14:45:52 -0600
From: Rob Herring <robh@kernel.org>
To: Xiaowei Bao <xiaowei.bao@nxp.com>
Subject: Re: [PATCH v6 07/11] PCI: layerscape: Modify the way of getting
 capability with different PEX
Message-ID: <20200520204552.GA535450@bogus>
References: <20200314033038.24844-1-xiaowei.bao@nxp.com>
 <20200314033038.24844-8-xiaowei.bao@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200314033038.24844-8-xiaowei.bao@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_134555_537225_B526B5B5 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, andrew.murray@arm.com,
 lorenzo.pieralisi@arm.com, roy.zang@nxp.com, gustavo.pimentel@synopsys.com,
 Zhiqiang.Hou@nxp.com, linux-kernel@vger.kernel.org, kishon@ti.com,
 Minghuan.Lian@nxp.com, jingoohan1@gmail.com, robh+dt@kernel.org,
 mingkai.hu@nxp.com, linux-pci@vger.kernel.org, bhelgaas@google.com,
 shawnguo@kernel.org, leoyang.li@nxp.com, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, amurray@thegoodpenguin.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 14 Mar 2020 11:30:34 +0800, Xiaowei Bao wrote:
> The different PCIe controller in one board may be have different
> capability of MSI or MSIX, so change the way of getting the MSI
> capability, make it more flexible.
> 
> Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
> ---
> v2:
>  - Remove the repeated assignment code.
> v3:
>  - Use ep_func msi_cap and msix_cap to decide the msi_capable and
>    msix_capable of pci_epc_features struct.
> v4:
>  - No change.
> v5:
>  - No change.
> v6:
>  - No change.
> 
>  drivers/pci/controller/dwc/pci-layerscape-ep.c | 31 +++++++++++++++++++-------
>  1 file changed, 23 insertions(+), 8 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
