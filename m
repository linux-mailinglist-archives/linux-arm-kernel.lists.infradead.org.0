Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B70FB117453
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 19:37:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uy2xlyFCZlZjWq0n1oA8jrRXHrJeAZY6+YixAIMgDSo=; b=Y+P2CqskkMzX9k
	3FftVTejdRBpqcqGN50G9c8nnFOE1zlcpp64bhe+T3JGUXUuwI4+a1txU3ST0ReMh+ZZbkdKMgWUt
	l5YGCcMdQaICdz497CgF9wSmkXOxGEP/jjOKddJ+5Neul3mW9ryOpycoqTnQtdFpE9R4bfCIPx66n
	kPAyiEpwhMx77U9ILbVr2AS1uNEufFIytUSNJCLYC6LRjRXaFWzD0DOxrcv1x8xbm5PovAa7E1sSi
	ow/xSxLeavUYHFivkdEN1nX+AAit1wkJq9tS9t8UMjgf0IisvW4A3LA1oZWtAbNG9wGMSt+qH7wAf
	YJU60hTr8AJ2mzxSSvmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieNts-0002Kc-9B; Mon, 09 Dec 2019 18:36:52 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieNtk-0002JR-0O
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 18:36:45 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why)
 by cheepnis.misterjones.org with esmtpsa (TLSv1.2:AES256-GCM-SHA384:256)
 (Exim 4.80) (envelope-from <maz@kernel.org>)
 id 1ieNtd-0005gq-O4; Mon, 09 Dec 2019 19:36:37 +0100
Date: Mon, 9 Dec 2019 18:36:36 +0000
From: Marc Zyngier <maz@kernel.org>
To: Ray Jui <ray.jui@broadcom.com>
Subject: Re: [PATCH 0/2] Add iProc IDM device support
Message-ID: <20191209183636.6d708bfd@why>
In-Reply-To: <bd90ba80-9aac-e406-9066-64e975e5b10b@broadcom.com>
References: <20191202233127.31160-1-ray.jui@broadcom.com>
 <20191207173914.353f768d@why>
 <bd90ba80-9aac-e406-9066-64e975e5b10b@broadcom.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: ray.jui@broadcom.com, robh+dt@kernel.org,
 mark.rutland@arm.com, devicetree@vger.kernel.org,
 rayagonda.kokatanur@broadcom.com, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_103644_197530_C6114B30 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 9 Dec 2019 10:02:53 -0800
Ray Jui <ray.jui@broadcom.com> wrote:

> On 12/7/19 9:39 AM, Marc Zyngier wrote:
> > On Mon,  2 Dec 2019 15:31:25 -0800
> > Ray Jui <ray.jui@broadcom.com> wrote:
> >   
> >> The Broadcom iProc IDM device allows control and monitoring of ASIC internal
> >> bus transactions. Most importantly, it can be configured to detect bus
> >> transaction timeout. In such case, critical information such as transaction
> >> address that caused the error, bus master ID of the transaction that caused
> >> the error, and etc., are made available from the IDM device.  
> > 
> > This seems to have many of the features of an EDAC device reporting
> > uncorrectable errors.
> > 
> > Is there any reason why it is not implemented as such?
> > 
> > Thanks,
> > 
> > 	M.
> >   
> 
> I thought EDAC errors (in fact, in our case, that's fatal rather than
> uncorrectable) are mostly for DDR. Is my understanding incorrect?

No, they are for HW errors in general. There is no real limitation of
scope, as far as I understand. Recently, the Annapurna guys came up
with a similar HW block, and were convinced to make it an EDAC device.

See [1] for details.

Thanks,

	M.

[1] https://lore.kernel.org/linux-devicetree/1570707681-865-1-git-send-email-talel@amazon.com/
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
