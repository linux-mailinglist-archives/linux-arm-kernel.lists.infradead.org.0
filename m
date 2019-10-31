Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A3DAEB571
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 17:54:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hj27qWRGEhzwkeNq8u8lsirk5X8TH5ttlFpQ6jOicB8=; b=m+2k2W3P00XqG5rdKcKXGIGsQ
	0td5i9bkNmIGprcx5Ywl+bFJTbSGHqQEmjdEG52YQkPwA9Wy2wEmXK1FuEewXW1FMc+pZ4jFHLk+e
	vBbH1+juNyraD6IEDJuEBg0PoUKTRE15e43GsJotpivL17LLhjHcJBYVt/hIAjUFS71cClWEPzsvR
	yq3hT1AKZoCFJ5YCCuFzGUObSiWL9A7z1i0hFqjLo6ZhOqJxQM9nY7dWz+EE4WjoRI8IjfcKaQSKZ
	+sa69GGBtEzrXrqILca4eNKMe0xgQ0EU6uSFJ8W78ET5JabYTyllLn3XLN+bZIhUQ+UVIs4y+DaB/
	zYqUy0mIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQDhw-0004C8-3L; Thu, 31 Oct 2019 16:54:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQDcV-00082A-J2
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 16:48:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 977111FB;
 Thu, 31 Oct 2019 09:48:20 -0700 (PDT)
Received: from [10.1.196.50] (unknown [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C56383F6C4;
 Thu, 31 Oct 2019 09:48:19 -0700 (PDT)
Subject: Re: [PATCH 4/4] docs/arm64: cpu-feature-registers: Documents missing
 visible fields
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20191003111211.483-1-julien.grall@arm.com>
 <20191003111211.483-5-julien.grall@arm.com>
From: Julien Grall <julien.grall@arm.com>
Message-ID: <9a4aa626-a16f-b01a-0254-43946de9ff6e@arm.com>
Date: Thu, 31 Oct 2019 16:48:18 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191003111211.483-5-julien.grall@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_094824_128993_A344533B 
X-CRM114-Status: GOOD (  15.72  )
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
Cc: "julien@xen.org" <julien@xen.org>, catalin.marinas@arm.com, will@kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 03/10/2019 12:12, Julien Grall wrote:
> A couple of fields visible to userspace are not described in the
> documentation. So update it.
> 
> Signed-off-by: Julien Grall <julien.grall@arm.com>
> ---
>   Documentation/arm64/cpu-feature-registers.rst | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/arm64/cpu-feature-registers.rst b/Documentation/arm64/cpu-feature-registers.rst
> index 2955287e9acc..ffcf4e2c71ef 100644
> --- a/Documentation/arm64/cpu-feature-registers.rst
> +++ b/Documentation/arm64/cpu-feature-registers.rst
> @@ -193,6 +193,10 @@ infrastructure:
>        +------------------------------+---------+---------+
>        | Name                         |  bits   | visible |
>        +------------------------------+---------+---------+
> +     | SB                           | [36-39] |    y    |
> +     +------------------------------+---------+---------+
> +     | FRINTTS                      | [32-35] |    y    |
> +     +------------------------------+---------+---------+

Will reported the bitfields were inconsistent (see [1]). Looking in more 
details, it seems that I messed up this patch when sending it (I honestly can't 
remember why I wrote like that :().

@Catalin, I saw you applied this patch to for-next/elf-hwcap-docs. Would you
mind to update the content of the patch? Or do you prefer a new version?

>        | GPI                          | [31-28] |    y    |
>        +------------------------------+---------+---------+
>        | GPA                          | [27-24] |    y    |
> 

Cheers,

[1] <20191029111517.GE11590@willie-the-truck>

-- 
Julien Grall

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
