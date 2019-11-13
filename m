Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35E4AFA7CA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 05:07:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oWUqDDXhczB0vGPKy7ibDNH0svsKc8+S++sG3p7KYLE=; b=JZOSGoEL268l6j
	j+FCRkUUY8XtCXPa4D0rgR05zyBs9EKFmY2X2O8NT6Rm/wqbsQWX6jQbzURSC9hYlLCj3XcbabddN
	sgkbFvIAAXN+By4PHqb1SgIQ5aR7o/0g6vNv+i/EPPZUMtGQgCrQxxk6AVBT9rIVrgiUv+POV0BoO
	ZTaD1TX+CKNq8pYW+CosKJfmNu2fBuGtMIfZWJ8mYtB8YuprUlbJtY8p8b8nULvFSpIWxvDbUUg60
	HZ5HHQ62ccVndWHjXeVASUi/2DCHRfs92XBdql09Lk9SvGPvstcI4AYzfSBeTFcU6fAHis/eiyp2m
	86IknxvXXHltW2LRH5wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUjvi-0005RE-Af; Wed, 13 Nov 2019 04:06:54 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUjvZ-0005Qg-Mo
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 04:06:47 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id AF907155010EA;
 Tue, 12 Nov 2019 20:06:44 -0800 (PST)
Date: Tue, 12 Nov 2019 20:06:44 -0800 (PST)
Message-Id: <20191112.200644.1626534982196475617.davem@davemloft.net>
To: f.fainelli@gmail.com
Subject: Re: [PATCH V5 net-next 0/7] ARM: Enable GENET support for RPi 4
From: David Miller <davem@davemloft.net>
In-Reply-To: <a7ac4b21-822a-3170-29b6-85cfd80796a0@gmail.com>
References: <1573501766-21154-1-git-send-email-wahrenst@gmx.net>
 <20191112.193557.2087258530355949302.davem@davemloft.net>
 <a7ac4b21-822a-3170-29b6-85cfd80796a0@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 12 Nov 2019 20:06:45 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_200645_743225_68FA37D4 
X-CRM114-Status: UNSURE (   9.17  )
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 mbrugger@suse.com, netdev@vger.kernel.org, eric@anholt.net, robh+dt@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 matthias.bgg@kernel.org, opendmb@gmail.com, nsaenzjulienne@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Florian Fainelli <f.fainelli@gmail.com>
Date: Tue, 12 Nov 2019 19:56:36 -0800

> 
> 
> On 11/12/2019 7:35 PM, David Miller wrote:
>> From: Stefan Wahren <wahrenst@gmx.net>
>> Date: Mon, 11 Nov 2019 20:49:19 +0100
>> 
>>> Raspberry Pi 4 uses the broadcom genet chip in version five.
>>> This chip has a dma controller integrated. Up to now the maximal
>>> burst size was hard-coded to 0x10. But it turns out that Raspberry Pi 4
>>> does only work with the smaller maximal burst size of 0x8.
>>>
>>> Additionally the patch series has some IRQ retrieval improvements and
>>> adds support for a missing PHY mode.
>>>
>>> This series based on Matthias Brugger's V1 series [1].
>>>
>>> [1] - https://patchwork.kernel.org/cover/11186193/
>> 
>> What tree should this be applied to?  Patch #7 does not apply to net-next.
> 
> Do you mind taking 1-6 and I take patch 7 through the Broadcom ARM SoC tree?

Sure, I'll do that right now, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
