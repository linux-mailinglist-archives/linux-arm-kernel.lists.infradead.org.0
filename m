Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D10CFBC7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 16:00:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fkJC2fCMuowClnDv2iuebZt51wMXzvCemBo156l2wd0=; b=E3pJDkG5eQzlE8
	8wTkMzX+RGjOJiG6tWRcINvqZnbUa5DnNUWOHXS6nl7h9is7K2UzoFKcY5eQsTds4C14S6idSQ5K8
	HJQF30k0wQzvMdIKjCv3preg9XSE2FxugSFxnFK1j0pSk3Oes0AWPxa9anLHy+zli3flTkkjP/nX/
	IPtQHUaO4EPIc+vyaLWSBapgCP1MvLd8X9umoYiGy/UPTutsrA9IHfmFFR90NsLAqy/um2FIbpXkA
	X2+BHx5J3uHhKEYyfyLRm0WPaN16d/b97wNYEgxnnhxjrt6rQ6Y9nZJAQMbEPsjFSHUHm/QO8fZEd
	f6EVwkEc1DpQ9JrYI9dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHq2L-0000zs-8Y; Tue, 08 Oct 2019 14:00:25 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHq2C-0000Uw-FR
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 14:00:19 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id E219F8081;
 Tue,  8 Oct 2019 14:00:38 +0000 (UTC)
Date: Tue, 8 Oct 2019 07:00:02 -0700
From: Tony Lindgren <tony@atomide.com>
To: Tero Kristo <t-kristo@ti.com>
Subject: Re: [PATCHv8 0/9] soc: ti: add OMAP PRM driver (for reset)
Message-ID: <20191008140002.GY5610@atomide.com>
References: <20191008125544.20679-1-t-kristo@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191008125544.20679-1-t-kristo@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_070016_554793_93275D20 
X-CRM114-Status: UNSURE (   6.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-omap@vger.kernel.org,
 p.zabel@pengutronix.de, ssantosh@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Tero Kristo <t-kristo@ti.com> [191008 05:56]:
> Hi,
> 
> Hopefully this is the final revision of the series. Just a repost of v7
> with the single comment from Philipp fixed, and added reviewed by tags
> from him for couple of the patches.

Santosh, when applying these, can you please provide me an immutable
branch maybe against v5.4-rc1 that I can use as the base for the related
dts changes?

For the whole series where not already done, please feel free to add:

Reviewed-by: Tony Lindgren <tony@atomide.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
