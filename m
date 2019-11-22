Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0813A107610
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 17:58:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wowlw4hfBlU/K4BLuCdyt22RkmwfWQ1wIWdEQe6uuYA=; b=B9To+TYT7Ffjyr
	9S+NaHbNcMIlTU3xmVSx4RbXlTB06nHFLP/s7M2zeFJMqX5vhekaS3zMckZdch5SzjM3zkW0WY9fU
	UtR1ndWtx8Ch2AGWSl0OUx8onhxou5j2jfNx1tEwM+8t2HGKAU9qT6Vtq+1xwe5NzY/2wr0/phevr
	peyMXkKtP6QCyI6cwE5ipT8Xv27lqOvpyFWMcQNcsNUPrWog4o4GE/bX6nJpYEjp5bvvyBj4lGWG/
	v0bZRj2KVKCCl1f2RwBjf/4HZ2S5cRp/AW9g0OJEC31TsMcXzaU36B8K2rrIJ4z7VD9jszzgOiC9C
	gwVcMPGAdxj5AioWBRvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYCFy-0001Yf-9A; Fri, 22 Nov 2019 16:58:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYCFp-0001YG-MS
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 16:57:58 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EF06D20672;
 Fri, 22 Nov 2019 16:57:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574441872;
 bh=QwDLroCzEbci20tlC8TsKYbUBwfotf+yaXXjDJCMt6o=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=WAHoqQZ6MvWNJIs39m0f82jTWTdLzRJ1u6w7++cAFvPwOtIRTMANdQy2eGUo5oiZC
 ic1YtxSfAfFqa0zXXTNhTF/+9howtiPjYt9BlWHhBmooNoFnprtIdGFNwd8spDKLs2
 RWT/DvjW10YbUezpmhChyrbWkdgyH9BIeC2FdA/Q=
MIME-Version: 1.0
In-Reply-To: <20191121100726.17725-1-ulf.hansson@linaro.org>
References: <20191121100726.17725-1-ulf.hansson@linaro.org>
Subject: Re: [PATCH] MAINTAINERS: Update section for Ux500 clock drivers
From: Stephen Boyd <sboyd@kernel.org>
To: Michael Turquette <mturquette@baylibre.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, linux-clk@vger.kernel.org
User-Agent: alot/0.8.1
Date: Fri, 22 Nov 2019 08:57:51 -0800
Message-Id: <20191122165751.EF06D20672@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_085757_754612_A0B893D7 
X-CRM114-Status: UNSURE (   7.06  )
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Ulf Hansson (2019-11-21 02:07:26)
> There's no longer any need host a tree solely to serve changes for the
> Ux500 clock driver, thus drop this from the corresponding section and use
> the common clk tree instead.
> 
> Moreover, let's also add the generic linux-clk mailing list and rename the
> section header.
> 
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
