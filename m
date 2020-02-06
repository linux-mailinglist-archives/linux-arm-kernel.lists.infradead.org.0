Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 914F9154A0F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 18:13:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dGqhehwRPj4JRSjnGN5HF7jp3DKNAo3yRenufXrNF0U=; b=IyeX5alGjOTvpt
	SngsiqkyarnLicYI7sBOQRU0utnYxURGiD7CQfjH1KjjIRs9Z7G51LgCKHWbQi+K8IxfNYDsEPo5W
	RpSvVZma2lHxOdiebSDUyJLSsDtfCnS6gjh3IGkEollWxXcPo/Vjrh08kFgHVHNzp5AHJ/gAHOnlk
	tKYvpuiBaDm8NkDiJxUnlzsYfoClvS9RTwMTkwTgzLkFgzLPi13sR3w7nx5RcQJKHHwMQIPyCOmP4
	J8VCjfB6navtDFSD8InO4U7UItl5chpR9wA+BDNBC7h1gF3fn5gDQFf36cZXRQM92bSkicOn1ELTF
	NUbQRu2kZqOhC0GFSpaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izkiL-0005wg-GO; Thu, 06 Feb 2020 17:13:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izkiF-0005wH-RA
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 17:13:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E069D1FB;
 Thu,  6 Feb 2020 09:13:08 -0800 (PST)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DC5873F68E;
 Thu,  6 Feb 2020 09:13:07 -0800 (PST)
Date: Thu, 6 Feb 2020 17:13:05 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH kvmtool] Add emulation for CFI compatible flash memory
Message-ID: <20200206171305.4029832c@donnerap.cambridge.arm.com>
In-Reply-To: <20200206144211.34a27285@donnerap.cambridge.arm.com>
References: <20200108183212.252810-1-andre.przywara@arm.com>
 <20200205171156.GA908@willie-the-truck>
 <20200206144211.34a27285@donnerap.cambridge.arm.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_091311_922272_71E140C5 
X-CRM114-Status: GOOD (  18.04  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Raphael Gault <raphael.gault@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Sami Mujawar <sami.mujawar@arm.com>, Robin Murphy <Robin.Murphy@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 6 Feb 2020 14:42:11 +0000
Andre Przywara <andre.przywara@arm.com> wrote:

Hi,

> On Wed, 5 Feb 2020 17:11:57 +0000
> Will Deacon <will@kernel.org> wrote:
> 
> Hi Will,
> 
> many thanks for having a look!
> 
> > On Wed, Jan 08, 2020 at 06:32:12PM +0000, Andre Przywara wrote:  
> > > From: Raphael Gault <raphael.gault@arm.com>

[ ... ]

> > > +/* We only support synchronous page mode read accesses. */
> > > +static void read_flash(struct cfi_flash_device *sfdev,
> > > +		       u64 addr, u8 *buffer, int len)
> > > +{
> > > +	memcpy(buffer, sfdev->flash_memory + addr, len);
> > > +}    
> > 
> > Hmm, you open-code the memcpy when writing the flash so it's a bit weird  
> 
> Not sure what you refer to exactly?
> The only open-code access I see is in the MMIO handler when doing the CFI QRY *read*, which is a very special MMIO style read access. Every other write access (word_program(), buffer_confirm()) is already using memcpy.
> What am I missing here?

Robin pointed out that you probably mean that there is a wrapper around the memcpy on read_flash, but not on the write operations?
The reason for that is that read and write are two very different operations on any flash memory: the read side is following proper memory semantics: no side effects, could be cached, etc. I was briefly tempted to actually map it r/o into the guest, but the problem is that this semantics only holds when we are in read mode. In any other mode and whenever we write, the CFI flash is actually an MMIO mapped device, where each access triggers something and the access width matters. So that would require frequently changing the memslot, because we need to trap reads when not in read mode.

Anyway, adding a write wrapper doesn't make sense here, but I can of course easily replace the read_flash() call with the respective memcpy() line.

Cheers,
Andre

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
