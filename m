Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EBEE142CB9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 15:02:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KoVD/s3e0EbHXTamNyglcK9jYBX0zAgSyjD6poT1A6k=; b=a0RpGxrN02TcCf06qeBm9qfSp
	+bKYcsriZNM3Jn2cOKh8hN4IVVWV50/zRisT415RQg195C9//sVPNySoldXBaPG3OynZCvauaRSsQ
	uCIaHkULOtvOCMV5phj7M+ILUunH5tGmq9QjhOoiN4QlZsdfDboy4wNETjGR/HUo+RiLbp9VIIxTQ
	sX2G9b7UMnW2r2yL2plryfhb0Q3LJLYwJSgSaOGrxyYWk+GQ2ljYd4LHrfL2mUB3rlP610DUU8Koq
	9PsYBQIN6/dyw2f4+6f4oBQWcnwOC9Wof8VdJhCHjQL1m63E9ChGqSyVPR6YBOb3eCfcel9XTP7o/
	8jmT7DLlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itXdA-0004Uv-DM; Mon, 20 Jan 2020 14:02:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itXcs-0004TD-Pi
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 14:02:04 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7B304217F4;
 Mon, 20 Jan 2020 14:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579528914;
 bh=M1EgUDmDzzmWGPa5hMGBVoa7jQVXqY15uhPl0guxJ08=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=hAYExH16KQPRLa1rkib44cavvzzn29LNrV6QuqD04XdwgZAceXqZJKoSkx+NNYe5r
 OBIXlXXAo4PSYa9B6YxTSpH7+PPcA/2YCqp7iBDI/r2qAU0M2oZ+/2DwyA9lOPwxwm
 FmNfsxz1e08kC3YuDl1zz+4IO2nwuxx2kkH18cAM=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1itXcm-000HgP-Ra; Mon, 20 Jan 2020 14:01:52 +0000
MIME-Version: 1.0
Date: Mon, 20 Jan 2020 14:01:52 +0000
From: Marc Zyngier <maz@kernel.org>
To: Vladimir Murzin <vladimir.murzin@arm.com>
Subject: Re: [PATCH v2] ARM: virt: Relax arch timer version check during early
 boot
In-Reply-To: <1579527498-31081-1-git-send-email-vladimir.murzin@arm.com>
References: <1579527498-31081-1-git-send-email-vladimir.murzin@arm.com>
Message-ID: <c573c3f5b86ece28a10c2466e985b256@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: vladimir.murzin@arm.com,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_060158_855052_854F0B13 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-20 13:38, Vladimir Murzin wrote:
> Updates to the Generic Timer architecture allow ID_PFR1.GenTimer to
> have values other than 0 or 1 while still preserving backward
> compatibility. At the moment, Linux is quite strict in the way it
> handles this field at early boot and will not configure arch timer if
> it doesn't find the value 1.
> 
> Since here use ubfx for arch timer version extraction (hyb-stub build
> with -march=armv7-a, so it is safe)
> 
> To help backports (even though the code was correct at the time of 
> writing)
> Fixes: 8ec58be9f3ff ("ARM: virt: arch_timers: enable access to physical 
> timers")
> Signed-off-by: Vladimir Murzin <vladimir.murzin@arm.com>

Acked-by: Marc Zyngier <maz@kernel.org>

Feel free to put it into Russell's patch system.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
