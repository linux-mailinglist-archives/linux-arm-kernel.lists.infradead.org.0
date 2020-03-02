Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 013C5175200
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 04:02:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=efdZNATfDOBgoKPjZsQN1MHpFUBbdRo8YoyBnxPGJTk=; b=DYPlRUjNcmGJ7N
	brMhWAseDyVLrS4czUkRTJmtQOwgUyf3sD8vIn/6vphcDIIc6mAaitydIXJNYuYViGHkl9CZf/2L6
	5TD+FsCtm2OM3DhlngRlUH6uzZeJcXT/BnsZHFEkwbIMQlrtgb3LTDSdJJ0uM51Qkn8nDa+ddjHVo
	bXJluY9RmSq9Wemh2cZjWTmtE8QUVJlbgnizCuz/pwo59PKZ343NXF76UYFVFedwYPvtptM8CaVwN
	kkQsvpLWHsj5f79BbyPBRPuNPETsmGSWI2fo8dVQpWkvWBI8TPOWIyYrj+5xkKhCLBPpHkviVOdEr
	1wnICWBhYtVa3fqo+Zzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8bLt-0002LF-HL; Mon, 02 Mar 2020 03:02:41 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8bLk-0002Kk-SC
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 03:02:34 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id C659A13CCE158;
 Sun,  1 Mar 2020 19:02:23 -0800 (PST)
Date: Sun, 01 Mar 2020 19:02:21 -0800 (PST)
Message-Id: <20200301.190221.545987298420886023.davem@davemloft.net>
To: leon@kernel.org
Subject: Re: [PATCH net-next 00/23] Clean driver, module and FW versions
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200301144457.119795-1-leon@kernel.org>
References: <20200301144457.119795-1-leon@kernel.org>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 01 Mar 2020 19:02:25 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_190232_916356_37B15484 
X-CRM114-Status: UNSURE (   5.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: ajit.khaparde@broadcom.com, madalin.bucur@nxp.com, kda@linux-powerpc.org,
 prashant@broadcom.com, _govind@gmx.com, somnath.kotur@broadcom.com,
 vishal@chelsio.com, GR-everest-linux-l2@marvell.com,
 pantelis.antoniou@gmail.com, leedom@chelsio.com, opendmb@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, kuba@kernel.org,
 linus.walleij@linaro.org, sgoutham@marvell.com, pkaustub@cisco.com,
 aelior@marvell.com, ulli.kroll@googlemail.com, sburla@marvell.com,
 fmanlunas@marvell.com, leonro@mellanox.com, claudiu.manoil@nxp.com,
 f.fainelli@gmail.com, sathya.perla@broadcom.com, michael.chan@broadcom.com,
 linux-arm-kernel@lists.infradead.org, rvatsavayi@caviumnetworks.com,
 GR-Linux-NIC-Dev@marvell.com, fugang.duan@nxp.com,
 sriharsha.basavapatna@broadcom.com, linux-parisc@vger.kernel.org,
 siva.kallam@broadcom.com, rmody@marvell.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, hsweeten@visionengravers.com,
 rrichter@marvell.com, dchickles@marvell.com, linuxppc-dev@lists.ozlabs.org,
 skalluru@marvell.com, benve@cisco.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Leon Romanovsky <leon@kernel.org>
Date: Sun,  1 Mar 2020 16:44:33 +0200

> This is second batch of the series which removes various static versions
> in favour of globaly defined Linux kernel version.

This generally looks fine to me but I'll let it sit for a few days so that
others can review.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
