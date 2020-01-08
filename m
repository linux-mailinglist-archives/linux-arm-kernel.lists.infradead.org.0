Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3ED133841
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 02:09:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7qKvKorCSfx9o1M7CZfxxE6Wl75guQu916YlBLdpX34=; b=Coq9zNdc9qZDxAtAGAX1pfjyeq
	PKBYzBVx0snxGfbPXiTX9IqPdtRG88nUoQ6undZtsEcoefpZlDu0f/vMl+eaiWsSMswCY79fneLqF
	nBdKxwjnV/jVp6cFCO5Pgaha5VFPJ4lHNLIjAsXkfD5Rr9GotYU/OIVmurf6K40w048YyLQ7pf3Ve
	DN4AzUq2lIqUGYQV3OuTIvADTJY0ztMENb6ADWMg4i0hOrWZbkZzCSWQykXTNz6jrFLwIbFdZpYHG
	YegzUHlCXweNDyMK1tpNnTW9LdX0JDNwuEmGmnz1lJcI0zZ6lj4z/UWJ/fLpPelTnAOqH6IAjHNLf
	44tfg1eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iozqv-0005M4-B8; Wed, 08 Jan 2020 01:09:41 +0000
Received: from avon.wwwdotorg.org ([104.237.132.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iozqn-0005LQ-Cj
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 01:09:34 +0000
Received: from [10.20.204.51] (unknown [216.228.112.24])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by avon.wwwdotorg.org (Postfix) with ESMTPSA id 1AF191C0917;
 Tue,  7 Jan 2020 18:09:29 -0700 (MST)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.4 at avon.wwwdotorg.org
To: James Morse <james.morse@arm.com>
From: Stephen Warren <swarren@wwwdotorg.org>
Subject: "arm64: alternatives: use tpidr_el2 on VHE hosts" v4.9 backport
 missing edits to proc.S
Message-ID: <a1cb6ca5-4806-0813-3aad-1246e65162a6@wwwdotorg.org>
Date: Tue, 7 Jan 2020 18:09:27 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_170933_473398_B44EC34A 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, stable <stable@vger.kernel.org>,
 ARM kernel mailing list <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

James,

I'm looking at commit 6d99b68933fbcf51f84fcbba49246ce1209ec193 ("arm64: 
alternatives: use tpidr_el2 on VHE hosts"). When it was back-ported to 
v4.9.x as eea59020a7f2993018ccde317387031c04c62036, the changes to 
arch/arm64/mm/proc.S weren't included. I assume this was just an 
accident, or was there some specific reason for this? Either way, I do 
find that I need those changes for system suspend/resume to work in my 
downstream vendor fork of v4.9 if I enable KVM support in .config. I'm 
happy to send a patch for v4.9.x to add those changes back if that's the 
way to go. v4.14.x and later don't have this issue.

Thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
