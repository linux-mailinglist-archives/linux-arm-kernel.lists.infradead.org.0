Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C28E91E3218
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 00:11:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q+rbYXlK2Er5cSPnQ0aSnaRpEeMMpzdD0OCQvRTr9A4=; b=Su3DMgGn7nGs+h
	aOrDYtZwA+mkbIvVI40uubDI3UcXGaG33FImng+O9YSSU0uv8Gi8468bhg8RweXwyHt6A01XaTctM
	XRyOkdXDG7dVDEKxs6jWnx3NBBHMzpskwi9j33bpIvdp8qq3w0DBAXkh1GtbUYWKOUgC5aBQ53RcY
	UJnJ54ZQ9uziEE5x/Glg9wg2TqABGTUvr7XhXQomBuKf7799/w9ytpfso3CdEIheM628CPe3mVQDg
	cIasbyKMLHGiMr8NSE6qRolYC83uLsaC20ykH6pxblsG/rGv8NXn68OM9EiiNqhmLEPXZ4l/pUKpt
	XgbaydLQqNnZSY3U44Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdhn1-00038i-Im; Tue, 26 May 2020 22:11:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdhmj-00031z-No
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 22:11:00 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1734C208DB;
 Tue, 26 May 2020 22:10:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590531056;
 bh=NDgMcgxsWGVfavPDRi4+CdwajNlmdkDz1MEFIu3Jjcg=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=e5T+88UU9jaKOrW4oo65l+OFDZ8BaiqtlFRLCIQjWXJTyZlQF++utSC7P9BnVZ3Hl
 4nJIDv8TBvhWpXVu3DzHvZy2BZQ+p2We/+cgiAABQ3W9dH0A/eVJYEjhfgJZqy8lN+
 dGdkucUM9fN/20jsxIfl7IcaZu7PEIUmAyjTBXGQ=
MIME-Version: 1.0
In-Reply-To: <20200523010732.GA9835@dragon>
References: <20200523010732.GA9835@dragon>
Subject: Re: [GIT PULL] i.MX clock updates for 5.8
From: Stephen Boyd <sboyd@kernel.org>
To: Shawn Guo <shawnguo@kernel.org>
Date: Tue, 26 May 2020 15:10:55 -0700
Message-ID: <159053105536.88029.7016095954634120650@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_151057_831018_B7FE86BD 
X-CRM114-Status: UNSURE (   7.37  )
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
Cc: Stefan Agner <stefan@agner.ch>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Shawn Guo (2020-05-22 18:07:33)
> The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:
> 
>   Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/clk-imx-5.8
> 
> for you to fetch changes up to b1657ad708f761f9ca6d166d4dda685ca39b1254:
> 
>   clk: imx: use imx8m_clk_hw_composite_bus for i.MX8M bus clk slice (2020-05-21 22:37:48 +0800)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
