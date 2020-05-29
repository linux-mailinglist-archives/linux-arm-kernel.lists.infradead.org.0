Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 628FB1E859A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 19:47:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VhYfsGoWvvgpT2DCEXgMm0ylRmlFgkCSbKUNz4MAz+Y=; b=kZwPvxRwWfjkKe
	IeVkZ/plgeQqxU56J7joH45nmm2F+dUyCE4hRGNZ1n3KQRRYNTTiPne7+hwlL4wTwHxCzKGbDHQtB
	gLdNCvKX3JyB4582OeWQweTlFJbrZf+3lNJN9DHjfHucXZPZDNZ39bpYAewPwnnN50ELE7PAKcUCA
	nE/2/Bu6wOZQfGN9ZDL+YKx/c1HlOcMlzSSx3SMIjL6yzKAmQ1rJ8hiovou0dLiaIXPL8YtZnglRu
	/qabeQpAK9HlkR8FbgBoNCyg/uArjPbjoNwpAMZjrd0HgzRO9u/Ixjmx4AVYtzT4Vl95s3Vf8J9R5
	oJEHAbpyWZCSSZQI/C+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jej6S-0005Ds-4z; Fri, 29 May 2020 17:47:32 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jej6H-0005DF-HO
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 17:47:22 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id EC3128030;
 Fri, 29 May 2020 17:48:07 +0000 (UTC)
Date: Fri, 29 May 2020 10:47:14 -0700
From: Tony Lindgren <tony@atomide.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH 7/8] ARM: OMAP2: Switch to use DEVICE_ATTR_RO()
Message-ID: <20200529174714.GU37466@atomide.com>
References: <20200523170859.50003-1-sudeep.holla@arm.com>
 <20200523170859.50003-8-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200523170859.50003-8-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_104721_611449_615E0964 
X-CRM114-Status: UNSURE (   6.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-omap@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Sudeep Holla <sudeep.holla@arm.com> [200523 17:10]:
> Move device attributes to DEVICE_ATTR_RO() as that would make things
> a lot more "obvious" what is happening over the existing __ATTR usage.

Acked-by: Tony Lindgren <tony@atomide.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
