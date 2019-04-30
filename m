Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB9FF20D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 10:31:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=heWFnptLfDMHSnmg9OW+rD1A87T6X09Ctk9+N2YgL1w=; b=Qc5uVOTIBMrs1Y
	4YnHwUbsCJDH7mBji4AuGFiNveXt+CKRWcojtvNYgdq95CyQM7OSvZI8LLK2sHbYuIDdmuPNd93jr
	uFjs9x5SiOkSWBE8EH53OQPOg8vIBPWyRO9ugCVHO1AwLRq5H8jECPnqZw7ICP6opZjxWg5k92H/H
	3WFo8XNLRfNW1hToTnjPG93drPNbyNjiYQSLqTfvdsxS1kVFfzlYOLXNK/3kPV5nxFH2/8mMsTUyY
	M/F7m8ye6oBeps3IhWfl7h7frN3cjDn5HFX7DZbfBgmHTnrBsqOMdHokmfZZD3/Hrr7CVoxHbNPyV
	MJI2OhmeIGKDTpzI3Ulw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLOAo-0002T2-Tr; Tue, 30 Apr 2019 08:31:34 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLOAg-0002SP-2o
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 08:31:28 +0000
X-Originating-IP: 88.190.179.123
Received: from localhost (unknown [88.190.179.123])
 (Authenticated sender: repk@triplefau.lt)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id EF872FF80F;
 Tue, 30 Apr 2019 08:31:12 +0000 (UTC)
Date: Tue, 30 Apr 2019 10:40:01 +0200
From: Remi Pommarel <repk@triplefau.lt>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH v2] PCI: aardvark: Use LTSSM state to build link training
 flag
Message-ID: <20190430084000.GT2754@voidbox.localdomain>
References: <20190316161243.29517-1-repk@triplefau.lt>
 <20190425210439.GG11428@google.com>
 <20190425222756.GR2754@voidbox.localdomain>
 <20190429194532.GA119268@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190429194532.GA119268@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_013126_276761_10CD9A89 
X-CRM114-Status: GOOD (  23.85  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-kernel@vger.kernel.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 29, 2019 at 02:45:32PM -0500, Bjorn Helgaas wrote:
> On Fri, Apr 26, 2019 at 12:27:57AM +0200, Remi Pommarel wrote:
> > On Thu, Apr 25, 2019 at 04:04:39PM -0500, Bjorn Helgaas wrote:
> > > On Sat, Mar 16, 2019 at 05:12:43PM +0100, Remi Pommarel wrote:
> 
> > > It sounds like reading and/or writing some registers during a retrain
> > > causes some sort of EL1 error?  Is this a separate erratum?  Is there
> > > a list of the registers and operations (read/write) that are affected?
> > > The backtrace below suggests that it's actually a read of LNKCAP or
> > > LNKCTL (not LNKSTA) that caused the error.
> > 
> > IIUC, the backtrace below produces an EL1 error when doing a PIO
> > transfer while the link is still retraining. See my comment below for
> > more about that. But accessing any root complex's register seems fine.
> > > 
> > > It sounds like there are really two problems:
> > > 
> > >   1) Reading PCI_EXP_LNKSTA (or the Aardvark equivalent) doesn't give
> > >      valid data for PCI_EXP_LNKSTA_LT.
> > 
> > The 1) is correct.
> > 
> > >   2) Sometimes config reads cause EL1 errors.
> > 
> > Actually EL1 error happens when we try to access device's register with
> > a PIO transfer, which is when we try to use the link while it is being
> > retrained.
> > 
> > IMHO, 1) and 2) are linked. ASPM core tries to use the link too early
> > because it has read invalid data for PCI_EXP_LNKSTA_LT.
> 
> From the software point of view, there is no such thing as "using the
> link too early".  The pattern of:
> 
>   - Verify that link is up
>   - Access device on other end of link
> 
> is always racy because the link can go down at any time due to hotplug
> or other issues.  In particular, the link can go down after we verify
> that the link is up, but before we access the device.
> 
> Software must be able to deal with that gracefully.  I don't know
> whether that means catching and recovering from that EL1 error, or
> masking it, or what.  This is architecture-specific stuff that's
> outside the scope of PCIe itself.
> 
> But a link going down should never directly cause a kernel panic.

Ah, yes, you are right. There is "worse" than the EL1 error though, boot
can also hang while accessing those registers when link is not in a
ready state.

So, yes, I do agree that there are two issues here. The
PCI_EXP_LNKSTA_LT register one and the EL1 error or hang one. On the
other hand I don't think I can split it in two because this patch only
fixes the former which happens to not trigger the latter (ASPM core is
kind enough to wait for the link to be ready after retraining).

Thus the second issue remains and hot plugging for example would
likely trigger it. I'll try to see with Thomas if we could reach the
vendor about that.

By the way, I have replied to Lorenzo with, what I think, is a more
legible patch. I could send a v3 with it if you prefer this one.

-- 
Remi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
