Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28FF6117194
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 17:27:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=enNOZpBT0O3Ze8GihtJLIRjrMmg6KIvRYTJCogU82U4=; b=bqYSlSWIf641V+
	Ww/RGwSVmIFy7i4n7VN479RkATF+F8EKKpDs2ZDAkkgbTcfiq3C3ueI2nrq9lm8kE5Gt9fe8Dg2co
	D6uqkYNACuBSmZcAzhQ4OVWvW4GuDAFkX0p8FW+R8+/Thau6Yhvy2ny5NYBPqzU3D3WhkWdkdScVw
	vToTZjzURFLqer3X165h/kPM5JsR0as2vgrvPuPAJNEHXaZ4BqQAtbFjAktWdqJSZCdtTuC/1Y+C/
	a3RhqA3TUjXBX+ytT+M34ZM4fetQxwMSKPt7xBzQqlPqVKm7poARj79xQLoxX4mK3c7Zy4YSI4Rj7
	2wUDUMfKmQuvAAoBSg7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieLsE-0004rV-E9; Mon, 09 Dec 2019 16:27:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieLs4-0004qd-I9
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 16:26:54 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 839772080D;
 Mon,  9 Dec 2019 16:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575908811;
 bh=XmMuS1tdYvjAP/dOf3MN6vwqugHg0P62ECl8srBnh14=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zOU+VVGKwRrsQ0D+daeQ+x/xsP+ATGq5Wl9RqLMP25OEiY225038UWy37UJhw427c
 daPKborkT9vmKrlKEnjdHU05mgGRcG8eVRcpb/wMvX8g9vmrQcTXv0EFF7BeKw12Kf
 l0lhHe8IOzGxUjarOFoGOoeadP8wDld7a054/8Sc=
Date: Mon, 9 Dec 2019 16:26:46 +0000
From: Will Deacon <will@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH] pcie: Add quirk for the Arm Neoverse N1SDP platform
Message-ID: <20191209162645.GA7489@willie-the-truck>
References: <20191209160638.141431-1-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209160638.141431-1-andre.przywara@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_082652_622852_07505F32 
X-CRM114-Status: GOOD (  15.97  )
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
 Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>,
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

"Do as I say, not as I do"?

> To mitigate this, the firmware scans the bus before boot (catching the
> SErrors) and creates a table with valid BDFs, which acts as a filter for
> Linux' config space accesses.
> 
> Add code consulting the table as an ACPI PCIe quirk, also register the
> corresponding device tree based description of the host controller.
> Also fix the other two minor issues on the way, namely not being fully
> ECAM compliant and config space accesses being restricted to 32-bit
> accesses only.
> 
> This allows the Arm Neoverse N1SDP board to boot Linux without crashing
> and to access *any* devices (there are no platform devices except UART).
> 
> Signed-off-by: Deepak Pandey <Deepak.Pandey@arm.com>
> [Sudipto: extend to cover the CCIX root port as well]
> Signed-off-by: Sudipto Paul <sudipto.paul@arm.com>
> [Andre: fix coding style issues, rewrite some parts, add DT support]
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  arch/arm64/configs/defconfig        |   1 +
>  drivers/acpi/pci_mcfg.c             |   7 +
>  drivers/pci/controller/Kconfig      |  11 ++
>  drivers/pci/controller/Makefile     |   1 +
>  drivers/pci/controller/pcie-n1sdp.c | 196 ++++++++++++++++++++++++++++
>  include/linux/pci-ecam.h            |   2 +
>  6 files changed, 218 insertions(+)
>  create mode 100644 drivers/pci/controller/pcie-n1sdp.c

Where can I buy one of these? They're "unreleased" according to:

https://community.arm.com/developer/tools-software/oss-platforms/w/docs/440/neoverse-n1-sdp

and I don't think we should wreck upstream because of a platform that
doesn't exist.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
