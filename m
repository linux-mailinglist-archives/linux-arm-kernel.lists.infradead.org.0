Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8C51F0CD6
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  7 Jun 2020 18:14:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WKSlGEteSMPqQESf9CDknEld2M3GI4cMgGxBHxw8yLE=; b=eyhCKcIEpC6P21
	4VCW/yXF2FZ8+CcuyCkNpbawiU/k+Rwc1Yp2JM6UJb6ZSqhhOLBhQyXqsoLKjFZcMdXb3YUAO2CDy
	ss3Ck2ZIlS61QPux5NGxvUwrgPbNNHcdVkeITzq+PLbuYOVaU01IG0Ls9qGbXGywpRrqyTtQNa8L+
	+0GdJJuJY4sAyAoqmc7E713D7G/S7H4lsXtS7A5I42cfLch/GVpPkgzs9RouWu02w12Z70lpv6ADQ
	A+F7QjxeNx1AaB11zTB1EknO2R9BsNFKAxZl56Mhfl0NGLfpddT1c4u/vnoRctAwxPYJ9QpoxJO79
	67M4TtPMD9rqsTq0WLrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhxvo-0002c5-RI; Sun, 07 Jun 2020 16:13:56 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhxvg-0002J7-Si
 for linux-arm-kernel@lists.infradead.org; Sun, 07 Jun 2020 16:13:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=njlruQYuAV0d21dmSUrYb6a5f5iQ0Xnz6igzcVOYFeY=; b=sCen6iQUxrv+B3NZP/uU3Z8u3
 1vWhrMKVqis6hCQ+QNKmV2K3mjA15DOW5Ao25BSqS5Rx5WjHVzx+C1cu0TmpFpgpMFPO5BByWsDRv
 fPlRzXYqnz3GZ6Wn+xCLDAi7faJzdrEIus4VmvX989nXY3nnMAQkg9bG7ZUe4lNvE2eU7WwwxuwT8
 TQOOhWBtl10+jvLCM4DqgT6qMZkdjGklrmv3baVitSRy7YElSiQ7+lu+BxirodBnOPqGyYWwV33uN
 +7x+gu+Kv+eHxhY5li99oodfEVfkS41PIkTOpwRB+pNyx/cA4n7Lthnzb1fiQFW6JMZ1/d1luoj2/
 BvWDLhxaw==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:40082)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jhxtQ-0006jA-0t; Sun, 07 Jun 2020 17:11:33 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jhxtE-0001Dc-K3; Sun, 07 Jun 2020 17:11:16 +0100
Date: Sun, 7 Jun 2020 17:11:16 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: afzal mohammed <afzal.mohd.ma@gmail.com>
Subject: Re: ARM: vmsplit 4g/4g
Message-ID: <20200607161116.GN1551@shell.armlinux.org.uk>
References: <CAK8P3a0=+aBJLTvHOskTv=tba_s5b5MzWrYG8mxH3iLNy4hfBw@mail.gmail.com>
 <20200512104758.GA12980@afzalpc>
 <CAK8P3a1DQWG1+ab2+vQ2XCAKYxPUjJk5g3W3094j-adDXSQfzQ@mail.gmail.com>
 <20200514111755.GA4997@afzalpc>
 <CAK8P3a2PNZY-9L9+SFDLtrp731ZGo6Nbs-7jY6E2PwWXa0kfKw@mail.gmail.com>
 <20200514133545.GA5020@afzalpc>
 <CAK8P3a1PVwkAi8ycUAB-7EMk4nQ_qOu0rC5vJAQk_q9j5xvOJw@mail.gmail.com>
 <20200516060624.GA6371@afzalpc>
 <CAK8P3a01FYoWY9sZKU1q=UQ3ut4srwXXUeGRzW6APi+GpoKo1w@mail.gmail.com>
 <20200607125932.GA4576@afzalpc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200607125932.GA4576@afzalpc>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_091348_934742_D1F136B2 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Arnd Bergmann <arnd@arndb.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jun 07, 2020 at 06:29:32PM +0530, afzal mohammed wrote:
> Hi,
> 
> On Sat, May 16, 2020 at 09:35:57AM +0200, Arnd Bergmann wrote:
> > On Sat, May 16, 2020 at 8:06 AM afzal mohammed <afzal.mohd.ma@gmail.com> wrote:
> 
> > > Okay, so the conclusion i take is,
> > > 1. VMSPLIT 4G/4G have to live alongside highmem
> > > 2. For user space copy, do pinning followed by kmap
> 
> > Right, though kmap_atomic() should be sufficient here
> > because it is always a short-lived mapping.
> 
> get_user_pages_fast() followed by kmap_atomic() & then memcpy() seems
> to work in principle for user copy.

Have you done any performance evaluation of the changes yet? I think
it would be a good idea to keep that in the picture. If there's any
significant regression, then that will need addressing.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 424kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
