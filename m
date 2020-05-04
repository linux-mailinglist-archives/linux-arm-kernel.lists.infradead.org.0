Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C789C1C4576
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 20:16:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i42gOt2SQM2N1g0EZGnW3MgC0Wef6LZz6FP/suQQri4=; b=kqIwVS/ktp/Zya
	TuaXgdT9tlBIhT8vQW5R4rRugqapdKV+t4LqXb1L+EAjcU3gan6N56iiZe8X/nBK7INia17IMejHL
	XIYrs0mc65wQvdS6UD8CJT+cbqrlY8EURVV4fTUBbm5CSQfPylVeeabMRZYd/1h/9ifybLXSZMfVa
	KOhbmh79rR8/6Qshv69UfY0GQB73bJPXADL0YH9P5axJ+RVxAWtpYa3qT5+bB4AFK/ReHTQ9tfHQf
	YCzR0UJz6CzWMf0/QcYSY30hHGfl4lGcyiOOQ/KaLgH3t1CM0OhaKO/u6ayHSvO28wMPTBH/owlEQ
	v0lf+fgaRHSbSfPtw4Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVfdj-0000G2-7K; Mon, 04 May 2020 18:16:27 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVfdd-0000FL-OR
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 18:16:22 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id ED9C611F5F61A;
 Mon,  4 May 2020 11:16:20 -0700 (PDT)
Date: Mon, 04 May 2020 11:16:20 -0700 (PDT)
Message-Id: <20200504.111620.1983042701063972335.davem@davemloft.net>
To: michael@walle.cc
Subject: Re: [PATCH RESEND net-next] net: dsa: felix: allow the device to
 be disabled
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200504165228.12787-1-michael@walle.cc>
References: <20200504165228.12787-1-michael@walle.cc>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 04 May 2020 11:16:21 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_111621_795846_F28F9049 
X-CRM114-Status: GOOD (  11.82  )
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
Cc: andrew@lunn.ch, f.fainelli@gmail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, claudiu.manoil@nxp.com, vladimir.oltean@nxp.com,
 shawnguo@kernel.org, vivien.didelot@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Michael Walle <michael@walle.cc>
Date: Mon,  4 May 2020 18:52:28 +0200

> If there is no specific configuration of the felix switch in the device
> tree, but only the default configuration (ie. given by the SoCs dtsi
> file), the probe fails because no CPU port has been set. On the other
> hand you cannot set a default CPU port because that depends on the
> actual board using the switch.
> 
> [    2.701300] DSA: tree 0 has no CPU port
> [    2.705167] mscc_felix 0000:00:00.5: Failed to register DSA switch: -22
> [    2.711844] mscc_felix: probe of 0000:00:00.5 failed with error -22
> 
> Thus let the device tree disable this device entirely, like it is also
> done with the enetc driver of the same SoC.
> 
> Signed-off-by: Michael Walle <michael@walle.cc>

Applied, thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
