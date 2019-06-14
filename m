Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D5945887
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 11:24:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tBOvq5vvWPaleB7VioFZG6ghNdvBxa5vU/yiFveAsrg=; b=u59wIOzfHEHnSV
	IVxVwqLSY0Ht0Y3oSTPMAwcy/EkhCqq3PZdiUaOVx1chXjZocqRDxsRm8a0Q0Ja/7Hs1qM+NddP6u
	FO2V+Tfse5PefRyoVGJCboK/mT1TFkEGQ88rKeEtQJjfarBDFV4Hn8Dvsm+gMNLLyzpZFJrExJBUd
	ri7cbGIyBipECbnO8h1ZhSpo/HyKvacfBxUcWc8flEK2Emy9LHBkR6RwvUkUEq1EHtPsSkg+lYF98
	UmfhcPLsXtwiTsB3mfL4YC5uKaOP8E0+aif/RnFT/3xM7BKAmXZuGy+VH5ZVVUMSOS5HHXWn893Ne
	0N+ln0l5/0fxo4+yomhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbiRF-0008An-SV; Fri, 14 Jun 2019 09:24:01 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbiR2-00089Y-RT
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 09:23:50 +0000
X-Originating-IP: 88.190.179.123
Received: from localhost (unknown [88.190.179.123])
 (Authenticated sender: repk@triplefau.lt)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 2E5FE240018;
 Fri, 14 Jun 2019 09:23:34 +0000 (UTC)
Date: Fri, 14 Jun 2019 11:33:21 +0200
From: Remi Pommarel <repk@triplefau.lt>
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v2] PCI: aardvark: Fix PCI_EXP_RTCTL conf register writing
Message-ID: <20190614093320.GC12859@voidbox.localdomain>
References: <20190614064225.24434-1-repk@triplefau.lt>
 <20190614105854.4c2f270f@windsurf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614105854.4c2f270f@windsurf>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_022349_053454_68181F4F 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
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

On Fri, Jun 14, 2019 at 10:58:54AM +0200, Thomas Petazzoni wrote:
> Hello,
> 
> On Fri, 14 Jun 2019 08:42:25 +0200
> Remi Pommarel <repk@triplefau.lt> wrote:
> 
> > PCI_EXP_RTCTL is used to activate PME interrupt only, so writing into it
> > should not modify other interrupts' mask. The ISR mask polarity was also
> > inverted, when PCI_EXP_RTCTL_PMEIE is set PCIE_MSG_PM_PME_MASK mask bit
> > should actually be cleared.
> > 
> > Fixes: 6302bf3ef78d ("PCI: Init PCIe feature bits for managed host bridge alloc")
> 
> Are you sure about this Fixes tag ? This commit seems unrelated.
> 
> The commit introducing this issue is 8a3ebd8de328301aacbe328650a59253be2ac82c.

The 6302bf3ef78d commit fixes PCI bridge's PME flag which introduces the
configuration of PCI_EXP_RTCTL register (which wasn't used before). So,
yes, PCI_EXP_RTCTL conf was flawed since 8a3ebd8de328 but the infinite
interrupt loop happens only since that 6302bf3ef78d has fixed this PME
flag bug.

I chose to use 6302bf3ef78d because it was the one commit triggering
the bug during my bisect process, but yes maybe using the commit that
introduced (even if it was silently) the problem makes more sense.

So if you want I can do a v3 with this Fixes tag modification.

-- 
Remi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
