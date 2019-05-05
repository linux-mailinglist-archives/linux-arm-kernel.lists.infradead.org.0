Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8757114178
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 19:32:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v3x8DMEbW5gyG8dPEekvoZ2HaKhFfsWZcsAjN8x1GpY=; b=UowRtLPYk33sMJ
	Ebp0qeCCv6FIsaq9Z3SUHjkln77QHaPNjJBMUZ38kSE2sg/CKEkLnCJD/8yXrKQ/UafHgf7nJ+4o5
	SezHla2wJaH7GxYz/qjFP5rMC9qGIUN6KWGMgbHe2Mr4F++EyhzrcJqi6Q06XQYMUL94FMpAIJZer
	3GKS4yV0wEl+Us0a6n8kbKSlNdYCI+ngN9pAw6i5ZemQe6MV1NkEDp7uuCneujChTa+7Gi0dDetSr
	pVhpKMoLZ0WGtb6vu+QvSfmZ51Ay4v7xqNYAWIWK7EyNXjT6MEk5kTOVvvCZbV+iw90o6ZZX9z8jw
	sLwUp+dOZDS3ycFscvIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNKza-0007R8-L5; Sun, 05 May 2019 17:32:02 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNKzU-0007Qq-69
 for linux-arm-kernel@lists.infradead.org; Sun, 05 May 2019 17:31:57 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d8])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id A963714DA6474;
 Sun,  5 May 2019 10:31:54 -0700 (PDT)
Date: Sun, 05 May 2019 10:31:54 -0700 (PDT)
Message-Id: <20190505.103154.823912444487756109.davem@davemloft.net>
To: laurentiu.tudor@nxp.com
Subject: Re: [PATCH v3] dpaa_eth: fix SG frame cleanup
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190503130311.9914-1-laurentiu.tudor@nxp.com>
References: <20190503130311.9914-1-laurentiu.tudor@nxp.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 05 May 2019 10:31:55 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_103156_229427_615FC921 
X-CRM114-Status: UNSURE (   6.64  )
X-CRM114-Notice: Please train this message.
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
Cc: madalin.bucur@nxp.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, leoyang.li@nxp.com, Joakim.Tjernlund@infinera.com,
 camelia.groza@nxp.com, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: laurentiu.tudor@nxp.com
Date: Fri,  3 May 2019 16:03:11 +0300

> From: Laurentiu Tudor <laurentiu.tudor@nxp.com>
> 
> Fix issue with the entry indexing in the sg frame cleanup code being
> off-by-1. This problem showed up when doing some basic iperf tests and
> manifested in traffic coming to a halt.
> 
> Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
> Acked-by: Madalin Bucur <madalin.bucur@nxp.com>

Applied and queued up for -stable.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
