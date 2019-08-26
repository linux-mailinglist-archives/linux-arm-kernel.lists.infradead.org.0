Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5920C9D3E0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 18:21:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u4JRb2OjViZeBtLR5MXjYNjJCaW3FY1QEBOGceUbh+U=; b=vAQX5NcGmTuueG
	jlRabtRBFRgs8EDfUe4T9qVS3fptjmvrXeHELklcuWPJYagcueeDIhUuLxR13EeYsKTk7ntJb5h1N
	Ke8a6fLnYVmYIsZN8L/d8pyMAZ3g9uHZoNUcJkyBC8aYO+naqTOA3T7h4jdFaUwttaMpoUwfnn7L2
	UU8cAx8Dh05eo3xEliPmTwZPBdH8A7vsgyHV7Ey100gnZmpxY7TdvdZdqKtgUndFb4wQNtXvTYrr5
	7aAdpSFocGkgWV6Epgp4ueAXLOHwPNq88FzJRQfR1K/odSlaGC0PrHUPr9PMUBhORZXIzW/vgdihO
	XV62VJdxjZfvk9yo0HZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Hk9-0004Jc-GF; Mon, 26 Aug 2019 16:21:21 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Hjh-0004GG-Oe
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 16:20:56 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 2F6C080AA;
 Mon, 26 Aug 2019 16:21:22 +0000 (UTC)
Date: Mon, 26 Aug 2019 09:20:50 -0700
From: Tony Lindgren <tony@atomide.com>
To: Markus Elfring <Markus.Elfring@web.de>
Subject: Re: [PATCH] ARM: OMAP2+: Delete an unnecessary kfree() call in
 omap_hsmmc_pdata_init()
Message-ID: <20190826162050.GX52127@atomide.com>
References: <69025c8c-8d84-6686-138b-cde59467b802@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <69025c8c-8d84-6686-138b-cde59467b802@web.de>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_092053_991256_87318EF1 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Paul Walmsley <paul@pwsan.com>, Balaji T K <balajitk@ti.com>,
 Kishore Kadiyala <kishore.kadiyala@ti.com>, kernel-janitors@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, LKML <linux-kernel@vger.kernel.org>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Benoit Cousson <b-cousson@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Markus Elfring <Markus.Elfring@web.de> [190826 06:31]:
> From: Markus Elfring <elfring@users.sourceforge.net>
> Date: Mon, 26 Aug 2019 15:05:31 +0200
> 
> A null pointer would be passed to a call of the function "kfree" directly
> after a call of the function "kzalloc" failed at one place.
> Remove this superfluous function call.
> 
> This issue was detected by using the Coccinelle software.

Applying into omap-for-v5.4/soc thanks.

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
