Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0219212E9AB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 19:02:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hoIBIvMP+m1Qc+mA5Zlku7/3nYYCzmGFAt3kxsZQe2o=; b=smFLLqhkXscxqz
	L1sE0IU7jNLswE2JyNm2EfezQbHJC8CRa78QoElrIokv+erLMnbOd0J/PQAtDmKFtJp3o+4ujm1UV
	4dmKk1I23LhqQ0zzH4dSbU0L3FBnfKnOMxIGmSCSwSc7Q12uvIN0qcx6HArv6B2WK71gmAnaKRujf
	z/7gxz6Agr/Gd5Ci7pogOr/i3+QCs6PHn4fTMHEPNRV0BYJcBPdu5fxCruVPWbLIHeGqvhhthp/Z0
	WBOfvX3wlNkTsLU8Vf/Ow8O+3dgsxg8Zdb2ysyv5l7DSvXHRKGLQS6IbHO50f7I6fG6gr46dXdrKi
	xDNOb/uI6VC8j7FKw0+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in4nZ-0007xA-5g; Thu, 02 Jan 2020 18:02:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in4n7-0007bH-6h
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 18:01:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A0DBB328;
 Thu,  2 Jan 2020 10:01:48 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 BC4A73F703; Thu,  2 Jan 2020 10:01:47 -0800 (PST)
Date: Thu, 2 Jan 2020 18:01:45 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Srinivas Ramana <sramana@codeaurora.org>
Subject: Re: [PATCH] arm64: Set SSBS for user threads while creation
Message-ID: <20200102180145.GE27940@arrakis.emea.arm.com>
References: <1577106146-8999-1-git-send-email-sramana@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1577106146-8999-1-git-send-email-sramana@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_100149_300161_697EED11 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: maz@kernel.org, will@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 23, 2019 at 06:32:26PM +0530, Srinivas Ramana wrote:
> Current SSBS implementation takes care of setting the
> SSBS bit in start_thread() for user threads. While this works
> for tasks launched with fork/clone followed by execve, for cases
> where userspace would just call fork (eg, Java applications) this
> leaves the SSBS bit unset. This results in performance
> regression for such tasks.
> 
> It is understood that commit cbdf8a189a66 ("arm64: Force SSBS
> on context switch") masks this issue, but that was done for a
> different reason where heterogeneous CPUs(both SSBS supported
> and unsupported) are present. It is appropriate to take care
> of the SSBS bit for all threads while creation itself.
> 
> Fixes: 8f04e8e6e29c ("arm64: ssbd: Add support for PSTATE.SSBS rather than trapping to EL3")
> Signed-off-by: Srinivas Ramana <sramana@codeaurora.org>

I suppose the parent process cleared SSBS explicitly. Isn't the child
after fork() supposed to be nearly identical to the parent? If we did as
you suggest, someone else might complain that SSBS has been set in the
child after fork().

I think the fix is for user space to set SSBS in the child if it no
longer needs it.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
