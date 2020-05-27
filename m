Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C07B1E406B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 13:51:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TirLfCcf0s0YFxbxNshJ0JXqfI9RKhkbtLA7qyx9F64=; b=r+PvffGKhp7I4v
	Epq0iKAL45Zna0mJ8Dm9ZZ9T1rnb49Z77FZw66C0xWNMYQm8ItzX7JzQmsDxKrUWogpubaSDdfqbB
	iMNfeVdGndYVDS6+gojSbZSJTQzK/4ixNNvscHSZRZvpO/t9kCsnACDnuoOecd0X6t4YwYoPXTHiD
	yNQlC6zY+L60QJI1jqlt6t0H7/NVSmJ7Xr7mFOs447Bv5uoMavkFuY/3K16hQK364hPiNsVsZTolA
	F5jES3WSQzid9k+Id42Yk2WIq1c+s7Dm2XHOdYKv0iWfuWDbT0AN89R95qA+i5/gC74UBycoIIfW/
	36ogmKZctew4yHEtSy2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jduab-0005Tr-8Q; Wed, 27 May 2020 11:51:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jduaM-0005SW-TT
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 11:51:07 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8844D207CB;
 Wed, 27 May 2020 11:51:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590580262;
 bh=O1IhXKvulbbaTb2S/qFZhvTkhhxiyeByusPSy3+8X+c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=E1buh6nfWyw2le+sjPSU+ott8HqQvdvVr4k55F/24YH+2Mg3djenF6k1RWcxZRdu2
 iaZCV9jtLzNmgZlVa35PVbmIgBeGQo2IYJQEnE4ZkwZMbuvxl66+NhiVnuj2PRFhkr
 JWVKJWksIVBkUn2TYQYr8NFTrB38H+2fYJfcpHwk=
Date: Wed, 27 May 2020 12:50:58 +0100
From: Will Deacon <will@kernel.org>
To: Tuan Phan <tuanphan@os.amperecomputing.com>
Subject: Re: [PATCH v2] driver/perf: Add PMU driver for the ARM DMC-620
 memory controller.
Message-ID: <20200527115057.GB13795@willie-the-truck>
References: <1589229894-18863-1-git-send-email-tuanphan@os.amperecomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589229894-18863-1-git-send-email-tuanphan@os.amperecomputing.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_045102_974662_C8445EC2 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, patches@amperecomputing.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 01:44:52PM -0700, Tuan Phan wrote:
> DMC-620 PMU supports 10 total counters that are independently
> programmable for different events and can be individually started and
> stopped.
> 
> ACPI is only supported; device tree support is welcomed to be added and
> tested for other platforms.
> 
> Usage example:
>   #perf stat -e arm_dmc620_10008c000/clk_cycle_count/ -C 0
>   Get perf event for clk_cycle_count counter.
> 
>   #perf stat -e arm_dmc620_10008c000/clkdiv2_allocate,mask=0x1f,match=0x2f,
>   incr=2,invert=1/ -C 0
>   The above example shows how to specify mask, match, incr,
>   invert parameters for clkdiv2_allocate event.
> 
> Signed-off-by: Tuan Phan <tuanphan@os.amperecomputing.com>
> ---
> Changes in v2:
> - Removed IRQF_SHARED flag and added support for multiple 
> PMUs sharing the same interrupt.
> - Fixed an interrupt handler race condition.
> 
> The ACPI binding spec for PMU DMC620 is under beta and located
> in ARM server group under project "ACPI on ARM". 
> 
>  drivers/perf/Kconfig          |   8 +
>  drivers/perf/Makefile         |   1 +
>  drivers/perf/arm_dmc620_pmu.c | 869 ++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 878 insertions(+)
>  create mode 100644 drivers/perf/arm_dmc620_pmu.c

Given that this is Arm IP, it would be nice to have a review from somebody
at Arm. I have vague recollections of an internal DMC PMU driver too, but I
don't remember the details.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
