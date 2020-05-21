Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B611DD491
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 19:38:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QHYkcAt60w07GD8P8tFbTJ7BdaXGTHGyRDtWysBeNQw=; b=eTo4absM5/ZtM6
	uQt3VtwYaGLzVdTeSGuocanFWthk7BuEufXJ19Pa569r24Bk6YMT5H1C9FJdfXZb+b8LpTvFS6SWV
	w+69sOFV4p5CQOesNR4Rsaxim3kcUiCcw48NyFDf4wGy3Ni3RyWF8IWqSw+ePcyL/Sp/mchwzGKU9
	VfEQ0i4JgJFdCEseVVWbzERn5QJhlNljNI32uMctEKgTXFMG8zN+RVu6qMZdRSIVSIPBWm3gLOc1+
	wG4k9qB9C/l+9dAONIywtPFPPx9gDKwV4kJaFgBrfY7fj+Twm4R39qZqhK27WR3RxPusVJTQfZgbv
	Y1fSK7AbWcidLM1DJ2aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbp8n-0004js-1I; Thu, 21 May 2020 17:37:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbp8d-0004jV-KW
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 17:37:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5E4F530E;
 Thu, 21 May 2020 10:37:45 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 790E43F68F;
 Thu, 21 May 2020 10:37:44 -0700 (PDT)
Date: Thu, 21 May 2020 18:37:38 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: arm64/acpi: NULL dereference reports from UBSAN at boot
Message-ID: <20200521173738.GA29590@e121166-lin.cambridge.arm.com>
References: <20200521100952.GA5360@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200521100952.GA5360@willie-the-truck>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_103747_759699_20F095FC 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, guohanjun@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 11:09:53AM +0100, Will Deacon wrote:
> Hi folks,
> 
> I just tried booting the arm64 for-kernelci branch under QEMU (version
> 4.2.50 (v4.2.0-779-g4354edb6dcc7)) with UBSAN enabled, and I see a
> couple of NULL pointer dereferences reported at boot. I think they're
> both GIC related (log below). I don't see a panic with UBSAN disabled,
> so something's fishy here.

May I ask you the QEMU command line please - just to make sure I can
replicate it.

> Please can you take a look when you get a chance? I haven't had time to see
> if this is a regression or not, but I don't think it's particularly serious
> as I have all sorts of horrible stuff enabled in my .config, since I'm
> trying to chase down another bug:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git/plain/arch/arm64/configs/fuzzing.config?h=fuzzing/arm64-kernelci-20200519&id=c149cf6a51aa4f72d53fc681c6661094e93ef660
> 
> (on top of defconfig)
> 
> CONFIG_FAIL_PAGE_ALLOC may be to blame.

Not sure about that, they are both quite cryptic, I wonder if UBSAN
is not tricked by the ACPI_OFFSET macro - need to debug it further
to understand what's going on here.

Thanks,
Lorenzo

> Cheers,
> 
> Will
> 
> --->8
> 
> [    0.000000][    T0] ================================================================================
> [    0.000000][    T0] UBSAN: null-ptr-deref in drivers/acpi/acpica/tbfadt.c:459:37
> [    0.000000][    T0] member access within null pointer of type 'struct acpi_table_fadt'
> [    0.000000][    T0] CPU: 0 PID: 0 Comm: swapper Not tainted 5.7.0-rc6-00124-g96bc42ff0a82 #1
> [    0.000000][    T0] Call trace:
> [    0.000000][    T0]  dump_backtrace+0x0/0x384
> [    0.000000][    T0]  show_stack+0x28/0x38
> [    0.000000][    T0]  dump_stack+0xec/0x174
> [    0.000000][    T0]  handle_null_ptr_deref+0x134/0x174
> [    0.000000][    T0]  __ubsan_handle_type_mismatch_v1+0x84/0xa4
> [    0.000000][    T0]  acpi_tb_create_local_fadt+0x1d4/0x1418
> [    0.000000][    T0]  acpi_tb_parse_fadt+0x108/0x4b8
> [    0.000000][    T0]  acpi_tb_parse_root_table+0x380/0x578
> [    0.000000][    T0]  acpi_initialize_tables+0x140/0x194
> [    0.000000][    T0]  acpi_table_init+0x90/0xcc
> [    0.000000][    T0]  acpi_boot_table_init+0xfc/0x1c8
> [    0.000000][    T0]  setup_arch+0x2b4/0x3ec
> [    0.000000][    T0]  start_kernel+0x98/0x6f4
> [    0.000000][    T0] ================================================================================
> 
> [    0.000000][    T0] ================================================================================
> [    0.000000][    T0] UBSAN: null-ptr-deref in arch/arm64/kernel/smp.c:596:6
> [    0.000000][    T0] member access within null pointer of type 'struct acpi_madt_generic_interrupt'
> [    0.000000][    T0] CPU: 0 PID: 0 Comm: swapper Not tainted 5.7.0-rc6-00124-g96bc42ff0a82 #1
> [    0.000000][    T0] Call trace:
> [    0.000000][    T0]  dump_backtrace+0x0/0x384
> [    0.000000][    T0]  show_stack+0x28/0x38
> [    0.000000][    T0]  dump_stack+0xec/0x174
> [    0.000000][    T0]  handle_null_ptr_deref+0x134/0x174
> [    0.000000][    T0]  __ubsan_handle_type_mismatch_v1+0x84/0xa4
> [    0.000000][    T0]  acpi_parse_gic_cpu_interface+0x60/0xe8
> [    0.000000][    T0]  acpi_parse_entries_array+0x288/0x498
> [    0.000000][    T0]  acpi_table_parse_entries_array+0x178/0x1b4
> [    0.000000][    T0]  acpi_table_parse_madt+0xa4/0x110
> [    0.000000][    T0]  acpi_parse_and_init_cpus+0x38/0x100
> [    0.000000][    T0]  smp_init_cpus+0x74/0x258
> [    0.000000][    T0]  setup_arch+0x350/0x3ec
> [    0.000000][    T0]  start_kernel+0x98/0x6f4
> [    0.000000][    T0] ================================================================================

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
