Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 228E51CDD31
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 16:30:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UrEtxbyc6unlgzPRypjtP8goE/WXgVuH2KAwLq48GSA=; b=GgL4/5lBHY3b6K
	ppNCyGQq5JapPGysZX9KkkFksJH5A3251NoPASQeqktzNhK9eWhwSe5qE29n9zT1DLn+9v0VLDJXj
	hZ8EcawkMp10AFv6UiN86zhLL9BXwP+s6jQRijvs1vw73xh2LTN6IYw/SRQ4KHx0vhnXPS/YKt86c
	ut2GlW40EFtXjZCEKA64dK2wbIKvUjOYd5QCsp8BbQWm7VcoCdVsj+c5U7pinsYnXkr2mJp8bWKfM
	fvaCGmRcQ1kkECHJZRufShXd5VnMh2lI2PX56L/pxujMgT3dnrIql1Q0ylF4DBGqdsWEdM45xkBKl
	CwzRvVRvtPKGXQ3u1pmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY9RE-0001jE-5B; Mon, 11 May 2020 14:29:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY9R5-0001is-TE
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 14:29:41 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 06E8C206D6;
 Mon, 11 May 2020 14:29:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589207379;
 bh=IiuDF+mmYlvq92MMyscTeA2Brp0Juu3RwrbvqlWvpic=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nCLpQO603HEwcbPxEVy/6e92zLYF7oQFEemtokhcGJliQ6Rmr61hG/vx2x7TtB6wt
 8gUrHr4CMEV8Q6JXjxzOvASzGmz9kBv0lVZn7kVbYLtduXWUTLwQN9isEJpzEfVQCN
 GEpWNxKEK/UP3s0K/6dIGKvcefqMXn3Xfv4qi7Vo=
Date: Mon, 11 May 2020 22:29:27 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Yuantian Tang <andy.tang@nxp.com>
Subject: Re: [PATCH] arm64: dts: lx2160a: add more thermal zone support
Message-ID: <20200511142926.GB26997@dragon>
References: <20200417061618.48032-1-andy.tang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200417061618.48032-1-andy.tang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_072939_960226_1436183C 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 17, 2020 at 02:16:18PM +0800, Yuantian Tang wrote:
> There are 7 thermal zones in lx2160a soc. Add the
> rest thermal zone node to enable them.
> Also correct one of the values for tmu-calibration property.
> 
> Signed-off-by: Yuantian Tang <andy.tang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
