Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 648553049E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 00:09:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xqE+eflh3EDlpZJD6pKe/OL5NWzpu2R7XVb8OPv5N/U=; b=O8rDK3YlC6/FFW
	aGUyp0wmk5abSNiI6dooPsNkNs3WdtxyixGsoDUm3QkI8XdVb1Qa0UMmy4g2ghMRFyu6HkFP30X5d
	/tFdcQyphYHfdevVYIWaEoISC5KoMLaP9p2REaj33K4y4qcnjLj3a+jBQtmVXj4TtzUVwJd8ONVSi
	M2u1W9tO/YZhGjg8YqzcsEjxNHl8fPgYfISthb904wt2VhCLNWW0X/2B7ghd+yS/aSFPJd6j+74Tl
	1pngfEbunODwYjfCTicumhXlXFhf3rXYcm9Oww1fSAccjw/KwD+QWMb2VMFHXzRHM1eiJh626aD53
	nVWgWAwvEf2AMdQR64/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWTEG-0000EX-Cy; Thu, 30 May 2019 22:08:56 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWTE9-0000Dr-Kc
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 22:08:50 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 5042C14DD3CA7;
 Thu, 30 May 2019 15:08:45 -0700 (PDT)
Date: Thu, 30 May 2019 15:08:44 -0700 (PDT)
Message-Id: <20190530.150844.1826796344374758568.davem@davemloft.net>
To: laurentiu.tudor@nxp.com
Subject: Re: [PATCH v3 0/6] Prerequisites for NXP LS104xA SMMU enablement
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190530141951.6704-1-laurentiu.tudor@nxp.com>
References: <20190530141951.6704-1-laurentiu.tudor@nxp.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 30 May 2019 15:08:45 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_150849_680194_E4556A85 
X-CRM114-Status: UNSURE (   6.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: madalin.bucur@nxp.com, netdev@vger.kernel.org, roy.pledge@nxp.com,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com,
 Joakim.Tjernlund@infinera.com, iommu@lists.linux-foundation.org,
 camelia.groza@nxp.com, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: laurentiu.tudor@nxp.com
Date: Thu, 30 May 2019 17:19:45 +0300

> Depends on this pull request:
> 
>  http://lists.infradead.org/pipermail/linux-arm-kernel/2019-May/653554.html

I'm not sure how you want me to handle this.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
