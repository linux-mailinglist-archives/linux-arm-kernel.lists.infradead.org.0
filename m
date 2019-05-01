Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C09CE10CB6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 20:34:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qRtFWHlqgsBdp4dF2/JtVVjpMfSefeLEbi++yBQO4S8=; b=OkQDnGmuElCK1W
	drm2cn+U+sq9dTGo5Db0eBi4O6fuVt+SgWPS2ZkWuaXV9JV3kiqzabpkY1yomxzNNllZ6BfOEJBc9
	UlirBRHpM2pAigIgRJB5mN36Y8NFb3uGoIcZ4etGl8rwrxeUIU+iE40qq6RcNcL0GlUTPxeO6sfVy
	MAnRwbex8e4GORwexky29bsgWEsuxK2a9yYBkrYwFSHERq8u6hHO+WZvJxV0aWZ7RtmVTwDKyN+3M
	jEWShAxAxRCwChnpsuSYImBg6By9yuzEHlqt/Qly0d0HFXWNHinxjvLRCKpp5i6xgSSSLk1NEGt+t
	/7FV8wI09mRy602EdfdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLu3N-0001Pn-FC; Wed, 01 May 2019 18:34:01 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLu3I-0001PR-7u
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 18:33:57 +0000
Received: from localhost (adsl-173-228-226-134.prtc.net [173.228.226.134])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 00B4A126474C3;
 Wed,  1 May 2019 11:33:51 -0700 (PDT)
Date: Wed, 01 May 2019 14:33:50 -0400 (EDT)
Message-Id: <20190501.143350.1670159610613632442.davem@davemloft.net>
To: esben@geanix.com
Subject: Re: [PATCH v3 00/12] net: ll_temac: x86_64 support
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190430071759.2481-1-esben@geanix.com>
References: <20190429083422.4356-1-esben@geanix.com>
 <20190430071759.2481-1-esben@geanix.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 01 May 2019 11:33:53 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_113356_285439_4B4A044B 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: netdev@vger.kernel.org, yuehaibing@huawei.com, michal.simek@xilinx.com,
 linux-kernel@vger.kernel.org, yang.wei9@zte.com.cn, mcgrof@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Esben Haabendal <esben@geanix.com>
Date: Tue, 30 Apr 2019 09:17:47 +0200

> This patch series adds support for use of ll_temac driver with
> platform_data configuration and fixes endianess and 64-bit problems so
> that it can be used on x86_64 platform.
> 
> A few bugfixes are also included.

Series applied to net-next.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
