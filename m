Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A13CBBBB
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 23:41:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q5yfW4343vbJ8ys8YizuaUh7I5DeWKMs8hZnaDlGLV8=; b=AQOIejT7S5mIzk
	NxG0y8j1a79qHqooQoGaIJLXXyf+0wqSVxmJLxnb6HVI7JICGlzdnplCpBgn49kSYWjHAm0NIjOzK
	HVxcdpQLJ5WvAoxS66KPDfgaXj2+bNBD0hiMf7WChe6PIJmf7nvdscrQl81P1JI9Vh+uQksXu61H1
	ghmzl34UmjJHKWWFq8ZZDO2e5zFYM+Y0v48JL5dQ+LrXGFq0bNqrD1oKDPIqZj+39DsIeTsqBoC5r
	wFUuTDkuOv8nWbYMI+Cw7pZ8XxNWXIedjWEp1GjDizwGc/5vl+37RAi2d7e8lEy/vXSFrxkld1mwN
	4hrJgPmalk4fy2cMqjcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKrXj-0003Xb-4W; Sun, 28 Apr 2019 21:41:03 +0000
Received: from mail.nic.cz ([217.31.204.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKrXb-0003W7-Fh
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 21:40:56 +0000
Received: from localhost (unknown [172.20.6.125])
 by mail.nic.cz (Postfix) with ESMTPS id 1C395635EB;
 Sun, 28 Apr 2019 23:40:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nic.cz; s=default;
 t=1556487654; bh=ykB9OkD9shArz/Kn1lZRh5juvOMhmaq2EoDabp/iOPo=;
 h=Date:From:To;
 b=HOwMrWeUpO0R2BYW9DFsz1a6Wzt88/1THLEveYBVsk/Pe3t/cttwEtRPRj7YPySkq
 7mTGDOq9Meru/noNqZu2oUheEgQ7RIVCUuL610bwT73t6D83RLlSbfde212oLsKAGb
 Scimmaz1ZHnQFxh7hdZfVc6b7WlFl1pxYpOpliFM=
Date: Sun, 28 Apr 2019 23:40:53 +0200
From: Marek Behun <marek.behun@nic.cz>
To: Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL] Turris Mox Moxtet bus
Message-ID: <20190428234053.510d7598@nic.cz>
In-Reply-To: <20190428190634.3i6tjpflqezd6xkq@localhost>
References: <20190328192232.4b5c993a@nic.cz>
 <20190428190634.3i6tjpflqezd6xkq@localhost>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.2 at mail
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_144055_680966_1BF8A229 
X-CRM114-Status: UNSURE (   7.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.31.204.67 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: arm@kernel.org, Arnd Bergmann <arnd@arndb.de>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Olof,

> I know time is getting short for the next release at the moment and
> getting keys signed might take some time, so if you prefer to send the
> contents as a patch series and have us apply that, feel free to do so.

yes, if it is possible I would like these to be merged for the next
release, so I sent it as a patch series just now.

Thanks.

Marek

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
