Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5A5160A90
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:34:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aaLVz4t42KKpkz5oBrpMSHTy89mUp/RS3CbyEUSXl5Q=; b=D4TSOfl5gP16As
	slAbk3N+lteFOjnqeO0bZVfw30xCmSCwcVTfH3EEW/u/8OIO5LL0hUuZNXXbw2IykFTTVPk/lgFJ0
	ampjYgbOrbw8b7maKF3uATwyWQpDbTXZ217nHV+9ZBY5tFlO8bWdQywTq2bpzFnRb5qN9MwNgcFsR
	ozQXKwUBYfAZ8ifKOCNEK8WEMJu82TlhywMYgU6KH5jwIa27bc7Bj9b7DYIo8TZd0ecaNCQKBb4M4
	hEisliQfoYKNR2p9Xv9YEv4z1OEnRNV4WNMmbCZBzpo5y+qCaiv3LAweetNMb9f4YNEdbKquKWR3O
	nLQPvMkVVbVcFJfXBKGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3Zz6-00081B-IJ; Mon, 17 Feb 2020 06:34:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3Zyg-0007rv-2k
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:33:59 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 36A582072C;
 Mon, 17 Feb 2020 06:33:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581921237;
 bh=a7iT+Xd2qH1d2AgAUtQiwnF35749MAcOj1fuF4ST5zo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aqx0kYY4CK305vVZwVOYcUG5rzzHy/izY/p3oH+YF9jsZJVgo0EGvK5f3IWVvUMQo
 gvJw84LRXWA0kVSWekS7TM3SG4aCc/UIQw7eec/iGs7wlArHqMUualEk56xZyfclGS
 9FB2KWQC5ECuhIcF/zM6b9nStWKRhgKOqhnN7h4U=
Date: Mon, 17 Feb 2020 14:33:51 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH] clk: imx7ulp: Include clk-provider.h instead of clk.h
Message-ID: <20200217063351.GB6952@dragon>
References: <1581498584-14674-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581498584-14674-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_223358_239991_9F535905 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
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
Cc: peng.fan@nxp.com, abel.vesa@nxp.com, sboyd@kernel.org,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 chen.fang@nxp.com, festevam@gmail.com, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 05:09:43PM +0800, Anson Huang wrote:
> The i.MX7ULP clock driver is provider, NOT consumer, so clk-provider.h
> should be used instead of clk.h.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
