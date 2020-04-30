Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B401C0432
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 19:54:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eGxSxEEYtw9oyDEL62SCeQdaBZwPsD5xHn1/APZQ5lg=; b=WsLUEJB9kJHBwdMaRZ/tDdOq1
	P3XEAFBIVxE5c3c9BYCLjqjxFOcq0L7E0HSr2snqAOo5KxG3Nt5Tjcsrh12ZuKYFsFBzpkZeyVrxE
	OF4Hrew8KPc3Sb7XVFVtYvHpvnkcVgVgt3MNx2TOIlEQczn5GsZ5C0AqrgFZGOVR3c5wUrb73bAn3
	bAjZHWzDGF8U8giXUyZyMMt/hdidT++w1gldHOXbE+xcrLI0WoGoQKUMpBPR2uFRzSc1abmUB/u5U
	qcw+MF/qRkAcRAOqScBSEqLFLER3Ogb0jqhyBV5tMdFLjpAMG3j6F1OpchPz4EVGWARLQRsxnJlqy
	03fkX9FWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUDNn-0001fR-Ok; Thu, 30 Apr 2020 17:53:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUDNd-0001eV-FO
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 17:53:51 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C9B7F20836;
 Thu, 30 Apr 2020 17:53:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588269228;
 bh=4Xo8/1e7qaJmuQQltLTfB4vjVZPdGrjTFYT8oEPKWno=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=TnzHy6V0ZH7paWMDm5JrkAHnp/DaOr3pZvhvI0vYr1381WdBJTPVhmepyRnBUiLba
 o8thxzN3rCxTBpDBvcLfBQetKd7K7qWM3ZeU1eXq82INA7n961BxRiD4T+u1HNYwcZ
 dpNJGdEFn0SyLaoq3c7EWRsANA/N5cp3TcBUyYss=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jUDNb-0088YE-6h; Thu, 30 Apr 2020 18:53:47 +0100
MIME-Version: 1.0
Date: Thu, 30 Apr 2020 18:53:47 +0100
From: Marc Zyngier <maz@kernel.org>
To: David Brazdil <dbrazdil@google.com>
Subject: Re: [PATCH 00/15] Split off nVHE hyp code
In-Reply-To: <20200430144831.59194-1-dbrazdil@google.com>
References: <20200430144831.59194-1-dbrazdil@google.com>
User-Agent: Roundcube Webmail/1.4.3
Message-ID: <73efca41e7b955db4963ff182624107d@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: dbrazdil@google.com, catalin.marinas@arm.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 will@kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_105349_534036_F30DDD29 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi David,

Thanks for posting this, looks quite interesting!

On 2020-04-30 15:48, David Brazdil wrote:
> Refactor files in arch/arm64/kvm/hyp to compile all code which runs in 
> EL2
> under nVHE into separate object files from the rest of KVM. This is 
> done in
> preparation for being able to unmap .hyp.text from EL1 but has other 
> benefits,
> notably:
>  * safe use of KASAN/UBSAN/GCOV instrumentation on VHE code,
>  * cleaner HVC API,
>  * no need for __hyp_text annotations.
> 
> nVHE-specific code is moved to hyp/nvhe and compiled with custom build 
> rules
> similar to those used by EFI stub. Shared source files are compiled 
> under both
> VHE and nVHE build rules. Where a source file contained both VHE and 
> nVHE code,
> it is split into a shared header file and two C source files. This is 
> done one
> file per commit to make review easier.

Do you have any figure on how much bigger the final kernel becomes once 
this
is applied? I guess I can find out pretty easily, but this is the kind 
of thing
that would be useful to make part of your cover letter.

I'll try to review this shortly.

Thanks,

         M.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
