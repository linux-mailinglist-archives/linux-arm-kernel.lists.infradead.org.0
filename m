Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9844A127
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 14:52:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kDWEhBxE2dCrYmX5/OlMuxWTKPYCiNjaZAgTqSkxlqM=; b=IptpTtkRbTOqxO
	zW9PhaJCeh0aFfP2cjM58s6zOZhoRh9GfmdzOXHHikJry2akikmbOY1cWfqyckBQo93lXAZsVXti1
	LIa2WpB0xf8l0EHJphej1oLUjVpUc1rGHj7up0QB1h1SadaothPuCAEeIcSY0Y/B+/uZ67dUVT+Ks
	H4u2Omf3OYRQrUGH6e0SGUPJl5YADxwwpCmqMqUqgDmU7LfsIuk1O+vH2MDidy/LjcyF1eWfpBo2M
	rKwVQ0hcOSW7rNKsdEgFYzZKrFmP9ZvfbqVt145v6CaWdFe0pdzZDCTLUnvOJ7gXZEpFA4z2nbSpO
	B1t04gyv9jKUZehLIzwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdDas-0001Ka-Be; Tue, 18 Jun 2019 12:52:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdDad-0001Jz-Us
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 12:51:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 41A542B;
 Tue, 18 Jun 2019 05:51:54 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 593D23F246;
 Tue, 18 Jun 2019 05:51:53 -0700 (PDT)
Date: Tue, 18 Jun 2019 13:51:51 +0100
From: Will Deacon <will.deacon@arm.com>
To: Aaro Koskinen <aaro.koskinen@iki.fi>
Subject: Re: [PATCH v2 2/2] arm64: Implement panic_smp_self_stop()
Message-ID: <20190618125151.GE31041@fuggles.cambridge.arm.com>
References: <20190617203519.328-1-aaro.koskinen@iki.fi>
 <20190617203519.328-2-aaro.koskinen@iki.fi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617203519.328-2-aaro.koskinen@iki.fi>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_055156_076931_6C3B2AFF 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Aaro Koskinen <aaro.koskinen@nokia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 11:35:19PM +0300, Aaro Koskinen wrote:
> From: Aaro Koskinen <aaro.koskinen@nokia.com>
> 
> Currently arm64 uses the default implementation of panic_smp_self_stop()
> where the CPU runs in a cpu_relax() loop unable to receive IPIs anymore.
> As a result, when two CPUs panic() simultaneously we get "SMP: failed to
> stop secondary CPUs" warnings and extra delays before a reset, because
> smp_send_stop() still tries to stop the other paniced CPU.
> 
> Provide an implementation of panic_smp_self_stop() that is identical to
> the IPI CPU stop handler, so that the online status of stopped CPUs gets
> properly updated.
> 
> Signed-off-by: Aaro Koskinen <aaro.koskinen@nokia.com>
> ---
> 
> 	v2: Update the commit log
> 	    Rename ipi_cpu_stop() to local_cpu_stop() and make it void func
> 	    Add a comment for panic_smp_self_stop()
> 
> 	v1: https://patchwork.kernel.org/patch/10988103/
> 
>  arch/arm64/kernel/smp.c | 19 +++++++++++++------
>  1 file changed, 13 insertions(+), 6 deletions(-)

Acked-by: Will Deacon <will.deacon@arm.com>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
