Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D48186BDA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 14:14:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zhAfkStD6HFEis2UJ2SJWuYfXI1IUqzne7iWa0eaBTs=; b=oa+4PqbOx1euqJqTyTJgcJJLt
	o7WL9F9vSKQyKSp8RCE8BZLSGR5MQVLzdksBoRZQNtTS4QbpABbZc9ExNZ1ssLVMVBeUnux9j0U4I
	ex4SAP3Cy7r0QI5dYvVKKWub50kW252wOaJwKgNAr8wNJ3KA9OwlDg68fqfGsOTCW7xAQeAKK5L6S
	EhUE9dhpxgyC//AgOxmqPzDqEpQSpcCN9DLKYVr6ouflb0zdp25/ikDH5PPvhnEg3RO0eFqq0c9Mq
	ieOTqlPeiX6qpyyVLn8EnEKtNaYzXYw0dKFeklMf/vTpp9/0AyF1kUzkVZunVh5Sk4NG2zyyY7bZK
	0uha8hIcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDpZi-0005W9-IE; Mon, 16 Mar 2020 13:14:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDpZa-0005Vf-SZ
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 13:14:28 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 29AFC20663;
 Mon, 16 Mar 2020 13:14:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584364466;
 bh=LmU7P8pTU610kxZnULxwK7dksMsqCbNn4F4inI+WiXs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=bOc05CrcR9Emny6/CLjvQzRP6g4e7lV/jF56WxstnkltZOCNUUkZMHM4ezxPC6/XB
 pFyzosK7RWC9Nm1suRt1xMatiaj4HXL03w0CC+Xngzdu5ETKQmrCCbXM/UuMPbzQA8
 HLZSWtZY/WDD/PJ9Kux3Dr7pWtJjlrB/Qk666CdI=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jDpZY-00D5AE-EW; Mon, 16 Mar 2020 13:14:24 +0000
MIME-Version: 1.0
Date: Mon, 16 Mar 2020 13:14:24 +0000
From: Marc Zyngier <maz@kernel.org>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH v3 2/2] irqchip/gic-v3-its: Balance initial LPI affinity
 across CPUs
In-Reply-To: <2c367508-f81b-342e-eb05-8bbd1b056279@huawei.com>
References: <20200316115433.9017-1-maz@kernel.org>
 <20200316115433.9017-3-maz@kernel.org>
 <2c367508-f81b-342e-eb05-8bbd1b056279@huawei.com>
Message-ID: <9ce0b23455a06d92161c5302ac28152e@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: john.garry@huawei.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, chenxiang66@hisilicon.com,
 wangzhou1@hisilicon.com, ming.lei@redhat.com, jason@lakedaemon.net,
 tglx@linutronix.de, luojiaxing@huawei.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_061426_948900_2A28BE7C 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jason Cooper <jason@lakedaemon.net>, chenxiang <chenxiang66@hisilicon.com>,
 luojiaxing@huawei.com, linux-kernel@vger.kernel.org,
 Ming Lei <ming.lei@redhat.com>, Zhou Wang <wangzhou1@hisilicon.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-03-16 13:02, John Garry wrote:

Hi John,

> Hi Marc,
> 
>> +		int this_count = its_read_lpi_count(d, tmp);
> 
> Not sure if it's intentional, but now there seems to be a subtle
> difference to what Thomas described for non-managed interrupts - for
> non-managed interrupts, x86 selects the CPU based on the total
> interrupt load per CPU (or, more specifically, lowest vector
> allocation count), and not just the non-managed load. Or maybe I
> misread it.

So far, I'm trying to keep the two allocation paths separate, as the
two systems I have access to have very different behaviours: D05 has
no managed interrupts to speak of, and my top-secret work machine
has almost no unmanaged interrupts, so the two sets are almost
completely disjoint.

Also, it all depends on the interrupt allocation order, and whether
something will rebalance the non-managed interrupts at a later time.
At least, these two patches make it easy to alter the placement policy
(the behaviour you describe above is a 2 line change).

> Anyway, we can test this now for NVMe with its managed interrupts.

Looking forward to hearing from you!

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
