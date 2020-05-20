Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4427E1DA70C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 03:16:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YHJDziPY9m+Y6FgweX0pMOJizzdjW6FUWQXBbUJd6JQ=; b=m//PwVgJz8MVrK
	CQLSv7hIHO8Hw3yDYXCsP+SbU33Y5PeuqDQRSi0fZm1uE8zoeLS2juvdrxKogthdodDWrLmn7gd7Y
	vDDSC2H/W8MLwKLkDWiUSLK2PB/h3pehE0DWcKLBfOsK2cpH6qFPcbOyXY2+dmH5qHE67Fz6Xbohk
	fz+qOD5drcKOC5wO9TVJPsH0p5P9q5NxPE4rSe0C2rfthvuKwZqNAg9PjhqUSv8UE7Y0BolM1A15A
	M5t7D0VqeNZiIGNjck7W/zYmnzkT117coQFm44agQFCdtj2+/IEdrguYpfvYYpFVNk/+n5lanKlW5
	RhaVbQCmgO3qX8+6fvmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbDL5-00062r-2Y; Wed, 20 May 2020 01:16:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbDKx-00062Z-Cn
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 01:16:00 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 74DC420708;
 Wed, 20 May 2020 01:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589937359;
 bh=TwPwgTYvTEYaQWEjnZhfryxbLYyPyfXaMLzE2omlkKU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=G7Ut8+wNuQRERggPEgOf4c+nmjtd6XoYxyF/Brh3lBf86yb8TVVysUT2Uiq2ZNAV9
 430dMJbypg6RO/AEvQmoZczVLpts9azdxt+u1MWWrxdgeCemkKdoLaAU6+KhEhzBHz
 80AMgAgd2p1qGs/gRfNHaULWsNv9ahOchefScL4U=
Date: Wed, 20 May 2020 09:15:54 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Wei Yongjun <weiyongjun1@huawei.com>
Subject: Re: [PATCH -next] firmware: imx: scu: Fix possible memory leak in
 imx_scu_probe()
Message-ID: <20200520011545.GI11739@dragon>
References: <20200506051410.27219-1-weiyongjun1@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506051410.27219-1-weiyongjun1@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_181559_453777_83921EC4 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 05:14:10AM +0000, Wei Yongjun wrote:
> 'chan_name' is malloced in imx_scu_probe() and should be freed
> before leaving from the error handling cases, otherwise it will
> cause memory leak.
> 
> Fixes: edbee095fafb ("firmware: imx: add SCU firmware driver support")
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
