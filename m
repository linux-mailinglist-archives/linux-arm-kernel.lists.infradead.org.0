Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E8319F6A5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 15:17:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yctHfeBE1mXO9bJOMktfjN5s6gIHXHbTA/0EfQoZego=; b=L0kjVZleengbRevnVoPAQSImXq
	nsZtyIeCGVnHKuRVfoL6Fb6KqnElLfs5uErw08REY7Gx+bitqBgb9UGbMeVtdXV8+2NMJT+gTthu0
	HhMMPl5BVBba9iJSKN0zlK0wPfqC3APvT/p1z+frUkXPT0Y+fiA6BE0KfSf35p+Uja+jkzWQGJkRp
	tewSwEcjH2c/DPLI8lDTx7iTgNEhnib1IYtLkwBDMsLswzciychzqxgbW0HkU2ooRBjXLY+QXkBT/
	Gy+3JABiKaKCbMk+mW0dxxLEhmadtntG7naxO4xmnncpaXa2xY9Uidz6fmt8qGHZE4uV1dvAfnxH+
	KOnp9TBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLRcX-0005xb-Mz; Mon, 06 Apr 2020 13:16:57 +0000
Received: from mail.xenproject.org ([104.130.215.37])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLRcP-0005wS-QO
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 13:16:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=xen.org;
 s=20200302mail; h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:
 Message-ID:Cc:To:Subject:From:Sender:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9miVRYCMvr1Uvww2T7Kj3Ck9eMJTDfng4CaO3elt314=; b=53xUmM5P65NYBcJdrA40VgMU7X
 rBRfkE16e3+PIttsoxK+Dn99gYVB2V+nCJoHEXDTxUbiOKDkTkQbTc22uf0SwxrNXhSbzsiC6BUPN
 Wxu7L8DgZ3g18ADrVUzgAKzVXDx6IGWqtU5RMWSrU6vuUH672pf3NzA1brdaHxnvfWOI=;
Received: from xenbits.xenproject.org ([104.239.192.120])
 by mail.xenproject.org with esmtp (Exim 4.89)
 (envelope-from <julien@xen.org>)
 id 1jLRcI-00025f-2L; Mon, 06 Apr 2020 13:16:42 +0000
Received: from 54-240-197-239.amazon.com ([54.240.197.239]
 helo=a483e7b01a66.ant.amazon.com)
 by xenbits.xenproject.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <julien@xen.org>)
 id 1jLRcH-0004fB-RA; Mon, 06 Apr 2020 13:16:41 +0000
From: Julien Grall <julien@xen.org>
Subject: I{S,C}ACTIVER implemention question
To: Marc Zyngier <maz@kernel.org>, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
Message-ID: <c90bdfa0-00cf-170b-4319-e270e8aaef7e@xen.org>
Date: Mon, 6 Apr 2020 14:16:39 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0)
 Gecko/20100101 Thunderbird/68.6.0
MIME-Version: 1.0
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_061649_915207_76F98285 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [104.130.215.37 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "George.Dunlap@eu.citrix.com" <George.Dunlap@eu.citrix.com>,
 Stefano Stabellini <sstabellini@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org,
 Bertrand Marquis <Bertrand.Marquis@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Xen community is currently reviewing a new implementation for reading 
I{S,C}ACTIVER registers (see [1]).

The implementation is based on vgic_mmio_read_active() in KVM, i.e the 
active state of the interrupts is based on the vGIC state stored in memory.

While reviewing the patch on xen-devel, I noticed a potential deadlock 
at least with Xen implementation. I know that Xen vGIC and KVM vGIC are 
quite different, so I looked at the implementation to see how this is dealt.

With my limited knowledge of KVM, I wasn't able to rule it out. I am 
curious to know if I missed anything.

vCPU A may read the active state of an interrupt routed to vCPU B. When 
vCPU A is reading the state, it will read the state stored in memory.

The only way the memory state can get synced with the HW state is when 
vCPU B exit guest context.

AFAICT, vCPU B will not exit when deactivating HW mapped interrupts and 
virtual edge interrupts. So vCPU B may run for an abritrary long time 
before been exiting and syncing the memory state with the HW state.

Looking at Linux (5.4 and onwards) use of the active state, vCPU A would 
loop until the interrupt is not active anymore. So wouldn't the task on 
vCPU A be blocked for an arbitrary long time?

Cheers,

[1] 
https://lists.xenproject.org/archives/html/xen-devel/2020-03/msg01844.html

-- 
Julien Grall

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
