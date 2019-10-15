Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4122CD7DD3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 19:31:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y1B0ZRoLuEdgOx+mTf/ytjCysXW9ZJIYS9T9gxehruA=; b=iNNNfNRJdQt1/c
	Kzc+sbNikPD6ya99P1IKIgwho90m0F/RoCHBO9dXdjjXa6m+4E0v+eGW2Ib9xQbbjDtYwjfxqAV25
	B9dKVqWx9xXJSJY4OAP/CcaQih/pjmhf1AynaR8cNsdxzq3LQX1BuMABzBiCDWF52NqwrbILjzlBn
	qRcuDckFuxkZXGgHejTZZVm4q88gUm0jCfb5+J5PpOa/4/gQd6nk5Yd8qqa4BpbKVBLJ3ue65Hrb8
	eWPNIGm1vOFA+Ru6mTCRd3NDwSKTDIHtmqHGT9bjyoorDvj6KysrQGnwQaNT/cFGxyA1rRBpbKOf3
	5PQu2GWsKHXIP5LZ5gdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKQfE-0006Ia-Pu; Tue, 15 Oct 2019 17:31:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKQeg-000678-8V
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 17:30:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 91900337;
 Tue, 15 Oct 2019 10:30:39 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 3D9DB3F68E; Tue, 15 Oct 2019 10:30:38 -0700 (PDT)
Date: Tue, 15 Oct 2019 18:30:36 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v3 0/2] arm64: Relax ICC_PMR_EL1 synchronisation when
 possible
Message-ID: <20191015173035.GN13874@arrakis.emea.arm.com>
References: <20191002090613.14236-1-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002090613.14236-1-maz@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_103042_344298_C03F6469 
X-CRM114-Status: GOOD (  10.73  )
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
Cc: linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, liwei391@huawei.com,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 uohanjun@huawei.com, huawei.libin@huawei.com, Will Deacon <will@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 02, 2019 at 10:06:11AM +0100, Marc Zyngier wrote:
> This is a very late update on [1], fixing the 32bit compilation issue that
> was present in v2, and adding an extra message in the kernel log to find out
> what is going on.
> 
> [1] http://lore.kernel.org/r/20190802125208.73162-1-maz@kernel.org
> 
> Marc Zyngier (2):
>   arm64: Relax ICC_PMR_EL1 accesses when ICC_CTLR_EL1.PMHE is clear
>   arm64: Document ICC_CTLR_EL3.PMHE setting requirements

Queued for 5.5. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
