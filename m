Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67EF3135B78
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 15:35:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RYxuS/gN/KLknCA4leKTR7PI3uZmNCzi4oaIa7rjkz0=; b=hyzQLAmQJbDLG/N9T7CNFeNTU
	hLs+ZgcX0hkAcb7fRvEATo8D4aE3GHD9+IfJ72mnqXrmnDTcsPkSWn4GySYt38zBb+ePc26LS1Ul6
	MDEK6Y7xqyLDqw+XPK98qnxWuUg2908cAVNrVC1w+gX6Y1DfSUQAk8Da4dhSppYpgjyTVvO7UWP/l
	bgg4kkWYnME/nz+jnFPbXtyXaXMZpB4btKJYkldWlCQDaFStgOwslR4uLS9aNCGAne+X/jLINm04z
	HxRixzfsgFBSNg0Ivdj+lDO+rX4lLcBfT7jAWEqxCKQxJGDHmxFfEvzBTOK7G6nio7195+NDtxQTd
	s1r3JsYKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipYuZ-00045i-5g; Thu, 09 Jan 2020 14:35:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipYuR-000459-Tl
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 14:35:41 +0000
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0715B2077B;
 Thu,  9 Jan 2020 14:35:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578580539;
 bh=6WcORVtf3DjfJCucb8ciuJeOMemSw+59Xl2wf5Zg4As=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JLcoFRE0CEI7rPiUjb8T/kz3hk2H769jyw7uuBhU49RmZ4zEs9p46DqAOS5b2bRy9
 6VyNrlThT3o75JaweEKKKaEBq8ZmQE4NHf9JZluGVF82sah/LMOlJ9OcGJhyd1Bfzg
 2MMAGgxQME80cfdAM2ugWu8VvdVlTa1nwwTEC49M=
Date: Thu, 9 Jan 2020 09:35:37 -0500
From: Sasha Levin <sashal@kernel.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [stable] [PATCH 1/2] coresight: etb10: Do not call
 smp_processor_id from preemptible
Message-ID: <20200109143537.GE1706@sasha-vm>
References: <20200108110541.318672-1-suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200108110541.318672-1-suzuki.poulose@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_063539_979153_7E280829 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mathieu.poirier@linaro.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, stable@vger.kernel.org,
 gregkh@linuxfoundation.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 08, 2020 at 11:05:40AM +0000, Suzuki K Poulose wrote:
>[ Upstream commit 730766bae3280a25d40ea76a53dc6342e84e6513 ]
>
>During a perf session we try to allocate buffers on the "node" associated
>with the CPU the event is bound to. If it is not bound to a CPU, we
>use the current CPU node, using smp_processor_id(). However this is unsafe
>in a pre-emptible context and could generate the splats as below :
>
> BUG: using smp_processor_id() in preemptible [00000000] code: perf/2544
>
>Use NUMA_NO_NODE hint instead of using the current node for events
>not bound to CPUs.
>
>Fixes: 2997aa4063d97fdb39 ("coresight: etb10: implementing AUX API")
>Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
>Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
>Cc: stable <stable@vger.kernel.org> # v4.9 to v4.19
>Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
>Link: https://lore.kernel.org/r/20190620221237.3536-5-mathieu.poirier@linaro.org

I've queued this for 4.9-4.19. There was a simple conflict on 4.9 which
also had to be resolved.

-- 
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
