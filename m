Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8C71304DD
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 23:04:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KR7Blq/tmBwwWOMflagWq1BRjH4EYaSaL4zjvB8iEro=; b=pxj8cd8dBH9Y+J
	c7mW4zl5eoMK1ptT59hxyIVtajSmBFgT3zK5nOJMf8QqPpWCYrlZH033svQ4tST8wJslJEq+PjFvI
	FhvadOE1Ge3T+1dlVjzqPZDCpRozTOWAb9Uzqn8mUmz4cCK+fus5Zt/J0CG04zQt7zSDUEgc6OPqC
	hyNLGAG1brf44BnB1zWE232KC+b65WU7cF9vNbPF/EH3TxJiDVPi3cqqVItjhUJ+CHX4e4eoX2G6N
	ZkB5GceSp1YndJGq5aqhKZY6dlX3A6sBleVnXLXXB+AT1zzY+kBUmW+1nkB9hrFjJqVgPADVJV7LH
	XifVLapROJRJXt63zk5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inrXS-0007t8-6m; Sat, 04 Jan 2020 22:04:54 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inrXL-0007sZ-WA
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 22:04:49 +0000
Received: by mail-io1-f66.google.com with SMTP id v3so44824716ioj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 Jan 2020 14:04:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=P9KYy5rXT1YHxu2ntjIRtLSaQMqlhK4uAwxwZ9CTSeA=;
 b=YTgW91To1GGyUh0L4kpgaZOH44ciymxcq0MJgDgo7lmltC2NO+/Z1mwWmoOg4iieNW
 ldaSxXfXDfQVnBhswhJg+ZzWRd8nj+Up2bOdxUJrX/9GBptbw5eOMnottMFRPk0dcWOg
 aAxO5hm6KKUihEApuZXdiBj+pQh+v9u0oOle0f0xcwndND9KmJAjJ3HRTCC/krI2fV/m
 if1ruhZ4gUfII9YmHxp/p8LE/bA5vV2fpVseZvacyiD7CrXrZQH82vXKZ76tLJc7+sKf
 u5rVYNPa8/A4DcqK8cWxCDHheqs7re2Om+AMtlGX8pf3a0gU/s6d+t8DUgxU43G7bZBx
 rAzQ==
X-Gm-Message-State: APjAAAU5gNyaoDCe7HynDMLVYpOn5h6xDx/28PAcxFWF+KvrS5MvAc/r
 4tQnOvUSLPzciW55frfmbHsOGlo=
X-Google-Smtp-Source: APXvYqxtq0qNikaUk6/qc+sbCF78pohuAtdtZxFfCa4cLD1/aEz32Pc07wfxObjIf+JAjFRarVbI4w==
X-Received: by 2002:a5e:a713:: with SMTP id b19mr44298890iod.91.1578175487107; 
 Sat, 04 Jan 2020 14:04:47 -0800 (PST)
Received: from rob-hp-laptop ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id c23sm11434339iod.62.2020.01.04.14.04.45
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Jan 2020 14:04:46 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 2219a3
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Sat, 04 Jan 2020 15:04:42 -0700
Date: Sat, 4 Jan 2020 15:04:42 -0700
From: Rob Herring <robh@kernel.org>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V2 2/5] dt-bindings: PCI: tegra: Add DT support for PCIe
 EP nodes in Tegra194
Message-ID: <20200104220442.GA11478@bogus>
References: <20200103124404.20662-1-vidyas@nvidia.com>
 <20200103124404.20662-3-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200103124404.20662-3-vidyas@nvidia.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_140448_036406_0247F9AF 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 mmaddireddy@nvidia.com, kthota@nvidia.com, gustavo.pimentel@synopsys.com,
 vidyas@nvidia.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 jonathanh@nvidia.com, linux-tegra@vger.kernel.org, thierry.reding@gmail.com,
 linux-pci@vger.kernel.org, bhelgaas@google.com, andrew.murray@arm.com,
 kishon@ti.com, linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 3 Jan 2020 18:14:01 +0530, Vidya Sagar wrote:
> Add support for PCIe controllers that can operate in endpoint mode
> in Tegra194.
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> V2:
> * Addressed Thierry's review comments
> * Merged EP specific information from tegra194-pcie-ep.txt to tegra194-pcie.txt itself
> * Started using the standard 'reset-gpios' for PERST GPIO
> * Added 'nvidia,refclk-select-gpios' to enable REFCLK signals
> 
>  .../bindings/pci/nvidia,tegra194-pcie.txt     | 125 ++++++++++++++----
>  1 file changed, 99 insertions(+), 26 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
