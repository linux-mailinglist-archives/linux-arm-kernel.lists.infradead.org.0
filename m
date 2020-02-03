Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A261503D5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 11:05:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dNWeYTguBbwOZSiFCKFCmxMyLlh7KhtZVfmDpotf7Rs=; b=ThWnC2VzOWwYIlTJT7F4X46tC
	IF7yVXU6f8jwVCuwBiOwy+5zDFtsGKGxxGPInH3+l3c8+xuDDQg0qrEkjQq6byFPg3HDkj4jSBqvA
	K/+sZmuwZQvJEXUD+NY8Z280zZPZUklJ6oGZVBP2h3g3U5+vkwTmg8MyyAZHA6YX4YFfBXmXsZ8Vm
	bIitIqXJyHEILROPrZnh+9jbEkT/y+XOV6pp8TobeOdJwFDEZeA/UQg+JWDdUJU+8UiukFgVXy/g+
	kC3LkRgVYYp7pHYdh2BfVWt5isJfFcHRbFG1dQ6hjr7Nnuwju1jqgiMudy5ZQn1nWOjYFZslkVRSZ
	kJUwl1A/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyYbk-0001v7-A1; Mon, 03 Feb 2020 10:05:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyYba-0001uQ-JI
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 10:05:23 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4F38020661;
 Mon,  3 Feb 2020 10:05:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580724321;
 bh=Dvb/o2l3gfXzlhoeCaVp4liCnwQuEagqrziI3jFG9ek=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=jWrIHDvXXFabPd138bxqY/qFVmzo04QQm8gKpHWnocHxH+4+mXaCPFuBGYELEqXCj
 6eFzO299/Qmi6nh8ajIcNZMrsoAK0XJWwA1ETsZaTCG5gR+AwyhEnDRwkViGDfuqLS
 qS/czUFcCwr+Y9F6Hi793G4MBf4INnhhI3+8Y9TM=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1iyYbX-002jpG-71; Mon, 03 Feb 2020 10:05:19 +0000
MIME-Version: 1.0
Date: Mon, 03 Feb 2020 10:05:19 +0000
From: Marc Zyngier <maz@kernel.org>
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH RESEND] irqchip/gic-v3-its: Use the its_invall_cmd
 descriptor when building INVALL
In-Reply-To: <20200203041821.1862-1-yuzenghui@huawei.com>
References: <20200203041821.1862-1-yuzenghui@huawei.com>
Message-ID: <11f7a8ab2f23db10100578506a49fa24@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: yuzenghui@huawei.com, tglx@linutronix.de,
 jason@lakedaemon.net, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, wanghaibin.wang@huawei.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_020522_660065_B4638E58 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: wanghaibin.wang@huawei.com, tglx@linutronix.de, jason@lakedaemon.net,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-03 04:18, Zenghui Yu wrote:
> It looks like an obvious mistake to use its_mapc_cmd descriptor when
> building the INVALL command block. It so far worked by luck because
> both its_mapc_cmd.col and its_invall_cmd.col sit at the same offset of
> the ITS command descriptor, but we should not rely on it.
> 
> Fixes: cc2d3216f53c ("irqchip: GICv3: ITS command queue")
> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
> ---
> 
> This patch has been originally posted at:
> https://lore.kernel.org/r/20191202071021.1251-1-yuzenghui@huawei.com
> but somehow has been missed for 5.5.  So repost it.

Oops, sorry about that. Now applied and pushed out.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
