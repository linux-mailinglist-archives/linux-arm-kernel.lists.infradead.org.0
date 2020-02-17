Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0645E16093B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 04:49:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sOOTfZa6/zK8nd6p+TgU3ycEje+kUGylzk6uJf51P7E=; b=DSLV3WTGVmqF+F
	iDMYc0rSnkE12KEDd4JFZPa0Zo2G+7qSvbbf16YTJUMY+0f3J9AKwTnOI22/XBEjIPE0NavyOC4Uq
	IjVeKVru9c4AuRyxnhyf/IlVSWQzPfT2K+DXL4RTK9kK5dO3o8pRErj7w2oYv4lsv6yabJgZCoCGV
	nvFSkDLTPJUK4FHYl+qVmLD8F2zw5P5Xf/Im+9RsuQMM0i4G6a53M/lfzk2jW8QtR4pS81o53sWuS
	p7SFItHP7I/C5sGfGHeFgCPSZ8SE/se6clA48dCDjdeqJcSj0b7mW2dkEWIb2+ODZX/0yR2sWt6Ea
	8smUSWa5J8GRUACnsZBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3XPN-0003OR-89; Mon, 17 Feb 2020 03:49:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3XP9-0003NS-3W
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 03:49:08 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3F6B3206E2;
 Mon, 17 Feb 2020 03:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581911346;
 bh=I9tH1uPwP9k8hna9VlZsQhTYgToiCLium69V90L8L94=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qauHQ8NQsKt8i2lcBxEMdERol6YlVgubroXNjstrgtkz85l0pswccPislTilvoHDR
 VOS1y9vJPnmO2TqxHTNpIHYstlDBLRT37wTRRjMjd1KaiWpxKMhK5kUGlxVxMQJMhU
 R3iDumt6HSeg1FlS1J714fO4RuM2XFinYrp0R4Mw=
Date: Mon, 17 Feb 2020 11:48:59 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Martin Kaiser <martin@kaiser.cx>
Subject: Re: [PATCH] ARM: dts: imx25-pinfunc: add another cspi3 config
Message-ID: <20200217034858.GA5395@dragon>
References: <20200204215229.32485-1-martin@kaiser.cx>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200204215229.32485-1-martin@kaiser.cx>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_194907_175603_1C3B91E0 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 04, 2020 at 10:52:29PM +0100, Martin Kaiser wrote:
> This patch adds defines for another cspi3 configuration.
> The defines have been tested on an out-of-tree board.
> 
> Signed-off-by: Martin Kaiser <martin@kaiser.cx>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
