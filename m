Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FDC442315
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 12:54:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RGdmoJ7RsaNHVFl8xalJTLgSoJTkmjIQxKqvdy6TVvQ=; b=qq/LM9btIWGI5D
	5zT/nLfeheAil0c8djhEyu/SQqTInl6+oTfSG6kM0BElwwnCEgV2yHMT4SE5abUGNEKbKPAd7OZOn
	KYVGJSdLICbLchnGg2rDr1eTr3MaUD/sZB+bVmmJpkOFMB34Vx+xiWpPt5pmA1n2Y3rcdleeC+UTD
	ZGdN3sb0NkhBIOTwORstxZxRiNq6jvrI9qiytQp5mLPlRCQgQ4CXVVBvzgecJTifCA7GYFFRSKxyO
	aSqsXfSfFQG6DA70PdieGkgBZ8FuR3t/y1FGjssiXMUg5XOh7Fz5l5mALOHyWH/cyPph4t5r+4Oqt
	Kd/2QBvZaciZR1GmGkSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb0tg-0003jy-BJ; Wed, 12 Jun 2019 10:54:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb0tX-0003j9-9P
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 10:54:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0017028;
 Wed, 12 Jun 2019 03:54:17 -0700 (PDT)
Received: from redmoon (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B18973F246;
 Wed, 12 Jun 2019 03:55:57 -0700 (PDT)
Date: Wed, 12 Jun 2019 11:54:10 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [PATCHv5 04/20] PCI: mobiveil: Remove the flag
 MSI_FLAG_MULTI_PCI_MSI
Message-ID: <20190612105410.GA9918@redmoon>
References: <20190412083635.33626-1-Zhiqiang.Hou@nxp.com>
 <20190412083635.33626-5-Zhiqiang.Hou@nxp.com>
 <20190611165935.GA22836@redmoon>
 <3b883516-1d63-1504-bdc9-22ac9c6f2d46@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3b883516-1d63-1504-bdc9-22ac9c6f2d46@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_035419_369247_02A83CF2 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Xiaowei Bao <xiaowei.bao@nxp.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "Z.q. Hou" <zhiqiang.hou@nxp.com>,
 "l.subrahmanya@mobiveil.co.in" <l.subrahmanya@mobiveil.co.in>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 06:29:49PM +0100, Marc Zyngier wrote:
> On 11/06/2019 17:59, Lorenzo Pieralisi wrote:
> > On Fri, Apr 12, 2019 at 08:35:36AM +0000, Z.q. Hou wrote:
> >> From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> >>
> >> The current code does not support multiple MSIs, so remove
> >> the corresponding flag from the msi_domain_info structure.
> > 
> > Please explain me what's the problem before removing multi MSI
> > support.
> 
> The reason seems to be the following code in the allocator:
> 
>         WARN_ON(nr_irqs != 1);
>         mutex_lock(&msi->lock);
> 
>         bit = find_first_zero_bit(msi->msi_irq_in_use, msi->num_of_vectors);
>         if (bit >= msi->num_of_vectors) {
>                 mutex_unlock(&msi->lock);
>                 return -ENOSPC;
>         }
> 
>         set_bit(bit, msi->msi_irq_in_use);
> 
> So instead of fixing the allocator, the author prefers disabling
> the feature. I'm not sure whether that is an acceptable outcome...

:) No it is not that's why I asked and I am waiting for an answer.

Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
