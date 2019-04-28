Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30424B5D6
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 12:40:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9YiTFwBXvl9zFSJc3RYudGML7gWJsJOwx2wScW34bh8=; b=ZaAvVmkc88FlND
	J+H8a8snULhnFUz+sCzeDKMFJokvwtRwvnsey0Bs/N4lfhg3wGechM/VmQ4Aun7LG4FTUXaEsybs0
	JjbkM69BmvRc4L6NFOVkkD3V/oIyNL03s/gWuK8RfInx34+U0izAuKU3WGs7DC0BTN7JxU5kWMstH
	4A1ER3qjWii3XdMpxmGFg6Yl/nqr46+RnTkUNatsFPx5vrck94T1PUWjrGlN+aAtFH1SS1ElxbLuH
	LKPbaGB37knZDch1pB6+NdDmRBAFSNPqF528lZ0LLqKD8m5UvHPDhUQ7e6ig4NG26iSixf0upqnEj
	AiPpX4w6Wi7VoxgsVvBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKhEQ-0004Ip-9l; Sun, 28 Apr 2019 10:40:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKhEJ-0004I6-IG; Sun, 28 Apr 2019 10:40:21 +0000
Received: from p57b775bf.dip0.t-ipconnect.de ([87.183.117.191]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hKhE9-0005IF-Ax; Sun, 28 Apr 2019 12:40:09 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Markus Elfring <Markus.Elfring@web.de>
Subject: Re: [v3] ARM: rockchip: Fix a leaked reference by adding
 of_node_put() in two functions
Date: Sun, 28 Apr 2019 12:40:08 +0200
Message-ID: <2816348.laE8LpYbrI@phil>
In-Reply-To: <cee2ab03-d0b7-c9c6-acc3-d5aa28979e2b@web.de>
References: <1556262488-21072-1-git-send-email-wen.yang99@zte.com.cn>
 <cee2ab03-d0b7-c9c6-acc3-d5aa28979e2b@web.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_034019_755508_0587922E 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Yi Wang <wang.yi59@zte.com.cn>, Florian Fainelli <f.fainelli@gmail.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Wen Yang <wen.yang99@zte.com.cn>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Sonntag, 28. April 2019, 08:27:05 CEST schrieb Markus Elfring:
> >  arch/arm/mach-rockchip/platsmp.c | 12 ++++++++++--
> >  arch/arm/mach-rockchip/pm.c      |  2 ++
> 
> * Would a commit subject variant be nicer?

yeah, but I'll simply adjust that when applying.

> * I dare to present a reminder for a recurring development topic.
>   How do you think about to adjust the exception handling in these function
>   implementations a bit more according to the Linux coding style
>   (so that the addition of duplicate function calls would be avoided)?

I actually requested not doing wild gotos for of_node_put calls,
as it makes the code harder to read, especially when the "node"
gets reused for a different node-source.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
