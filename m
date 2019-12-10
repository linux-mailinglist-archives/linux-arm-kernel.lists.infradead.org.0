Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 817AD118B49
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 15:41:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=TayUcHbtBKG+6unzGuH5HbwZa2BQMhkpnnndWRjHqzw=; b=VFijB7VAURiAP8
	EZeW8vUo+JMkxRDqpXDRcGMYDGYtdUYG2q/8UZy7zKnTd83C02FYoMAKb/e/Q0Tikx5Ncsvz3jfUE
	UKQyWDouml4JnNLjYVpw7PMUM8dWQVsTsrKYNaT981uct5v8uUdmWtXHliUikZaAnWdOdbMWFzkqt
	7gUkVQWynmHkhFxQHct43TYU7BYrVhjFaYhsNSP/QkcBD1VNjcv5l8QCHfIuSFtYFCq5vl7u7ET5v
	r7Rxb1auY594byeDtAP8AqQvJb2dW4Nha9DQWyR8cZ8StIvhng67781fqOATrA3ywgn+vN5Ip+r/y
	jlMPz38m25qCwFF0VSmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieghb-0008Pa-5k; Tue, 10 Dec 2019 14:41:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieghR-0008Op-Fw
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 14:41:19 +0000
Received: from localhost (173-25-83-245.client.mchsi.com [173.25.83.245])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 81A3920637;
 Tue, 10 Dec 2019 14:41:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575988876;
 bh=SltthD4NbtaeRWyxi1D4XcXo4egcyCVIbinwy09m8FU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=KuNTqMFNMWoBMSOEUtzr0uQGn5HUyh+PTR+nBmoJYbnPeswReouo7wj+EBSeabn6B
 z+b20KTF1Yt2p/87POEocxWE8VyW5eA3FIz/JPFwkLC9NUoFr5Zrnt/MjgBHlDBtNL
 j7bCqkCIS4MnuaXxrPbcVI8dHwaOBJK6VvU0N6i0=
Date: Tue, 10 Dec 2019 08:41:15 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH] pcie: Add quirk for the Arm Neoverse N1SDP platform
Message-ID: <20191210144115.GA94877@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209160638.141431-1-andre.przywara@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_064117_578586_F75DDA34 
X-CRM114-Status: GOOD (  16.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FAKE_REPLY_C           No description available.
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 linux-acpi@vger.kernel.org, linux-pci@vger.kernel.org,
 Andrew Murray <andrew.murray@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 09, 2019 at 04:06:38PM +0000, Andre Przywara wrote:
> From: Deepak Pandey <Deepak.Pandey@arm.com>
> 
> The Arm N1SDP SoC suffers from some PCIe integration issues, most
> prominently config space accesses to not existing BDFs being answered
> with a bus abort, resulting in an SError.

Can we tease this apart a little more?  Linux doesn't program all the
bits that control error signaling, so even on hardware that works
perfectly, much of this behavior is determined by what firmware did.
I wonder if Linux could be more careful about this.

"Bus abort" is not a term used in PCIe.  IIUC, a config read to a
device that doesn't exist should terminate with an Unsupported Request
completion, e.g., see the implementation note in PCIe r5.0 sec 2.3.1.

The UR should be an uncorrectable non-fatal error (Table 6-5), and
Figures 6-2 and 6-3 show how it should be handled and when it should
be signaled as a system error.  In case you don't have a copy of the
spec, I extracted those two figures and put them at [1].

Can you collect "lspci -vvxxx" output to see if we can correlate it
with those figures and the behavior you see?

[1] https://drive.google.com/file/d/1ihhdQvr0a7ZEJG-3gPddw1Tq7cTFAsah/view?usp=sharing

> To mitigate this, the firmware scans the bus before boot (catching the
> SErrors) and creates a table with valid BDFs, which acts as a filter for
> Linux' config space accesses.
> 
> Add code consulting the table as an ACPI PCIe quirk, also register the
> corresponding device tree based description of the host controller.
> Also fix the other two minor issues on the way, namely not being fully
> ECAM compliant and config space accesses being restricted to 32-bit
> accesses only.

As I'm sure you've noticed, controllers that support only 32-bit
config writes are not spec compliant and devices may not work
correctly.  The comment in pci_generic_config_write32() explains why.

You may not trip over this problem frequently, but I wouldn't call it
a "minor" issue because when you *do* trip over it, you have no
indication that a register was corrupted.

Even ECAM compliance is not really minor -- if this controller were
fully compliant with the spec, you would need ZERO Linux changes to
support it.  Every quirk like this means additional maintenance
burden, and it's not just a one-time thing.  It means old kernels that
*should* "just work" on your system will not work unless somebody
backports the quirk.

> This allows the Arm Neoverse N1SDP board to boot Linux without crashing
> and to access *any* devices (there are no platform devices except UART).

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
