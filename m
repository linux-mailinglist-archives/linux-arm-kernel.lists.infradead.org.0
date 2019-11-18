Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 999E01005F6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 13:56:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/bXp3IbupXe9OXbyl4YnoyC2ANuKvq6I3zsQ0WiGlMM=; b=iETXcqp/uoAsfh
	9Etl5HSZO4Z6J9SR9NuSTX6sY1+EwBuVBSz8hyRPgYJpFraAAKBpCzg4nwNwFFPR5Ppv4rut8vuRx
	dUJ+ovMRvJDrC2s8K98UkI5lu37pkaSRboQtNFplTs7EKezlbZJG4Cic4W+bDmQnvcDN0wL1Xg52B
	I0w+utuTX8YDbhU8/Lj/zG8Sh0vdaHFRVYCDtWdxu5HDXdjCW9Kj9E8sp6Hxx5+X+9gWccwV2QXJ9
	AcCVoxkpPoy6toME49yxmcrGxdHAIpozqRPIQeh5NdL4rxOrDvDUjRfok/mttlnOdznZMAouhAicK
	FfCQ2K8gsPYexE7RHizg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWgZd-0003sM-S1; Mon, 18 Nov 2019 12:56:09 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWgZT-0003r8-Q5
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 12:56:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=960wzGvE+KcG1OqGD4Pmky51z5BTfCbb59hEtVos6UY=; b=kTqeBHTFI5VbTcrHrCYatitkc
 XFreysQNzWmafsaSmK4O84GWThZEpLvCZh7I6o0NcFGAwpWldEtZphBY1r9VZRwPQ7co2i+2j3DCk
 00JU5In5vbigEbEjNinbCx+LhgvuFjC8NhvpwWo+7tkVFOEaenej57vcN66EFaqSNAIY0jSs6XzAl
 rkaAESx2o9DXOTla9Ee75yHFUIz9S4iMC6BYM2J1mXBeYtBS304+r+6oUAZubou/A4jYdAK7j7FSN
 ImCJLzHmh2bCudQAe55CPAcNxgar2eG0dctNGYM2KssgMmjyMec5qL95FI3JMbaDZncfiKvVS/RUg
 xvqjY2sIg==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:37134)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iWgZD-0003Mi-39; Mon, 18 Nov 2019 12:55:43 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iWgZA-0008DI-Ny; Mon, 18 Nov 2019 12:55:40 +0000
Date: Mon, 18 Nov 2019 12:55:40 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v2] ARM: dt: check MPIDR on MP devices built without SMP
Message-ID: <20191118125540.GW25745@shell.armlinux.org.uk>
References: <20191004155232.17209-1-nsaenzjulienne@suse.de>
 <5abdcb0e0e1043a101f579ea65d07a1f6b91f896.camel@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5abdcb0e0e1043a101f579ea65d07a1f6b91f896.camel@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_045559_848405_B5479712 
X-CRM114-Status: GOOD (  13.61  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org, f.fainelli@gmail.com,
 linux-kernel@vger.kernel.org, "kernelci.org bot" <bot@kernelci.org>,
 wahrenst@gmx.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 18, 2019 at 12:49:04PM +0100, Nicolas Saenz Julienne wrote:
> On Fri, 2019-10-04 at 17:52 +0200, Nicolas Saenz Julienne wrote:
> > On SMP builds, in order to properly link CPU devices with their
> > respective DT nodes we start by matching the boot CPU. This is achieved
> > by comparing the 'reg' property on each of the CPU DT nodes with the
> > MPIDR. The association is necessary as to validate the whole CPU logical
> > map, which ultimately links CPU devices and their DT nodes.

No, that is not the primary purpose of the CPU logical map.  The CPU 
logical map is there to map the CPU logical number to a hardware number,
necessary for programming hardware.

> > On setups built without SMP, no MPIDR read is performed. The only thing
> > expected is for the 'reg' property in the CPU DT node to contain the
> > value 0x0.
> > 
> > This causes problems on MP setups built without SMP. As their boot CPU
> > DT node contains the relevant MPIDR as opposed to 0x0. No match is then
> > possible. This causes troubles further down the line as drivers are
> > unable to get the CPU's DT node.

So the DT is incorrect for the platform - it is not describing the
hardware.  Why can't the DT be fixed?  Clearly, it would have never
worked with the mainline kernel today.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
