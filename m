Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 051E01DC08B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 22:50:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sihExqb8NqLReWvN46DPuJxyNR7zTPouZEDWRmXtuZs=; b=szSh4S3gKl/+85
	BCN1Ju/FvuEN4dm6b6UwQKX6Nj6mPc+32GG6YBt4OD1ZDjNM+ktu21PmkOCvKvfwp7b7Chb8ocqL3
	stW4cyJ/zDbcU6mHivzjLBCNjm+w6Ol2uJEi0XdWr0+o0UwfmlJPKeO0ytF8jF6O50Hm4KzUjo1TI
	0XCoqEpQF1sUrIPbluK54nroTmgh6TgnBExhD4ohHq3Ws9VTh0/4M6rOPg/8CWq75Q1u9ZuCdTzMz
	/SB37EOYU3YUJX0LLhos9VcCX2u7Q2dpQV5bXqW0Iw1pkuo+oTBDkkl06VRxsQ+BTSzVEbD6g1xo7
	Aksdvlv4FZpYl5mqWs+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbVfc-0005fm-KW; Wed, 20 May 2020 20:50:32 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbVfT-0005dZ-Fe
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 20:50:24 +0000
Received: by mail-io1-f67.google.com with SMTP id q8so3514300iow.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 13:50:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=mRSMjgkGeWGBh2qwJHfwL3yydGjx13+/dKpUDO1iMb0=;
 b=hryCtgZyCAGHiDxQzMqKpS9lh6qHcLwqG0dizGGMyL4IoIR9PBjVmUJCugYadjMpiH
 C9vxZYDaNVTvu/cwBziJVhYlLmvB1ZiBSyQ9uxX0hYgzzpf4AtOhvYn26TYZVS/2+wck
 jKPKVj/LTT+P+aB5m26jCOLO/D83WH6Ej1Ts6kG7ZmIm46kQzg/Y5XN2WFdVRHL7RDQX
 Q/QH0LzpwAsjbus5XjB8y0edZ+9TJ5iQzqeHWTzU8XkDtHCUkX8rfbSh9LMqDiOtHvaw
 GhuXXSl9MSM2zAXE+aRAB52RLUwHnKdZZmzlzToyrsTVS/2HITuol1yhMkLccvfLuSVm
 Zxag==
X-Gm-Message-State: AOAM533J/evED3fGXZfmlU4l9oUEp+sFT300G1FdWe+ehKPD2z0sNNbY
 2bJvienixcaqZ4xnv8mEPw==
X-Google-Smtp-Source: ABdhPJwnwe9ybgq0b3s7dUXq6qN9mChjHs0K0Gg3PfPIRRW3vwKfrh4ExYIFqiRNvifXUYk2fDGxXA==
X-Received: by 2002:a6b:b38a:: with SMTP id c132mr5082996iof.54.1590007819658; 
 Wed, 20 May 2020 13:50:19 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id n22sm748494ioh.46.2020.05.20.13.50.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 13:50:19 -0700 (PDT)
Received: (nullmailer pid 546373 invoked by uid 1000);
 Wed, 20 May 2020 20:50:17 -0000
Date: Wed, 20 May 2020 14:50:17 -0600
From: Rob Herring <robh@kernel.org>
To: Xiaowei Bao <xiaowei.bao@nxp.com>
Subject: Re: [PATCH v6 09/11] PCI: layerscape: Add EP mode support for
 ls1088a and ls2088a
Message-ID: <20200520205017.GA546312@bogus>
References: <20200314033038.24844-1-xiaowei.bao@nxp.com>
 <20200314033038.24844-10-xiaowei.bao@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200314033038.24844-10-xiaowei.bao@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_135023_522312_079F9379 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
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
 lorenzo.pieralisi@arm.com, jingoohan1@gmail.com, linux-pci@vger.kernel.org,
 Zhiqiang.Hou@nxp.com, linux-kernel@vger.kernel.org, kishon@ti.com,
 Minghuan.Lian@nxp.com, robh+dt@kernel.org, mingkai.hu@nxp.com,
 gustavo.pimentel@synopsys.com, bhelgaas@google.com, shawnguo@kernel.org,
 roy.zang@nxp.com, linuxppc-dev@lists.ozlabs.org, leoyang.li@nxp.com,
 linux-arm-kernel@lists.infradead.org, amurray@thegoodpenguin.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 14 Mar 2020 11:30:36 +0800, Xiaowei Bao wrote:
> Add PCIe EP mode support for ls1088a and ls2088a, there are some
> difference between LS1 and LS2 platform, so refactor the code of
> the EP driver.
> 
> Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
> ---
> v2:
>  - This is a new patch for supporting the ls1088a and ls2088a platform.
> v3:
>  - Adjust the some struct assignment order in probe function.
> v4:
>  - No change.
> v5:
>  - No change.
> v6:
>  - No change.
> 
>  drivers/pci/controller/dwc/pci-layerscape-ep.c | 72 +++++++++++++++++++-------
>  1 file changed, 53 insertions(+), 19 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
