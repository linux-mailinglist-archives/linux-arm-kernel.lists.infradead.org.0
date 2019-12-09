Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D2A11737B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 19:08:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oO8N1Y9EQXsY3lR40X2yHOwO8QdV4j3v3jO3OlCpDTk=; b=o/YEKFroq/kcVV
	U27yDP0/JfRbdeqvBaQuS2FQ4a1H7ozna0SS66OkxB7enggABUDGICYWOLGz8NOhxMw/v0L/i0GFS
	e6IKAmPpicH6jkfT/3sj8u2d46etgfiKwftMNsZDGmIohT+x40b+nr9aCEMuv+V+hCIKO0U4NwSuZ
	wR6sJjMV1BezjXzDRYUHu81rkRxIIAGAxK19cgWIxeCjyb7KpUmh25l/KtErD3dlo3eoSKxknYHNU
	KgC5JMHlg2HF7oUzYvekIyK8XLkTrheHM8tDg/at14xiAjX85kVw+0EVe+RP54IEmPYYtNzqXxMhg
	ayvo12cc/OczAGOlypuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieNS7-0002kf-SH; Mon, 09 Dec 2019 18:08:11 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieNS1-0002jE-4N
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 18:08:06 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 75B8480CD;
 Mon,  9 Dec 2019 18:08:34 +0000 (UTC)
Date: Mon, 9 Dec 2019 10:07:52 -0800
From: Tony Lindgren <tony@atomide.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Will Deacon <will@kernel.org>
Subject: arm_smccc_smc as generic smc interface?
Message-ID: <20191209180752.GJ35479@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_100805_208431_4EF9E716 
X-CRM114-Status: UNSURE (   7.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Sumit Garg <sumit.garg@linaro.org>,
 Arnd Bergmann <arnd@arndb.de>, Volodymyr Babchuk <vlad.babchuk@gmail.com>,
 Marc Zyngier <maz@kernel.org>, "Andrew F. Davis" <afd@ti.com>,
 Olof Johansson <olof@lixom.net>, Andy Gross <andy.gross@linaro.org>,
 Colin Ian King <colin.king@canonical.com>,
 Jens Wiklander <jens.wiklander@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

So it seems that we could make arm_smccc_smc() into a generic kernel
smc interface instead of being limited to optee usage. That is
assuming optee and legacy calls are never be enabled the same time
on a booted system :)

I know arm_smccc_smc() currently assumes a specific register usage
for the optee case, but AFAIK those limitations do not exist for
non-optee cases.

Does anybody see some other issues with making arm_smccc_smc() into
a generic smc call interface?

If there are some more optee specific considerations with making
arm_smccc_smc() into a generic interface, we could just set up
something generic that also arm_smccc_smc() can then call.

The use case I'm familiar with are the old TI smc calls that need
register specific quirks enabled only for the non-optee case,
while with optee enabled, quirks are not needed. There are
probably similar issues with other SoCs too.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
