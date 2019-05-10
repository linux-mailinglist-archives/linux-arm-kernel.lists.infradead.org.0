Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D907D19E55
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 15:37:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jS1cSRMTuPPxH9zDVgBQFCW+thlU29rPDxX1XHIgmQA=; b=Y5Rr1Dh8m7OPhl
	iMU++rHalw7Es8BmqxYseVnP1W5fujYnp+2b/5xgovPDxOibBFY8W2j5ciRSvvTeJ7f2lmZAxG362
	bpBgSub2kLAGm8e/lHDUeBnhVXUcblzs5jJHhUStg4AU3AaXO4RK52sSaSPgY2Atlb8jLOkUCVlxL
	l0+TultYorUBQd3Cxpzod/A5sWYgBwfyD+50fAjo676wDogbK4hpDyGssPMzQvRGlRJEYnclO+lRX
	LQdOv/mnTycIPLsWISNrOTEdIjqi8Va2TokVNjDVdQx20wnpcebSwcdMi2rLF81HxOko0ckbpt9rV
	+pHe3fJ9JM5u9YXjMhVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP5hy-0007k2-KY; Fri, 10 May 2019 13:37:06 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP5hq-0007jZ-BR
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 13:36:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 07E4EA78;
 Fri, 10 May 2019 06:36:56 -0700 (PDT)
Received: from [10.1.196.129] (ostrya.cambridge.arm.com [10.1.196.129])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 133933F575;
 Fri, 10 May 2019 06:36:51 -0700 (PDT)
Subject: Re: [ARM SMMU] Dynamic StreamID allocation
To: Pankaj Bansal <pankaj.bansal@nxp.com>, Will Deacon <will.deacon@arm.com>, 
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>
References: <VI1PR0401MB24969CE24E4FB91EC8551DEBF10C0@VI1PR0401MB2496.eurprd04.prod.outlook.com>
From: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
Message-ID: <f0c3abd6-7b9f-8b68-14fa-3c6cf393ddc9@arm.com>
Date: Fri, 10 May 2019 14:36:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <VI1PR0401MB24969CE24E4FB91EC8551DEBF10C0@VI1PR0401MB2496.eurprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_063658_397967_42CDD995 
X-CRM114-Status: GOOD (  19.02  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 Varun Sethi <V.Sethi@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Nipun Gupta <nipun.gupta@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/05/2019 13:33, Pankaj Bansal wrote:
> Hi Will/Robin/Joerg,
> 
> I am s/w engineer from NXP India Pvt. Ltd.
> We are using SMMU-V3 in one of NXP SOC.
> I have a question about the SMMU Stream ID allocation in linux.
> 
> Right now the Stream IDs allocated to a device are mapped via device tree to the device.
> https://elixir.bootlin.com/linux/latest/source/Documentation/devicetree/bindings/iommu/arm,smmu-v3.txt#L39
> 
> As the device tree is passed from bootloader to linux, we detect all the stream IDs needed by a device in bootloader and add their IDs in respective device nodes.
> For each PCIE Endpoint (a unique BDF (Bus Device Function)) on PCIE bus, we are assigning a unique Stream ID in bootloader.
> 
> However, this poses an issue with PCIE hot plug.
> If we plug in a pcie device while linux is running, a unique BDF is assigned to the device, for which there is no stream ID in device tree.
> 
> How can this problem be solved in linux?

Assuming the streamID associated to a BDF is predictable (streamID = BDF
+ constant), using the iommu-map property should just work:

https://elixir.bootlin.com/linux/latest/source/Documentation/devicetree/bindings/pci/pci-iommu.txt

It describes the streamIDs of all possible BDFs, including hotplugged
functions.

Thanks,
Jean

> 
> Is there a way to assign (and revoke) stream IDs at run time?
> 
> Regards,
> Pankaj Bansal
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
