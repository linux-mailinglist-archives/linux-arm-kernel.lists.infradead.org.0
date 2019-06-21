Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47ABF4E8E7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 15:23:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QfVSPZH0IWksPwkx9N8DtmKECC69p6r74zdvMGU5ips=; b=s0qaRfaAlQQ8uQ
	PnowAuMUGZRwk1+RHryQm9uhxyL0nFZTM89Let0mlte4UxSZu4rf5snTxDKiAq8drxFdldyZwHf0m
	vM9fqovyUZ3qcU4+hRK5QNV9Nf14Uwo/3wy/oRzmxw4FxBGG1dBGVqqBzySsEPHc9wzF7Xv+1S8gs
	CAvRzRxDgk0QBXPZ1TcE8cjfDzMU5Sn0y7ZPkqn+XwyerhSRcI7QqwQwEDq4AkKAsJGkKEz3fEq6D
	T2afIAyGWaJF9/XBSs/REmVb2NWAaz2UumSTiy+ZeEtW3nHQSoUDN+v8OWxUYhxOsfehhUusLFfUB
	KmxzqZbrFVH78x8B1QAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heJVL-0006hj-Mz; Fri, 21 Jun 2019 13:23:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heJV6-0006gb-L8; Fri, 21 Jun 2019 13:22:46 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1F20A208C3;
 Fri, 21 Jun 2019 13:22:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561123363;
 bh=KeuBGoyqtWLkZ0dpNAnEYBwnJjXyrdfhDld4K6wo/qU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nTGi4uI1y5XbxwFSshMgvoGUJ5ogb4t8jRt8fp50ZIZ9c5c6r0fAKUKYgSf9eQ7cI
 0CSyd2jJoHGuOAhPj7aQ3uHD0jSXJh3Ps6io05ywTZ+0bxFcJFZ+6ID5bgnudxhknW
 KjwGD5bDRAbERhQmN/dipIx+1uVCyjsAEBVKtWp8=
Date: Fri, 21 Jun 2019 15:22:41 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: [PATCH] [media] media: mtk-mdp: fix reference count on old
 device tree
Message-ID: <20190621132241.GC10459@kroah.com>
References: <20190621113250.4946-1-matthias.bgg@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621113250.4946-1-matthias.bgg@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_062244_714711_112CDE0C 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: andrew-ct.chen@mediatek.com, minghsiu.tsai@mediatek.com,
 linux-kernel@vger.kernel.org, djkurtz@chromium.org,
 linux-mediatek@lists.infradead.org, houlong.wei@mediatek.com,
 stable@vger.kernel.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 01:32:50PM +0200, Matthias Brugger wrote:
> of_get_next_child() increments the reference count of the returning
> device_node. Decrement it in the check if we are using the old or the
> new DTB.
> 
> Fixes: ba1f1f70c2c0 ("[media] media: mtk-mdp: Fix mdp device tree")
> Signed-off-by: Matthias Brugger <matthias.bgg@gmail.com>
> ---
>  drivers/media/platform/mtk-mdp/mtk_mdp_core.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

<formletter>

This is not the correct way to submit patches for inclusion in the
stable kernel tree.  Please read:
    https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html
for how to do this properly.

</formletter>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
