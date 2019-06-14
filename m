Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 505AB464E8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 18:47:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z7FesK2KJB520Ut7pxyQbpNi8j7b8ZexH6aYH7b2SiQ=; b=fr6tFR8lrGAaK5
	sqz6hTW03BaSVqFjpaGnLwuuadzCGAszfPrO94V42jsmQHLUo6LTRXQEpKN1aplVHGZMSZeIVgWDB
	kl4+hOtEhjaO/APIgtQr8y2D8pjfZ1QZDJA2JC036IXtCpK8Ic8a3yK05RJ+/vCPGL51fv+gG4dHp
	FFFHqWsRo6JeRbytVGH9CxGGHxLsU0S7bTX4FN5pA488MCxYxcsM62U64H+I2A/h7gz/WrztowMzG
	2eXy1kJ6JEDdnWOv/qCAHcz8NqX9GkZMDBQzuOeqQi5gSuwMempWVz5aV+wdxP61xvVLjSKSd6J1p
	ns6wO/GzcdK6sJBIpyuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbpMh-0004tu-Hu; Fri, 14 Jun 2019 16:47:47 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbpKd-0002pq-Jm
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 16:45:42 +0000
Received: by mail-qt1-f193.google.com with SMTP id y57so3227810qtk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 09:45:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HlBKCnO0xMTag9WfokrT/rGmwb/ORvUR1BpXNNiMUQM=;
 b=YPyr7nVgvHWDUGd6/UeNxyPVtm8ueEJ7ecG232GVgbJxrZU63XqT73Pm6mfypEwWZz
 Y8hJ/ULM7klYzPcoEOPioO3CZojoqDiO2xyQqcB1DfP/R03d7RBod8hKP2yaL10qBpb1
 bZMKcYkZSGHDDh056QDI6ZOYBu+/+brm6/MHR0bn0o1j4iWMWNGpX/AuKYLh1vODD/oE
 FhesFS1cwieoQU8TEGrvAfLPs+ydqd3X/5Y8/fkZ1eiCyGrx/2kjGj8e9ICPjRAzHY9O
 G2I3w56W/UrFirgfEKkv9mTwnzH3I6rLoLPK0of55mx4GqZwHI7l5vmYhGfMKrXe/LKb
 ypSw==
X-Gm-Message-State: APjAAAXzALWyzj04eGxF3SoXeC3cToKtpOsHNYK5lknq8Z//6rH57mEB
 +nG5M1vt4w7hyiY8yMOfyA==
X-Google-Smtp-Source: APXvYqyd6wUFLy/S8KXkP9eDUvnYHmUJhimauNDZWvGK3zxBUlgJUXMl3RMwWqaPxUusvLz6Y82JMQ==
X-Received: by 2002:ac8:2b51:: with SMTP id 17mr25937893qtv.206.1560530737809; 
 Fri, 14 Jun 2019 09:45:37 -0700 (PDT)
Received: from localhost ([64.188.179.243])
 by smtp.gmail.com with ESMTPSA id g2sm1831222qkb.80.2019.06.14.09.45.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 09:45:37 -0700 (PDT)
Date: Fri, 14 Jun 2019 10:45:36 -0600
From: Rob Herring <robh@kernel.org>
To: Nishanth Menon <nm@ti.com>
Subject: Re: [PATCH 1/6] dt-bindings: arm: ti: Add bindings for J721E SoC
Message-ID: <20190614164536.GA18039@bogus>
References: <20190522161921.20750-1-nm@ti.com>
 <20190522161921.20750-2-nm@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522161921.20750-2-nm@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_094539_720163_E8FB7BCC 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Nishanth Menon <nm@ti.com>, Arnd Bergmann <arnd@arndb.de>,
 Tony Lindgren <tony@atomide.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>,
 linux-serial@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Olof Johansson <olof@lixom.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 22 May 2019 11:19:16 -0500, Nishanth Menon wrote:
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
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
