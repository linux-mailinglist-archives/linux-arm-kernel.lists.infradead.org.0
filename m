Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E811F573C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 17:03:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zYrs+xO67w3nkTEFCBFkwspovjHkIU1Z8cXUEpidvb4=; b=XIVw4XKoI3QpevwBSetGgNef7
	1pXVzAhdFPYZIA/HVK2z2IpnPOsi4PZnhm37Cmn2jhOOuw77RhW1MvLEeoI1OI3dGGuxqqPEQ4M7b
	/9QoDQ4UknPalqcpwzx4QaQREtjmitznAH6RmGKqqNPkq4O7qPdPZfc9AvLMng8PWYT9k+ifeYgMJ
	GENux42OyPauSUPXXIywUwphvGSPxEICr7xsm+ooc5CqQnGGm2axEvqtdiJCtP4CvJIUTTafPBqcK
	GMIi1jrUM0Qappo8G7t0NXeEOJceNivSbb6qwkpGxqNtmYMdpS0aY7qJtfxe/PObplRqyYKNGDUGM
	RZZ1WzuXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj2Fs-0003Hy-My; Wed, 10 Jun 2020 15:03:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj2Fk-0003H6-Ac
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 15:02:57 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9EFAF2072F;
 Wed, 10 Jun 2020 15:02:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591801375;
 bh=PXOXPvrJV7xGGbzYC9/oZT86BtGS3IQuSBt+aeT7chk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=miZS9oRoEjrNMU1meThJvdtBXhi0h+mnI4aLe1ZvYLzne2pS5A2ymCsWzRULdvM9S
 0ypO5Pvib76X09QkaaLDBbZ8rIOJhHK3/OMNBf2gitnzI5QSV7LbgGkbH0NuXtBbdN
 zyZai7/svsw881Su3czNZ57SY+WVUFfSJTBhNs0c=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jj2Fi-001ofe-4F; Wed, 10 Jun 2020 16:02:54 +0100
MIME-Version: 1.0
Date: Wed, 10 Jun 2020 16:02:54 +0100
From: Marc Zyngier <maz@kernel.org>
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH] irqchip/gic-v4.1: Use readx_poll_timeout_atomic() to fix
 sleep in atomic
In-Reply-To: <4a9822bd-0362-7ffe-6e56-3f05a7816d9e@huawei.com>
References: <20200605052345.1494-1-yuzenghui@huawei.com>
 <4a9822bd-0362-7ffe-6e56-3f05a7816d9e@huawei.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <2bff9c0af0aa5eeef44b381ee0f8a542@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: yuzenghui@huawei.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 tglx@linutronix.de, jason@lakedaemon.net, wanghaibin.wang@huawei.com,
 wangjingyi11@huawei.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_080256_386057_8291696C 
X-CRM114-Status: GOOD (  11.37  )
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
Cc: jason@lakedaemon.net, linux-kernel@vger.kernel.org, wangjingyi11@huawei.com,
 wanghaibin.wang@huawei.com, tglx@linutronix.de, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Zenghui,

On 2020-06-10 14:59, Zenghui Yu wrote:
> Hi Marc,
> 
> Sorry to ping you in the merge window, but ...
> 
> On 2020/6/5 13:23, Zenghui Yu wrote:
>> readx_poll_timeout() can sleep if @sleep_us is specified by the 
>> caller,
>> and is therefore unsafe to be used inside the atomic context, which is
>> this case when we use it to poll the GICR_VPENDBASER.Dirty bit in
>> irq_set_vcpu_affinity() callback.
> 
> this seems like an urgent thing to me. Without this patch, CPUs are
> easily to get stuck on my board with GICv4.1 enabled. So it'd be good 
> if
> you can have a look and take this as a fix (if it is correct).

No worries. I've earmarked the patch for -rc1 already, just haven't got
a chance to build the branch yet (a bit busy on the KVM side).

I'll probably update the branch tonight or tomorrow.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
