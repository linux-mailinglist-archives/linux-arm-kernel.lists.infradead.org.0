Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77FA91C1F11
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 22:55:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qTgQTK8w5+h8htTqd9qTkiyBUFTAHMIH4w5if+xIq0I=; b=pDlAfEZXA4gnYPEw1CVf/i/0K
	1+5+RtTVgfFKBMy0i+qgPCNPOjaY+V3LElf6c6dOw6qvKRuLbnnZE82HWE1mAUL8l9PuS4QtSGy+A
	cVcG5xBld0tBAkyghHsYPW45hfMvIGTaNa5X5CpHDDaWQo+2e7H35PILQ2vB8XRfq30jj87b2215O
	yeaYHalGUykOkhSPulNjhRLR+8P3MoaSAS719/dv79m+BFhNbBwV44SpH+2c1ICU70NAVeOD8fOx8
	tcd1WjD/mIuHF8eEYonU7xwt4lrROfbsZde/ukBRgBPrugC9d8gMDZcGuwWpZvpri72+kptT+bZMd
	AaLRS5tVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUcgx-0005zi-Qu; Fri, 01 May 2020 20:55:27 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUcgp-0005yv-Sz
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 20:55:21 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 041KtFB4009464;
 Fri, 1 May 2020 15:55:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588366515;
 bh=L1otyNvruxzYrays8d+Dfy2TZg5TRkz5w0VMaUbYdso=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=a68RxpDSolAOn89K69XTAVB5g9tknN9PPhB0ImXXY1eMcBgifQPh5p1UIAy9ZXmZb
 p9Nj/Lr0wFnZ9jSHO8wWZPxLDx7KDcjtIQKMk72SQf801FzXdQvRVlVVnYHdb7ej0f
 sBJuj7aGTar7izvHWDe2rGZtZOeqyNdSQf3w++h4=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 041KtFxE015659;
 Fri, 1 May 2020 15:55:15 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 1 May
 2020 15:55:14 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 1 May 2020 15:55:14 -0500
Received: from [10.250.100.73] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 041KtB78036400;
 Fri, 1 May 2020 15:55:11 -0500
Subject: Re: [PATCH 0/5] soc: ti: add k3 platforms chipid module driver
To: Dave Gerlach <d-gerlach@ti.com>, Santosh Shilimkar <ssantosh@kernel.org>, 
 Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>, Rob Herring
 <robh+dt@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>, Lokesh Vutla <lokeshvutla@ti.com>
References: <20200423180545.13707-1-grygorii.strashko@ti.com>
From: Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <23b3b069-426e-a113-a8bf-816b30f10490@ti.com>
Date: Fri, 1 May 2020 23:55:11 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200423180545.13707-1-grygorii.strashko@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_135520_019128_0748A9E6 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Santosh, Tero

On 23/04/2020 21:05, Grygorii Strashko wrote:
> Hi All,
> 
> This series introduces TI K3 Multicore SoC platforms chipid module driver
> which provides identification support of the TI K3 SoCs (family, revision)
> and register this information with the SoC bus. It is available under
> /sys/devices/soc0/ for user space, and can be checked, where needed,
> in Kernel using soc_device_match().
> It is also required for introducing support for new revisions of
> K3 AM65x/J721E SoCs.
> 
> Example J721E:
>    # cat /sys/devices/soc0/{machine,family,revision}
>    Texas Instruments K3 J721E SoC
>    J721E
>    SR1.0
> 
> Example AM65x:
>    # cat /sys/devices/soc0/{machine,family,revision}
>    Texas Instruments AM654 Base Board
>    AM65X
>    SR1.0
> 
> Grygorii Strashko (5):
>    dt-bindings: soc: ti: add binding for k3 platforms chipid module
>    soc: ti: add k3 platforms chipid module driver
>    arm64: arch_k3: enable chipid driver
>    arm64: dts: ti: k3-am65-wakeup: add k3 platforms chipid module node
>    arm64: dts: ti: k3-j721e-mcu-wakeup: add k3 platforms chipid module
>      node
> 
>   .../bindings/soc/ti/k3-socinfo.yaml           |  40 ++++++
>   arch/arm64/Kconfig.platforms                  |   1 +
>   arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi    |   5 +
>   .../boot/dts/ti/k3-j721e-mcu-wakeup.dtsi      |   5 +
>   drivers/soc/ti/Kconfig                        |  10 ++
>   drivers/soc/ti/Makefile                       |   1 +
>   drivers/soc/ti/k3-socinfo.c                   | 135 ++++++++++++++++++
>   7 files changed, 197 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/soc/ti/k3-socinfo.yaml
>   create mode 100644 drivers/soc/ti/k3-socinfo.c
> 

Any more comments? I'm going resend it.

-- 
Best regards,
grygorii

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
