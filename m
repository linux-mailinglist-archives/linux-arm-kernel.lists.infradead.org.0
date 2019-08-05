Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5668165A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 12:03:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hwZrPn0j78+d9m7HtUujIFaoG/JRez/SKNb1vyLdNYQ=; b=NDbySwMaaaEU+e
	P/014hC9dJVJR+JAgf/cMZyfeBhOFZ1MFoMhDG9ZNceoGxsuyd1uZkUdXDsvyr5gZonSLP/wczH02
	yYlV6g+Au0gQ73Rsdlr9o1RuUuk+DAt1kd5BM4AtsM1sKDhvowjSkxOE5i7+VqipB4SbDR0sEEDhc
	Ml9wbJ3H9gMD3RcSDchHiWAQtb4V+IkxxeilgNxTDu9rxTJRpi1raT5tgvNyvLea4wHaun/Fa9z90
	3+8IxJCDt7Dke4uFna+BZR0KaBUrDrtcS1uDzznsf6RkmxRUKbTdcm3sAM+/qvPMmduuzYCGPgs/J
	F9pofcqD2v52SpseLCNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huZq0-0005qB-8w; Mon, 05 Aug 2019 10:03:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZpn-0005pZ-Ej
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 10:03:20 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D63212075B;
 Mon,  5 Aug 2019 10:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564999399;
 bh=YOw3eXXTngamY2vUc4t6eNrKhwGf591Fl1XUuUTIR14=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hSLcHvvUheEUjR3iZldH1kFTzjsmKYQEJY3qZfcH2XHVp85wSCD10iY/IOI7hrQ0M
 RXojUUFfKcGjxcUYjZhk++s1wQBVkRKmQhCSJkDbeHWO0jF/4x/0ofAqCZ0MduABXE
 R/xSf8650vmGSiEbz9ThcRl5ywyoTZtrvpD4W18g=
Date: Mon, 5 Aug 2019 11:03:14 +0100
From: Will Deacon <will@kernel.org>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH 7/9] arm/arm64: Provide a wrapper for SMCCC 1.1 calls
Message-ID: <20190805100313.x65743i3n4qx6gyc@willie-the-truck>
References: <20190802145017.42543-1-steven.price@arm.com>
 <20190802145017.42543-8-steven.price@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190802145017.42543-8-steven.price@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_030319_515113_762D3556 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: kvm@vger.kernel.org, Radim =?utf-8?B?S3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Pouloze <suzuki.poulose@arm.com>, linux-doc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Marc Zyngier <maz@kernel.org>, Paolo Bonzini <pbonzini@redhat.com>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 02, 2019 at 03:50:15PM +0100, Steven Price wrote:
> SMCCC 1.1 calls may use either HVC or SMC depending on the PSCI
> conduit. Rather than coding this in every call site provide a macro
> which uses the correct instruction. The macro also handles the case
> where no PSCI conduit is configured returning a not supported error
> in res, along with returning the conduit used for the call.
> 
> This allow us to remove some duplicated code and will be useful later
> when adding paravirtualized time hypervisor calls.
> 
> Signed-off-by: Steven Price <steven.price@arm.com>
> ---
>  include/linux/arm-smccc.h | 44 +++++++++++++++++++++++++++++++++++++++
>  1 file changed, 44 insertions(+)

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
