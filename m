Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C66BF11C2D9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 03:01:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nw4DG1gmp5ZxXtMTwhmXzSA/pPgakzFNkveONfcYYsQ=; b=oY5mjMXK7WNeSC
	VNbKPkx6Oq8KEGEfLUIedFV5XRO1hzahkzk0gBdRA+xBj+CWMxbME2rAn1B1MZnb61i9sl7rgsBFh
	+34DgJSFCtY3Im8IrNsJF8NibRU5nmSAnXTq3Zl2sN+E10RODnCgLX/H+G9pxZQ4vSHABH0EVzCWr
	V5ceZFbUh4xwavaokx4WmJNSp9CF3zOLMU8rjZY/s/TiVAu7qvwwXQKn0RTX9d+mCfMiaWUKDm4gM
	UWBy3pXvsTjB4MQyedrL0TKv4CrJFqz3W3H7O2txdHYu4E2jlBQngyziucalXA7Lsk6Y25lQn7ows
	ZieGvkKuKZplVsVnDgQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifDn4-0002pA-Cn; Thu, 12 Dec 2019 02:01:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifDmu-0002og-NW
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 02:01:09 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 232722077B;
 Thu, 12 Dec 2019 02:01:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576116068;
 bh=mrLm7hWWGdtEPq9cGYIvyHV5bCojU9MeN4AkSl1wgng=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LXZxgE+DKBG/qoOnEiDBqi4cB+vAa9DF8tMqPwcCv5iE6Ri8KD/kKZVKAZ4gc/KaO
 1cIi+UK0BKN4kCPeqHDRoonl+3TlmTJpancmus5GZz0xxy25tzYq4bCZLs7EZ7bXjb
 OTITqe06Wl/qWRvaJfI/Z2WK1j8xUftOiF2565ag=
Date: Thu, 12 Dec 2019 10:00:56 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v3] arm64: dts: ls1028a: fix reboot node
Message-ID: <20191212020055.GB15858@dragon>
References: <20191211171145.14736-1-michael@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211171145.14736-1-michael@walle.cc>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_180108_784669_5E3D0B6C 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 06:11:45PM +0100, Michael Walle wrote:
> The reboot register isn't located inside the DCFG controller, but in its
> own RST controller. Fix it.
> 
> Fixes: 8897f3255c9c ("arm64: dts: Add support for NXP LS1028A SoC")
> Signed-off-by: Michael Walle <michael@walle.cc>

You missed Leo's ACK on v2?  I added it and applied the patch.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
