Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02879136C75
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 12:55:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aI8AGP+uCb8lKep1ZONgHMs6rIckiPddc1vioM4L8aI=; b=LepZrEePEu2U8v
	w0aCD2jV5TQSCWxaPssCDsZmoubJXNxgSe+igrlklV0Ms1qHzoaiBuG9xPnS67wYLij19JVrGlb4Y
	jv8utlBKYrmSrCoj4iDB5kttbaXD57q56nhDNIzz/hZbjJpCBPzM/hc41JPoO9xVAJIaqqd4cAn0k
	/ch1FgoG1wWk0YCZMB4KzswcXGFnGPe9ZdRLJGVMT6Qdigh5e7Jrt8RTjENWUa7YRwf89oaorCFz9
	ZnBkVLpdTt8NjefJ8LQiB+Q55JbNlSRGhQUOWrd53e6ziC7twkgMnxfOFdcBST55PHqrSceGmXC49
	E3T7WXnu37lCrqrW15wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipssp-0006wM-03; Fri, 10 Jan 2020 11:55:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipsru-0006Tu-3t
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 11:54:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EF7481063;
 Fri, 10 Jan 2020 03:54:18 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 360BF3F534;
 Fri, 10 Jan 2020 03:54:17 -0800 (PST)
Date: Fri, 10 Jan 2020 11:54:15 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Jolly Shah <jolly.shah@xilinx.com>
Subject: Re: [PATCH 0/2] arch: arm64: xilinx: Make zynqmp_firmware driver
 optional
Message-ID: <20200110115415.GC39451@bogus>
References: <1578596764-29351-1-git-send-email-jolly.shah@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578596764-29351-1-git-send-email-jolly.shah@xilinx.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_035422_209827_AD26A32C 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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

On Thu, Jan 09, 2020 at 11:06:02AM -0800, Jolly Shah wrote:
> From: Tejas Patel <tejas.patel@xilinx.com>
>
> Zynqmp firmware driver requires firmware to be present in system.
> Zynqmp firmware driver will crash if firmware is not present in system.
> For example single arch QEMU, may not have firmware, with such setup
> Linux booting fails.
>
> So make zynqmp_firmware driver as optional to disable it if user don't
> have firmware in system.
>

Why can't it be detected runtime ? How do you handle single binary if you
make this compile time option ?

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
