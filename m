Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B9E120EAD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 20:30:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5CuuCS9EtN3z4waiZH9kGZi7v3lz42OfVVoaosGGg10=; b=QorKJ9phChMYeE
	lKVD5M3gg3gPswrKRP6ySRQG8f4c1OIv7Jf/Yuo9kA9PSkMxcBHW8V/cjsVwC3RxsGMUoSz2rXi7C
	Qp5iZVCt0TNy7esAHUqmBsvW9LO4YGlo/DxJKqvqlVr/vPCOsVAtIbWGNDbmsLBBprbxcBMQfXJiB
	UM5BAgCHv/Uu/UFjNYeNvEWXmrvOWIhlr4TNlgRPAVQDYKZYwA9oGikP4CZ0Qmp9c3ALTxp2KHqRx
	Ai168HzHwUitY3Uior3adtvod7bd1f4+qttDk5pfluPJ2eUeI6eFwbSI5erSk1uYyxRDJMkqofHRw
	Quqi+lcmzx0sgD8aBjUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRL8s-0003pb-3t; Thu, 16 May 2019 18:30:10 +0000
Received: from emh06.mail.saunalahti.fi ([62.142.5.116])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRL8e-0003it-G3
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 18:29:59 +0000
Received: from darkstar.musicnaut.iki.fi (85-76-51-100-nat.elisa-mobile.fi
 [85.76.51.100])
 by emh06.mail.saunalahti.fi (Postfix) with ESMTP id 25497300CD;
 Thu, 16 May 2019 21:29:50 +0300 (EEST)
Date: Thu, 16 May 2019 21:29:49 +0300
From: Aaro Koskinen <aaro.koskinen@iki.fi>
To: Prasad Sodagudi <psodagud@codeaurora.org>
Subject: Re: [PATCH] kernel/panic: Use SYSTEM_RESET2 command for warm reset
Message-ID: <20190516182949.GD10985@darkstar.musicnaut.iki.fi>
References: <ce0b66f5d00e760f87ddeeacbc40b956@codeaurora.org>
 <1557366432-352469-1-git-send-email-psodagud@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557366432-352469-1-git-send-email-psodagud@codeaurora.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_112956_854754_F9C4BD56 
X-CRM114-Status: UNSURE (   5.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.142.5.116 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, julien.thierry@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 sudeep.holla@arm.com, akpm@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed, May 08, 2019 at 06:47:12PM -0700, Prasad Sodagudi wrote:
> Some platforms may need warm reboot support when kernel crashed
> for post mortem analysis instead of cold reboot. So use config
> CONFIG_WARM_REBOOT_ON_PANIC and SYSTEM_RESET2 psci command
> support for warm reset.

Please see commit b287a25a7148 - you can now use kernel command
line option reboot=panic_warm to get this.

A.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
