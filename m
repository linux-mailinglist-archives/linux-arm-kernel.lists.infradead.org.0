Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA7416FE2A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 12:46:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eamndy+S8OKgR2VqDVpHYsMxNuBJQ/QOWdCAerfqTss=; b=pG3AY5AnKGQDOM
	4ETmfyF1fICDOpi2sCxBzUmba9xwYzqjzWew5nDnT1pR+7XpW5Y0/q73OXCv92t360tk+MhEh4cOH
	meilKhrPF0ApCzmYhshUDBVeqRHSudq28FPfOHu9z+SgUa9ei0Q8Tg8liGCh/nnooOuPUWUVb66Cu
	zmVE1wLeKEJRqLTBIJiqinuCHZgpQYswjJH6gfQwbtCFI3pJt0r7GQfFANwOB/iGkNTJ2BKRvAxku
	Im8i5NjJFjmDQXpbWBtX2SvMNvQ0kL1pGA3kvOWo+Ih+B38KNC+0wTmTn+7z7/Y+L2aUnZUy0qw4F
	letgW5D2pLmDLveYwRRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6v9D-00079b-Lq; Wed, 26 Feb 2020 11:46:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6v8g-000754-5l
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 11:46:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F0C551FB;
 Wed, 26 Feb 2020 03:46:04 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 350313FA00;
 Wed, 26 Feb 2020 03:46:03 -0800 (PST)
Date: Wed, 26 Feb 2020 11:46:01 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Jolly Shah <jolly.shah@xilinx.com>
Subject: Re: [PATCH] arch: arm64: xilinx: Make zynqmp_firmware driver optional
Message-ID: <20200226114601.GB8613@bogus>
References: <1582675460-26914-1-git-send-email-jolly.shah@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582675460-26914-1-git-send-email-jolly.shah@xilinx.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_034607_358275_1E43F1E9 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Tejas Patel <tejas.patel@xilinx.com>, keescook@chromium.org,
 ard.biesheuvel@linaro.org, matt@codeblueprint.co.uk,
 gregkh@linuxfoundation.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com,
 linux-kernel@vger.kernel.org, rajanv@xilinx.com,
 Sudeep Holla <sudeep.holla@arm.com>, mingo@kernel.org,
 linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 25, 2020 at 04:04:20PM -0800, Jolly Shah wrote:
> From: Tejas Patel <tejas.patel@xilinx.com>
>
> Make zynqmp_firmware driver as optional to disable it, if user don't
> want to use default zynqmp firmware interface.
>

This patch on it own is simple and looks fine. However I expect the
single binary to work with and without this option on the same platform.
If zynqmp_firmware is not critical, the system should continue to work
fine either way. The zynqmp_firmware driver should gracefully exit with
error(if any).

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
