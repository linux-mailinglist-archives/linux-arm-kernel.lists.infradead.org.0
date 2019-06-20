Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1244CB4E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 11:49:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3bquk8NlKvZKD1HLkdfUW+CAxmDOyr7hABtQ/bjvIwg=; b=fxz8cV0vrH9Rx2
	JXelRMdOGT5KY4jO/3I4XivOAQEUiqKqNway8SoFFv1GCX1NbMv3IzroY9vfjcn2xttMIE9fZmIdI
	bfy3ruz06yGk3t4QxZGTKd3LffQf6XgosFHEUdBnPOQ3/OLT2HvoDmLl3hUL07vA22n8aUVDWoW9q
	dTeJRB1whXmd8ySDiUbpZ3jpVkbd937/FulTr1ZlU7rxaDEp4QxLT4Ra80DH2+nzQ8PucraFmOQwy
	BIH3x0b+qg9P+Eum1WV97/xA/K6knsZGY3ouTcwpIPHcqGg49h8e5oxiwp2120v9dluqsfbwuVQgR
	N4FdWsk/tMOaIbgQXvOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdthb-0006lt-OU; Thu, 20 Jun 2019 09:49:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdthN-0006lP-SZ
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 09:49:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 151F5360;
 Thu, 20 Jun 2019 02:49:41 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EAA403F246;
 Thu, 20 Jun 2019 02:49:39 -0700 (PDT)
Date: Thu, 20 Jun 2019 10:49:37 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [RFC PATCH] acpi/arm64: ignore 5.1 FADTs that are reported as 5.0
Message-ID: <20190620094937.GB20872@e121166-lin.cambridge.arm.com>
References: <20190619121831.7614-1-ard.biesheuvel@linaro.org>
 <20190619122434.GA25656@e107155-lin> <20190620075732.GB4699@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190620075732.GB4699@dell>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_024941_970078_45CD0BFF 
X-CRM114-Status: GOOD (  14.16  )
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>, catalin.marinas@arm.com,
 will.deacon@arm.com, leif.lindholm@linaro.org, linux-acpi@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 08:57:32AM +0100, Lee Jones wrote:
> On Wed, 19 Jun 2019, Sudeep Holla wrote:
> 
> > On Wed, Jun 19, 2019 at 02:18:31PM +0200, Ard Biesheuvel wrote:
> > > Some Qualcomm Snapdragon based laptops built to run Microsoft Windows
> > > are clearly ACPI 5.1 based, given that that is the first ACPI revision
> > > that supports ARM, and introduced the FADT 'arm_boot_flags' field,
> > > which has a non-zero field on those systems.
> > > 
> > > So in these cases, infer from the ARM boot flags that the FADT must be
> > > 5.1 or later, and treat it as 5.1.
> > > 
> > 
> > Makes sense and looks simple to me.
> > 
> > Acked-by: Sudeep Holla <sudeep.holla@arm.com>
> 
> Could we pleeeeease have this in for v5.3?
> 
> We have available, consumer-level platforms that rely on this change.

But we do not have the kernel infrastructure to support them so
I am fine with it but urgency is questionable as far as I am
concerned.

Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
