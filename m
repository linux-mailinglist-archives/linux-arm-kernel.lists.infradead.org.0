Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E7AFB1BA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 14:50:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FqT1YHRfGtLuFs344Bc5d6qOkQ0VrrA4Sc7BYuViO4k=; b=MIvFthY9+J9/+dA4E13UnVbo2
	zxx/m0MAL723ZJiuSFDcB3yYlSN/8ewbyyLKOvk/IINh65fC7oJUpiRHUCUi2nMAKtxvft4oQF+FV
	H+O4DgsNHILfwU4mJEJFGu+mNkYBuJobn/lYHcvwTDUCYFrN9UAnHg0hd/NIgS3z/4tUinC2cVMFN
	u7v8wtXizFIAdSjYoISg8fXLguUWpLuWCKQzg1VfjQZnJdETobxfJeWYE0EAyvYIrZloWCAtMNG8y
	S8BvX0NzJok4mZA8FQeHueYSqPJsXYmIXF1NIEgcNczVveOu6iVghBoWv5mh1W8Kp7HfosxDhooei
	UvFh5d8Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUt29-0005Rw-9I; Wed, 13 Nov 2019 13:50:09 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUt1u-0005Qp-Ge; Wed, 13 Nov 2019 13:49:55 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iUt1c-00023o-CE; Wed, 13 Nov 2019 14:49:36 +0100
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v2 5/6] PCI: brcmstb: add MSI capability
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Wed, 13 Nov 2019 14:58:57 +0109
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <20191112155926.16476-6-nsaenzjulienne@suse.de>
References: <20191112155926.16476-1-nsaenzjulienne@suse.de>
 <20191112155926.16476-6-nsaenzjulienne@suse.de>
Message-ID: <d8cae6625265f95441019e33129febcd@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: nsaenzjulienne@suse.de, andrew.murray@arm.com,
 linux-kernel@vger.kernel.org, lorenzo.pieralisi@arm.com, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, eric@anholt.net, wahrenst@gmx.net,
 james.quinlan@broadcom.com, mbrugger@suse.com, phil@raspberrypi.org,
 jeremy.linton@arm.com, bhelgaas@google.com, linux-pci@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_054954_699402_3DE2EB5B 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 BUG6152_INVALID_DATE_TZ_ABSURD No description available.
 0.6 INVALID_DATE_TZ_ABSURD Invalid Date: header (timezone does not
 exist)
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, mbrugger@suse.com,
 linux-pci@vger.kernel.org, phil@raspberrypi.org, linux-kernel@vger.kernel.org,
 jeremy.linton@arm.com, Eric Anholt <eric@anholt.net>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 james.quinlan@broadcom.com, Bjorn Helgaas <bhelgaas@google.com>,
 andrew.murray@arm.com, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-12 17:08, Nicolas Saenz Julienne wrote:
> From: Jim Quinlan <james.quinlan@broadcom.com>
>
> This commit adds MSI to the Broadcom STB PCIe host controller. It 
> does
> not add MSIX since that functionality is not in the HW.  The MSI
> controller is physically located within the PCIe block, however, 
> there
> is no reason why the MSI controller could not be moved elsewhere in
> the future.
>
> Since the internal Brcmstb MSI controller is intertwined with the 
> PCIe
> controller, it is not its own platform device but rather part of the
> PCIe platform device.
>
> Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>
> Co-developed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Reviewed-by: Marc Zyngier <maz@kernel.org>

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
