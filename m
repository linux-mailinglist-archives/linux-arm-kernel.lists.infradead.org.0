Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A14911B5298
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 04:36:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l1HYVgtR/9fmbhCf5UWO7NPDaSo1d96tGEI97j1GCi4=; b=Wh9FZ/+PBJBAaT
	ZjDVIa8/w1xTk/iz6SZuQDqvv+WWzmF/7cBUEdUAz2PHbgtmprzaHswMHmiXoGMGh9Jn6DmG3wJbM
	udKEoOF5UecSOxm1KKZhKwRLFV7yMl48wgsovJKg/9QhPEy46QtQcUNUd+jIXQFLzqdKzd2I91xrY
	jnJnGa0Yg+Xx5+XqU28YGbCOG/jjxNIHR+8QC03YGN42dKscQqfQDyZ62Tuzcd9aDn6MlO+A+w0YP
	cr3IHfnxll/mEAviQkVTMeBW/aTX38zGUXuJUPZ7nG0xieHN9xWsKnfvw0voF7OGkk/Be0uU/1/l8
	ECOf7U0zfUAecFoWMWHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRRiu-0000bI-U3; Thu, 23 Apr 2020 02:36:20 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRRio-0000aI-Jg
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 02:36:15 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 01EB9127AD5D6;
 Wed, 22 Apr 2020 19:36:02 -0700 (PDT)
Date: Wed, 22 Apr 2020 19:36:02 -0700 (PDT)
Message-Id: <20200422.193602.1338372363623853618.davem@davemloft.net>
To: vee.khee.wong@intel.com
Subject: Re: [PATCH net-next v2 1/1] net: stmmac: Add support for VLAN
 promiscuous mode
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200422033106.25745-1-vee.khee.wong@intel.com>
References: <20200422033106.25745-1-vee.khee.wong@intel.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 22 Apr 2020 19:36:03 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_193614_690105_8AFCEB7D 
X-CRM114-Status: UNSURE (   5.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: alexandre.torgue@st.com, weifeng.voon@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, joabreu@synopsys.com, mcoquelin.stm32@gmail.com,
 boon.leong.ong@intel.com, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Wong Vee Khee <vee.khee.wong@intel.com>
Date: Wed, 22 Apr 2020 11:31:06 +0800

> From: "Chuah, Kim Tatt" <kim.tatt.chuah@intel.com>
> 
> For dwmac4, enable VLAN promiscuity when MAC controller is requested to
> enter promiscuous mode.
> 
> Signed-off-by: Chuah, Kim Tatt <kim.tatt.chuah@intel.com>
> Signed-off-by: Ong Boon Leong <boon.leong.ong@intel.com>
> Signed-off-by: Tan, Tee Min <tee.min.tan@intel.com>
> Signed-off-by: Wong Vee Khee <vee.khee.wong@intel.com>

Applied, thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
