Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6018D16309F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 20:50:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bm6lwUUKMkh5gPUzJrJIyCaxhpwCJ2F8taaeqM8/G/o=; b=Ht755Eet0KpT4Y
	ze9DcZNQIek+XFXBR/fsckgNBSjgzPnUdftPnKGLxwzt7RtKRUxjQV2xyVAg0boBK2FJShutXMw+J
	phOCH6XNceFJlhwndDC05wDErIPfsNK1DXsxvvJy/XGwwz5aMXxfrlB6Ni3mRnGEgTWRAX7JPPYbV
	rO2Cp7QpoDgGIeriiPtc3NLWLFQFGK3xuk6a9a2JAAdSfX6ZoKMTh+XxSRScF4zFU+xNCj3N/oJzK
	0+h04P2avJBBsXCRH5R9BgfIwY9WswUIpDFyAGJcWRAoqix3r/prUJSP+Svp1L0LeZxUm2F4lhHG5
	Lzg5z4mTLVMiSdAPzXQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j48t8-00037y-OO; Tue, 18 Feb 2020 19:50:34 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j48sz-00037D-Et
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:50:26 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 77D13121793C3;
 Tue, 18 Feb 2020 11:50:17 -0800 (PST)
Date: Tue, 18 Feb 2020 11:50:14 -0800 (PST)
Message-Id: <20200218.115014.2022578847900470441.davem@davemloft.net>
To: esben@geanix.com
Subject: Re: [PATCH 0/8] net: ll_temac: Bugfixes and ethtool support
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200218082607.7035-1-esben@geanix.com>
References: <20200218082607.7035-1-esben@geanix.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 18 Feb 2020 11:50:17 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_115025_495633_2A8BE055 
X-CRM114-Status: UNSURE (   6.54  )
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
Cc: andrew@lunn.ch, netdev@vger.kernel.org, michal.simek@xilinx.com,
 linux-kernel@vger.kernel.org, ynezz@true.cz,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Several errors in this submission:

1) Do not mix bug fixes and new features.  Submit the bug fixes
   targetting 'net', and then wait for net to be merged into
   net-next at which time you can submit the new features on
   top.

2) As per Documentation/networking/netdev-FAQ.rst you should not
   ever CC: stable for networking patches, we submit bug fixes to
   stable ourselves.

Thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
