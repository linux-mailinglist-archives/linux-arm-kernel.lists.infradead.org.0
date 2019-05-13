Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C8E1B9D1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 17:22:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D6ezV/TUQukqGxgZmmkyxiKE1fhsNvqlYP3rBIsmBws=; b=frV2LqKeR2jNOi
	m86A6O5l3cqiuXw932hqxlA/nFwYAHW6SWkoaUXkGlS3cxQhgIuJt5/ZfFzMXeAA1Ki9tXSDK45yr
	zFZ0c8U0tuX+QBw9XydcxqguR33DMQaEVJ2d4Gpa/q35YcRTulSjUs9nH8oAUhiTzv+WakHsInVNO
	rBT/MJu1f6gi2BQDZEuihC6ymbrHXsQQrfXFAom1DLQS2WV+qTSqvpuRqAnESIOfWTW5o2eOCVdVf
	moIdV2a5DNb7cYvnghIk73ot8v68lRC/LmvowmZVGF7WCETKvb1Kf3pJte1j/+iZoGCPyD0vm5yqr
	t5N4sT6aY6G9DNrE8E5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQCmL-0001OI-Tc; Mon, 13 May 2019 15:22:13 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQCmF-0001Nd-5Y
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 15:22:08 +0000
Received: by mail-oi1-f195.google.com with SMTP id y10so9594965oia.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 08:22:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=G5tBDBp/DtV8SNXwtrPbsVe7Rc/q6YIIYxtmFnOVJDY=;
 b=jNcsrUyuK1AcWyZggCa+Z3GzTNO8UcPcqXUxRUVsgRnqE2SNir4jpE6hZA85qlJ3QC
 GOMAnYK/9mtnHcg+HNLYshhYmCQxtkeou1cWorUHbn4cmbWUssICLmWHdXSgmVt0F6DI
 peWvyFEyCIRG7JEjRWedBcBBVs5CKj2x8tKOEfRh5cRhEQdfkArZY7WkYNprzjlXsFmW
 U1mCoxNWInCHxMA14Z7lcLUq72Ovg7kYp50+JWztUa+Q2bO1JDvh6sHXjRjX5OUCrSPn
 2PNd1FtSJmGzZxM48aPaSUDyl5zr1aKIk1ZckAoYqy3bw25U8KGwQj06fbO3Sk3c7Tnj
 bi1Q==
X-Gm-Message-State: APjAAAWDmNiYO968ObLE71pgB7ao1qYRprrull85rLolRIeYjdCDjEct
 AGnlln9h4dWaVS1Ken14qw==
X-Google-Smtp-Source: APXvYqyDyMqJLZVdVcByUg10Ow8jEEwxJKUk0RrIJEW9cbnuxfisOiumsiptzyIvhS1udws+DOn7Xg==
X-Received: by 2002:aca:ac43:: with SMTP id v64mr9672388oie.40.1557760926143; 
 Mon, 13 May 2019 08:22:06 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id o206sm5281587oih.48.2019.05.13.08.22.05
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 08:22:05 -0700 (PDT)
Date: Mon, 13 May 2019 10:22:05 -0500
From: Rob Herring <robh@kernel.org>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V6 10/15] dt-bindings: PHY: P2U: Add Tegra194 P2U block
Message-ID: <20190513152204.GA20594@bogus>
References: <20190513050626.14991-1-vidyas@nvidia.com>
 <20190513050626.14991-11-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513050626.14991-11-vidyas@nvidia.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_082207_204506_683CB010 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, linux-pci@vger.kernel.org,
 catalin.marinas@arm.com, kthota@nvidia.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, jonathanh@nvidia.com,
 linux-tegra@vger.kernel.org, vidyas@nvidia.com, thierry.reding@gmail.com,
 gustavo.pimentel@synopsys.com, jingoohan1@gmail.com, bhelgaas@google.com,
 kishon@ti.com, linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 13 May 2019 10:36:21 +0530, Vidya Sagar wrote:
> Add support for Tegra194 P2U (PIPE to UPHY) module block which is a glue
> module instantiated one for each PCIe lane between Synopsys DesignWare core
> based PCIe IP and Universal PHY block.
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> Changes since [v5]:
> * Added Sob
> * Changed node name from "p2u@xxxxxxxx" to "phy@xxxxxxxx"
> 
> Changes since [v4]:
> * None
> 
> Changes since [v3]:
> * None
> 
> Changes since [v2]:
> * Changed node label to reflect new format that includes either 'hsio' or
>   'nvhs' in its name to reflect which UPHY brick they belong to
> 
> Changes since [v1]:
> * This is a new patch in v2 series
> 
>  .../bindings/phy/phy-tegra194-p2u.txt         | 28 +++++++++++++++++++
>  1 file changed, 28 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/phy-tegra194-p2u.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
