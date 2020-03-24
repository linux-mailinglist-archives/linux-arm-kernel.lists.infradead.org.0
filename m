Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B47B9190DEF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 13:48:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YcV2RTgPYSCjNpdLJQ4qahk22SOIiYxWTq0oQEbB8jQ=; b=OyIxrXyXkRnlkE
	EJ4mSURLgjvpE94pc2AEu2tgtcu3LkzEm5geyj6D+9hr4I16VmEkv8SYMImYfR2W5VSrX0DTdXmeu
	udScPYd4UijiePcmKMSpha/Fun356HEgkGWW2qTWIUTa7qgaNnz80ndtkEz3SWXYsTT85B/8cyeT7
	9Vrnf6Vs87z0jqCTWQvXpTsn7aipZndrVUMvUjenUBJPUp9nLlwJZh8I+ElRLiJ1lt99pl7jO8rlu
	wlyywZMhFVCyeVzXydO/jNKGUgba627BQf+m0JEc0AFJ5kdthHh0aIJEiHk/gp9FjtSFzL87KGZjk
	0uT6yAC90uso1pF2hdcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGiyf-00029b-O4; Tue, 24 Mar 2020 12:48:17 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGiyR-00023X-Mt
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 12:48:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=b0iBI1cc2tZNm5/8uDcBP6+/M1WQDfg4ylMZdebmF7w=; b=Oyy3r90z9xt3/YwskzsK2QPyII
 bYHCoCe6nX7gd5WNSJGrLTKKxwI6ZwS23FM/t9lc4mCSi9C9ENDDMn2M5ZYh1S6sMhJO8clPsvmM/
 Cbe7VQE3a/rLZ1Vp/1MwZNGKcNfsuGyodnddelVWX1vQO4oKlULYO8fCTyTI5EtOc7Qk=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jGiyJ-0001hK-Lx; Tue, 24 Mar 2020 13:47:55 +0100
Date: Tue, 24 Mar 2020 13:47:55 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Dejin Zheng <zhengdejin5@gmail.com>
Subject: Re: [PATCH net-next] net: phy: mdio-mux-bcm-iproc: use
 readl_poll_timeout() to simplify code
Message-ID: <20200324124755.GV3819@lunn.ch>
References: <20200324112647.27237-1-zhengdejin5@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324112647.27237-1-zhengdejin5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_054803_781221_727CCD0E 
X-CRM114-Status: UNSURE (   5.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: f.fainelli@gmail.com, sbranden@broadcom.com, rjui@broadcom.com,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, netdev@vger.kernel.org,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 24, 2020 at 07:26:47PM +0800, Dejin Zheng wrote:
> use readl_poll_timeout() to replace the poll codes for simplify
> iproc_mdio_wait_for_idle() function
> 
> Signed-off-by: Dejin Zheng <zhengdejin5@gmail.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
