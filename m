Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF1F4B81D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 14:24:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JQQWf48naN8fvI+Lww+z3BFq3GkYsMf1yJuUNmTC05I=; b=AMcV5wkGItYQOk
	luB7f32hvWWIEJW2wSGw+4byAoS7ypEOX78v4IxeYVyqdYAEa4FheG8r90cLWZQKRTvIxBdlMi7ps
	nPeigKhOGzz/MwzYxVNxklfCZDhzGUoBStjHrhbKY4lWu/GAoy+HjXEU3M/xa21PRxLEoCF2y3Dsv
	22ovXG5+1voNTvcRgKrRDbuClkAEM4dDcvpowogqUtTH128hDIbJqYE0lSIi+Mti04kGl+0516b0i
	tJVtZsfkFTwgKPLBz1tcw5kA5iphCAb6Vf1Dn5300HKtWrI15dR0AmE0YmvTCOwdSFV1HLTBbIHkA
	LQIvIgaZnhJ7Qewanc/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdZe3-00008l-U4; Wed, 19 Jun 2019 12:24:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdZds-00008U-VC
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 12:24:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2E0A6360;
 Wed, 19 Jun 2019 05:24:44 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E8A6A3F738;
 Wed, 19 Jun 2019 05:24:42 -0700 (PDT)
Date: Wed, 19 Jun 2019 13:24:34 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [RFC PATCH] acpi/arm64: ignore 5.1 FADTs that are reported as 5.0
Message-ID: <20190619122434.GA25656@e107155-lin>
References: <20190619121831.7614-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190619121831.7614-1-ard.biesheuvel@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_052445_053738_D58933A6 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
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
Cc: lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 leif.lindholm@linaro.org, linux-acpi@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, lee.jones@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 02:18:31PM +0200, Ard Biesheuvel wrote:
> Some Qualcomm Snapdragon based laptops built to run Microsoft Windows
> are clearly ACPI 5.1 based, given that that is the first ACPI revision
> that supports ARM, and introduced the FADT 'arm_boot_flags' field,
> which has a non-zero field on those systems.
> 
> So in these cases, infer from the ARM boot flags that the FADT must be
> 5.1 or later, and treat it as 5.1.
> 

Makes sense and looks simple to me.

Acked-by: Sudeep Holla <sudeep.holla@arm.com>

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
