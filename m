Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 665D21C0CB5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 05:40:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0dFsSINxnV9p3/wLSpDvop8/ooc2oERAeLCllMrMl38=; b=UMdi84mfck8FiF
	X14SD31lpnRnrxa5aZgeyVMooPI6bF88qjmMJMZG/nDiHgKhPUUStIAeRuUMGpsV62cQfWqLCSyWU
	IcMofrqGwTLKg4Mt9Q/WhlqQqMDya0ZhtDLBxmwvageDMaSsj9vifzydNEfVg1Vy75eYnNGYVEZSb
	cU3JIyoTUifVGgDNb9TT1PawJyGCZS9uZhSNG6H1CreTtSGCuv6uE/ajobGd+PnTP+kf/dPTkxj6C
	3EcRZ64xoFPZ/kyfj+F2w64OpFD40r3j/seQvFUh2NcJVfQ9KsFEhM+3YMpEzcNYUTs4aChMnnqrv
	SwP8R+CaSfNznMGVG1/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUMWn-0001m9-Ry; Fri, 01 May 2020 03:39:53 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUMWf-0001lR-V7
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 03:39:47 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 35BDC1277445C;
 Thu, 30 Apr 2020 20:39:45 -0700 (PDT)
Date: Thu, 30 Apr 2020 20:39:44 -0700 (PDT)
Message-Id: <20200430.203944.1500164412783078570.davem@davemloft.net>
To: weiyongjun1@huawei.com
Subject: Re: [PATCH net-next] net: ll_temac: Fix return value check in
 temac_probe()
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200427094052.181554-1-weiyongjun1@huawei.com>
References: <20200427094052.181554-1-weiyongjun1@huawei.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 30 Apr 2020 20:39:45 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_203946_001488_EB459897 
X-CRM114-Status: UNSURE (   6.89  )
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
Cc: andrew@lunn.ch, netdev@vger.kernel.org, esben@geanix.com,
 kernel-janitors@vger.kernel.org, michal.simek@xilinx.com, ynezz@true.cz,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Wei Yongjun <weiyongjun1@huawei.com>
Date: Mon, 27 Apr 2020 09:40:52 +0000

> In case of error, the function devm_ioremap() returns NULL pointer
> not ERR_PTR(). The IS_ERR() test in the return value check should
> be replaced with NULL test.
> 
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>

Applied, thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
