Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A4D186402
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 04:59:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6l8snTTz47zNsr9ojPlCGWwFOhxmXUbW/I054bqjyCk=; b=gAIZ3HAmpBAgvM
	Q2kYnlqGa/DPlxVkKtTsqPWs+DoNTstdJZ9btwnkK230ob2UIhk3thejcRuA/yeSwS/EjF/4fBTui
	sr5qRXJ1rKrlfFrsjhM0BjYsU+9Yn8sof62brVy8wfMAfbsUYxAZlFL2AybmISZJK9LapXqyXk1oM
	C4K+NjALac7ZaK15+ZDKDzh0COqrzCAkqsZZ0OLILs4CRrW4HB3JvqdjbF6M5ugMpjLXpGiFJy6KQ
	U9sM0K3gg3ERfB82kvGeisWKND/+VZv8KTFHf1ukpQ9c1b9613Yop/PxNbQiF4H/RrkSExJdUeO6C
	Y51TjdYnIlbqax7RnNjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDgun-0001Pb-El; Mon, 16 Mar 2020 03:59:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDguf-0001Om-Hy
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 03:59:38 +0000
Received: from localhost (unknown [122.178.203.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0DE2920679;
 Mon, 16 Mar 2020 03:59:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584331176;
 bh=OwJofg1umza0zcGppaQzonY2py79O/Agzc6jYX0VXNM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rpgDkk+670A5qB2Q00do/ZWIQgTumAcfirYJqxkvV68VMr8ku79MxQwSVK7rdwa5L
 jyxNIvUMxG5GhgyWKfWCSg3kbxZqXvlx6foqWLX+o7My3S7tcJXTqsQTlm2cd2Ih7x
 2O2xuN8slIpyoBr6PdqN1UguFyJMSalSoQqcSohI=
Date: Mon, 16 Mar 2020 09:29:29 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH] arm64: defconfig: Enable Qualcomm SDM845 audio configs
Message-ID: <20200316035929.GS4885@vkoul-mobl>
References: <20200315050827.1575421-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200315050827.1575421-1-bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_205937_616802_CC07DE1D 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 linux-arm-msm@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14-03-20, 22:08, Bjorn Andersson wrote:
> Enable soundwire, slimbus frameworks, the machine driver and the codec
> drivers for WCD934x and WSA881x used on varios SDM845 based designs.

Thanks Bjorn, I was about to send this and you beat me. I have tested
this on RB3

Reviewed-by: Vinod Koul <vkoul@kernel.org>
Tested-by: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
