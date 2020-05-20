Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C3C11DA6D6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 02:58:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HKdTq1gRoFVQYG+wQCOgJspzHbxKoi9mhpWM8wNKDes=; b=MWWPq949OVbPIV
	AxucOxgsVn3RYORsm1zF3ldy8aNH+fAnlzQjWITKSm3GTrPnLTp1omHFn5skyteaPh2YgfkcF62qq
	p2bNtjLrIbQCFtGgNTmL/bKY9zohDzH3ligM0WkmIif8EokL15krYy+GYG7z2vQ3AIeVpf9QsO/y1
	JPdWimld91s7/8PPNdxrr5tIA+Q5287hm4Hwy7Y9Kr6EqDXpnlakZISVdj8hsFfEsr95aJvNYp6Ne
	YYxkWEzTmU3FT1RJpMW+gYDdGyVu044tX3ii3hOXKvpMuDVQnpdu5cARVEWWlFveyZXdLYWcHgojp
	pYYeLXqt2VFCGeZzJi2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbD42-0001mj-GA; Wed, 20 May 2020 00:58:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbD3t-0001mQ-TA
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 00:58:22 +0000
Received: from dragon (unknown [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EFD2F20829;
 Wed, 20 May 2020 00:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589936301;
 bh=JFAzLoUGCzHOMInbH4xtjRClDechwwWtyWDMnoovEps=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xznOTVjJ9y1ycAETFC1LUVtRynCudOW1z8pOm6aXETYI2ICX33SkNKpgrYJ1LQ8uv
 uL4asWJdIk6WOfs+P0ynFwQexUWNueil69HFONlqHgnrDm0+78uKl1bxw2+iPJQdZ/
 V+WGKo0SRhpYcSu0VKjaqXniz6weQ5bXQEpZCjr4=
Date: Wed, 20 May 2020 08:58:10 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Yangbo Lu <yangbo.lu@nxp.com>
Subject: Re: [PATCH] arm64: dts: ls1043a-rdb: add compatible for board
Message-ID: <20200520005809.GB11739@dragon>
References: <20200430025646.16766-1-yangbo.lu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430025646.16766-1-yangbo.lu@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_175821_963726_BFA5E946 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org, Li Yang <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 10:56:46AM +0800, Yangbo Lu wrote:
> Add compatible for board to identify.
> 
> Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
