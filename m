Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E6211C372
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 03:44:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WTis2E7ubS85u2+ia3vY51kRUa/E0vwt9VuU1OuDWxM=; b=H6S8eyqJP78RHS
	alIYDrjbcI+qLG17VUmSR93DqGV5HXSshw0517EKQDkIQpx7bcCYMZw0Rdc6I6FzyfcpmCRQoq4Iy
	UKw9x0RQEOOSxqpk3ewSILhf1ZED8qDUiicJx/iBg+pjashaGgxo75OZAocg8iOdsWQPEPuas1MTe
	Zx6yC9NXj6fqE5Daf3G7Wl/dzpdqt0r/FVXe3/cbZ+8MJn7ms8/aNHUNvJagXTFmMD5ZzBe3ory+k
	Gi5kkxFLEkODCS9ehimVDVzORE6G3HsK9xPIYN6vJzOhzw+X/iOzDI02DM8BuxYcjqxAhxZbqMrmA
	QHTXTwxqBYBwDhGPtemw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifESl-00044j-Rw; Thu, 12 Dec 2019 02:44:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifESe-00044B-Dp
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 02:44:17 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BE094206C3;
 Thu, 12 Dec 2019 02:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576118656;
 bh=GEF5RTroxrtpc0mEJudQBk28+p9B2McCOPsp1qDwpwU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=G3J8oGm1uWddxi+6QITWqumbyn9YDtFUE0bxfo/mOIBimkxy9szZhqqfJ0Fw6cTKB
 jAKP3F6qaGsgR1FCqPXAGKmDKi//4tlLHiCR8T48djj2bzgH7m1cE3hdIUINh9i5lM
 iNHX2kkdk8tj4CcZQ3bCQLYVI+PffYEmek6O18Tc=
Date: Thu, 12 Dec 2019 10:44:05 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH 1/2] ARM: imx: Fix boot crash if ocotp is not found
Message-ID: <20191212024404.GH15858@dragon>
References: <cover.1576014367.git.leonard.crestez@nxp.com>
 <68b9e3bc9c60c89017648bf3abe150fd0abbde86.1576014367.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <68b9e3bc9c60c89017648bf3abe150fd0abbde86.1576014367.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_184416_489146_0884D88B 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 11:49:28PM +0200, Leonard Crestez wrote:
> The imx_soc_device_init functions tries to fetch the ocotp regmap in
> order to soc serial number. If regmap fetch fails then a message is
> printed but regmap_read is called anyway and the system crashes.
> 
> Failing to lookup ocotp regmap shouldn't be a fatal boot error so check
> that the pointer is valid.
> 
> Only side-effect of ocotp lookup failure now is that serial number will
> be reported as all-zeros which is acceptable.
> 
> Cc: stable@vger.kernel.org
> Fixes: 8267ff89b713 ("ARM: imx: Add serial number support for i.MX6/7 SoCs")
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

As this is a fix we want it in 5.5-rc, it should be generated against
5.5-rc1 rather than -next.  I rebased it and applied, thanks.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
