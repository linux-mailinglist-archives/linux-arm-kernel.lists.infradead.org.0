Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8E518C9FE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 10:17:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rblAFzbG8WkQDSXTvUq+eQD9Nqy2JYQVoZ9nKsxNbiI=; b=ndkIrJHA7sGVi15CXrjY0hJ8l
	hnzHNNtCQXreg0bg9IENzv9ZEsi1RqhtVhetSWNiChzpJuM5AEMLocC4ReuB4MNyeutPHuUF+Rioa
	LX0YdAIl9fXmKfmUZm3whTd/pIrPEz9GM76XZK8eJYFHorvhmTQ70eEMj6dSk7IPINzZ4UaBH374D
	7fKNZbgbm/HQBKzHgqtahzdmg1jEjky01+wGoVCMWxC/ArE7SGD+4RS/fT3bCV7qS8p1cdWPMtN3q
	iDY+wX0vfa8Evl7o7z+LfEdWfkqwkhB+AH8Jy7QNhoeke/3TFCSDCEkX7X0LutsdPrZcqm7w/I+td
	4xuWmkmCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFDml-0002ju-Qc; Fri, 20 Mar 2020 09:17:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFDmW-0002jW-JZ
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 09:17:33 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 18EB320739;
 Fri, 20 Mar 2020 09:17:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584695852;
 bh=zsT/U58gg36/Uj1CBfv4DlLvkJ01kHhfUVbHRubrzTo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Y6AVOYnW9tiHmtVZ9MVy83Nhq+E8DkwcAnBBy0JfLhTHNp9Ltl+RsgKfnhEwRb9WG
 X12/cWpMptvQNyfIzoKAdWWwgJ5NwIdFBabRJFSGMvy+EPreSyCHzQkslphTWNmKY0
 Ki/zXZ7G5LUWyWnYhBDLDwMUkgwkZj1PTMqfDLHI=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jFDmU-00EC7b-9Z; Fri, 20 Mar 2020 09:17:30 +0000
MIME-Version: 1.0
Date: Fri, 20 Mar 2020 09:17:30 +0000
From: Marc Zyngier <maz@kernel.org>
To: Auger Eric <eric.auger@redhat.com>
Subject: Re: [PATCH v5 19/23] KVM: arm64: GICv4.1: Allow SGIs to switch
 between HW and SW interrupts
In-Reply-To: <9fb8c267-5483-f260-6e37-5e8734b38928@redhat.com>
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-20-maz@kernel.org>
 <8a6cf87a-7eee-5502-3b54-093ea0ab5e2d@redhat.com>
 <877ba4711c6b9456314ea580b9c4718c@kernel.org>
 <9fb8c267-5483-f260-6e37-5e8734b38928@redhat.com>
Message-ID: <46802b9895a72c374b86399ca008b89a@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: eric.auger@redhat.com, lorenzo.pieralisi@arm.com,
 jason@lakedaemon.net, kvm@vger.kernel.org, suzuki.poulose@arm.com,
 linux-kernel@vger.kernel.org, rrichter@marvell.com, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, yuzenghui@huawei.com, tglx@linutronix.de,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_021732_667852_C93E99B5 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 Robert Richter <rrichter@marvell.com>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Zenghui Yu <yuzenghui@huawei.com>,
 Thomas Gleixner <tglx@linutronix.de>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Eric,

On 2020-03-19 20:13, Auger Eric wrote:
> Hi Marc,
> 
> On 3/19/20 8:52 PM, Marc Zyngier wrote:
>> The assumption here is that we're coming vgic_v4_configure_vsgis(),
>> which starts
>> by stopping the whole guest. My guess is that it should be safe 
>> enough, but
>> maybe you are thinking of something else?
> I don't have a specific case in mind. Just preferred asking to make
> sure. Usually when touching those fields we take the lock (that's also
> the case in vgic_debug_show for instance).

Ah, good thing you mention the debug interface. I think it is the only
thing that can run behind our back... Fair enough, I'll add the locking.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
