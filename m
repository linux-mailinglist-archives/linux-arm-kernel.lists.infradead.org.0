Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D0813C390
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 14:51:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LcZZ0zF7LbIf8KvKmKdN2+vtWNHVqEcw1Mrg35wOoo0=; b=jab2SB1GlSPL2R7NQ+PG6otrU
	cN50PBAfOegNGfmbaGdd/G5UH0DrDLRyBaBL2P7vEf4MQ1+6OP9IRMjFowFlrUjVNP+OuFo7mXhVa
	/dxeu4YFiNim8sQyyZJ5QmUBZUJMt5+zzfxvSgInhhqWCPoYwk84SxN0vvcq4/U9lMBt8/PChhhBY
	gQYQjiwTDweSfrgRfh1B75q5dDgsQ4noYS0hfQiE9K0TQ/Gi7KWjR7N0SXg1glt5yqV7cwx9DN6Ty
	sgbsqQRcTWYXgNAIegiqiGOlQg2gYcVp5vjEqdkC+tD+KKT8r8WQhoHrHdbTOUwzhEqnlqq+NlO2Q
	7n1kHWczA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irj4o-0007L7-Ui; Wed, 15 Jan 2020 13:51:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irj4X-0007KY-N4
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 13:51:07 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4CC8F222C3;
 Wed, 15 Jan 2020 13:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579096260;
 bh=zgFuK23PelupfMFWwsdmgHynqFy4M+em1nBsFleJZmg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=LAyFnhrYoxuHERN9eMwwCXKbcwce1ikeoXzQMYJ74XKiwgWrr6oFP5V8F0t9Iz2LZ
 VekcCt7rJD5+YiS3BH8kQejmTn5hHK22RyMp4//taH94ffYDsAnEhnnaEPVVrmzOc+
 FlCFXOQ9i6ZZd+WPBBXL6pPuOGqDNxX12lmgIV3k=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1irj4U-0000G6-KS; Wed, 15 Jan 2020 13:50:58 +0000
MIME-Version: 1.0
Date: Wed, 15 Jan 2020 13:50:58 +0000
From: Marc Zyngier <maz@kernel.org>
To: Shaokun Zhang <zhangshaokun@hisilicon.com>
Subject: Re: [Question about KVM on arm64] Consider putting VINVALL to
 deactivation
In-Reply-To: <bf470803-8e1c-d1c3-d5ac-731536196543@hisilicon.com>
References: <bf470803-8e1c-d1c3-d5ac-731536196543@hisilicon.com>
Message-ID: <37126a877e1160ed50ee6d95a03d1574@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: zhangshaokun@hisilicon.com, tangnianyao@huawei.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 fanhenglong@huawei.com, wanghaibin.wang@huawei.com, lizixian@hisilicon.com,
 wangwudi@hisilicon.com, jiayanlei@huawei.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_055101_777533_C32F0C98 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: wangwudi <wangwudi@hisilicon.com>, Lizixian <lizixian@hisilicon.com>,
 jiayanlei@huawei.com, fanhenglong@huawei.com,
 "Tangnianyao \(ICT\)" <tangnianyao@huawei.com>, wanghaibin.wang@huawei.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shaokun,

On 2020-01-14 14:20, Shaokun Zhang wrote:
> Hi Marc,
> 
> On activation, VMAPP command is followed by a VINVALL, which could be
> quite expensive for the start-up of virtual machine. If a vpeid is 
> allowed
> successfully, it is not used in system.

How expensive? This is exactly similar to what happens on a physical 
machine
where we perform an INVALL on MAPC. And yet you don't complain about 
that.

Please provide numbers.

> We may consider put VINVALL to deactivation to ensure all cache of 
> certain
> vpeid is invalid, to simplify activation. We consider start-up may be 
> more
> common and more time-consuming-sensitive than shutdown process.

In my world, they cost the same thing, and happen just as often. Also, I 
want
guarantees that on VMAPP, there is no stale information even if this is 
the
first time we're using this VPEid (who knows what happens over kexec, 
for
example).

> Do you think it's all right?

I don't, for the reasons stated above. You also provide no numbers 
showing
how bad the overhead is, so I'm left guessing.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
