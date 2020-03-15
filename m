Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E4B31859E5
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 04:54:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dK3XGLZUd2+E6QI4gmAK0llutcYo0X4qCIbGOjWg4GQ=; b=Rb8MRPmSIVERIK
	55D5ePX2A8k/j7NbgCvV/0eintWy+pEuKjWp8vHgankQLNYfGNyPg+hJeHNcUUK8k5tZ+qzCrglZ3
	F7580XdbM/AXvQHPqNMhyYQlANp0qKNUsP9L3SNBg2n7+in4x3JYdZFbN5qfNvVbJsE6zGMV+kCU3
	8N2mMMiVtw9amWe70N9vxKlRhUfD4Oq6e84+K3IQY9SuFmo5kf9iB7ALth5AJOtdJUYIYHI+elKr4
	GKOBJXAd5l10zFaT8xZU6IPTggja+326jvGWRcgb7bLkYgYh+mJGIKk/4xulaf3GxWfNT1k2ih1aY
	n9ASAQChzbkGOKfANRqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDKLX-0006ii-SB; Sun, 15 Mar 2020 03:53:51 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDKLQ-0006iM-CP
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Mar 2020 03:53:45 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 130F915B75272;
 Sat, 14 Mar 2020 20:53:36 -0700 (PDT)
Date: Sat, 14 Mar 2020 20:53:35 -0700 (PDT)
Message-Id: <20200314.205335.907987569817755804.davem@davemloft.net>
To: michael@walle.cc
Subject: Re: [PATCH 1/2] net: dsa: felix: allow the device to be disabled
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200312164320.22349-1-michael@walle.cc>
References: <20200312164320.22349-1-michael@walle.cc>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sat, 14 Mar 2020 20:53:36 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_205344_427267_B7E8796C 
X-CRM114-Status: UNSURE (   4.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, f.fainelli@gmail.com, andrew@lunn.ch,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, leoyang.li@nxp.com,
 claudiu.manoil@nxp.com, robh+dt@kernel.org, vladimir.oltean@nxp.com,
 shawnguo@kernel.org, vivien.didelot@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


This series depends upon some devicetree tree changes, so why don't you
submit these changes there and add my:

Acked-by: David S. Miller <davem@davemloft.net>

Thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
