Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6B3DA206
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 01:17:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uHiQF2ua7UP0H3Iqthl3oW7pA4LC89hYwsdZKNFLAkk=; b=mSUuYIuF8PEO66
	umQrhf+NL3qp5MNQfg05/awnSeox3b3SMXbFbLotffZxTl/6ABcRhS1oo+xCFoU3o/9z1w+yc+7UZ
	dTrmkL7I+NZBw5NvwuBYb+sB2c0qNxxBH1BDIuhMSr8TkUWhEVhLETserLd7GGax0pAfRcfmhlUe9
	/dMYKffOU52IG4iAA4bouhHKSy2y0MbIcztwU71R+J3pSwttpKaCl3HPOiHGUhAEPbAMJgJFGsXo+
	lWZ/zCabnUwcBve0xDoTAF2odgz8HCErY7HSC9H2AQ3LSjIM+nDaVH9Bs9zoqs091Nk6XkYVvNv4W
	oWL9kqHKBonghli1IkiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKsXT-0001zB-Oe; Wed, 16 Oct 2019 23:17:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKsXM-0001yn-Fd; Wed, 16 Oct 2019 23:17:01 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CC61820872;
 Wed, 16 Oct 2019 23:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571267818;
 bh=zirAnIqC/9yz2gPtuufIs13cXwxMvCqnY5qApb41f+M=;
 h=In-Reply-To:References:From:To:Cc:Subject:Date:From;
 b=SaQGqpiLQgeR98Z05PO57/QW0eAM5ELeTAxUZFHS3ii0Oq3gWZkOhpRfJIynjgkeD
 fc8awSBNLZlD9W0zzTLo5OlzG8eb7jKrx5mrJ6H2l6WSqobT3S29gblenIA0BzAUxg
 fF2fv21XF4md2j1/KsDyDhRGUDtn+p+4qwQWEN0w=
MIME-Version: 1.0
In-Reply-To: <20191014143642.24552-1-yuehaibing@huawei.com>
References: <20191014143642.24552-1-yuehaibing@huawei.com>
From: Stephen Boyd <sboyd@kernel.org>
To: broonie@kernel.org, eric@anholt.net, f.fainelli@gmail.com, heiko@sntech.de,
 mbrugger@suse.com, mripard@kernel.org, mturquette@baylibre.com,
 nsaenzjulienne@suse.de, rjui@broadcom.com, sbranden@broadcom.com,
 wahrenst@gmx.net, yuehaibing@huawei.com
Subject: Re: [PATCH -next] clk: bcm2835: use devm_platform_ioremap_resource()
 to simplify code
User-Agent: alot/0.8.1
Date: Wed, 16 Oct 2019 16:16:57 -0700
Message-Id: <20191016231658.CC61820872@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_161700_540694_78C63C7C 
X-CRM114-Status: UNSURE (   6.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting YueHaibing (2019-10-14 07:36:42)
> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
> 
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
