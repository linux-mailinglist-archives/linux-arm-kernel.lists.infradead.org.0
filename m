Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC06B357B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 09:23:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D5la9ZCWjcCrXlJzLR2R3OZ2YBuglb2cOKCdk4VSy+4=; b=uohpOBoHmftDFm
	dEk4gytol1VogWzMTTDlENytnyV93sCuRRqiu5WnvLqb8vXJMAdfzCrj63bhDtWloaiCSaCMBYdea
	7rm0yUVjbtweVJTdVgYMFvpZDh+yPV78pfVcSUFDXFyrZw5tSTsRR8VYGKeZuIEUgRfOiGqFrS0kZ
	netdhaRToJVbl5NQwmSb/vHLAGf0UBko0oUbBBSh7wBnGtr7UVHBTV//XlHOxuC96MAg0U9ersGwd
	y5Z7q6q4W9DjpMk1Y6CbDch1PpLatSHDxWp3veWA1/QIH0Sa1SKIjkeDuleSZTuv0mHBzldWWk774
	M9IR+t8EFBBloDPTKg3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9lLr-0004eE-2b; Mon, 16 Sep 2019 07:23:11 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9lLa-0004dM-Dw
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 07:22:55 +0000
Received: from localhost (unknown [85.119.46.8])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id ED851152483C6;
 Mon, 16 Sep 2019 00:22:51 -0700 (PDT)
Date: Mon, 16 Sep 2019 09:22:44 +0200 (CEST)
Message-Id: <20190916.092244.764910996352099184.davem@davemloft.net>
To: alexandru.ardelean@analog.com
Subject: Re: [PATCH v3] net: stmmac: socfpga: re-use the `interface`
 parameter from platform data
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190916070400.18721-1-alexandru.ardelean@analog.com>
References: <20190916070400.18721-1-alexandru.ardelean@analog.com>
X-Mailer: Mew version 6.8 on Emacs 26.2
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 16 Sep 2019 00:22:54 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_002254_473355_F3F2D9BE 
X-CRM114-Status: UNSURE (   7.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.6 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [85.119.46.8 listed in zen.spamhaus.org]
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
Cc: alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, joabreu@synopsys.com, mcoquelin.stm32@gmail.com,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Alexandru Ardelean <alexandru.ardelean@analog.com>
Date: Mon, 16 Sep 2019 10:04:00 +0300

> The socfpga sub-driver defines an `interface` field in the `socfpga_dwmac`
> struct and parses it on init.
> 
> The shared `stmmac_probe_config_dt()` function also parses this from the
> device-tree and makes it available on the returned `plat_data` (which is
> the same data available via `netdev_priv()`).
> 
> All that's needed now is to dig that information out, via some
> `dev_get_drvdata()` && `netdev_priv()` calls and re-use it.
> 
> Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
