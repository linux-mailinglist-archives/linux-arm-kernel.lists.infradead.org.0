Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C87B464E6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 18:47:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n6fBYAL8WzdEdV2TxiXC/kwfDDmU53OPZnrn+zjKA20=; b=BeH7W8szek7OWo
	39uSOmeeMQ3CvTTen+FCW85k6n6buVcswbJHm+k8T48Ae2TJeVQP2M0qqedYDsuCqH8robqxbvlap
	97IXHPHpGqkrSVbYeAo1B+8V0F9B4HwFyL6zWz4DF/tlb8oiLLD+XDalA+sU5mM7uzrLSeXQgdXA2
	QQKb7VQWRONv1McqfOgg53TPBgnE/WoWoDfP/AjhLuFgK3iJjyt1Pe2gte+uaXK7N2apJwOI/u2UJ
	iGToMkQpX1xRwBrmlIsMH8SwZs5hdT7m/O7fsTSV9ci6AN3uqcrhqYd9xkASFMPCYAXrYxbqf/E22
	uRgmbpx+kwcp5ojGv4iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbpMJ-0004VN-IN; Fri, 14 Jun 2019 16:47:23 +0000
Received: from mail-qk1-f196.google.com ([209.85.222.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbpKW-0002gS-2A
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 16:45:36 +0000
Received: by mail-qk1-f196.google.com with SMTP id d15so2090242qkl.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 09:45:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VifAE9FDVkI31pZVAA2VI7QJ/Wx0IcW9fionB1xyoh0=;
 b=R+dd9zohTzceKs8hXtTkw9oKSSI3LblXbyTsa2HrtZlnRJHQM5avT/yhT5IRaHs6pP
 GUJZuvhX1h/Gl+MNLnnHPK8UeONhp6JhX56Z8EIw19ptUHHjKRE0cC063iV2ZDxuWr4d
 Qct8AInx5La+Czl8sq7uUiQbOTtAPIcG/L8RFH9UU6mx7F1FLH7MZ6fN8EQ9vNhC5SM1
 74MGGfwsQVTn0Lzf3bH1hSZuG0H0UMgrSFunJj27aMsi4AEVhsIYpBt23RWWSIaTBoxQ
 Lip+l4hUkTUdK9/rUY6nHGbWr32WkDx24SHYXg4vHH+NBYy+r4hLY+y70euevnsXA4L6
 YAmA==
X-Gm-Message-State: APjAAAXsv+SWrZQPOuItndgrd0mYOAKwXohxg6q0W2ecdLvH4xSy/5Rv
 qHpP8UwisZ63icdzAxaU+Q==
X-Google-Smtp-Source: APXvYqzFqW995e8sjoYb7nKrXgjhLY1KUnK5k7TGtKpruk3FzVi+niP+7rswSAogRaw59lDQ0hknHg==
X-Received: by 2002:a37:9d1:: with SMTP id 200mr28663998qkj.306.1560530729677; 
 Fri, 14 Jun 2019 09:45:29 -0700 (PDT)
Received: from localhost ([64.188.179.243])
 by smtp.gmail.com with ESMTPSA id g54sm2554846qtc.61.2019.06.14.09.45.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 09:45:28 -0700 (PDT)
Date: Fri, 14 Jun 2019 10:45:26 -0600
From: Rob Herring <robh@kernel.org>
To: Nishanth Menon <nm@ti.com>
Subject: Re: [PATCH 1/6] dt-bindings: arm: ti: Add bindings for J721E SoC
Message-ID: <20190614164526.GA14925@bogus>
References: <20190522161921.20750-1-nm@ti.com>
 <20190522161921.20750-2-nm@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522161921.20750-2-nm@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_094532_218819_BCD45BD0 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.196 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Tony Lindgren <tony@atomide.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 Tero Kristo <t-kristo@ti.com>, linux-serial@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Olof Johansson <olof@lixom.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 11:19:16AM -0500, Nishanth Menon wrote:
> The J721E SoC belongs to the K3 Multicore SoC architecture platform,
> providing advanced system integration to enable lower system costs
> of automotive applications such as infotainment, cluster, premium
> Audio, Gateway, industrial and a range of broad market applications.
> This SoC is designed around reducing the system cost by eliminating
> the need of an external system MCU and is targeted towards ASIL-B/C
> certification/requirements in addition to allowing complex software
> and system use-cases.
> 
> Some highlights of this SoC are:
> * Dual Cortex-A72s in a single cluster, three clusters of lockstep
>   capable dual Cortex-R5F MCUs, Deep-learning Matrix Multiply Accelerator(MMA),
>   C7x floating point Vector DSP, Two C66x floating point DSPs.
> * 3D GPU PowerVR Rogue 8XE GE8430
> * Vision Processing Accelerator (VPAC) with image signal processor and Depth
>   and Motion Processing Accelerator (DMPAC)
> * Two Gigabit Industrial Communication Subsystems (ICSSG), each with dual
>   PRUs and dual RTUs
> * Two CSI2.0 4L RX plus one CSI2.0 4L TX, one eDP/DP, One DSI Tx, and
>   up to two DPI interfaces.
> * Integrated Ethernet switch supporting up to a total of 8 external ports in
>   addition to legacy Ethernet switch of up to 2 ports.
> * System MMU (SMMU) Version 3.0 and advanced virtualisation
>   capabilities.
> * Upto 4 PCIe-GEN3 controllers, 2 USB3.0 Dual-role device subsystems,
>   16 MCANs, 12 McASP, eMMC and SD, UFS, OSPI/HyperBus memory controller, QSPI,
>   I3C and I2C, eCAP/eQEP, eHRPWM, MLB among other peripherals.
> * Two hardware accelerator block containing AES/DES/SHA/MD5 called SA2UL
>   management.
> * Configurable L3 Cache and IO-coherent architecture with high data throughput
>   capable distributed DMA architecture under NAVSS
> * Centralized System Controller for Security, Power, and Resource
>   Management (DMSC)
> 
> See J721E Technical Reference Manual (SPRUIL1, May 2019)
> for further details: http://www.ti.com/lit/pdf/spruil1
> 
> Signed-off-by: Nishanth Menon <nm@ti.com>
> ---
>  Documentation/devicetree/bindings/arm/ti/k3.txt | 3 +++
>  1 file changed, 3 insertions(+)

Okay for now, but please convert K3 and other TI SoCs to schema soon.

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
