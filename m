Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9ABEB8AA8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 07:53:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gr0K0UWSKZjGZucTTMvwoQTtoWDaDjgMxXcatFfp7yU=; b=mOJKIGgsjYdf7i
	ZZPFuCK5Ko1898H/VFukOJt1o+PW1mWaW3w4egYvGuw1Jsqp3ZApiih0HMRc5DryCs7yjWiOzs6mv
	YHgxW2lN52EwywPi/Yhf6ZuDIMNiVcy80JT0p79BV/HPCzuiLP17yi83JYo8pvlvjr30Tf7fi47+j
	I3jHul+xrl/i0/E3NRS8vOQ0AgcyfpUvTfsIBrc6B1AVCsUs1AadclM72lpY/CbcOFRsduwAoJ7vt
	gUbzZW+Gcqkh31yYmQc7eqLTx2WfdBoG19JQBUm0algNvWUs0bQuKbzs+qZSfCXQmGZ/mO3iiK0Me
	1BPIa3aZ3lFkDYbPNslg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBBrT-0007im-Ko; Fri, 20 Sep 2019 05:53:44 +0000
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBBrG-0007i3-C3
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 05:53:31 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id B096155D;
 Fri, 20 Sep 2019 01:53:26 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Fri, 20 Sep 2019 01:53:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=sYqoSELWDB8JtRDLGnIHP2w4CWUd69D
 2d/NJIApm9X4=; b=F5uLX2noa80V2YgZkxsR/Ju/5z1IDtVut1FBoQ3K/K2q3mD
 FE6eXLmDmKqMneAD0c04mrhmY4lp00+nxzO6fDYkLKzKgUfKeryBcERc+HbIFQsz
 T+DyyH66+F0qBBALece+nVYTr6G8kwe4v9LpXRca9QQ+guy5hDULbhoz1EqYfAMk
 Lp0IO+LgtNJ74k8ttvSXpu31yYRKy00qqakUSgjvoaI8sDd5K0akorMRsXz4PVGS
 WChHRRqFcroepQWNK/1Bc2IBkvilH3aUBmLiaI2kuyzmUyRJ2UlYevcoOQSAaDi9
 rebW2epsehsCl4/f4wR6hQyj5v5cpvTUWAPb8yQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=sYqoSE
 LWDB8JtRDLGnIHP2w4CWUd69D2d/NJIApm9X4=; b=X5MFIhyam3OwRQGxeEFfqN
 vbZqP7dsUy3wq0Y2PwKLDdy5Yva5q5pHE5lZOWAUTLh+QnJ+kUk/xDOcjLhdW5gj
 +u67i2DkQ/kP0zmMvE/8GOO0uD4r9hBaITdSLSBAT7obvobxl99ZMwNkfnS8Rbyq
 RkF7Nlt9xw7L6EM709+FUgHeyIoYog/VrwVGjd/1AxRA22JIrxXsbmAdfrd67i/o
 L+tIex7vBBfGGdDq52mkqguAm1sCAjCz6urP72b4vq0QvPdttyuJcazsDjwvune3
 P42qiZK68dFQwy7WS80Nv8qleKFNQw6LWOEoY9r104qIsVgxMI65KbOoPC3oLNvA
 ==
X-ME-Sender: <xms:VWmEXQnLmTqB_ZYGyZLv6wMBigE-jyluAPiu9gh8CJSwdmVLHyeUAw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvddugddutddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:VWmEXddD0WcvobIQxoECsJpegeP3Mx3I0K1CUx3Bd_9afJ_Ghprpgg>
 <xmx:VWmEXWCeeQLUHUt88jH6xISWu-YyomLDowuhLtkmvtZtUDHpzMEy_w>
 <xmx:VWmEXUx7umQBGJFWRPFYV9eZAcgRofrJwONCOvswIf4lAfz_7jd1gw>
 <xmx:VmmEXedHSKeRbg6evgvXPcH7JKpCfkj_PGivqKOqAJFNlJBEDFygZQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 1AF35E00A9; Fri, 20 Sep 2019 01:53:25 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-238-g170a812-fmstable-20190913v1
Mime-Version: 1.0
Message-Id: <a26c90b8-8f85-4fe5-9dab-d7213f181efd@www.fastmail.com>
In-Reply-To: <20190919142654.1578823-1-arnd@arndb.de>
References: <20190919142654.1578823-1-arnd@arndb.de>
Date: Fri, 20 Sep 2019 15:24:01 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Arnd Bergmann" <arnd@arndb.de>, "Joel Stanley" <joel@jms.id.au>
Subject: Re: [PATCH] ARM: aspeed: ast2500 is ARMv6K
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_225330_694097_ABEDCDA4 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.19 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Thu, 19 Sep 2019, at 23:56, Arnd Bergmann wrote:
> Linux supports both the original ARMv6 level (early ARM1136) and ARMv6K
> (later ARM1136, ARM1176 and ARM11mpcore).
> 
> ast2500 falls into the second categoy, being based on arm1176jzf-s.
> This is enabled by default when using ARCH_MULTI_V6, so we should
> not 'select CPU_V6'.
> 
> Removing this will lead to more efficient use of atomic instructions.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/arm/mach-aspeed/Kconfig | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm/mach-aspeed/Kconfig b/arch/arm/mach-aspeed/Kconfig
> index a293137f5814..163931a03136 100644
> --- a/arch/arm/mach-aspeed/Kconfig
> +++ b/arch/arm/mach-aspeed/Kconfig
> @@ -26,7 +26,6 @@ config MACH_ASPEED_G4
>  config MACH_ASPEED_G5
>  	bool "Aspeed SoC 5th Generation"
>  	depends on ARCH_MULTI_V6
> -	select CPU_V6
>  	select PINCTRL_ASPEED_G5 if !CC_IS_CLANG

Unrelated, but I'm intrigued by this. Looks like I should try compile it with clang
and fix the fallout.

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
