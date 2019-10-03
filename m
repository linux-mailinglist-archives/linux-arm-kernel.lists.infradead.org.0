Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F13C9A82
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 11:12:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pE1hUOpCh3NgqGx35MhaedjNffLj6RlNfs17sO1z/Rc=; b=fiXVjVdfPoLeiY
	ILxmMRrf8sokwpscQNUemxV2Z7suO1gg819k4W0plEClRCZgS3uC9F1zZtewy2hjQzpGDSSem1T2S
	GUf26q41RveFRSa/ntre7ckey0M5e2U17E3A3kERC4WLkL/zBlkLJzykdVNEd7StALHNOr9ytcECr
	YzGnCB48i76zAZyTLFpwKKeeDpVEvUdpsfYHR0a/1wNTJO8Slv1f3bTEuq98ztYOHANuhpNtTfwdd
	JRKrRGlibkBQ+I0uC3eRD1gfVeDaRK6vrb4GLHrpd8cWtNpA+fzVzOpWKOUzcrJUNetqtMwFt3Fho
	gNMeEYWXl7zYHyYCnVAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFxAD-0002E6-Hw; Thu, 03 Oct 2019 09:12:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFxA6-0002Cm-Ro
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 09:12:40 +0000
Received: from X250 (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6F016217D7;
 Thu,  3 Oct 2019 09:12:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570093958;
 bh=hC5RRC0CVdI9lSSoHciGX50R/JTCn6x4GLQJVZUPWw8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TnJo2+0appSGZK4WOcQv7yGfWNzmU178Q94zKkpuaGpCJQJj5YwQfcuuhiLtGwY1l
 hUPjuURF33zxUkoE9s2anHyO5DmyE7UZm/knv4PrLGLPA4CndBoYNLd2Bs3PMdqwXa
 yOnxBixgpJYVknTrNzgrz+kXGTjUv1/l3eKrJIAU=
Date: Thu, 3 Oct 2019 17:12:19 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V5 3/4] ARM: imx_v6_v7_defconfig: Enable
 CONFIG_IMX7ULP_WDT by default
Message-ID: <20191003091217.GC22491@X250>
References: <1566999303-18795-1-git-send-email-Anson.Huang@nxp.com>
 <1566999303-18795-3-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566999303-18795-3-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_021238_920865_F68B4554 
X-CRM114-Status: UNSURE (   7.55  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, leonard.crestez@nxp.com,
 schnitzeltony@gmail.com, linux-watchdog@vger.kernel.org,
 otavio@ossystems.com.br, s.hauer@pengutronix.de, jan.tuerk@emtrion.com,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
 u.kleine-koenig@pengutronix.de, wim@linux-watchdog.org, festevam@gmail.com,
 linux@roeck-us.net, Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 09:35:02AM -0400, Anson Huang wrote:
> Select CONFIG_IMX7ULP_WDT by default to support i.MX7ULP watchdog.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
