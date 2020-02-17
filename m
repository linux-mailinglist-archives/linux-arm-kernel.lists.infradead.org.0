Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31FA4160BB6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 08:38:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e/NNMXKfpKlsEG5XEd2ToJFw+8zx0AAh1YST3j0cKEU=; b=b55sMpv/QUYlJU
	QLyS+t4y1EszJkFX4rWynTHws7W0Q7RnbZXT0rNZY6PLiAxDcXYECNDCz2DgLKmvO0rIPMJGPoPwM
	cs96MdZyeF4Qg6PhNH9sehK1X/JMev/hFLCh+xjmQqcJU7VJ+DUjr4rodSsHbqkzCtwazetVyS6oE
	+jSwZB7iOvnImi3P+AbJ8o8thzrkyKFtdSUyeOhKjv5PNTLy7R9iFp6ci112kkb9aTytbVtehC8X6
	rzU6/XVq/XFo2rZf/PvYyR40IYAT6AEqRA4M0jP2xN/BuXm50jCglnGnSZTIWnycR27Z81hWFcrg6
	q99l1pXv96UD2ZwmncJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3ayi-0001Z6-Lo; Mon, 17 Feb 2020 07:38:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3ayY-0001Xh-Fy
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 07:37:55 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A0079206D5;
 Mon, 17 Feb 2020 07:37:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581925074;
 bh=ImZ7KOpW9bhzx35dUGgIAiEpuXpVAYDFUcemWAW+ago=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sAl5fV9ZPQ14nNwhr70prYJ1XhjxiUAqDk8UUZusYSFbS0yki1KBItzm9RhszKsXt
 I6cZ0jk2YkSY/qLbBfPaUCUxTQT/eq1U/faLOlFY/wT/SLssFxYOYxuFLLJNQfaR++
 leypCnIj+QobI8WOFRAY7M0DkCAhKLAGErI6xmjM=
Date: Mon, 17 Feb 2020 15:37:48 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2] ARM: imx: Remove unused includes on mach-imx6q.c
Message-ID: <20200217073747.GJ7973@dragon>
References: <1581660406-24463-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581660406-24463-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_233754_557417_19E35832 
X-CRM114-Status: UNSURE (   7.52  )
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
Cc: kstewart@linuxfoundation.org, gregkh@linuxfoundation.org,
 s.hauer@pengutronix.de, linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 rfontana@redhat.com, Linux-imx@nxp.com, kernel@pengutronix.de,
 tglx@linutronix.de, festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 14, 2020 at 02:06:46PM +0800, Anson Huang wrote:
> Many includes are NOT used on mach-imx6q.c now, remove them.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
