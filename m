Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7F61DD67A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 21:00:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wIznpduJ8KZgQPkQKpEXHhMboj1J3J9+e2+tJ1HkjHI=; b=UPBW0zd7xi6Y8bIJs9pPy72kp
	PeYMluByczuBQ9LlfNmO28UC1Zu+DwxMa05X4kn/4C5f4qUuRaTDfs43LxYZ266akxLhRVo4yrYgs
	vWX6cfie8ZF8VkV3Bu9P9BL+7vQKygGYpKlYVhI0e1brbAZ/Ibpn9Pl6nsTzAVMsm7OrkleACnldq
	D+sN/vAtdPgxah9sOXj78LNUStVkO/RdMlI5+cvu1hRPrA8NWizeb1fS4SkI778DJY++MXeEGDSr0
	pAaMBYO2Su6vdSKlDogv1o/IxpfwlCOUtaGXquHlsyE/NGPFnFf13SE0eHUNGKzcZWMEuSQM+r8mT
	08SxjMzAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbqQT-0006Qj-M3; Thu, 21 May 2020 19:00:17 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbqQ0-0006QI-SW
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 18:59:50 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04LIxkUn037038;
 Thu, 21 May 2020 13:59:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590087586;
 bh=qHgIZ1jeMMAGpyygK6081zktw2WUM4w1JQMRrYptymU=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=gEzEaxetknGbpkdpFF815hUys3+9q7H1azD62EpI9qENEpnRLoqRtK2zWzyFbhCKJ
 vg+Lr0PuyWwOIBa1T1675VNVARmOSbmUdHwNKw1pj4OnMawWZmEZh7YtgCa+60aARM
 +etEaADW7eeGo0aApndqgZfXMERzng4XGCBD5ylQ=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04LIxkYH082066;
 Thu, 21 May 2020 13:59:46 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 21
 May 2020 13:59:45 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 21 May 2020 13:59:46 -0500
Received: from [10.250.48.148] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04LIxjLX055152;
 Thu, 21 May 2020 13:59:45 -0500
Subject: Re: [PATCH v2 0/4] TI K3 DSP remoteproc driver for C66x DSPs
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>
References: <20200521001006.2725-1-s-anna@ti.com>
From: Suman Anna <s-anna@ti.com>
Message-ID: <5f84465e-8f63-51b4-4758-59c85d3ad597@ti.com>
Date: Thu, 21 May 2020 13:59:45 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200521001006.2725-1-s-anna@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_115949_051684_72B31E2A 
X-CRM114-Status: GOOD (  19.16  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lokesh Vutla <lokeshvutla@ti.com>, devicetree@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bjorn,

On 5/20/20 7:10 PM, Suman Anna wrote:
> Hi All,
> 
> The following is v2 of the K3 DSP remoteproc driver supporting the C66x DSPs
> on the TI K3 J721E SoCs. The patches are based on the latest commit on the
> rproc-next branch, 7dcef3988eed ("remoteproc: Fix an error code in
> devm_rproc_alloc()").

I realized I also had the R5F patches on my branch, so the third patch 
won't apply cleanly (conflict on Makefile). Let me know if you want a 
new revision posted for you to pick up the series.

regards
Suman

> 
> v2 includes a new remoteproc core patch (patch 1) that adds an OF helper
> for parsing the firmware-name property. This is refactored out to avoid
> replicating the code in various remoteproc drivers. Please see the
> individual patches for detailed changes.
> 
> The main dependent patches from the previous series are now staged in
> rproc-next branch. The only dependency for this series is the common
> ti-sci-proc helper between R5 and DSP drivers [1]. Please see the initial
> cover-letter [2] for v1 details.
> 
> regards
> Suman
> 
> [1] https://patchwork.kernel.org/patch/11456379/
> [2] https://patchwork.kernel.org/cover/11458573/
> 
> Suman Anna (4):
>    remoteproc: Introduce rproc_of_parse_firmware() helper
>    dt-bindings: remoteproc: Add bindings for C66x DSPs on TI K3 SoCs
>    remoteproc/k3-dsp: Add a remoteproc driver of K3 C66x DSPs
>    remoteproc/k3-dsp: Add support for L2RAM loading on C66x DSPs
> 
>   .../bindings/remoteproc/ti,k3-dsp-rproc.yaml  | 190 +++++
>   drivers/remoteproc/Kconfig                    |  13 +
>   drivers/remoteproc/Makefile                   |   1 +
>   drivers/remoteproc/remoteproc_core.c          |  23 +
>   drivers/remoteproc/remoteproc_internal.h      |   2 +
>   drivers/remoteproc/ti_k3_dsp_remoteproc.c     | 773 ++++++++++++++++++
>   6 files changed, 1002 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
>   create mode 100644 drivers/remoteproc/ti_k3_dsp_remoteproc.c
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
