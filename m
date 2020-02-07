Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F41A15563A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 12:00:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EFzZTbfqLle48oilXYbeafGjH4GKpKkZAi6VkgS8dcA=; b=cgIPViKBMgU805
	KGIAB89KlKddafhpWASgfiS0eVKhceDV107NpimT9/AtaOogGt7HJcQ6V4xHOEmCBoKkIcCsylF3H
	LxaeK1EJghCgbkzIt2zNErKDF8/jciuH2MbkDsnKVjdJ/aOerNMmm60EGRNYF1jDNar+VHpjMeR4y
	WoUXXqw6NV56rnJ0J/q8DiJbOj6kS7CN/iO6goNDgOIhYin/YfAyi2FnleNYeccbk6UI9q0+HVmME
	3b9djswlA6Ih8xOIm/INGX0LJXKLnZFL7z9g6MjjFLWJKBd6I3tUdPkK3uwvRj4S3W2A0TltM75g0
	pYFy3BVWaX1L56KJYSMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j01Mt-00030z-8D; Fri, 07 Feb 2020 11:00:15 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j01Ml-0002Vs-Oz
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 11:00:09 +0000
Received: from localhost (unknown [IPv6:2001:982:756:1:57a7:3bfd:5e85:defb])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id F29FF1585ABDA;
 Fri,  7 Feb 2020 03:00:04 -0800 (PST)
Date: Fri, 07 Feb 2020 12:00:00 +0100 (CET)
Message-Id: <20200207.120000.2189785171336183347.davem@davemloft.net>
To: boon.leong.ong@intel.com
Subject: Re: [PATCH net v5 0/5] net: stmmac: general fixes for Ethernet
 functionality
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200207073105.9286-1-boon.leong.ong@intel.com>
References: <20200207073105.9286-1-boon.leong.ong@intel.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 07 Feb 2020 03:00:07 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_030007_834946_1CDDB51E 
X-CRM114-Status: UNSURE (   6.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Jose.Abreu@synopsys.com, alexandre.torgue@st.com, weifeng.voon@intel.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, tee.min.tan@intel.com, peppe.cavallaro@st.com,
 alexandru.ardelean@analog.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ong Boon Leong <boon.leong.ong@intel.com>
Date: Fri,  7 Feb 2020 15:31:05 +0800

> Thanks to all feedbacks from community so far.
> 
> We updated the patch-series to below:-
 ...

Series applied and queued up for -stable.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
