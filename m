Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97ECD165DDD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 13:50:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	References:In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sk2zLGDPlqdEDrXjZwjOkUh/IiTMhLqo/+bkRtp4tEk=; b=ZkeJSjmWojX9NMMo99bTBmD1Z0
	al03oKjI8bEyUX5vYP39K+QLCAjBKv1ahdZgLFj1qrkpExHfUIYLltuZPhlmSq8k0ZjZPtiKICNsQ
	rmgtz2SxKD6JnhTw/XJUKkpXAs8J377L4QaB2VC1gfPyN4M+DcQxkKWkxH1/rpldlNxSSQbH2ayKq
	A8qw/hSs/+nKeBu7E4wsysHAcWi6aDR6mj7ncTpx2h5tMvvotWvySY4uZC5MrbHIuuBSSBczF7xHW
	0REc1XeX2himPOSLtB3utQago1veIWpQ2VGCKBZlgZgv4As3jHKfIGsC9j+BMe3aOqqASJQ2nMoZP
	5FG9WIug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4lHZ-0003Ch-LK; Thu, 20 Feb 2020 12:50:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4lGo-0002ps-Qm
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 12:49:36 +0000
Received: from localhost (unknown [137.135.114.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5344D24673;
 Thu, 20 Feb 2020 12:49:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582202974;
 bh=IdCaHXqgvBMFL80wKC0Bj9Qw3PHANAwkvRLA1W0D0Fs=;
 h=Date:From:To:To:To:Cc:Cc:Cc:Subject:In-Reply-To:References:From;
 b=2Rd++LVxPSCIrRca9z8IqGHGEfRDUA6kB1wDUylsPVKv21W1L5zfbRGS69FH0a2bj
 kopoBvrJ0pdFq3VxlyGwflMrTrJ2E5IpNhv6sSXX105vCwEGv1IyVov4K0e+4mLDo4
 MlkMoMaSv7JWRIj7gw3xJ5ZtQOxi3x6V10ntQE2Q=
Date: Thu, 20 Feb 2020 12:49:33 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Esben Haabendal <esben@geanix.com>
To: netdev@vger.kernel.org
Subject: Re: [PATCH 1/8] net: ll_temac: Fix race condition causing TX hang
In-Reply-To: <20200218082619.7119-1-esben@geanix.com>
References: <20200218082619.7119-1-esben@geanix.com>
Message-Id: <20200220124934.5344D24673@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_044934_887262_6AAF9B6A 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: , stable@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

[This is an automated email]

This commit has been processed because it contains a -stable tag.
The stable tag indicates that it's relevant for the following trees: all

The bot has tested the following trees: v5.5.4, v5.4.20, v4.19.104, v4.14.171, v4.9.214, v4.4.214.

v5.5.4: Build OK!
v5.4.20: Build OK!
v4.19.104: Failed to apply! Possible dependencies:
    2c9938e738a2 ("net: ll_temac: Fix bug causing buffer descriptor overrun")

v4.14.171: Failed to apply! Possible dependencies:
    2c9938e738a2 ("net: ll_temac: Fix bug causing buffer descriptor overrun")

v4.9.214: Failed to apply! Possible dependencies:
    2c9938e738a2 ("net: ll_temac: Fix bug causing buffer descriptor overrun")

v4.4.214: Failed to apply! Possible dependencies:
    2c9938e738a2 ("net: ll_temac: Fix bug causing buffer descriptor overrun")


NOTE: The patch will not be queued to stable trees until it is upstream.

How should we proceed with this patch?

-- 
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
