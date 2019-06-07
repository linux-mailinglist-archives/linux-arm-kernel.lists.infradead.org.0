Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B675D386F7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 11:25:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+U9s+fV7JWc9J+L1nHAfBE3zq+1shoJDdMPR/mH0nBA=; b=DV7nalpBJu6t5i
	5Nm2grjPbnEbRx+TYbCk4DxdxNJrSTu3LoACAtJTJOBEchp1GzcASznc43g3i05Pe7j+1kjdPBTc4
	bdihINda8QqIfHUPT7yvWfTF1n2Yzw0mEdvqHtrdgIyPL+h/sCV1rYtZN5dw990AbeOOu/1jbo9jQ
	kGzpdQsClut4i0ZgN6Ji1XQLR9GUSwusEFfldqvMefqB2g/HMYdGKvXS0Gu1sdxen3u66VTzWTYMk
	G9ztyXqFjuk/Sx7WvVuK6m7A2YNwSWI9KPAlf//NCqbZSKffBRLIQesfWPgTmvjE1a40D+/l3N4F1
	rQz42CsUpsOYvjb+N8Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZB7s-0005v6-Ip; Fri, 07 Jun 2019 09:25:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZB7h-0005uL-Rg
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 09:25:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AF56828;
 Fri,  7 Jun 2019 02:25:19 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 53B153F96A;
 Fri,  7 Jun 2019 02:25:18 -0700 (PDT)
Subject: Re: [PATCH v3 1/8] arm64: Do not enable IRQs for ct_user_exit
To: Julien Thierry <julien.thierry@arm.com>
References: <1559813517-41540-1-git-send-email-julien.thierry@arm.com>
 <1559813517-41540-2-git-send-email-julien.thierry@arm.com>
From: James Morse <james.morse@arm.com>
Message-ID: <96a0eb12-bbf2-0854-a5e7-25246327e3ec@arm.com>
Date: Fri, 7 Jun 2019 10:25:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1559813517-41540-2-git-send-email-julien.thierry@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_022521_940301_52181616 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, marc.zyngier@arm.com, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, rostedt@goodmis.org,
 yuzenghui@huawei.com, wanghaibin.wang@huawei.com, liwei391@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Julien,

On 06/06/2019 10:31, Julien Thierry wrote:
> For el0_dbg and el0_error, DAIF bits get explicitly cleared before
> calling ct_user_exit.
> 
> When context tracking is disabled, DAIF gets set (almost) immediately
> after. When context tracking is enabled, among the first things done
> is disabling IRQs.
> 
> What is actually needed is:
> - PSR.D = 0 so the system can be debugged (should be already the case)
> - PSR.A = 0 so async error can be handled during context tracking
> 
> Do not clear PSR.I in those two locations.

(last time I looked at this I wrongly assumed ct_user_exit() should be run with interrupts
masked, but that isn't what you're saying).

Reviewed-by: James Morse <james.morse@arm.com>


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
