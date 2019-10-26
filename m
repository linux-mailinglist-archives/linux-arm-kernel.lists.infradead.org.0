Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3E2E59F6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 13:23:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xaZm2UePdnQWTsWzMPSA/yaWQzF6200rNlTKJVbVrZg=; b=QYasvSmTiPLRfc
	uW7rQDmhte1mvcA5Cw3VcwYxd3TvfcMZU70C3ioiJF6WxNjgH11czKCZ/4Brs+5nccQJg/wkZFYag
	NRBPAXW+FS8XwKXn9r3uBrZN4gqQrzHp0WTrXPzjuz49NWHsXI4mQxWuwTldrmAoE/5jg7fAzzLCO
	8kGCMXNeA10cPiR8fcFe0d5wnaVTGTcr+wCFdudd5LU71KTnJyljnCO6VKV4kR9XZst1mLNxblnaz
	VcA1/7/DH0kedqdF05iM6QGqvntyWEWGUsh/oIop26I+Tc1KepE1cypWLdSv1P2hOHo5lXfgjQs85
	UCpey8QGiEQEykqJXvbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOKAW-0001Im-P3; Sat, 26 Oct 2019 11:23:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOKAO-0001II-25
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 11:23:33 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8AAEE20867;
 Sat, 26 Oct 2019 11:23:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572089011;
 bh=a6AuJJ6j/hBbd4+u1gXjHtd0PGYlinfGMuAbGY+jJXk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LCOBUqx1iIKckbn2Jwm7z7gr5LJTK1iLVXkplhVBGyHWYYsX5IrlsSxk9PUKecrme
 t1fZMXLAqMq0t2OfZ15lf+ILz3K7lnbjQynn3TaLDDpzCGVo6BqC2V/yYl5mRz14P3
 6T5GBRnRX9NBbqNwWXMVv2756UlcthIbP5pQuZZE=
Date: Sat, 26 Oct 2019 19:23:16 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Daniel Baluta <daniel.baluta@nxp.com>
Subject: Re: [PATCH] firmware: imx: Remove call to devm_of_platform_populate
Message-ID: <20191026112314.GG14401@dragon>
References: <20191014153228.25167-1-daniel.baluta@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014153228.25167-1-daniel.baluta@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_042332_124789_37B37AEE 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 linux@rempel-privat.de, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 06:32:28PM +0300, Daniel Baluta wrote:
> IMX DSP device is created by SOF layer. The current call to
> devm_of_platform_populate is not needed and it doesn't produce
> any effects.
> 
> Fixes: ffbf23d50353915d ("firmware: imx: Add DSP IPC protocol interface)
> Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
