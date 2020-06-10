Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A391E1F5591
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 15:17:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vXSSk5Ft+Jea+y49JKPRXc37QsytNdF9M2gGSX/6HYc=; b=tvFR8+264HNDZ5
	RikmGipS2IczbNlM2ko1QNoTYfiEJ8qrEzB2XhUOZkGvob4DYWZm9ozTSTtuVG4msYA4zzEd7Mjqp
	0KAQ1HCu1mUT/KqBienuJ2syotB5z2yLuf21OxPrBL9gVyU5n4dUJI/dnsbT8XhMUG0jtUiHB1Eim
	oO6YSUKpEDhwqoFPERshKLxuDzObTyaQM7jR4gj0889jZVt7/4X0ZO5RxUakizvCy/hN2pvvpnHYa
	Wfh2p5kl1b/EafPYX/mvO4sbMH58ELj4liElTC49IXqRqx8BbK+X87Zwiztann1jY4oCqPbu1c6cE
	Dc09/0dWFZRBeNKseZXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj0bk-00057F-2D; Wed, 10 Jun 2020 13:17:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj0bc-00055m-49
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 13:17:25 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DCB96206F4;
 Wed, 10 Jun 2020 13:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591795043;
 bh=r/1LOWK/aXaczjCrUxr4u2GIs8uHwZD+wzaFjRrloug=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=XouGZJhOk0iO7+/ZpOzCe80kTvuL/yLvI17Mlph88uIwkE9yM3yciHO1l1hDDMKa3
 FToE0Ab262xddP0GUp6PFbgn171Co6o7O/97fngnfayEr9lONO3p3I+pLPiqwHqk7U
 GPrIShQvi0saBgYbdAaFJPDmgYWO1EbxlG5vgz8s=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jj0bZ-001nNx-D3; Wed, 10 Jun 2020 14:17:21 +0100
From: Marc Zyngier <maz@kernel.org>
To: James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
Subject: Re: [PATCH v2 0/3] KVM: arm64: aarch32 ACTLR accesses
Date: Wed, 10 Jun 2020 14:17:08 +0100
Message-Id: <159179498629.1496132.2497129458490530920.b4-ty@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200529150656.7339-1-james.morse@arm.com>
References: <20200529150656.7339-1-james.morse@arm.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: james.morse@arm.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_061724_183012_BCC41F3F 
X-CRM114-Status: UNSURE (   8.88  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 29 May 2020 15:06:53 +0000, James Morse wrote:
> Hello!
> 
> Changes since v1:
>  * Patches 2 & 3 have been swapped.
>  * Copy access_vm_reg() to swizzle 32bit offets back to 64bit
>  * Peek at the encoding to tell ACTLR and ACTLR2 apart...
> 
> [...]

Applied to kvm-arm64/32bit-fixes, thanks!

[1/3] KVM: arm64: Stop writing aarch32's CSSELR into ACTLR
      commit: 7c582bf4ed84f3eb58bdd1f63024a14c17551e7d
[2/3] KVM: arm64: Add emulation for 32bit guests accessing ACTLR2
      commit: ef5a294be8d0e17b91d23be905f69368b0d3952e
[3/3] KVM: arm64: Stop save/restoring ACTLR_EL1
      commit: e8679fedd026eb3b4655af83829d9036e32c9b97

Cheers,

	M.
-- 
Without deviation from the norm, progress is not possible.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
