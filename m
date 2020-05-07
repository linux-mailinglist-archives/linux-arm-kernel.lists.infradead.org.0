Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D751C9DF1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 23:52:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f9b1ESOil+Brto44JiG9CkM3ZU7Unp90OVf/1f5RCb8=; b=jXOxZZNUrcjY4i
	kqJlKNcq+kpogx26ccavtJ0UYuv8EY6pUBz4n0qP/xaLOR+OL+RsJY74bNPk/mN9W0cZjsdmD7zgL
	TZs4laGKj2y20Kxu3zOsKtt+Hk3jaIAMoJc0WXGeVHiTcZ3ncribRxq7Jx5ZPD+ADeBze7QZ599yl
	/8RzimXv3AGXiPnWscBx2jE6lq1tblMZiBoUrSxN716qks3htcM3F+PmmdF0CpTOBBeXUtN5YrhnX
	GVxCwy1ywIf1z4+NGK7W4uCJjYv0iAC6STox60ofD7Ku/w5NawDXBHtPfTFCHK4Jm6l0YZIY7Kck6
	LqXLFhJkd+OSLl29zZNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWoRQ-000840-7k; Thu, 07 May 2020 21:52:28 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWoRC-0007z4-Nj
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 21:52:16 +0000
Received: by mail-oi1-f195.google.com with SMTP id o24so6635867oic.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 14:52:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CwgFZL2zIVeDh4eNZXkAe/EzqtLQXZ+cEahULpHlwag=;
 b=INoW9ot9nGAayuhqGvwMrQQFANyeiPH83JjGLPyoUOPFMUBmofhPSbQeJr5yka9keC
 yDb38TiTrpuSosc7Q/smCo3otJBzwepUngjHSAwr+EbtlFyPVifJuxsWSvdBJtyovp3L
 og5hqmyCq1jwqo5KtYBajka+HfaSJpCmRz2ln024UCBP9f5PAbLx+na05f4WU08OIJrc
 HLuddXzIM9tVzzk33iGhlILoQGrtY+X+0RrdzqSNEr5lZLuWxUyylaL0s6ymR715ZBKM
 m1mRE6HcqvaGevK1GoHr/2mrjBBAfJUNeYNx+fePd9x7C8ARTmReBFGWTY5t4tIJ/yD4
 c2fw==
X-Gm-Message-State: AGi0PubegxswpmaRclsRik0QHnRSqBwAMItF7XJF8RrHlRE8iEe68clG
 LHV4nz1lyw7EL397JiC2hg==
X-Google-Smtp-Source: APiQypK0tS24FRujE0yM/MXXbar4hioN4XKMy8/zNA1q7Wdtq10bfTLMJhAeyQQLoMBuj8hAeHLkFw==
X-Received: by 2002:aca:31c2:: with SMTP id x185mr8444912oix.45.1588888333726; 
 Thu, 07 May 2020 14:52:13 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id a22sm1654553otf.42.2020.05.07.14.52.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2020 14:52:13 -0700 (PDT)
Received: (nullmailer pid 6666 invoked by uid 1000);
 Thu, 07 May 2020 21:52:12 -0000
Date: Thu, 7 May 2020 16:52:12 -0500
From: Rob Herring <robh@kernel.org>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: Re: [PATCH v2 RESEND] MAINTAINERS: correct typo in new NXP
 LAYERSCAPE GEN4
Message-ID: <20200507215212.GA6603@bogus>
References: <20200506052130.5780-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506052130.5780-1-lukas.bulwahn@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_145214_768947_04650FEB 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Joe Perches <joe@perches.com>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed,  6 May 2020 07:21:30 +0200, Lukas Bulwahn wrote:
> Commit 3edeb49525bb ("dt-bindings: PCI: Add NXP Layerscape SoCs PCIe Gen4
> controller") includes a new entry in MAINTAINERS, but slipped in a typo in
> one of the file entries.
> 
> Hence, since then, ./scripts/get_maintainer.pl --self-test complains:
> 
>   warning: no file matches F: \
>     drivers/pci/controller/mobibeil/pcie-layerscape-gen4.c
> 
> Correct the typo in PCI DRIVER FOR NXP LAYERSCAPE GEN4 CONTROLLER.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> ---
> Rob, please pick this patch (it is not urgent, though).
> 
> v1: https://lore.kernel.org/lkml/20200314142559.13505-1-lukas.bulwahn@gmail.com/
>   - already received: Reviewed-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
>   - Bjorn Helgaas' suggestion to squash this into commit 3edeb49525bb
>     ("dt-bindings: PCI: Add NXP Layerscape SoCs PCIe Gen4 controller") before
>     merging upstream did not happen.
> 
> v1 -> v2:
>   - v1 does not apply after reordering MAINTAINERS, i.e., commit 4400b7d68f6e
>     ("MAINTAINERS: sort entries by entry name") and commit 3b50142d8528
>     ("MAINTAINERS: sort field names for all entries").
>   - PATCH v2 applies on v5.7-rc1 now. Please pick v2 instead of v1.
> 
> v2-resend:
>   - resend of v2: https://lore.kernel.org/lkml/20200413070649.7014-1-lukas.bulwahn@gmail.com/ 
>   - still applies to v5.7-rc4 and next-20200505
> 
>  MAINTAINERS | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
