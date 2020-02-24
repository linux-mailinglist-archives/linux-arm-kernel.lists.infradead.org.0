Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D570E16B5FF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 00:48:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WhOr8wlZxb1pJJ8J9vPIyWtBPqRaRMCR9nCTe32I8n4=; b=cuZdNW1TIH+AZspccxnsTMd79
	kz2rNbn1TcJ9Jo8DhUPKhH5gyBVOmlqS0rmfLXW4Zlk028leTJOJFVwOzcLqBGvtb4S4UQa+7ZMni
	3SH068f+XMV7CFLNq+FtCgZgvmgJPv6ZohIppEM83wIlzrkPoCF/ZDTf3xI/w9o639ULCrwhyyzr7
	McteZ5zoVGZOXEEPhdOuV3rs6TCLjpj8WU+C/WgSoZdh6QpSd7IxwPGEz6zgIEBASkr7f87MvEhzV
	jYFguhfvU8sj2hCRY6FZ8Pno0WpA/UrBYPtwE30oDfLwcZTBagB2/UsBfufTy+3M1fzrC5uv2r9Wn
	mqFp4pTiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6NS7-0007JA-Bp; Mon, 24 Feb 2020 23:47:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6NRx-0007In-GA
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 23:47:46 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B20512176D;
 Mon, 24 Feb 2020 23:47:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582588064;
 bh=/n/ld7pGO6VfKm6KFJGv3owq/0ZZ5rbRhDEektoQtMg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=d4bdpUEoxsXsiOQwhLaGxmXFFebooW84w5sMWUW8znmIGzDsOaI88EsxYF44NM13U
 q7OEU/H1tCMzwPy7WHbjkKF1Qd9nlG2XUYTqep75eN7KMri4pkcx2TKryMrmQs31ER
 mh42sauNuo7wznRqeE2QFiVMxWc5c55Qr50pxu9s=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j6NRu-007gKg-QY; Mon, 24 Feb 2020 23:47:42 +0000
MIME-Version: 1.0
Date: Mon, 24 Feb 2020 23:47:42 +0000
From: Marc Zyngier <maz@kernel.org>
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH] irqchip/gic-v3-its: Clear Valid before writing any bits
 else in VPENDBASER
In-Reply-To: <20200224025029.92-1-yuzenghui@huawei.com>
References: <20200224025029.92-1-yuzenghui@huawei.com>
Message-ID: <bb7cdb29eda9cf160bcf85a58a9fc63d@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: yuzenghui@huawei.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 wanghaibin.wang@huawei.com, jiayanlei@huawei.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_154745_563534_7167EB35 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: wanghaibin.wang@huawei.com, Yanlei Jia <jiayanlei@huawei.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Zenghui,

On 2020-02-24 02:50, Zenghui Yu wrote:
> The Valid bit must be cleared before changing anything else when 
> writing
> GICR_VPENDBASER to avoid the UNPREDICTABLE behavior. This is exactly 
> what
> we've done on 32bit arm, but not on arm64.

I'm not quite sure how you decide that Valid must be cleared before 
changing
anything else. The reason why we do it on 32bit is that we cannot update
the full 64bit register at once, so we start by clearing Valid so that
we can update the rest. arm64 doesn't require that.

For the rest of discussion, let's ignore GICv4.1 32bit support (I'm
pretty sure nobody cares about that).

> This works fine on GICv4 where we only clear Valid for a vPE 
> deschedule.
> With the introduction of GICv4.1, we might also need to talk something 
> else
> (e.g., PendingLast, Doorbell) to the redistributor when clearing the 
> Valid.
> Let's port the 32bit gicr_write_vpendbaser() to arm64 so that hardware 
> can
> do the right thing after descheduling the vPE.

The spec says that:

"For a write that writes GICR_VPENDBASER.Valid from 1 to 0, if
GICR_VPENDBASER.PendingLast is written as 1 then 
GICR_VPENDBASER.PendingLast
takes an UNKNOWN value and GICR_VPENDBASER.Doorbell is treated as being 
0."

and

"When GICR_VPENDBASER.Valid is written from 1 to 0, if there are 
outstanding
enabled pending interrupts GICR_VPENDBASER.Doorbell is treated as 0."

which indicate that PendingLast/Doorbell have to be written at the same 
time
as we clear Valid. Can you point me to the bit of the v4.1 spec that 
makes
this "clear Valid before doing anything else" requirement explicit?

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
