Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB61160B9F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 08:32:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b6h3D+1Us34z5k8GfD39TMrrgfZbWg/szqUDqinc0X0=; b=i7yGvI/njDtrs5
	85fRm3+++Kdwq2ZeTgpHAeQ5mAq6Ael2fek8CotxzYOzQxILPUw3eBNgYNix7X0lzZ/agNbZQHeKk
	cMUJ4IvZ8kafS2uycRX1uSGORBft1yPe1Ys+tQ6ue/0UDNbUB+szFYHvM5ONQEA4eoWA5P1YlUsJH
	O/cbdw1mL93iDebE+lb8ZjGljOCG1+4/nPNf2ThpfWLJgsMnA1Z5MWkV+n95DD4DbkNwaP39Ok3N2
	ADTSGLf5pCvvU6ecgqCT+wBrkfQZ8M9iJ2m4uK2V3kRV4zuiK4S9mPyWJtFbv26bjo9NEkdqIyWX5
	tOdlyGjyA7mjoml61vgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3ast-00076p-Er; Mon, 17 Feb 2020 07:32:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3asj-00076J-CX
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 07:31:54 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B148F20702;
 Mon, 17 Feb 2020 07:31:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581924713;
 bh=1fLU4bpF5ge2mxDXA5uyg+zyID6wnutQys90jG2tVdg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jvmcvoA64BpUvrGNjy1t7QLL5WBibHOv1DPiciSJ/5LPgcs9KmjsT1Q2tKOqqahHk
 Si2KzD7OPhi1L9R1oO9DP1patXAKXQWhdk3O2idNOyxnkrXUKz3OwNYYC0A7o14W+L
 bloL4D/4jNxxap3QiDv+Ec2/vo6GvQa2hUXtmuGw=
Date: Mon, 17 Feb 2020 15:31:47 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 1/5] ARM: dts: imx6qdl: make kpp node name generic
Message-ID: <20200217073146.GG7973@dragon>
References: <1581646293-31096-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581646293-31096-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_233153_449740_82A7A6CF 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 14, 2020 at 10:11:29AM +0800, Anson Huang wrote:
> Node name should be generic, use "keypad" instead of "kpp" for kpp node.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied with squashing, thanks. 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
