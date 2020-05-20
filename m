Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF66F1DB5E9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 16:05:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YJWhB139EA0/T1Eq1JSGxl0FRCgvQxFaU/c+1LvTq+0=; b=BpLlQWlHbK1C5H
	3swoqI9IVNJT6oQJLDo6gqd7DXDimNcxVK6XlsnC0wxth0EkyMvQeWdgM1UUf86XHmPuruy8Nc5wB
	7dPsGE7KQ71Isbt/YkwHEJbg6wp4/R4U4HSnEHfjg0/IpbU4dpPXDWorb7gQVxOII4YZ1zW86ZP8x
	21mxbEQAc3F+HZSuWf/6G21qRfcR2YKZn1Wu9uArh/+fyefsOxTZNO90ECrKOC4jXfUe4JF1R82LV
	gCT+1aR2yvRGa+HVtFZ7/tksRojuXDG4fVQG2wr/GPK1rvAdYI5i52AujAHD+Pz3fp5axf6kL7VCh
	YIIX+TFUwxlYkfY9Cmsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbPLy-00068K-Vp; Wed, 20 May 2020 14:05:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbPLm-00067d-B5
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 14:05:39 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8DDE020756;
 Wed, 20 May 2020 14:05:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589983537;
 bh=HfBCWFfRpM5VyyK+IDlm6yuZbOJ44nnW86i2oO6kM+g=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=km2IocK4xKMy0nzEBce/dnj+q4vAZie6wkUiAQLo5+2Wn5Rrg6O7bxDwfsIduhi9C
 HSFO01WSisjf1RqyFbhMAhcLuglhBwrRC3NynA8W57NnQFzM5fKpHtljmC/7SRpvxS
 jpJe+ok0CKW6OEMrbEy6akwapZMWCo1zcZnzhqYM=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jbPLj-00Dx1Q-UT; Wed, 20 May 2020 15:05:36 +0100
Date: Wed, 20 May 2020 15:05:33 +0100
From: Marc Zyngier <maz@kernel.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V2] arm64/cpufeature: Drop open encodings while
 extracting parange
Message-ID: <20200520150533.3034fe90@why>
In-Reply-To: <1589360614-1164-1-git-send-email-anshuman.khandual@arm.com>
References: <1589360614-1164-1-git-send-email-anshuman.khandual@arm.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: anshuman.khandual@arm.com,
 linux-arm-kernel@lists.infradead.org, mark.rutland@arm.com,
 catalin.marinas@arm.com, will@kernel.org, james.morse@arm.com,
 kvmarm@lists.cs.columbia.edu, linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_070538_398232_671FB6F0 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 13 May 2020 14:33:34 +0530
Anshuman Khandual <anshuman.khandual@arm.com> wrote:

> Currently there are multiple instances of parange feature width mask open
> encodings while fetching it's value. Even the width mask value (0x7) itself
> is not accurate. It should be (0xf) per ID_AA64MMFR0_EL1.PARange[3:0] as in
> ARM ARM (0487F.a). Replace them with cpuid_feature_extract_unsigned_field()
> which can extract given standard feature (4 bits width i.e 0xf mask) field.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: James Morse <james.morse@arm.com>
> Cc: kvmarm@lists.cs.columbia.edu
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> 
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>

Acked-by: Marc Zyngier <maz@kernel.org>

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
