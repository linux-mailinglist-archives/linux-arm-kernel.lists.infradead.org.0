Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA4B17C7A7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 22:11:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uhG9JBXFcY4pbk9T2ws/z1RTRHQhbUMWav55M7F5Gjc=; b=dYjPx25xkKG3iD
	lyWM/U2N9/DgUy/mzBMt+pFrndXdvfqPm6BWgnLn/FhM7sXgG91YKjPF6BwxQdgKOZsayFdNZ4Ghj
	vJZIxYjIEp0FhBH1IO4Ro4B3/FeQb7nIcpErifnAw3RK+EhfG14vG4gkEvPj3BBugG/rsAo4ua9bO
	TUrat3FsGOdYWRWMULotsNuV4Wjgvj2jxrgnq7v+Q+1AY4M3vmtpFrtf24nni1Yjj/5FcjXhq4tbN
	lMl3uRMj6E6c5TaU0mtNVhetbiZw65NaYG/daeMscse0VKIfLuHblxxV8Le3lLGErbvVwsfmyXJ1W
	20gN1shYurLuP6wNSqRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAKFo-0004Mk-8Q; Fri, 06 Mar 2020 21:11:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAKFc-0004M6-Rc
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 21:11:22 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C66B7206E6;
 Fri,  6 Mar 2020 21:11:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583529079;
 bh=bgYLPO3G4nkJJB/f9GkSCw7YIcFIZOYJCiUNYzU9W74=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=r/eEneZLlM60N0gvDl4VyErBWHmHsv9+ZOlXCGRvNGCGugEV/xX3Xk6DUk4qdPTkt
 gpnRImb0MNxqIhu7NpqaEnxglWYRpm82DQrKHtlu2N320YGzataPZi6wd7Z10NOC/4
 vPUnDNog8IiW2HH1WQtmIsqr4KaNmQphjx+3vXXs=
MIME-Version: 1.0
In-Reply-To: <20200224121322.GI27688@dragon>
References: <20200224121322.GI27688@dragon>
Subject: Re: [GIT PULL] i.MX clock fixes for 5.6, round 2
From: Stephen Boyd <sboyd@kernel.org>
To: Shawn Guo <shawnguo@kernel.org>
Date: Fri, 06 Mar 2020 13:11:19 -0800
Message-ID: <158352907905.174340.14348638942004736998@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_131120_912487_59E23AD0 
X-CRM114-Status: UNSURE (   8.86  )
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
Cc: Stefan Agner <stefan@agner.ch>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Shawn Guo (2020-02-24 04:13:23)
> The following changes since commit 5eb40257047fb11085d582b7b9ccd0bffe900726:
> 
>   clk: imx8mn: Fix incorrect clock defines (2020-02-17 15:18:00 +0800)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-clk-fixes-5.6-2
> 
> for you to fetch changes up to 6fb9006abe37e44afaed4f2a5fd3a247a815bb8d:
> 
>   clk: imx8mp: Correct the enet_qos parent clock (2020-02-24 15:38:03 +0800)
> 
> ----------------------------------------------------------------
> i.MX clock fixes for 5.6, round 2:
> 
>  - A couple of fixes on i.MX8MP clock driver to correct HDMI_AXI and
>    ENET_QOS_ROOT parent clock.
>  - A couple of fixes on clk-scu driver to ensure that messages sent to
>    i.MX System Controller are 4 bytes aligned.
> 
> ----------------------------------------------------------------
> Anson Huang (1):
>       clk: imx8mp: Correct IMX8MP_CLK_HDMI_AXI clock parent
> 
> Fugang Duan (1):
>       clk: imx8mp: Correct the enet_qos parent clock
> 
> Leonard Crestez (2):
>       clk: imx: Align imx sc clock msg structs to 4
>       clk: imx: Align imx sc clock parent msg structs to 4

Can you resend without these last two? I don't know what's going on with
that thread.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
