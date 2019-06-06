Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E834C368E4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 02:59:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uPnxYBECHA2FXcSOvyv7KkpUj6mu8i1lN6xQ1EUTt3I=; b=Ls5dkdR0fZtn3B
	9NwkHyC64LHSErhQBBEalo+gAXBGGOzxgLAPodlcHJHtZOjVHatAiEue1gmC4nOcHj39Mo7lASXHC
	dDunoWklER62lP22rfBFspa5a1Ak6lG15ah5xaL7sssTeWe2H7CMtDLp3vpgRQuNBsI881nJg1KRG
	2j3g0UNm/S+tlk0j18JM2sXiH9XFuDc4Dvl3pQWGV//w+ZTnXINRPQbhout/zMYOTyBItL03ft+/V
	vCihrqWXc1d4eBpNaVZKV0vvi2VQ0jKxemQip624IM7DJAAMk0/0kM7FrLLYJb5UrSulXge5BdWL7
	C4xCcmZ9ATt38gAx2nmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYgkq-0001Pp-Pv; Thu, 06 Jun 2019 00:59:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYgkj-0001PN-Ok
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 00:59:38 +0000
Received: from dragon (li1264-180.members.linode.com [45.79.165.180])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 60B642070B;
 Thu,  6 Jun 2019 00:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559782776;
 bh=9RM92FUGT9kxR49yvmRf7/FOp/l3na37/QhP/MzXp74=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hPUJC1lI17D9Z++jVdjf/Ti4i0o/F0MK2ykOVy8OvmnAluuOE5Ov8lrftfByZn+ir
 9Bq49PyaDbyE+FZ/sQySCx5N0bEwRCPSOIPKVh1Il5iUVd1PIXlaIvWliYNSqKXtTr
 gXGje5XVBbfrH4fZJQ7zOMDxmM3wUJB6bdRlO2fo=
Date: Thu, 6 Jun 2019 08:59:20 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: Re: [PATCH] arm: imx6: cpuidle: Use raw_spinlock_t
Message-ID: <20190606005914.GO29853@dragon>
References: <20190529154229.14911-1-bigeasy@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529154229.14911-1-bigeasy@linutronix.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_175937_824371_3D40F38E 
X-CRM114-Status: UNSURE (   7.65  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, tglx@linutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 05:42:29PM +0200, Sebastian Andrzej Siewior wrote:
> The idle call back is invoked with disabled interrupts and requires
> raw_spinlock_t locks to work.
> 
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

Applied with changing subject prefix to 'ARM: imx6: ...', thanks.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
