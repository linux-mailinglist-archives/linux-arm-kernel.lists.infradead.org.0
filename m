Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EAB31324AF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 12:19:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=338Wa6UIm34sr78Itdi/UHOb/bJRNOrmRU2h+na72kY=; b=ESOWtC4FAeuzmr9n6dXendJLc
	KfqjQpZNfV7MQzoxSWWcEM1R2x3ZSfaRj7owIHjpy9F5fjeI6iHiLvPY8RxJQG6hnamnXSSQACWSo
	OS1Mk+ZlGHaQj01mJ6sdrAC9QQOu2t2gt4CPYM4ow4vjy2hOTlUMtUJViSV5BT8agaNCBlUk02FyO
	FHjuKbPm6dPaCW1p9VN5TAO7XC41KLUABY7sHLy/62IxZBnHHgoEB1amQzYmBYmcHiGcaFBfLu9hm
	v9JbHiSyvDPn0m4gNjSB9Qd4zKaV7GlDH6a3YgzROzIwa2jbVY1vOL7h2byBeBH60oeZWXgOBv+JH
	AelIaseWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iomt0-0000g7-0y; Tue, 07 Jan 2020 11:18:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iomsr-0000fb-8l
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 11:18:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 83735328;
 Tue,  7 Jan 2020 03:18:48 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D4BD33F534;
 Tue,  7 Jan 2020 03:18:46 -0800 (PST)
Subject: Re: [PATCH v3 05/16] arm64: ptrauth: Add bootup/runtime flags for
 __cpu_setup
To: Amit Daniel Kachhap <amit.kachhap@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
 <1576486038-9899-6-git-send-email-amit.kachhap@arm.com>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <a83267b6-ad1e-ceba-60ee-aecd647880cc@arm.com>
Date: Tue, 7 Jan 2020 11:18:44 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <1576486038-9899-6-git-send-email-amit.kachhap@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_031849_358058_D2626C9F 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Mark Brown <Mark.Brown@arm.com>, Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16/12/2019 08:47, Amit Daniel Kachhap wrote:
> This patch allows __cpu_setup to be invoked with one of these flags,
> ARM64_CPU_BOOT_PRIMARY, ARM64_CPU_BOOT_LATE or ARM64_CPU_RUNTIME.
> This is required as some cpufeatures need different handling during
> different scenarios.
> 
> The input parameter in x0 is preserved till the end to be used inside
> this function.
> 
> There should be no functional change with this patch and is useful
> for the subsequent ptrauth patch which utilizes it. Some upcoming
> arm cpufeatures can also utilize these flags.
> 
> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>

You may add:

Suggested-by: James Morse <james.morse@arm.com>


Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
