Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 191961860FD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 01:53:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gtoxoGQaZ1rOvb0Pn95jmXHnbmiV9LPUN8UIjUbyhzM=; b=cpN+DZliRhqxI7
	tWjF+L+rNLMtbe/hQjRe4O44RjNLe4AKqrXaQKAFb9uJsJdqwGKxP2iiAxEX1eBnXW/RbYb3qEyh8
	lVgmzRLQVeoHRwMNmhqgshKaiFsrp+agKqUNk/ucYKG03OPV+TX6GWAxxwzD8t5oGGVx2aRtADfLf
	wLdnx3RjpQ2dMGHY2itlL/7gy9O8M7akG2QJmz5VjoSwSbg1R+GBDvfXwFwBh+RPQHGZImDahk9pk
	uI9/yHhkQaFRLsP5thNmHiDzoQSga5+J54fWviHQ3cTbF/5dH2Cu/t3JxvJpwlrQ/gjr5HwssSEWm
	84ulBycdpkhJFffEBfHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDe0p-00084v-Gj; Mon, 16 Mar 2020 00:53:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDe0Y-000842-DL
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 00:53:33 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DEDB9205C9;
 Mon, 16 Mar 2020 00:53:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584320010;
 bh=v8Qu/XknM0RD2gDDO51zIHVXWGIRSk9coPKyrYVgcjM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ujLJm6xe//rcf+hUNGkyO0h0a7Lx8tTwdm8N9OktM6r1qUflvMp+xloOLnsxQOza/
 c5uAU61POySUJ2yy3PVfwOwUMuuQ4zY1uu2PsrmELF3D+3VA6P8/dkaynaQ+OkVW+8
 1QCQf0f4g8pwuwmRjEtpt1u+f6hID0vRaDjp1li0=
Date: Mon, 16 Mar 2020 08:53:20 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V3 2/7] firmware: imx: add COMPILE_TEST support
Message-ID: <20200316005320.GE17221@dragon>
References: <1583714300-19085-1-git-send-email-Anson.Huang@nxp.com>
 <1583714300-19085-2-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583714300-19085-2-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_175330_472393_7A114987 
X-CRM114-Status: UNSURE (   7.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alexandre.belloni@bootlin.com, m.felsch@pengutronix.de,
 leonard.crestez@nxp.com, festevam@gmail.com, linux-rtc@vger.kernel.org,
 robh@kernel.org, amit.kucheria@verdurent.com, wim@linux-watchdog.org,
 daniel.lezcano@linaro.org, krzk@kernel.org, Linux-imx@nxp.com,
 linux-input@vger.kernel.org, rui.zhang@intel.com, ronald@innovation.ch,
 linux@roeck-us.net, linux-watchdog@vger.kernel.org, arnd@arndb.de,
 linux-pm@vger.kernel.org, s.hauer@pengutronix.de, tglx@linutronix.de,
 andriy.shevchenko@linux.intel.com, daniel.baluta@nxp.com,
 linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com,
 a.zummo@towertech.it, gregkh@linuxfoundation.org, dmitry.torokhov@gmail.com,
 linux-kernel@vger.kernel.org, linux@rempel-privat.de, kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 09, 2020 at 08:38:15AM +0800, Anson Huang wrote:
> Add COMPILE_TEST support to i.MX SCU drivers for better compile
> testing coverage.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied this one, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
