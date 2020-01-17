Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A529140E9A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 17:05:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x25Lx2vbBNTjLn0N8sHwq7UpoWisbdRQN2yQ7ZTtpHg=; b=qeTYv0JbhdmRMz
	3+++xBdIzmKlrrIS2kGydRo8wKJRhmT+D6gNa9spxCNWXhoZu0Fi9Uk3qiKR3W/a3xJEPlUwY+sTV
	4Kzc9q/LSaPufxWlmZb10abbkOizs+cx/dM2I/nj+m+JXs7bFfZbFIXTsgSwvR6L1ujsXyqzt6/ex
	3EnqhPAbyiYbwBqQLAgLC0Xzj/Ss/dQLMTWNQL7+TNS3gFgRe2O5XQxrCM1prPqAmNGOKm9rqusEY
	A3DoE1sXPK0WfK2x9as1274/pvL56yhG1P7yw/YTB9T3W8ZHFmrdQNo697W9e3OwJt4vHGL5jyamq
	ZhLdt9c+Kp4BEMMjcbmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isU7Z-0005UD-Rb; Fri, 17 Jan 2020 16:05:17 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isU7L-0004Ev-6b
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 16:05:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:Content-Type:MIME-Version:
 Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=F3gzSJ2rs8/EOJWOdBfuzBSAdnWhjJ08Zz4I7Xg2Q/U=; b=BW9xAc5t0yRkFjDoZ1DtMuPR0
 FKLBunvppWknwkG0vsR0Loo+sl1wx7p3GTpTFY894V1DxeMyH9+th2yddja84hU8yvTIXl5cwPeJ+
 IRH6+2vySNljGy3H9ZS3bKWHeuzBhNIz8Q+jngMMiHaQ7si6lj09/HUJYAuw3dlcksHBWIG8kyBXQ
 X+XT3wlyUyrjY7ch170XwhPWQpHSi5NTUpR9BPQEuF1t+CMqh/hYlbeEWNwFHkBQ9rJZlxuTcwwDj
 QCZ7kCuarHKg9nyhcOQzJMhmHi4gCn45lcfx9RBxUnO/GSIw/VDtfmtLx31sKjnQbvqenWktWtVHx
 yHWEqLdLw==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:35460)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1isU5F-0005mN-Am; Fri, 17 Jan 2020 16:02:53 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1isU5D-0008Qw-Vs; Fri, 17 Jan 2020 16:02:52 +0000
Date: Fri, 17 Jan 2020 16:02:51 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: REGRESSION: ChaCha fails to build in randconfig
Message-ID: <20200117160251.GQ25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_080503_396621_F13BD250 
X-CRM114-Status: UNSURE (   7.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ard,

Randconfig builds have found an issue with a commit in the last merge
window:

chacha-glue.c:(.text+0xc0): undefined reference to `chacha_4block_xor_neon'

This seems to be a result of this commit:

commit b36d8c09e710c71f6a9690b6586fea2d1c9e1e27
Author: Ard Biesheuvel <ardb@kernel.org>
Date:   Fri Nov 8 13:22:14 2019 +0100

    crypto: arm/chacha - remove dependency on generic ChaCha driver

CRYPTO_CHACHA20_NEON does not depend on KERNEL_MODE_NEON, yet the
makefile has:

obj-$(CONFIG_CRYPTO_CHACHA20_NEON) += chacha-neon.o
chacha-neon-y := chacha-scalar-core.o chacha-glue.o
chacha-neon-$(CONFIG_KERNEL_MODE_NEON) += chacha-neon-core.o

chacha-glue.c refers to chacha_4block_xor_neon in chacha_doneon(),
and I guess some compilers are not clever enough to eliminate that
code with KERNEL_MODE_NEON is disabled.

Arnd has a patch that adds a dependency to stop this being a problem,
but that is probably not what you want.  Please fix.

Thanks.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
