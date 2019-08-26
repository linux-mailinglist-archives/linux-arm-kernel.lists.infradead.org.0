Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8A09D64A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 21:13:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=npOE/UonDPbLZjMXLjsPz1jUpjzkbP+prApPU68XXOw=; b=fQeSLgeSpeuPAN
	TETEruGa4Iu9LjOTFCpouv1SVClq2f3ujoQyPKH543HRygJ6qkmydloNf59Stl587Zmtx1fATTRiR
	aWx6Yvwj0IqydOyhRFXby1kCtZYe5pHeMgMQq2510FN0w1ERAjBtxWG9YLYKSn7N4OFVnYVg5ABrV
	dCp5h/+Nl5VQQ5cVdNs2W7trBywBpG1ODBdpdoNNEgT7C6l640ENdejTA6mcLeFJ7YRPd5PWZkdS2
	jPGYuC4KcvuogIm7XAG9wkDKzMTFZd0BdaYLWQnblcreX08Lz0RGeeA+HQFflb3hqAjoCFHhzsG9h
	m7bemljtMKfkyHoCS3zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2KQq-0003xl-TB; Mon, 26 Aug 2019 19:13:37 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2KQb-0003vR-OV; Mon, 26 Aug 2019 19:13:23 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why)
 by cheepnis.misterjones.org with esmtpsa (TLSv1.2:AES256-GCM-SHA384:256)
 (Exim 4.80) (envelope-from <maz@kernel.org>)
 id 1i2KQV-0007jY-Pj; Mon, 26 Aug 2019 21:13:16 +0200
Date: Mon, 26 Aug 2019 20:13:13 +0100
From: Marc Zyngier <maz@kernel.org>
To: Pavel Tatashin <pasha.tatashin@soleen.com>
Subject: Re: [PATCH v1 0/6] Allow kexec reboot for GICv3 and device tree
Message-ID: <20190826201313.246208e9@why>
In-Reply-To: <20190826190056.27854-1-pasha.tatashin@soleen.com>
References: <20190826190056.27854-1-pasha.tatashin@soleen.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pasha.tatashin@soleen.com, jmorris@namei.org,
 sashal@kernel.org, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, james.morse@arm.com,
 vladimir.murzin@arm.com, mark.rutland@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_121321_947023_E290FFA4 
X-CRM114-Status: GOOD (  10.07  )
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
Cc: sashal@kernel.org, mark.rutland@arm.com, vladimir.murzin@arm.com,
 kexec@lists.infradead.org, jmorris@namei.org, linux-kernel@vger.kernel.org,
 james.morse@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 26 Aug 2019 15:00:50 -0400
Pavel Tatashin <pasha.tatashin@soleen.com> wrote:

> Marc Zyngier added the support for kexec and GICv3 for EFI based systems.
> However, it is still not possible todo on systems with device trees.
> 
> Here is EFI fixes from Marc:
> https://lore.kernel.org/lkml/20180921195954.21574-1-marc.zyngier@arm.com
> 
> For Device Tree variant: lets allow reserve a memory region in interrupt
> controller node, and use this property to allocate interrupt tables.

There is no such thing as a "device tree variant". As long as your
bootloader implements EFI, everything will work correctly, whether
you're using DT, ACPI, or the anything else.

This already works today, without any need to add anything to the
kernel (I have systems using EDK II and u-boot, both implementing EFI,
and I'm able to kexec without any issue). If your bootloader doesn't
support EFI, here's a good opportunity to implement it!

Thanks,

	M.
-- 
Without deviation from the norm, progress is not possible.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
