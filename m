Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 533017AE48
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 18:44:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=do93sRFhE+Awihhs5b4cwA3hbvCxBQVf3K3CPw89XFY=; b=pKVKp/waRFx+mg
	n8f6qZOC6KUilWChA+UkHGuCahRI1S2woMPpeSy1OYX/3YbCztTixj90zI1tFtdFHnij7l6K4K3OC
	N2WDKevwn0EVKt/L3ocodlkGVekOKboOgvEByK8/SDVf/6jmPCdRayt+I02qVXEHLGiigJulwXzVe
	OOC6O1H9ClZHW+c1sJkIRAx6jEwfGQxyJfd65dlFEMafGbaDTmVFyO18kYDYzULSm9Nibbt/5gN1u
	ZLP9WBKAGLXyYZWxvv4jmp++RzE9mMTJjlFmSLIu+jOOlzWHudvvrLTHeVVfGOi5Kt1ayB8BNr3Ci
	Frhc8EUrHQqK234cyNNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsVF9-0006wL-JP; Tue, 30 Jul 2019 16:44:55 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsVF0-0006w2-Iy
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 16:44:47 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id AE2DD1264D9A4;
 Tue, 30 Jul 2019 09:44:39 -0700 (PDT)
Date: Tue, 30 Jul 2019 09:44:36 -0700 (PDT)
Message-Id: <20190730.094436.855806617449032791.davem@davemloft.net>
To: claudiu.manoil@nxp.com
Subject: Re: [PATCH net-next v4 0/4] enetc: Add mdio bus driver for the
 PCIe MDIO endpoint
From: David Miller <davem@davemloft.net>
In-Reply-To: <1564479919-18835-1-git-send-email-claudiu.manoil@nxp.com>
References: <1564479919-18835-1-git-send-email-claudiu.manoil@nxp.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 30 Jul 2019 09:44:40 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_094446_626113_CAE34F8C 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: andrew@lunn.ch, devicetree@vger.kernel.org, netdev@vger.kernel.org,
 alexandru.marginean@nxp.com, linux-kernel@vger.kernel.org, leoyang.li@nxp.com,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Claudiu Manoil <claudiu.manoil@nxp.com>
Date: Tue, 30 Jul 2019 12:45:15 +0300

> First patch fixes a sparse issue and cleans up accessors to avoid
> casting to __iomem.
> Second patch just registers the PCIe endpoint device containing
> the MDIO registers as a standalone MDIO bus driver, to allow
> an alternative way to control the MDIO bus.  The same code used
> by the ENETC ports (eth controllers) to manage MDIO via local
> registers applies and is reused.
> 
> Bindings are provided for the new MDIO node, similarly to ENETC
> port nodes bindings.
> 
> Last patch enables the ENETC port 1 and its RGMII PHY on the
> LS1028A QDS board, where the MDIO muxing configuration relies
> on the MDIO support provided in the first patch.
 ...

Series applied, thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
