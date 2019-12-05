Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F2F11411F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 13:59:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0qatYYRmGLpEQmBU2aj/77q2pLK0fP1TEQQpvWzs2XU=; b=HOFpCvD1WkZGKy
	h9VI/+S7ix0hfRNO8k+Y2nVqv3qTvOeh/q2FEh4XqkVG8R5fyC+KX22eBXg34yk1Nh89oANWyqA3o
	/c98jn9BXL+c6/CLmxkciDmXjsOGtX1D1Yg3LYba0/1ondjsKG0C+xTaRkmrTRpHk4CGcwTr8F+oa
	5S8ZhajDeq/GRrzXBm5cdanpCkPJPNyiabTzG3hMeftMJV6kaESvUInEBBT56TjtBrjUHcKFN0xEH
	xLHag61n23meKxtl4KlHCGQ0i0PFEgy9J0gE2Ws76K+mAlZgTGJUpVzHe6Qc4mT+bOqyQ3jWxn6xu
	QCaKCwQDf6bRNPr6kJkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icqj0-0001hQ-F8; Thu, 05 Dec 2019 12:59:18 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icqis-0001gj-Pk
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 12:59:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/0aTrAYFDCdx3wtof9edhAMQ2FL2u0uO/LRSKah6g6c=; b=OQmnRFj/HL0ufNSTVpFIwkQTn5
 eHCSUAzOxu/tzYVrw0M3m2yw8wfi3m3/cNrUnAGMDjZQP8zx3/ebo8dMj6YLDIV7k1wOEWgXStnnW
 kE31rgT1+SdAUFe35ZryhR3Y2MLRKiprxeNWyaU+pacjxrZR6d4FwCsIIR+uDikppE3Y=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1icqim-0007PD-Pq; Thu, 05 Dec 2019 13:59:04 +0100
Date: Thu, 5 Dec 2019 13:59:04 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Mian Yousaf Kaukab <ykaukab@suse.de>
Subject: Re: [PATCH net v2] net: thunderx: start phy before starting
 autonegotiation
Message-ID: <20191205125904.GB28269@lunn.ch>
References: <20191205094116.4904-1-ykaukab@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191205094116.4904-1-ykaukab@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_045910_835992_5B77E531 
X-CRM114-Status: UNSURE (   6.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
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
Cc: rric@kernel.org, sergei.shtylyov@cogentembedded.com, netdev@vger.kernel.org,
 tharvey@gateworks.com, linux-kernel@vger.kernel.org, sgoutham@cavium.com,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 05, 2019 at 10:41:16AM +0100, Mian Yousaf Kaukab wrote:
> Since commit 2b3e88ea6528 ("net: phy: improve phy state checking")
> phy_start_aneg() expects phy state to be >= PHY_UP. Call phy_start()
> before calling phy_start_aneg() during probe so that autonegotiation
> is initiated.
> 
> As phy_start() takes care of calling phy_start_aneg(), drop the explicit
> call to phy_start_aneg().
> 
> Network fails without this patch on Octeon TX.
> 
> Fixes: 2b3e88ea6528 ("net: phy: improve phy state checking")
> Signed-off-by: Mian Yousaf Kaukab <ykaukab@suse.de>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
