Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D89631055F6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 16:47:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0jt6/nlNLN4Pm6YPXdRMNako6d757adOhZbi55SsxdE=; b=ttjVMX0BWrnoKD
	4ePJEXaaqZ3SN3kkjma7ksxdqUayWBefLblXFNrNmpEeIwM2C6kZGfKL2tRnwDzhkAezDSvVVEFYi
	u385y7T3aluYsCM50BzYiQ3165SlxMV+i9e/0VjyrUJke6TDuURf3aNMcgcxtMdD0KkL/D6wdKnF3
	hk26Iy5mDk/qoj6wWYP4K7ReZ3JmGa3qkXeHFc94So2QOpYxWiB4QFGpjFIlqnIdNs1yNjCeciA1k
	qDRj3+ks0rTneM4epb2t2JvSZhVzqrj7f+8NrKwtlnd6nei3RMXSoqj6zu8QJqYzMPlEQ/+DJysu6
	BUcz8k97KIg4TjSJ9pQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXofn-0005z9-6a; Thu, 21 Nov 2019 15:47:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXofa-0005yG-CQ; Thu, 21 Nov 2019 15:46:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 94516DA7;
 Thu, 21 Nov 2019 07:46:57 -0800 (PST)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0C9CF3F52E;
 Thu, 21 Nov 2019 07:46:56 -0800 (PST)
Date: Thu, 21 Nov 2019 15:46:55 +0000
From: Andrew Murray <andrew.murray@arm.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v2 4/6] PCI: brcmstb: add Broadcom STB PCIe host
 controller driver
Message-ID: <20191121154655.GB43905@e119886-lin.cambridge.arm.com>
References: <20191112155926.16476-1-nsaenzjulienne@suse.de>
 <20191112155926.16476-5-nsaenzjulienne@suse.de>
 <20191119162502.GS43905@e119886-lin.cambridge.arm.com>
 <7e1be0bdcf303224a3fe225654a3c2391207f9eb.camel@suse.de>
 <20191121120319.GW43905@e119886-lin.cambridge.arm.com>
 <18109ee4f8d8c5ce0dc714217eef53ee42d5305f.camel@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <18109ee4f8d8c5ce0dc714217eef53ee42d5305f.camel@suse.de>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_074658_469774_8504CCBB 
X-CRM114-Status: GOOD (  21.15  )
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, maz@kernel.org,
 phil@raspberrypi.org, linux-kernel@vger.kernel.org, jeremy.linton@arm.com,
 Eric Anholt <eric@anholt.net>, mbrugger@suse.com,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 james.quinlan@broadcom.com, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 21, 2019 at 02:26:15PM +0100, Nicolas Saenz Julienne wrote:
> On Thu, 2019-11-21 at 12:03 +0000, Andrew Murray wrote:
> > On Wed, Nov 20, 2019 at 08:53:30PM +0100, Nicolas Saenz Julienne wrote:
> > One purpose of this function is to validate that the information given in the
> > device tree is valid - I've seen other feedback on these lists where the view
> > is taken that 'it's not the job of the kernel to validate the DT'. Subscribing
> > to this view would be a justification for removing this validation -
> > especially
> > given that the bindings you include have only one dma-range (in any case if
> > there are constraints you ought to include them in the binding document).
> > 
> > Though the problem with this point of view is that if the DT is wrong, it may
> > be possible for the driver to work well enough to do some function but with
> > some horrible side effects that are difficult to track down to a bad DT.
> 
> As for the validation, I think in this specific case it's still worthwhile. As
> you might know, there is a bug on the first revision of RPI4's PCIe integration
> which blocks any access higher than 3GB. Further revisions fix this and allow
> full memory addressing.
> 
> I've been working with Phil Elwell (from the RPi foundation) to solve this in a
> way that plays well with upstream and this driver (I'll be able to test the new
> revision before this gets in). The solution is, unsurprisingly, for the
> firmware to edit the DTB passed to the kernel based on the board revision.
> Given that there is some live manipulation of the dma-ranges I'd rather leave
> the validation check.
> 
> If you don't disagree with the above I'll add an extra code comment explaining
> why we feel the need to verify the device-tree contents.

I'll be interested in seeing it.

Thanks,

Andrew Murray

> 
> Regards,
> Nicolas
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
