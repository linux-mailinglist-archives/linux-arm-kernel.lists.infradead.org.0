Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F73191D6C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 00:22:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ELM0MaV839Py+krUFDTBw86Sv6xwqEWh3cR4Sl0cjbM=; b=a5P2b2ZecRKtFF
	U77KfPBbNC/EYCXZ8Ac4nB3OiekDFnRefaDVDe9YUr2UlWE6GmIndz9BxCIT6vaLFvtv0cgLguamU
	JUjwnawPSTDQEnqMQcC6FNOi7vo92HPaTlL1IRAN5K8JTHs981UlSLhspkiMYzfFwpi+u+xeBeL1i
	g2e/sOkqPsYJYSjGJzD54jqKJgsDeRJPg3fP/TZwQMKt3PDRM6mwOrgw4xuCOBHF/1NywsZrzFuqh
	SL1xtAut/Edb8iEa4O/Zp/leHXBKr1alSlfrcXgvQucsk2ICQh+w9S1M1m3Dg/faHQxYlYHTU7333
	sgv/olvzReLzR8KuL8VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGsru-0001zZ-OV; Tue, 24 Mar 2020 23:21:58 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGsrm-0001xx-G9
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 23:21:51 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 570F8159F4ACF;
 Tue, 24 Mar 2020 16:21:43 -0700 (PDT)
Date: Tue, 24 Mar 2020 16:21:42 -0700 (PDT)
Message-Id: <20200324.162142.1804299203675616599.davem@davemloft.net>
To: zhengdejin5@gmail.com
Subject: Re: [PATCH net-next] net: phy: mdio-mux-bcm-iproc: use
 readl_poll_timeout() to simplify code
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200324112647.27237-1-zhengdejin5@gmail.com>
References: <20200324112647.27237-1-zhengdejin5@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 24 Mar 2020 16:21:43 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_162150_540020_6D56A327 
X-CRM114-Status: UNSURE (   5.55  )
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
Cc: andrew@lunn.ch, f.fainelli@gmail.com, sbranden@broadcom.com,
 rjui@broadcom.com, linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dejin Zheng <zhengdejin5@gmail.com>
Date: Tue, 24 Mar 2020 19:26:47 +0800

> use readl_poll_timeout() to replace the poll codes for simplify
> iproc_mdio_wait_for_idle() function
> 
> Signed-off-by: Dejin Zheng <zhengdejin5@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
