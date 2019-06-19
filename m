Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 880C34AFFF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 04:27:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YZg8XaoUA7ACx6uUr4PmURW6l2Zk59nwxQfEhEMHTEE=; b=e5pNeibaJlVX+n
	psGt+0kWl8cwOWzwBUDXK60iNiHX0AqeAIbmuyV0DS7QOt0jKdBXJy36Uopz6RGBidrOa5h5LSEyE
	c3UQj1HeUhlM2+r4npX7ddApaGSqEVboJP+5NfPVel17HBSk9/oOthJ3PJy2mUhJ5oMtZM+Sp6rYn
	WGrWY9ZohFOxfkYZyM1uBd3Q3Wjb0D1q9fgk3pN1wMNNjOaEz/vYlfaOhDKfHJHpjOsgxmEGgrluf
	UemS4gXUij/sECe0qpJayotYENSGinxdILclihetT0nEdq2mKlLvfmccvFcvg7VVl2TO/o5JaFdjl
	R4JjJBbCFTDNpPhJnkKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdQJX-0001iF-2T; Wed, 19 Jun 2019 02:27:07 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdQJL-0001hW-V8
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 02:26:57 +0000
Received: from localhost (unknown [8.46.76.24])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 69CB614DB02AD;
 Tue, 18 Jun 2019 19:26:33 -0700 (PDT)
Date: Tue, 18 Jun 2019 22:26:24 -0400 (EDT)
Message-Id: <20190618.222624.192769316432594413.davem@davemloft.net>
To: maxime.chevallier@bootlin.com
Subject: Re: [PATCH net-next 0/4] net: mvpp2: cls: Allow steering based on
 vlan tag
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190618145519.27705-1-maxime.chevallier@bootlin.com>
References: <20190618145519.27705-1-maxime.chevallier@bootlin.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 18 Jun 2019 19:26:50 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_192656_011276_2466B41A 
X-CRM114-Status: GOOD (  10.36  )
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
Cc: antoine.tenart@bootlin.com, netdev@vger.kernel.org,
 gregory.clement@bootlin.com, linux-kernel@vger.kernel.org, nadavh@marvell.com,
 thomas.petazzoni@bootlin.com, miquel.raynal@bootlin.com, stefanc@marvell.com,
 mw@semihalf.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Chevallier <maxime.chevallier@bootlin.com>
Date: Tue, 18 Jun 2019 16:55:15 +0200

> The PPv2 classifier can perform flow steering based on keys extracted
> from the VLAN tag. This series adds support for using the vlan id and
> the vlan prio as keys, using the ethtool interface.
> 
> Patch 1 is a preparatory patch that prevent false-positive matches,
> using a dedicated lookup id for the RSS C2 lookup.
> 
> Patch 2 allows to separate the flows based on the header fields they
> contain. The main goal is to be able to separate tagged traffic from
> untagged traffic for flow steering, just as we already do for RSS.
> 
> Patch 3 solves an issue we have when extracting fields that aren't full
> bytes, such as the vlan tag which is 12 bits wide, or the priority which
> is 3 bits wide.
> 
> Finally, patch 4 adds support for steering based on both vlan id and
> priority, extracted from the outermost tag.

Series applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
