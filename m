Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69BA01E396E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 08:41:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VwYKUEovPqaT6efC1K3p6cF+gzkJ54c0qWCsiZMtjs0=; b=BOlRA++X1VY+SK
	RHDnEyeVUZxXzgh8eunIXbBoL7NbI5t8Td3p6l/Q31bM7pCxkLWvHRHxpGRPBSUzoU4uWQIknCUtk
	h8Nk2XyIvfMEs4qDx6o3nh2/LdQ3RD3urqJA8ddBO8VI1rBWODrLzrdZEXdJjaEakosC7Z25Vd4kO
	9YbFEhaoX4laOVga/IpZrAUXOC1QOg4Kl6ZclVdCOGX9PdWs6VDmCrMzTcDLsqUvivHL75JzEvMnR
	wTotUpmX28xwzfytvcfdsDxP7fYJOrGhejs11B19Ex0aLYX9/emVFWQRCFqPwjfJVJBp5LnVfdJNU
	uy51FpmmdnWmIxu/DAXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdpkK-00063b-Ob; Wed, 27 May 2020 06:41:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdpk9-000630-La
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 06:40:50 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 45BA320776;
 Wed, 27 May 2020 06:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590561649;
 bh=EZwP7lM7uW8E9faXfL+mfjk8mEB24LowJAd2r0TjsKw=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=MH1cB4g5OtKBSVv3WSdi9m2jR9lhT/vmwZCONqPoMT3+Ce88BKvyOL+HVXmagezpm
 wulNTl8dERmfVgt2aShrusAVGKgfQJY5UV0BqzBeQ8QA6VaRpmL71LNJBqFY98GSwj
 4GQjpl2oUbMsjotc+GP51phe9+IIAHeGg6kdgfQc=
MIME-Version: 1.0
In-Reply-To: <20200526224116.63549-1-colin.king@canonical.com>
References: <20200526224116.63549-1-colin.king@canonical.com>
Subject: Re: [PATCH] clk: versatile: remove redundant assignment to pointer clk
From: Stephen Boyd <sboyd@kernel.org>
To: Colin King <colin.king@canonical.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Date: Tue, 26 May 2020 23:40:48 -0700
Message-ID: <159056164860.88029.7554351167857846969@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_234049_725246_B097C843 
X-CRM114-Status: UNSURE (   6.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Colin King (2020-05-26 15:41:16)
> From: Colin Ian King <colin.king@canonical.com>
> 
> The pointer clk is being initialized with a value that is never read
> and is being updated with a new value later on. The initialization
> is redundant and can be removed.
> 
> Addresses-Coverity: ("Unused value")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---

Applied to clk-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
