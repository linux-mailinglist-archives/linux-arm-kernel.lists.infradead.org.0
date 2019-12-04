Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5741130CF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 18:30:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zjMajTW9+JiZiUbRbZmmlKPlOYLUcW2lE+UObXF2T/s=; b=K5M6sqE+ucdLYe
	GkJB5LlOFO4BZpja24zWanyzdxWhkuCQFsErB7GVssyFeRYrqjc/r7/1SxssQJLy+XavJHgMQQRmS
	CxEI51EwwAsO8MBka3magoy5FEAktvq5cZmb5zxMO8Uge8kEzCgdHN2GyTmi4H5ywoDfp0/bWShXD
	8Q+8bIKPpJGyH7SoTer86vg8yRb2JW97ExiSpUqNxBMHGQCO8mNUDk5ooVhTxoQDdCXG3/OKrvEwj
	9dizDejrkXNkatChEZRw0ZFnZKYlNC9rzvWqaMllVrrlrDNF+BfsOYVe0E+AdzTs6M3uWITr6mb1T
	WXIhOPb2yCFIQwtmiNhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icYTj-0000DK-3H; Wed, 04 Dec 2019 17:30:19 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icYTc-0000CS-QE
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 17:30:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lAsG+T4/3QI7MFHFX6DTkoBl6UOaIUr3qpKXn/UuyzU=; b=v9Bfxxq7/fD63NH2anKtkms+QE
 zT1nIfBwxeIHbzjfzDHTmQj/mjqQEYJ/mln0h91fRLQ+1WxljHQFNOCM891gV2GacAz/+CjE4n4PS
 RvFqkVPlKlU3g4f93Q4jpgxqLBU6lrLT9v8h7a5+VdBFr9fNZeSckZOK1mbt+K4/oQJs=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1icYTY-0003Dk-D6; Wed, 04 Dec 2019 18:30:08 +0100
Date: Wed, 4 Dec 2019 18:30:08 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Mian Yousaf Kaukab <ykaukab@suse.de>
Subject: Re: [PATCH v1] net: thunderx: start phy before starting
 autonegotiation
Message-ID: <20191204173008.GG21904@lunn.ch>
References: <20191204172351.29709-1-ykaukab@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191204172351.29709-1-ykaukab@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_093012_861244_ECE8FAAB 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Wed, Dec 04, 2019 at 06:23:51PM +0100, Mian Yousaf Kaukab wrote:
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
> Signed-off-by: Mian Yousaf Kaukab <ykaukab@suse.de>
> ---
> v1: 

This should really be v2.

You should add fixes: tag

And the subject line should indicate which tree this is for:

[PATCH v2 net] net: thunderx: start phy before starting autonegotiation

https://www.kernel.org/doc/html/latest/networking/netdev-FAQ.html

       Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
