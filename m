Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3399745813
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 10:59:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5cOnGqOfPQJ8IFRhV3yD9/o2GGzCvTwOyJHT7UGNl54=; b=KtbQhqfhnuvRal
	GFvzB1LmnAajYSyilr0IZAVyzKPL1nMBzslVVFMBfEIi3BkeZx7DDk49hB+bTzlewBwcgDe0zTO/V
	U4T/U9AQQZ2xOSjsdwapx/fU60C58AFnZQTlRnEhKKDlYOa+aJ5Y3VBrdLnGZwnjPgqLgxuDEtfq9
	TsnLHzIMqzk7Zm+OzxVa9+8zxiR6hNlfVknxGA+lCK//dyz2d3MarNMCqJhZdJAhrqSUZcPC9WV5M
	Ib+6HHEVhmi/mOcWVd8dXhwM/X2WfkbTi8eQAT9aPXfq8uV7n/l+B3O3GUxMYmldmRpo6fJgNXTIs
	sEjY5h/CTpB23DNFdvpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbi3S-0001tT-8e; Fri, 14 Jun 2019 08:59:26 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbi3E-0001ru-TT
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 08:59:14 +0000
Received: from windsurf (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id C61A6240007;
 Fri, 14 Jun 2019 08:58:55 +0000 (UTC)
Date: Fri, 14 Jun 2019 10:58:54 +0200
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: Remi Pommarel <repk@triplefau.lt>
Subject: Re: [PATCH v2] PCI: aardvark: Fix PCI_EXP_RTCTL conf register writing
Message-ID: <20190614105854.4c2f270f@windsurf>
In-Reply-To: <20190614064225.24434-1-repk@triplefau.lt>
References: <20190614064225.24434-1-repk@triplefau.lt>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_015913_114130_167D6C46 
X-CRM114-Status: UNSURE (   7.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: Ellie Reeves <ellierevves@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Helgaas <helgaas@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Fri, 14 Jun 2019 08:42:25 +0200
Remi Pommarel <repk@triplefau.lt> wrote:

> PCI_EXP_RTCTL is used to activate PME interrupt only, so writing into it
> should not modify other interrupts' mask. The ISR mask polarity was also
> inverted, when PCI_EXP_RTCTL_PMEIE is set PCIE_MSG_PM_PME_MASK mask bit
> should actually be cleared.
> 
> Fixes: 6302bf3ef78d ("PCI: Init PCIe feature bits for managed host bridge alloc")

Are you sure about this Fixes tag ? This commit seems unrelated.

The commit introducing this issue is 8a3ebd8de328301aacbe328650a59253be2ac82c.

Best regards,

Thomas
-- 
Thomas Petazzoni, CTO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
