Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF93A7A08
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 06:37:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YNYXYLvbl/J6DXleNLApqYzuHo9ygB3AShp5H1ZtWmU=; b=LduBg0XPn7G/uV
	CLYXOUCc0YyefyFKb4OcChsCnUYOPTqG458gmubznnd5LxkASQa/NtcwmI+Uz5b9ezNony465IS/a
	1Gau92c4h+7CYzT/6ZoyVv/D+iK3/0CVIpAkfmHkVWH3OQjRXyYyAUIdNEN8H94eJl8mGlMmoQvAp
	E7y7AbmGHYAZpsf0PJY2sluMyjcShirH9iOi+qebx9bR77ek4GbZRjFRENVOmZO9MBCh0ZyFieoZh
	P/rgrmFtBGH+ylomNOMlppGcAdWZp797SdknLG8wneG9ao8ntmJL06zTESTKEbNld3bcz4P/uUR1U
	/Up7cCL459kJ6b38wY3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5N3K-0000ux-Oe; Wed, 04 Sep 2019 04:37:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5N38-0000ua-EU
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 04:37:43 +0000
Received: from localhost (unknown [122.182.201.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8313722CED;
 Wed,  4 Sep 2019 04:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567571861;
 bh=Y3SgjdI4eTUWwvUoaem0J4TTnC5iUZrRH8WOPdvvpp0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xFePtaN1wIDo7sT4SSHslCc3QyfQEQHite+Op3AxxXVaQ9cOP4qqukb6X/Fl9BJ8k
 pIAkYF3DY7/cxjbwipby6+PBht2SRSlcsZmrnYwF6vGtYjeiACg7l9DOMvDYU0J3Nz
 8Po2Dxu7SeCnYR1mKQfh60NzL8YgFWpRuZCewYzQ=
Date: Wed, 4 Sep 2019 10:06:31 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH] dmaengine: ti: edma: Remove 'Assignment in if condition'
Message-ID: <20190904043631.GS2672@vkoul-mobl>
References: <20190730132006.2790-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730132006.2790-1-peter.ujfalusi@ti.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_213742_507232_B57EA97C 
X-CRM114-Status: UNSURE (   6.64  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30-07-19, 16:20, Peter Ujfalusi wrote:
> While the compiler does not have problem with how it is implemented,
> checkpatch does give en ERROR for this arrangement.

Applied, thanks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
