Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68DDB9E65E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 13:03:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dd/ws0Tf5vosCczpUZcbMZNw7Ot/hGCaV5cTxz/RIgI=; b=rFMmGVCKI7DDLn
	Bh72K3l6Z1q75bYaBcvgcuNcK6LfPtFxwNluA3vXK2qTeJrgsfzNNS1K5qC3lG4Rb7HmBIuooxBxK
	wwYAkxsrXFdDVHoxIVh99f0tgxGFTQ5txsv0syDnwVKPCaON8Au1TG693yxFlwhueatI/PW54eBKg
	Xh5MEi95gNhnnfOvGf8WCBuDU1Db5p1fxFQcrQmuvjAVqGDk8B4osgtX5Gq56mQQ1v5NjImz89jeE
	h8YywfOy1o0J/AXm0zitW+GX8S1/cLAnQFZUJAlYnBRdIrIo/AHmt2RG0H4zhALkRduYXnDDGoToo
	YV6oJimytaPOFqBo6PBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2ZFg-000320-Ab; Tue, 27 Aug 2019 11:03:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2ZFJ-0002t5-Ap
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 11:02:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8B17C360;
 Tue, 27 Aug 2019 04:02:37 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1AB263F718;
 Tue, 27 Aug 2019 04:02:36 -0700 (PDT)
Date: Tue, 27 Aug 2019 12:02:35 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Noam Camus <noamikong@gmail.com>
Subject: Re: Changing default kernel load address
Message-ID: <20190827110234.GB8000@lakrids.cambridge.arm.com>
References: <CABhetiwRF2Gq3HeG_QNT6t3GtCNJzedeenn6vQC_0FYr5Ee+mA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABhetiwRF2Gq3HeG_QNT6t3GtCNJzedeenn6vQC_0FYr5Ee+mA@mail.gmail.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_040241_590577_5CC88324 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 26, 2019 at 08:12:27PM +0300, Noam Camus wrote:
> Hi,
> 
> I wish to change an arm64 machine kernel load address and I hope this
> forum can assist.
> 
> In my current setup the KERNEL_START macro (_text) equals 128.5MB:
> KIMAGE_VADDR=128MB
> TEXT_OFFSET=512KB
> 
> I wish to change kernel load address to reside on my internal RAM
> which locates beyond 4GB.

You shouldn't need to modify anything; the kernel can be loaded at any
2MiB-aligned physical address + TEXT_OFFSET. KERNEL_START and
KIMAGE_VADDR are virtual addresses and don't require a specific physical
address.

Please see:

  https://www.kernel.org/doc/html/latest/arm64/booting.html

> Can someone tell what changes I need to do so kernel load address will
> be above 4GB.
> 
> Note: I use FIT image to provide U-Boot the kernel Load address.

I don't know how FIT works, but the U-Boot "booti" command should do the
right thing if given an arm64 kernel Image.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
