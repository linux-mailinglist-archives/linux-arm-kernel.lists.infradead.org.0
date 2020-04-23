Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E8FD1B6743
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 00:54:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=72YeQskfOd58PQl2cRxaouIznYaAcxc4e+cyOVwS3s8=; b=pAZUYEwdVDGpD8
	gG4xscQmg0cga7Zr/swEC8Xn8O3HTRkgJzzwmVxW2DiuNy10ilwQj7xXvu0gdW+eM60IakaHekpYY
	giSOJicSGiDttV3Ti7jvfH8bwIIeBbQz+I5flOujHQ+kxjqVKDGtUmkix1z7MspsXjMnPHhv/i+pP
	ZIGe1V2fPqwu4v4m8ZdxLsc+nUiDsV5f9tHxQo0CobqGBsbeBst7V/tTjd/ewmnJ/jOiBxG+N9TjE
	oKcONgb8P4jnxummeTBYXIXURWXd/tQSP8Jd/ugf2TfiHOSxmQ9xo5LiWFZQI5PPqosCz1X+AM4Xc
	KyvwSUuE0WyO1Vg6pt/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRkj2-0006uG-Kq; Thu, 23 Apr 2020 22:53:44 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRkiv-0006tS-BS
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 22:53:38 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id CFC0C127E67A7;
 Thu, 23 Apr 2020 15:53:29 -0700 (PDT)
Date: Thu, 23 Apr 2020 15:53:29 -0700 (PDT)
Message-Id: <20200423.155329.1710757370582804428.davem@davemloft.net>
To: vee.khee.wong@intel.com
Subject: Re: [PATCH net-next 1/1] net: stmmac: Add option for VLAN filter
 fail queue enable
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200423070026.26200-1-vee.khee.wong@intel.com>
References: <20200423070026.26200-1-vee.khee.wong@intel.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 23 Apr 2020 15:53:30 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_155337_392079_F7C3280E 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: alexandre.torgue@st.com, weifeng.voon@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, joabreu@synopsys.com, mcoquelin.stm32@gmail.com,
 boon.leong.ong@intel.com, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Wong Vee Khee <vee.khee.wong@intel.com>
Date: Thu, 23 Apr 2020 15:00:26 +0800

> From: "Chuah, Kim Tatt" <kim.tatt.chuah@intel.com>
> 
> Add option in plat_stmmacenet_data struct to enable VLAN Filter Fail
> Queuing. This option allows packets that fail VLAN filter to be routed
> to a specific Rx queue when Receive All is also set.
> 
> When this option is enabled:
> - Enable VFFQ only when entering promiscuous mode, because Receive All
>   will pass up all rx packets that failed address filtering (similar to
>   promiscuous mode).
> - VLAN-promiscuous mode is never entered to allow rx packet to fail VLAN
>   filters and get routed to selected VFFQ Rx queue.
> 
> Reviewed-by: Voon Weifeng <weifeng.voon@intel.com>
> Reviewed-by: Ong Boon Leong <boon.leong.ong@intel.com>
> Signed-off-by: Chuah, Kim Tatt <kim.tatt.chuah@intel.com>
> Signed-off-by: Ong Boon Leong <boon.leong.ong@intel.com>

Why would you be setting this with a platform attribute?  Even if the
capability exists, wouldn't you want the user to be able to choose
to opt out?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
