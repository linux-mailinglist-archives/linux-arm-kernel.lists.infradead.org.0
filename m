Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D042D156069
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 22:02:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q9jxbc61FxrAu6NuHuh4biK4UhVeO72QPuyTcYhiQIo=; b=V652Visb233Zbu
	qkNneQ3bBZH9eYWmvHxoB/ZGl2p7RpilAL+r7vN4V9smQXv7lBIoH9WJD+C0uHfobVM25uBY4WfWd
	agyy16rTVujqTwygxYkiSubs8wmO0ZGV/LzDkV3vXHWnFBmAHzP4U2neXVRehLch7Y41pNmfh2jTc
	kIGlTjEfVsFiE7CRZNWQwutxLlC52TF1AUiyEZgpxgXDXKnQcoqXycNrwG/0cRaFmWaACCf3ZdX7/
	mBozSYVbT+Enn9uJr+yV22kvP9aNeoqgKmmgZbkIj02lIS0Dw1vfXBO6wWcgpYNgbdFHxwyayHWEi
	/ecjhTOtj7Ia4SumktLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0Alc-0008KH-Tq; Fri, 07 Feb 2020 21:02:24 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0AlY-0008JY-8H
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 21:02:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kCPIBb7PRdtHNTGbHTeczBnKti7EH8CesgLtB7yonEM=; b=SPcJOp49GCMyk+QIC1kQEa9LB2
 xKp2Vy3Dayy9aWD9J01ng8CWjZ+jobdf6MqFo+/t1qNzS+ARIssCAsKhiUPC23Pf6M33EB55wbPax
 gZ5WeXHNXrwCZMXAtI05S1Vmbn7cY63rB0F7GaPASn4naCFieLmE9jl4y/Ur0iXBj7Fo=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1j0AlN-0005Q5-M8; Fri, 07 Feb 2020 22:02:09 +0100
Date: Fri, 7 Feb 2020 22:02:09 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Tim Harvey <tharvey@gateworks.com>
Subject: Re: [PATCH] net: thunderx: use proper interface type for RGMII
Message-ID: <20200207210209.GD19213@lunn.ch>
References: <1581108026-28170-1-git-send-email-tharvey@gateworks.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581108026-28170-1-git-send-email-tharvey@gateworks.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_130220_292498_6D446C94 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, rrichter@marvell.com,
 linux-arm-kernel@lists.infradead.org, davem@davemloft.net,
 sgoutham@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 07, 2020 at 12:40:26PM -0800, Tim Harvey wrote:
> The configuration of the OCTEONTX XCV_DLL_CTL register via
> xcv_init_hw() is such that the RGMII RX delay is bypassed
> leaving the RGMII TX delay enabled in the MAC:
> 
> 	/* Configure DLL - enable or bypass
> 	 * TX no bypass, RX bypass
> 	 */
> 	cfg = readq_relaxed(xcv->reg_base + XCV_DLL_CTL);
> 	cfg &= ~0xFF03;
> 	cfg |= CLKRX_BYP;
> 	writeq_relaxed(cfg, xcv->reg_base + XCV_DLL_CTL);
> 
> This would coorespond to a interface type of PHY_INTERFACE_MODE_RGMII_RXID
> and not PHY_INTERFACE_MODE_RGMII.
> 
> Fixing this allows RGMII PHY drivers to do the right thing (enable
> RX delay in the PHY) instead of erroneously enabling both delays in the
> PHY.

Hi Tim

This seems correct. But how has it worked in the past? Does this
suggest there is PHY driver out there which is doing the wrong thing
when passed PHY_INTERFACE_MODE_RGMII?

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
