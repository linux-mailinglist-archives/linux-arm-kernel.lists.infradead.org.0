Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD16EB134
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 14:29:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hH6G0IjSfQEPOD2bjKsFfnKdVgCSKpCs+o4glZv2km0=; b=Ngj8SwGvmy33iQ
	yPhr9emioSWYSk+dP1I19pZlktFhMYMtmDVTlgXyw4Z2QNRyjsq7iM27Hz/GLZSmxv0UyV480qsi6
	JZNkzyWGZXDXWfqtq9c0P9C5OfXF1f529A09R2o7wPnu2G0qeTApqHeprjvwo+5/eJGKPazTihzC1
	OAXGTCNniQKhaWkULHTWLpa+X9ZpnHkJNz7iU2DKpZpNzTAFL9oTwja89qKDhxkLVqe/vDCqgS5nu
	+moqcSCU5Ee52YniV35ZpZxUqnzXrxG+Fs0CMtK/B0oYqEYWJfBZCD0nlSNetIt3JlDlxYHBx0kha
	wQEhGVEx14RGh4hPGbyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQAW4-0000M3-Rf; Thu, 31 Oct 2019 13:29:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQAVr-0000Lg-Mi
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 13:29:21 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 34B5520862;
 Thu, 31 Oct 2019 13:29:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572528559;
 bh=CZwLCQC08Yd2rFJN0WaEwbxJ61oj5DVAAFsImEubPO4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=brqxESrJ8f9jGx5TG2+yTUCdTfm7FBHUPr4S/hC9c9wHbr1cLV+wpLNLgH7jusJPs
 9ttfVk4cbmaCG/yePe3MMuR2pXV3WfEJRQY9sOxPFxGpCYgGNAnJg9n2xwBOZjcewE
 vhqOlEG0CzOxG0LyOLbZi+JCViuZtYUkaO8zG3VU=
Date: Thu, 31 Oct 2019 13:29:15 +0000
From: Will Deacon <will@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>, jhugo@codeaurora.org
Subject: Re: [PATCH v2] arm64: cpufeature: Enable Qualcomm Falkor errata 1009
 for Kryo
Message-ID: <20191031132914.GD27196@willie-the-truck>
References: <20191029232738.1483923-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029232738.1483923-1-bjorn.andersson@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_062919_765160_A965B6AF 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[+Jeffrey]

On Tue, Oct 29, 2019 at 04:27:38PM -0700, Bjorn Andersson wrote:
> The Kryo cores share errata 1009 with Falkor, so add their model
> definitions and enable it for them as well.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
> 
> Changes since v1:
> - Use is_kryo_midr(), rather than listing each individual model.

Cheers, I've queued this up as a fix.

I also updated the E1009 entry in silicon-errata.rst but, in doing so, I
noticed that E1041 is listed there which apparently also affects
Kry^H^H^HHydra [1].

At which point, maybe we should rename both Kryo and Falkor in the tree
so that we consistently refer to Hydra as the underlying micro-architecture.
Obviously not something for 5.4, but it would sure help me to understand
what's doing on here.

Thoughts?

Will

[1] https://lore.kernel.org/kvmarm/20171115010505.GO11955@codeaurora.org/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
