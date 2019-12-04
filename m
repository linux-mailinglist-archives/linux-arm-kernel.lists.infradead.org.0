Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D47C0113676
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 21:30:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oSdxnvgPtU70UiBK2RTUlMAf34VuOVrc3s0/keu1pO4=; b=iJ8lm3U7f2Pf64
	qJPKjSKwugIZSTTOGKbNdorF7ODZx1U5yklmYmSUJ9Tv5xWJX/okGw08AhLOUGf8y7XxRHDKBNJBr
	v42h4Oh2OHO34nzaIeIqw1v7mUNdo+LiGDKELeQ/H12e9Tv+sQp4gwxI6s7Cebrj+mYRq77FwcVkb
	0rTPWAZV2YDquNKG94eC/nhtvMfvJXXvaaA4wGry/+1tDI32eP4BDFmBa8PNtAOXGaa9TNC1bAUQc
	F0yjGt7E6h5UD5nRPeKg/+vNUuPlzv152wlbDtUhJrhwg/sl3yhXe+K8g0FPENrgELM0h8f7T1C2H
	uPKqmyTynR7j08I8PJXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icbIL-0005mc-CY; Wed, 04 Dec 2019 20:30:45 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icbIC-0005lx-D3
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 20:30:37 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 44EE414D78B18;
 Wed,  4 Dec 2019 12:30:29 -0800 (PST)
Date: Wed, 04 Dec 2019 12:30:28 -0800 (PST)
Message-Id: <20191204.123028.954480458693026520.davem@davemloft.net>
To: ykaukab@suse.de
Subject: Re: [PATCH] net: thunderx: start phy before starting autonegotiation
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191204152651.13418-1-ykaukab@suse.de>
References: <20191204152651.13418-1-ykaukab@suse.de>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 04 Dec 2019 12:30:29 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_123036_443038_0736929C 
X-CRM114-Status: UNSURE (   4.10  )
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
Cc: rric@kernel.org, netdev@vger.kernel.org, tharvey@gateworks.com,
 linux-kernel@vger.kernel.org, sgoutham@cavium.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mian Yousaf Kaukab <ykaukab@suse.de>
Date: Wed,  4 Dec 2019 16:26:51 +0100

> Since "2b3e88ea6528 net: phy: improve phy state checking"

As Sergei said, please format this properly and make it the
Fixes: tag.

Thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
