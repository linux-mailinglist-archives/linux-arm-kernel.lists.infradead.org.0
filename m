Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0F22A767
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 May 2019 01:38:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h7f+W5jlzAlmR4Od2sl9D7yLyNQ7SCzWNJDXrIdb1zs=; b=fc+coRAqOI2xQ2
	zkSB/uUIg7NTr82jgRMtXsfYz9JuqQH1XZQkkYHdvIBldYUrjM7yMgi6VNSBxTyj7nCJ1/Zqi7ArM
	Wk8RShVEpSMMI3Efjq3n/NkvJbMv049kOzdcLbYcA7Ru6Anm3Wy3cA4heVoFtRtU4p6alzfmCD4GQ
	8zVv4ML0yAU1O4mAid1P299wNJJU7hdqaSNul3g9KdMqJO10xaLWz8IU1HfHw5UBDlUXOXIfDfDWN
	ATAgbShS8x9OypO+a8km23Ko0PwvwDcFCUFhtocNmNuas25HRqe79vfZ/Tug47WizupCiyVjIcFDX
	Cfq2Or2o36YjRcoBkr5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUgFQ-0002Pc-7k; Sat, 25 May 2019 23:38:44 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUgFK-0002Ow-Fi
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 23:38:39 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d8])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id B1CE01500AE50;
 Sat, 25 May 2019 16:38:32 -0700 (PDT)
Date: Sat, 25 May 2019 16:38:32 -0700 (PDT)
Message-Id: <20190525.163832.291723821050525240.davem@davemloft.net>
To: maxime.chevallier@bootlin.com
Subject: Re: [PATCH net-next 0/5] net: mvpp2: Classifier updates, RSS
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190524100554.8606-1-maxime.chevallier@bootlin.com>
References: <20190524100554.8606-1-maxime.chevallier@bootlin.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sat, 25 May 2019 16:38:33 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_163838_606788_80D26332 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: antoine.tenart@bootlin.com, netdev@vger.kernel.org,
 gregory.clement@bootlin.com, linux-kernel@vger.kernel.org,
 linux@armlinux.org.uk, nadavh@marvell.com, thomas.petazzoni@bootlin.com,
 miquel.raynal@bootlin.com, stefanc@marvell.com, mw@semihalf.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Chevallier <maxime.chevallier@bootlin.com>
Date: Fri, 24 May 2019 12:05:49 +0200

> Here is a set of updates for the PPv2 classifier, the main feature being
> the support for steering to RSS contexts, to leverage all the available
> RSS tables in the controller.
> 
> The first two patches are non-critical fixes for the classifier, the
> first one prevents us from allocating too much room to store the
> classification rules, the second one configuring the C2 engine as
> suggested by the PPv2 functionnal specs.
> 
> Patches 3 to 5 introduce support for RSS contexts in mvpp2, allowing us
> to steer traffic to dedicated RSS tables.

Series applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
