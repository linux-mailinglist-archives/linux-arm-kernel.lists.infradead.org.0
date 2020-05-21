Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6142B1DCAB8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 12:10:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2MT7rr/xkMVgDDuR6ea7QJ7p9WeBSwVIAuXNXJ+3bfU=; b=StO0RatuATkXkI
	c/BH1PVj+5fdbFo3Vh1KIVu/4QHRlD2A4JalZaVo9GzmwXyC9hEf6sXnSJAxHr9cTikbvrJdwCHRJ
	1XlkV5exir3gEY3wvjwyWTrm/MWSxAEs6xgoJ6lqDAJnW+RzWkdkCChd6UfLNgJIxLZ9TM7DNREzL
	nywi8GOgFF52HgJXRrYIBnssnxM8u9BGBVUzHh8iL7ru/ZGleCpQNIOaRM5KB+EWJ1H8QKN1mmXl7
	JgfGPIDkfv61WhcKW/IJ5CEaQ1/Kigb22hA6jiEy+YZB5pmrsb3uu7G2al6/oUSiXU6Y6vzPZCYES
	AHJ6kEDzOE7KuxCxP2aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbi9b-00058t-ET; Thu, 21 May 2020 10:10:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbi9G-00058H-29
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 10:09:59 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 896872072C;
 Thu, 21 May 2020 10:09:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590055797;
 bh=Vz5ZJ+z1Zwgifte0nx1dn+SpyiK192LbrfPiuVmBfho=;
 h=Date:From:To:Cc:Subject:From;
 b=ZXszl+lH5OHbWgrfm69KZEaigkvJOntKkKBIsMS2pMtfN0jN/Vwwbl9a+tW2FeHW+
 P7khcjy1LywdEQfshvpos/SudymRUm/eY+naxTpQtobGk7hw8E0ZdHqdm9vkqXu9kd
 cKKOIcyWU+Ana4RttiFLjrS9jDtc9o+vZxj56wjc=
Date: Thu, 21 May 2020 11:09:53 +0100
From: Will Deacon <will@kernel.org>
To: lorenzo.pieralisi@arm.com, guohanjun@huawei.com
Subject: arm64/acpi: NULL dereference reports from UBSAN at boot
Message-ID: <20200521100952.GA5360@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_030958_144022_2BFBF8D3 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi folks,

I just tried booting the arm64 for-kernelci branch under QEMU (version
4.2.50 (v4.2.0-779-g4354edb6dcc7)) with UBSAN enabled, and I see a couple
of NULL pointer dereferences reported at boot. I think they're both GIC
related (log below). I don't see a panic with UBSAN disabled, so something's
fishy here.

Please can you take a look when you get a chance? I haven't had time to see
if this is a regression or not, but I don't think it's particularly serious
as I have all sorts of horrible stuff enabled in my .config, since I'm
trying to chase down another bug:

https://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git/plain/arch/arm64/configs/fuzzing.config?h=fuzzing/arm64-kernelci-20200519&id=c149cf6a51aa4f72d53fc681c6661094e93ef660

(on top of defconfig)

CONFIG_FAIL_PAGE_ALLOC may be to blame.

Cheers,

Will

--->8

[    0.000000][    T0] ================================================================================
[    0.000000][    T0] UBSAN: null-ptr-deref in drivers/acpi/acpica/tbfadt.c:459:37
[    0.000000][    T0] member access within null pointer of type 'struct acpi_table_fadt'
[    0.000000][    T0] CPU: 0 PID: 0 Comm: swapper Not tainted 5.7.0-rc6-00124-g96bc42ff0a82 #1
[    0.000000][    T0] Call trace:
[    0.000000][    T0]  dump_backtrace+0x0/0x384
[    0.000000][    T0]  show_stack+0x28/0x38
[    0.000000][    T0]  dump_stack+0xec/0x174
[    0.000000][    T0]  handle_null_ptr_deref+0x134/0x174
[    0.000000][    T0]  __ubsan_handle_type_mismatch_v1+0x84/0xa4
[    0.000000][    T0]  acpi_tb_create_local_fadt+0x1d4/0x1418
[    0.000000][    T0]  acpi_tb_parse_fadt+0x108/0x4b8
[    0.000000][    T0]  acpi_tb_parse_root_table+0x380/0x578
[    0.000000][    T0]  acpi_initialize_tables+0x140/0x194
[    0.000000][    T0]  acpi_table_init+0x90/0xcc
[    0.000000][    T0]  acpi_boot_table_init+0xfc/0x1c8
[    0.000000][    T0]  setup_arch+0x2b4/0x3ec
[    0.000000][    T0]  start_kernel+0x98/0x6f4
[    0.000000][    T0] ================================================================================

[    0.000000][    T0] ================================================================================
[    0.000000][    T0] UBSAN: null-ptr-deref in arch/arm64/kernel/smp.c:596:6
[    0.000000][    T0] member access within null pointer of type 'struct acpi_madt_generic_interrupt'
[    0.000000][    T0] CPU: 0 PID: 0 Comm: swapper Not tainted 5.7.0-rc6-00124-g96bc42ff0a82 #1
[    0.000000][    T0] Call trace:
[    0.000000][    T0]  dump_backtrace+0x0/0x384
[    0.000000][    T0]  show_stack+0x28/0x38
[    0.000000][    T0]  dump_stack+0xec/0x174
[    0.000000][    T0]  handle_null_ptr_deref+0x134/0x174
[    0.000000][    T0]  __ubsan_handle_type_mismatch_v1+0x84/0xa4
[    0.000000][    T0]  acpi_parse_gic_cpu_interface+0x60/0xe8
[    0.000000][    T0]  acpi_parse_entries_array+0x288/0x498
[    0.000000][    T0]  acpi_table_parse_entries_array+0x178/0x1b4
[    0.000000][    T0]  acpi_table_parse_madt+0xa4/0x110
[    0.000000][    T0]  acpi_parse_and_init_cpus+0x38/0x100
[    0.000000][    T0]  smp_init_cpus+0x74/0x258
[    0.000000][    T0]  setup_arch+0x350/0x3ec
[    0.000000][    T0]  start_kernel+0x98/0x6f4
[    0.000000][    T0] ================================================================================

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
