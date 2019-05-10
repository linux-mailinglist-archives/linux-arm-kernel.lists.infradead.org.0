Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2361971B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 05:29:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nnZIeY0uaVoFBPz4W92sF9qFwPo603yUxr5Vp4sG0EE=; b=M5HIf1MtCIDCds
	zmBCgJNUpwnCeSQ/P/p2pbS9FShk0RL7lZrbcNdNkVwIPKFF2OBw6d5u+j/3xTHzjmq4AsNW7D9Bd
	zIbZeDxal0AnYodWJPN80XLm93zqX2V+q7aBa5qwOoI6v2443f9CGqB+mYYzK3nam+AZvbcoQNUPP
	KaTAe1woIvSxNwZdQ+GhFREoypXlsoYkYqz2nMpo8BAPNi0p/rxcg67zMHPWLaMpbTwL2NinUa79f
	pFVdQ7FmVhkkLaNMOk5VZSKgMv9DIDc7LK5Bg4ZPp6tl5JdWUippPJe6LmHBQMefAL9KKhEe+auqS
	oJ6mRlhh6beU02WguPzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOwEI-0003Y7-Pn; Fri, 10 May 2019 03:29:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOwEA-0003Xc-TU
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 03:29:44 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2A3D52084A;
 Fri, 10 May 2019 03:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557458982;
 bh=ubGfRjTtDMEutzD5VqoWgK8VhK2vlpDqI8+UnRha5SI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lfEVBJIPxj5OqTJIYVykGxHqfqsiW4IffIXD4X/iesRS7gg14kkT95ElXmWpLuJrE
 dKBQEeUCE4PLO/t8hgW942KJ0TQeAbyyYp4faHLc2BZiECtanuh9GS9nnrqpqa3nGa
 flImr4Vb4LVaOoa8LfdsNx98mHJWMCdp4NwWuVFg=
Date: Fri, 10 May 2019 11:29:18 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH] ARM: imx_v6_v7_defconfig: Enable CONFIG_THERMAL_STATISTICS
Message-ID: <20190510032917.GG15856@dragon>
References: <1556076113-4593-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556076113-4593-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_202942_974924_F6CDC7F2 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Robin Gong <yibin.gong@nxp.com>,
 "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "jan.tuerk@emtrion.com" <jan.tuerk@emtrion.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 24, 2019 at 03:27:13AM +0000, Anson Huang wrote:
> Enable CONFIG_THERMAL_STATISTICS to extend the sysfs interface
> for thermal cooling devices and expose some useful statistics.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

I don't apply patch using base64 encoding.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
