Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71DFF1C94A2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 17:16:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3qMYOwW5UaaZ2/J/1McHGRPeT6NotRr7/Sk6poVNAQY=; b=nOqYfGErvDp4rZIgNl+AbdJbX
	dJKaTMArUH52ItRZHcO13rAUZ8MuUw4a6tSNQeN8Qhdpg9LqO4k6ej2KxA++nRS1mABA6I1wQ+Y/0
	wTenWkQ+Rf+O1eeGTWNyKA24Joe+MgYVuNfKxq32tl6L/sERq4MH+udveNATZTxRISyViak6hu1Dy
	HZiR6Fh2xdVCWfDK3u7kaGMsJRTWhpzAdl+ak6Ab1UTp8t7HN9aD4HeVpSYorsSskyz2cZ9eDGWlw
	eLJ40tkBVWeRrP8Vyu4kRkDLFG2gKy32nCTo5UdzHeHa+ZU/FL0irVx+fhhNeciKRrE+0IXezf9v2
	v44FE2Vbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWiG2-0005US-6m; Thu, 07 May 2020 15:16:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWiFh-0005SQ-9g
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 15:16:03 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D392B207DD;
 Thu,  7 May 2020 15:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588864557;
 bh=ux/WK4BgpiCCy4diPu3bKfY8AWDQXyNVDGkRY8G5x9M=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=zudqrwOEUY4DrnXjGQ98u/M9JwOEVc2mYKgd2qyD6usz0b0wVhGN/ItZFzVXLo0R7
 bP62RQIzzwzc3uL2VJdZi2SHW+rxNi7LR0aaVg4gaXWAOjCUwANHAFCk9luv2am+7G
 +BzQ4FAUUMp2mZIeSATcsMXvjbtawZA3Rrhf9u5k=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jWiFf-00AJoN-6T; Thu, 07 May 2020 16:15:55 +0100
MIME-Version: 1.0
Date: Thu, 07 May 2020 16:15:55 +0100
From: Marc Zyngier <maz@kernel.org>
To: David Brazdil <dbrazdil@google.com>
Subject: Re: [PATCH 05/15] arm64: kvm: Build hyp-entry.S separately for
 VHE/nVHE
In-Reply-To: <87imh72379.wl-maz@kernel.org>
References: <20200430144831.59194-1-dbrazdil@google.com>
 <20200430144831.59194-6-dbrazdil@google.com> <87imh72379.wl-maz@kernel.org>
User-Agent: Roundcube Webmail/1.4.3
Message-ID: <df5bf1943851715130517c43fde8e5a9@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: dbrazdil@google.com, suzuki.poulose@arm.com,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, julien.thierry.kdev@gmail.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_081557_388758_339D2347 
X-CRM114-Status: UNSURE (   7.91  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-07 16:07, Marc Zyngier wrote:
> On Thu, 30 Apr 2020 15:48:21 +0100,
> David Brazdil <dbrazdil@google.com> wrote:

[...]

>> hyp-entry.S contains implementation of KVM hyp vectors. This code is 
>> mostly
>> shared between VHE/nVHE, therefore compile it under both VHE and nVHE 
>> build
>> rules, with small differences hidden behind '#ifdef __HYPERVISOR__'. 
>> These are:
>>   * only nVHE should handle host HVCs, VHE will now panic,
> 
> That's not true. VHE does handle HVCs from the guest. If you make VHE
> panic on guest exit, I'll come after you! ;-)

Duh, I can't read. "host HVCs". You can relax. ;-)

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
