Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7DD91AAD52
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 18:27:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JxRrAMMnyrcBxmP9WRuuLPqH8oO9QfR16/9HtvBUvao=; b=MoidPIIJRK896C
	vxI9J89QSD3jmwemuNs7BxGobn+7eajOZdCxusjWDMgE9+nk23vYCoyJs0PbXYc/RS7yRqptngjYb
	nEApfE/BuoT3ejeHD3FkfT3+ThucnC7xa0g/8UxGiY5+rt/H0QdnK95E/4DbTszVx2Ky8LuEi97U+
	rTMJD3Ywq0uEEEKK0gHv5vSIaY1Y557UvdqgeN780ecNUZgxeuCd1j4XB/rkT6oF6AkrtZF0Jyee2
	tqa5aq0L6/xOr52VTu//ZgGCKxkTgd6D7zxspz7/ao6Btn2j+VircGXBRwr5xhNPsQcY2WAxc7i+B
	7UbkGKWfopk/cqDxbQcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOksg-0005QG-73; Wed, 15 Apr 2020 16:27:18 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOksW-0005Pe-8V
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 16:27:09 +0000
Received: by mail-oi1-f194.google.com with SMTP id 8so3742177oiy.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 09:27:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QoWSyptq3r7jFBqwiB+wzQmxtvTTslBNIl5gglBkLNo=;
 b=NjNM9XZdDZ2+rM3FoSDQ8huY/CXyKK1QAnNPeq6PDrpQDAUogHuKxgihyROtqHi6xj
 nI3akAOhjIc2YW7ONaRuRgjBmafGL/YRAZe/GAFZuMpHfaDCUMuYr8pYkEPmgdr9ypqy
 SpDDgx/PJn66dDdIIY/iAUdcr1kFvgVNf78s7FaR++wmCQV9HxpaE8txrT7soa+E2M04
 sdoIQFUa8uiaG4E+S6PYYIGcAuVAUqyTk41tPJyzES6RHaFsc+DG2NceB191sNZE+ID2
 6m4SPYmPu4eA/AEY+7iVUn91BssjPWJ/Th7ABfEXmf/vCLqj7MYieoopS5FCyTepV7wE
 eGKg==
X-Gm-Message-State: AGi0PubirMtoHpG1HKteS/H1RVirLi1pEv/8EGnAl5EZ4WzX23Fcg9x2
 Su4dgmzdavdTraPm4S5/Lg==
X-Google-Smtp-Source: APiQypIQ2YEOM2xPkhIK1e7H2ZCsw87caX8t1G4qJ1Op/t60CQS2o6DAcnKl4kvVepkYzIq8a/Hyow==
X-Received: by 2002:aca:5d8a:: with SMTP id r132mr5493oib.129.1586968027427;
 Wed, 15 Apr 2020 09:27:07 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i17sm6365730otc.16.2020.04.15.09.27.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 09:27:06 -0700 (PDT)
Received: (nullmailer pid 5651 invoked by uid 1000);
 Wed, 15 Apr 2020 16:27:05 -0000
Date: Wed, 15 Apr 2020 11:27:05 -0500
From: Rob Herring <robh@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH v6 08/14] dt-bindings: memory: tegra: Add external memory
 controller binding for Tegra210
Message-ID: <20200415162705.GA5587@bogus>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-9-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409175238.3586487-9-thierry.reding@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_092708_298371_43672E13 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Thierry Reding <thierry.reding@gmail.com>, Joseph Lo <josephl@nvidia.com>,
 linux-tegra@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu,  9 Apr 2020 19:52:32 +0200, Thierry Reding wrote:
> From: Joseph Lo <josephl@nvidia.com>
> 
> Add the binding document for the external memory controller (EMC) which
> communicates with external LPDDR4 devices. It includes the bindings of
> the EMC node and a sub-node of EMC table which under the reserved memory
> node. The EMC table contains the data of the rates that EMC supported.
> 
> Signed-off-by: Joseph Lo <josephl@nvidia.com>
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
> Changes in v6:
> - fix example by changing #address-cells and #size-cells
> - remove status property from example
> 
> Changes in v5:
> - convert to dt-schema
> 
>  .../nvidia,tegra210-emc.yaml                  | 82 +++++++++++++++++++
>  1 file changed, 82 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/memory-controllers/nvidia,tegra210-emc.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
