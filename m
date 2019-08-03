Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F61280729
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 18:10:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=61oRnVvVuGJCHxGRpgZlXDwsnOemTfXX0nub9wHAjdc=; b=JbrZ5n2dzc/mvP
	OgYq351BcWK+h0hxb6fH/H0OlqPDTPrz8463gExQd8GtZBrjwRpQgB1jxn39tU+06w5QldJJ04eBx
	MvflfRXc0AsPnsLl7XSEmUjA146tLia6kuDbVRSfmV8BQZXlU4PiZYzq3u3q5AAWHPZWpSbCPHGBt
	+CaxgcIvraXFgxe6Lq+s5JniIi2dG8G77YddzseiUQrF6BCjzfraM/B61p2LozqUVMRNj66y0n9RJ
	q/mELMwKwHoz8Yf6jDLYtyycui6RiiWFcixo/Y7y7bKNQwl19H8a3sAsLkYqhIWKwTcQQ9izeU06x
	Rmu1vpQWldEAnBHZRLfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htwbj-0004kX-En; Sat, 03 Aug 2019 16:10:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htwbX-0004ge-Hv
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 16:10:00 +0000
Received: from X250.getinternet.no (98.142.130.235.16clouds.com
 [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 93EFB2075C;
 Sat,  3 Aug 2019 16:09:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564848599;
 bh=ODawwwsyBVPy0OVWuEwfhGEAUxZNG56pqH6fdbLM8/k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JVidYy3KNME2+E/+uMV7O1BF/f0/S0twyiru3cgFcS6TkWeds+PcTQ0wpVXYtVR3d
 zzF0BPcY0t4+G6Glx9b5M4NnAHlUXapRmcTO8jQos7Pl06SYXS+SxQLEOmCHw6WqT5
 y4OgDfkbLEKtQOgvs+HX2PN26wNB2Dz620lDYYq8=
Date: Sat, 3 Aug 2019 18:09:53 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Subject: Re: [PATCH] ARM: imx: Drop imx_anatop_init()
Message-ID: <20190803160952.GW8870@X250.getinternet.no>
References: <20190731180131.8597-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731180131.8597-1-andrew.smirnov@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_090959_616316_1A5E2E90 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Peter Chen <peter.chen@nxp.com>, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, Chris Healy <cphealy@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 11:01:31AM -0700, Andrey Smirnov wrote:
> With commit b5bbe2235361 ("usb: phy: mxs: Disable external charger
> detect in mxs_phy_hw_init()") in tree all of the necessary charger
> setup is done by the USB PHY driver which covers all of the affected
> i.MX6 SoCs.
> 
> NOTE: Imx_anatop_init() was also called for i.MX7D, but looking at its
> datasheet it appears to have a different USB PHY IP block, so
> executing i.MX6 charger disable configuration seems unnecessary.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> Cc: Chris Healy <cphealy@gmail.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Peter Chen <peter.chen@nxp.com>
> Cc: linux-imx@nxp.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
