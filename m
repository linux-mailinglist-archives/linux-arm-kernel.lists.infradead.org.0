Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1DCEEACE2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 10:51:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iZyoOHZBIRpS6UNQFBcQfwBzPymoy7Ygn4BtbgtpS7Q=; b=dtoyIqfXyt1xBS
	gAuGUtuGc2kAE18seo+Ovu900mT4nitvHPIWAme/0GCnmMCrG1L9tI0MkFA5mEF25CeZBisHDTUw1
	SrCIlIP7+p9AE57woPv/33gQ8etUGptqk9djcqdaAlYsk3nY7fsjMmVhRb0xRrcpkweaEnOZDCiQL
	BomTv0/JHrPJluMsoarY4K/RzWpi2h2N6aa3CuvDOO9bsuLszBY+hTnwuxFeKirl4/0E1Yd0lF9CQ
	FbZZdKavglXldnpJXdvwmYBIeNu1BpC8H2PLjxl+B4NaYLU57ygBjKoksryP0zvLGa6hDonHyooEB
	uvUtEJHEkeiuZWxN5mNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ77N-00052T-PN; Thu, 31 Oct 2019 09:51:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ77C-000527-Jh
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 09:51:40 +0000
Received: from localhost (lns-bzn-32-82-254-4-138.adsl.proxad.net
 [82.254.4.138])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7AF292086D;
 Thu, 31 Oct 2019 09:51:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572515498;
 bh=EBq3RU5D0YquRdZnknO4EAQ5B1wcu4KvtBhrbZq1/Lg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tPXFrhI+s4MOrEa4toxMkWxb6Qtf1u6r/MeGQeFqYFISb6DMbt7UG1ZQXowz+TaOU
 5jGhmMZp1jMa5/h6us1kUe/VyWdVh0cTUSL51O/wiTwbSAqlfQJrjWeOBz1l2GHY4/
 ygZUa8NAGPivshS+StO2xHlg1o3K2tau6FKA+yeA=
Date: Thu, 31 Oct 2019 10:51:03 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Ondrej Jirman <megous@megous.com>
Subject: Re: [PATCH v2] drm: sun4i: Add support for suspending the display
 driver
Message-ID: <20191031095103.jmuwbyr6eqa4kuru@hendrix>
References: <20191029112846.3604925-1-megous@megous.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029112846.3604925-1-megous@megous.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_025138_669703_6BD1FBB0 
X-CRM114-Status: UNSURE (   8.13  )
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
Cc: David Airlie <airlied@linux.ie>, Chen-Yu Tsai <wens@csie.org>,
 "open list:DRM DRIVERS FOR ALLWINNER A10"
 <dri-devel@lists.freedesktop.org>, open list <linux-kernel@vger.kernel.org>,
 linux-sunxi@googlegroups.com, Daniel Vetter <daniel@ffwll.ch>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 12:28:46PM +0100, Ondrej Jirman wrote:
> Shut down the display engine during suspend.
>
> Signed-off-by: Ondrej Jirman <megous@megous.com>

Applied, thanks

Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
