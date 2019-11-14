Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B39DFFC218
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 10:07:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	Subject:From:To:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=acUXHjf9SCah7ClHbmc7rUeoUjKEls2M2HXQsJr4ks8=; b=WOj
	+XySeEL1qMFrL0qX2bPywhtUGpK7zM2bhP8ucgD6+MfJ/4X3yCHKbBPvxCGemRY0c8fInXZtBXCO6
	8IzaJZT1//lISrSTiKxrlXz3vapLKQ++C8Tj2PR7Q+wfgcmt23NsGHG/7Zs3g/Rkt71IieMScEa+w
	QhRv5OfbKu1J9F1gIYsrY9vIZ7hAmtWZQudmRLGQFbsHajGb4BoKXzD5sZAoW2Kj+xujoGfcsLlJJ
	kWc04y9XK3p6ZmzbbfnkG/4TIfp4IpDodN5e7sNdIhMEGYvfPQrgpyv20kFgL86+eX+NWTctPQYVt
	ypmI55kFiLoSJitcWYKUbjuWfJ2Ps5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVB6S-00043A-Qf; Thu, 14 Nov 2019 09:07:48 +0000
Received: from ozlabs.org ([203.11.71.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVB6L-00041t-AU
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 09:07:42 +0000
Received: by ozlabs.org (Postfix, from userid 1034)
 id 47DFxN5pWqz9sP6; Thu, 14 Nov 2019 20:07:36 +1100 (AEDT)
X-powerpc-patch-notification: thanks
X-powerpc-patch-commit: 93a1544ad4ec4bd9147992e57b4f834ceb2cc159
In-Reply-To: <20190612071901.21736-1-yuehaibing@huawei.com>
To: YueHaibing <yuehaibing@huawei.com>, <linux@armlinux.org.uk>, <fw@strlen.de>,
 <steffen.klassert@secunet.com>, <davem@davemloft.net>, <ralf@linux-mips.org>,
 <paul.burton@mips.com>
From: Michael Ellerman <patch-notifications@ellerman.id.au>
Subject: Re: [PATCH net-next] defconfigs: remove obsolete
 CONFIG_INET_XFRM_MODE_* and CONFIG_INET6_XFRM_MODE_*
Message-Id: <47DFxN5pWqz9sP6@ozlabs.org>
Date: Thu, 14 Nov 2019 20:07:36 +1100 (AEDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_010741_523163_B84262E1 
X-CRM114-Status: UNSURE (   4.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.11.71.1 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-s390@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 linux-sh@vger.kernel.org, netdev@vger.kernel.org,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-06-12 at 07:19:01 UTC, YueHaibing wrote:
> These Kconfig options has been removed in
> commit 4c145dce2601 ("xfrm: make xfrm modes builtin")
> So there is no point to keep it in defconfigs any longer.
> 
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Applied to powerpc next, thanks.

https://git.kernel.org/powerpc/c/93a1544ad4ec4bd9147992e57b4f834ceb2cc159

cheers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
