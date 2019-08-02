Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB6617FC44
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 16:32:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/OeJbZvt3ABLCfwC1eTShkbGLhGGvrLH4LeJxqgOypU=; b=JeGksLPC5gBOJb
	S2A1RFZRkY3GoTc3yY+O9UkWKwL9hi0xTYBixvgWsBgTcuvPpmCzd2bd8i20Zsp3iZgVO+/kE231O
	2T3OZhqTnfI4nzFVpLtQZ91YeNVmqgBgqBiu+/k0DxzpA63/bV5vZ9mObraFWezijjzFbf/Ls49+N
	HEH5v7hx89wOZaLMd6I9bq9ZOZkxbugMHmrDeqToVYZRdltjPdkBUNA2/9CyGYRmOgbKlXXTI2Qav
	EHgCSkh2wv5qVLpvp++EI3nVKuIjwBgqAOt+2zYfuNZn+BxiNtJO7w2u5ykHw3AkycRXcIV/UF0t6
	XccdNN3rV6hmij0GBmUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htYbk-0002VL-RI; Fri, 02 Aug 2019 14:32:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htYbe-0002UR-ES
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 14:32:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B82AF1570;
 Fri,  2 Aug 2019 07:32:29 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 4FE283F575; Fri,  2 Aug 2019 07:32:28 -0700 (PDT)
Subject: Re: [PATCH] arm64/kvm: fix -Wimplicit-fallthrough warnings
To: Qian Cai <cai@lca.pw>
References: <1564755788-28485-1-git-send-email-cai@lca.pw>
From: Marc Zyngier <maz@kernel.org>
Organization: Approximate
Message-ID: <0361d2e8-e57c-5cac-f0ff-5e56675ba71d@kernel.org>
Date: Fri, 2 Aug 2019 15:32:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1564755788-28485-1-git-send-email-cai@lca.pw>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_073230_532677_7F8F40C0 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: drjones@redhat.com, suzuki.poulose@arm.com, linux-kernel@vger.kernel.org,
 james.morse@arm.com, christoffer.dall@linaro.org,
 julien.thierry.kdev@gmail.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02/08/2019 15:23, Qian Cai wrote:
> The commit a892819560c4 ("KVM: arm64: Prepare to handle deferred
> save/restore of 32-bit registers") introduced vcpu_write_spsr32() but
> seems forgot to add "break" between the switch statements and generates
> compilation warnings below. Also, adding a default statement as in
> vcpu_read_spsr32().

See
https://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git/commit/?id=3d584a3c85d6fe2cf878f220d4ad7145e7f89218

The default statement is pretty pointless by construction.

Thanks,

	M.
-- 
Jazz is not dead, it just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
