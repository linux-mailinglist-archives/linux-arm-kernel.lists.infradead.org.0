Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB2B799D9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 22:23:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aFSNcmrLJupL+GpcMKOQ4+FfJsoYVHNjnijyGhOyAs8=; b=DJFp839FmDTrjk
	7hDug+Gcsr4pWNpsvjnHe+uiFibjfSmH92ZlezFAN3DpCxGlgoryJrYOFtfVFXYsJoZkKytbmcn5p
	vPJh03X8uDAgPUMN+KGUzEkxLNEM9Ikc2WCLiIAMpjaxoapuTZgHl23q28m0gkbXCbyO2OFeON5CW
	zrhOXg6OiWZkUZG13dwppn1vWtaKpdwLelA2Pl3BbOPQ6bK9385UrfxQE4IrcoglvJQW1G9pzk7FJ
	Lupr9Jeb3+TtVrgUTC4h31LzUjl7PBW00vFPkDlOae/WxVYYzuxQp01TNKoKv4NMASFVE6O07Flkz
	DDXrtWm4qV0/MAmNDosQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsCB5-0003H0-8Y; Mon, 29 Jul 2019 20:23:27 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsCAr-0003G6-RK
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 20:23:15 +0000
Received: from [2a01:e35:2fdd:a4e1:fe91:fc89:bc43:b814] (helo=ohm.rr44.fr)
 by hall.aurel32.net with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <aurelien@aurel32.net>)
 id 1hsCAg-0003MP-On; Mon, 29 Jul 2019 22:23:02 +0200
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.92)
 (envelope-from <aurelien@aurel32.net>)
 id 1hsCAg-0007Jz-AQ; Mon, 29 Jul 2019 22:23:02 +0200
Date: Mon, 29 Jul 2019 22:23:02 +0200
From: Aurelien Jarno <aurelien@aurel32.net>
To: Will Deacon <will.deacon@arm.com>
Subject: Re: [PATCH 0/2] Don't use SIGMINSTKSZ when enforcing alternative
 signal stack size for compat tasks
Message-ID: <20190729202302.GA3443@aurel32.net>
Mail-Followup-To: Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 arnd@arndb.de, linux@dominikbrodowski.net, ebiederm@xmission.com,
 akpm@linux-foundation.org, viro@zeniv.linux.org.uk, oleg@redhat.com,
 steve.mcintyre@arm.com, dave.martin@arm.com
References: <1532526312-26993-1-git-send-email-will.deacon@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1532526312-26993-1-git-send-email-will.deacon@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_132314_018877_EF59C253 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:bc8:30d7:100:0:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: arnd@arndb.de, linux-kernel@vger.kernel.org, linux@dominikbrodowski.net,
 oleg@redhat.com, ebiederm@xmission.com, akpm@linux-foundation.org,
 steve.mcintyre@arm.com, dave.martin@arm.com,
 linux-arm-kernel@lists.infradead.org, viro@zeniv.linux.org.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2018-07-25 14:45, Will Deacon wrote:
> Hi all,
> 
> The Debian folks have observed a failure in the 32-bit arm glibc testsuite
> when running under a 64-bit kernel. They tracked this down to sigaltstack(2)
> enforcing the alternative signal stack to be at least SIGMINSTKSZ bytes,
> which is higher for native arm64 tasks than compat 32-bit tasks.
> 
> These patches resolve the issue by allowing an architecture to define
> COMPAT_SIGMINSTKSZ for compat tasks, which is then used by the sigaltstack
> checking code.
> 
> Feedback welcome,
> 
> Will
> 
> --->8
> 
> Will Deacon (2):
>   signal: Introduce COMPAT_SIGMINSTKSZ for use in compat_sys_sigaltstack
>   arm64: compat: Provide definition for COMPAT_SIGMINSTKSZ

Only the first patch went to the stable kernels. The second one is
missing, so the bug is still not fixed in those kernels. Would it be
possible to also get it included?

Thanks,
Aurelien

-- 
Aurelien Jarno                          GPG: 4096R/1DDD8C9B
aurelien@aurel32.net                 http://www.aurel32.net

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
