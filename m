Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6943911DC5C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 04:01:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YxaQJ9KRGLhcCZiuOWGVWJoKgETJt3waOGuPoagbgIk=; b=j8KxO3rXKkRx7g
	yg8694voUUIZpWineBEipcucQM6rIDjoa5J2TrnhMGLhfSfLtSfD2F8lYZQ7kSkeqEPl5B7cHYLJT
	EhIsBieJgA6IzUf5tyk32I5vKs2m3SDSzmEmV6mMviVVeHKSaKhsFi/jwXwTIIls6y+vnf8nhsCk+
	aA5NGqoB3C25Dl8EnGxkOGG5D08CKX7J15ZEIXbrEgnyBZO2KZK4TnH2atoLGrdrioD7lXKRCdy18
	nwUlwfvE5pQFTi6UIciSOWRU2KTu4t5EbMJSd71xxlYapbw1mKjh4SazqOmZaPQm1HLvLGo0FQd3M
	0K+vTRKMXcu4A0GbRKGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifbCP-0003vq-SC; Fri, 13 Dec 2019 03:01:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifbCF-0003vJ-T7
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 03:00:53 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7AD292253D;
 Fri, 13 Dec 2019 03:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576206051;
 bh=jE+LTMyoJh2M2a4nIMPu40B/WipswxFrLQnWV9tHD3Y=;
 h=In-Reply-To:References:Subject:To:From:Cc:Date:From;
 b=ImnwF3Xgr5UP21cuKpCbNWSth6vJ1jt85UsYSC84YPi3M2dOGGBPFkiNgGWfb1Lp0
 eNVXfbXMwbC6Owthq+AgCKyxz5aHdnDTH7qwJPedGrDdPzMJ3fnweT/Q1JhPaGh3MV
 +Tj5ATUg4MgFZiQepKqeGLWEllmE4neXFhyknSzs=
MIME-Version: 1.0
In-Reply-To: <20191212125447.GL15858@dragon>
References: <20191212125447.GL15858@dragon>
Subject: Re: [GIT PULL] i.MX clock fixes for 5.5
To: Shawn Guo <shawnguo@kernel.org>
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Thu, 12 Dec 2019 19:00:50 -0800
Message-Id: <20191213030051.7AD292253D@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_190051_959960_F7E59850 
X-CRM114-Status: UNSURE (   6.91  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Quoting Shawn Guo (2019-12-12 04:54:48)
> The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:
> 
>   Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-clk-fixes-5.5
> 
> for you to fetch changes up to c3a5fd15ed0c1494435e4e35fbee734ae46b5073:
> 
>   clk: imx: pll14xx: fix clk_pll14xx_wait_lock (2019-12-11 15:07:06 +0800)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-fixes.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
