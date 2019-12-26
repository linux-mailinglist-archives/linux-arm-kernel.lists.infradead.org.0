Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D311A12AEE2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 22:22:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ka6NV4rrY4m59NWnfpH6vg/ssfMLTil0HyZ7o2p4/4s=; b=WBgk4X/8IO7wSX
	X/7DihKeRG8iQiZ8GVzOYbh/PqGEy9rbUiOvKqC1ctFEuonEI5eiOeEiAQa8ElAWGJXoUJwb9t1Vw
	C/JiClOxwpGe0foytrPgLzXuZwSgZvHGAI9JKbNPNmhuNk271kSTBTCPOCVGyODqCySu1xKVIYF+V
	fuuH9BlaklxSQKD/KlHUZvH2zPzqe/nfVo2A24SRflY6odnZxXmdAtDGquG3l5MpHfvFMrn5My+Gn
	AJqORgjb4+BHkZcbh3skd9NzovOs6zbzhxLHLO/Z690pdvUxnMKOMxss3NM4Bl+2ZYo5ofg8fNhxL
	U2KVtdOMU2MJPPb9us5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikaau-0003MJ-I2; Thu, 26 Dec 2019 21:22:56 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikaag-0003L0-G7; Thu, 26 Dec 2019 21:22:44 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 927D91513DD33;
 Thu, 26 Dec 2019 13:22:36 -0800 (PST)
Date: Thu, 26 Dec 2019 13:22:35 -0800 (PST)
Message-Id: <20191226.132235.1870219915908299554.davem@davemloft.net>
To: martin.blumenstingl@googlemail.com
Subject: Re: [PATCH 0/2] RTL8211F: RGMII RX/TX delay configuration improvements
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191226185148.3764251-1-martin.blumenstingl@googlemail.com>
References: <20191226185148.3764251-1-martin.blumenstingl@googlemail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 26 Dec 2019 13:22:36 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_132242_536569_22AF581A 
X-CRM114-Status: UNSURE (   6.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: andrew@lunn.ch, f.fainelli@gmail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 26 Dec 2019 19:51:46 +0100

> In discussion with Andrew [0] we figured out that it would be best to
> make the RX delay of the RTL8211F PHY configurable (just like the TX
> delay is already configurable).
> 
> While here I took the opportunity to add some logging to the TX delay
> configuration as well.
 ...

Series applied to net-next, thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
