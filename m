Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD143105762
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 17:47:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BEqrxECjYCTy6B5Bsju3/N91HEgB8Af9g7lDH53t4PQ=; b=NlgHyILplzqWVp
	F5bM22Szjuyr+chTtvwepfN7eOsxv44PQdgzLvpb2EXwAytgZJVQSXD0edH3Ns6WN9etBvxm24WRl
	sANl01TJlitj6SYC8occz39O9od/jqCc6A6v/x787KB1bUFbk+vXSj7YHrtDsJtFI3C8QkbIz210c
	PXGD51fnjJdgLdpo+hPxzqnIt2fzNvlRACHJNqbnevNrNN724e+3h6unLlzOvN40b17Z/jipvF2UD
	q//HV76uKzA1MvcW4CNi8DRmNc4vyMhrzPPcvGtwF/hBWZlfdJsXHJpTPGieGS+4bZf+hvGkQEVRU
	kNm2RFqsz5YTpxBWmw7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXpc1-0005v2-4q; Thu, 21 Nov 2019 16:47:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXpbs-0005uU-Ql
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 16:47:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D7F8F328;
 Thu, 21 Nov 2019 08:47:11 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A30043F52E;
 Thu, 21 Nov 2019 08:47:10 -0800 (PST)
Date: Thu, 21 Nov 2019 16:47:05 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: Re: [PATCH 2/2] PCI: uniphier: Add checking whether PERST# is
 deasserted
Message-ID: <20191121164705.GA14229@e121166-lin.cambridge.arm.com>
References: <20191107205239.65C1.4A936039@socionext.com>
 <20191107124617.GA43905@e119886-lin.cambridge.arm.com>
 <20191108163026.0DFB.4A936039@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108163026.0DFB.4A936039@socionext.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_084712_910146_E0C97D53 
X-CRM114-Status: GOOD (  12.97  )
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
Cc: Masami Hiramatsu <masami.hiramatsu@linaro.org>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Jassi Brar <jaswinder.singh@linaro.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Andrew Murray <andrew.murray@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 08, 2019 at 04:30:27PM +0900, Kunihiko Hayashi wrote:
> > However, If I understand correctly, doesn't your solution only work some
> > of the time? What happens if you boot both machines at the same time,
> > and PERST# isn't asserted prior to the kernel booting?
> 
> I think it contains an annoying problem.
> 
> If PERST# isn't toggled prior to the kernel booting, PERST# remains asserted
> and the RC driver can't access PCI bus.
> 
> As a result, this patch works and deasserts PERST# (and EP configuration will
> be lost). So boot sequence needs to include deasserting PERST#.

I am sorry but I have lost you. Can you explain to us why checking
that PERST# is deasserted guarantees you that:

- The EP has bootstrapped
- It is safe not to toggle it again (and also skip
  uniphier_pcie_ltssm_enable())

Please provide details of the HW configuration so that we understand
what's actually supposed to happen and why this patch fixes the
issue you are facing.

Thanks,
Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
