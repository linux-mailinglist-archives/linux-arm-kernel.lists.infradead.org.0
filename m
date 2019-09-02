Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9739CA57DC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 15:40:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Subject:From:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BWGtuMnZrGr3dy3//GbM3xjso7sCmedmqF280XwhfPU=; b=Jcqd9/PN5Ut/ihQAiow/kSemuk
	lpfEcvKD5TRlHwV1rLpEjg/d+O9Fqq/5hk3NWhXaNLMWUVsmuRLI2q0y0ePocFuqzYtul8VlYz4Hc
	bXKGcEv4H+GjuSVc004fFk4OeHXPfnU0/RuQP8lRcDmZNwntfXroVY0QjCdjvxsR7yCUkmza65lc8
	6JqSBofUM8hjBjhR+KskFq3eM75SfeQdX9Id5pychEPuc4DmSor/AfnIrxuDlh3bNtIXFXsUEl5xY
	YHpOP9rasm80TUYlsrn+Nkf2wrkLhmEdbwwTol+DNboOivnK9ItMKkmFHz4PO1SH8pWP7ehNGEZP1
	xpThLHsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4mYx-0002Ig-0B; Mon, 02 Sep 2019 13:40:07 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4mXk-0001Ct-0q
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 13:38:53 +0000
Received: by mail-wm1-f67.google.com with SMTP id n10so3980725wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 06:38:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:subject:references
 :in-reply-to:cc:cc:to;
 bh=0G2XADeynFuPjiLzfSNxzmGMI3r/vAlX0cOg51TMaCc=;
 b=TFOLP152hMC3IshAh335J6KMiygQY7LjLriEjx51jQbInPjNB+rPGhY3DR/3luUfQ0
 AndAoEjlpq2TuJgr5EHhcTG09yIIHr/emTInkIMlMbawzlpF45szkNhZTnckXzgsM2em
 t2O6N+zCrzgyza3dwUYKjBEcgf7bxe0+UyPiV3YuXqcBiCHU+rceo76LodH+p91JmgGa
 WxRXEZo/wC9KAvvkk3M6HnoaPps3lWFDfeY6EM0qj0uZxhVTyYsv5mAi0mpq7apN5D86
 1F+pZUXAZZdHmhLOxdZCl5BoYHDB9O/J+IEGVQVvfePwKCva9gcKH97w8LBi9DTLVE/r
 GCBA==
X-Gm-Message-State: APjAAAWWcEeik49j7HoOl4N8CkzAwl9mFruh5zAGUq65U1vh9ZK0UGF0
 cAls/uojuQnBg7+pksJZ6Q==
X-Google-Smtp-Source: APXvYqx1e5Zkxsk3Ce3KB0Mb7arC+lP6QY5ByoQI4X1nqKl5ANCYgQFP9ZkUgXnplhcziaRlN7UGYg==
X-Received: by 2002:a7b:c407:: with SMTP id k7mr10252310wmi.151.1567431530772; 
 Mon, 02 Sep 2019 06:38:50 -0700 (PDT)
Received: from localhost ([212.187.182.166])
 by smtp.gmail.com with ESMTPSA id e30sm22061341wra.48.2019.09.02.06.38.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 06:38:50 -0700 (PDT)
Message-ID: <5d6d1b6a.1c69fb81.73f8d.ac61@mx.google.com>
Date: Mon, 02 Sep 2019 14:38:49 +0100
From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH V3 1/6] dt-bindings: PCI: tegra: Add sideband pins
 configuration entries
References: <20190828172850.19871-1-vidyas@nvidia.com>
 <20190828172850.19871-2-vidyas@nvidia.com>
In-Reply-To: <20190828172850.19871-2-vidyas@nvidia.com>
To: Vidya Sagar <vidyas@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_063852_117794_BD7EC17C 
X-CRM114-Status: UNSURE (   6.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, kthota@nvidia.com,
 gustavo.pimentel@synopsys.com, vidyas@nvidia.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, jonathanh@nvidia.com, linux-tegra@vger.kernel.org,
 thierry.reding@gmail.com, linux-pci@vger.kernel.org, bhelgaas@google.com,
 andrew.murray@arm.com, digetx@gmail.com, kishon@ti.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 28 Aug 2019 22:58:45 +0530, Vidya Sagar wrote:
> Add optional bindings "pinctrl-names" and "pinctrl-0" to describe pin
> configuration information of a particular PCIe controller.
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> V3:
> * None
> 
> V2:
> * None
> 
>  .../devicetree/bindings/pci/nvidia,tegra194-pcie.txt      | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
