Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 949CE6A727
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 13:16:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vv4y57fO09zi6dHtFj30U314+3lTMibRfvFv/qHLMOU=; b=A3yiT1pIm9RO4+zeesQ8XFR5J
	jT+WTke2C+LCtdx5KNxxLRxaRKk7yPd30RcaL9dhcRYxY+wdh7NDwwAq30dEGeulmrO5boWYEWVO4
	xML23TnjMSEHQApTqm9mHNy/K7TrOd9JrdoWZVdIlv3NVVpI4OPqRLAWQP59aF+tRzcEhdPiQEZoT
	LYREHlIz0BRJRfBRlg/kz7F9NsOGCkn/Nxhl4k86yPRvT1BRvDGOChZ/rfxPO3Ewv2AzaR3Chy4Ye
	QlhHQiGPt1IEQXlmNyq0+6/D4HYzc4J1SDOtaqLQ0KD76WTIaeIKFWPoLbz+Iu1pi1SdDSvQH+fcX
	yxrLFMHuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnLRt-0002XG-Lv; Tue, 16 Jul 2019 11:16:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnLRf-0002WW-9G
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 11:16:32 +0000
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 914DA2173B;
 Tue, 16 Jul 2019 11:16:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563275789;
 bh=cN2YWLRC4s7HqVcjkwb1qbS93xC53QlrYyzApl46WQY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fN2ZJSMKqcmdmKc0QGJ3lMxe98jrFW3RcAvT1o8V3Zx6VySokBYxZyqlAJHyVHMTr
 P4h8cQBkE2b7uR2KHP5b/MA7uto9Mm/CRyNivfEx+3f6kMERI8JSzOkGe3oU/SC7pE
 6CA3s19YptajttSQaXKI1OvrCZj7xRo6mrsVrKTM=
Date: Tue, 16 Jul 2019 07:16:28 -0400
From: Sasha Levin <sashal@kernel.org>
To: Sinan Kaya <Okaya@kernel.org>
Subject: Re: [PATCH] ARM64/irqchip: Make ACPI_IORT depend on PCI again
Message-ID: <20190716111628.GB1943@sasha-vm>
References: <20190716040441.12101-1-sashal@kernel.org>
 <a688793b-f7e8-18a4-3eb2-877f1522d8f3@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a688793b-f7e8-18a4-3eb2-877f1522d8f3@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_041631_513119_53FBC358 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@microsoft.com, julien.thierry@arm.com, marc.zyngier@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 linux-acpi@vger.kernel.org, stable@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 12:13:23AM -0400, Sinan Kaya wrote:
>On 7/16/2019 12:04 AM, Sasha Levin wrote:
>> ACPI_IORT lost it's explicit dependency on PCI in c6bb8f89fa6df
>> ("ARM64/irqchip: Update ACPI_IORT symbol selection logic") where the
>> author has relied on the general dependency of ACPI on PCI.
>>
>> However, that dependency was finally removed in 5d32a66541c4 ("PCI/ACPI:
>> Allow ACPI to be built without CONFIG_PCI set") and now ACPI_IORT breaks
>> when we try and build it without PCI support.
>>
>> This patch brings back the explicit dependency of ACPI_IORT on PCI.
>>
>> Fixes: 5d32a66541c4 ("PCI/ACPI: Allow ACPI to be built without CONFIG_PCI set")
>> Cc: stable@kernel.org
>> Signed-off-by: Sasha Levin <sashal@kernel.org>
>
>Do you have more detail on what really is broken without this patch?
>
>It should be possible to build IORT table without PCI.

For the record, the errors look like this:

	drivers/acpi/arm64/iort.o: In function `acpi_iort_init':
	iort.c:(.init.text+0x47c): undefined reference to `pci_request_acs'

Sinan pointed me to an earlier patch he wrote that would fix it
(https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/drivers/acpi/arm64/iort.c?id=43554cebba50e709b9207c55ceca6bc281748586).

Please disregard this patch.

--
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
