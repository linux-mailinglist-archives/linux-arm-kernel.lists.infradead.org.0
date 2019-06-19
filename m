Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F3F4BC11
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 16:54:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b/J4Oguk/bp9W4tC0Oc28mIwHL8BEgRpoyPEB+XIihc=; b=qkQDoJhUzp0Rnz
	KPTE0u/sQcZUiLJ703mHYVmRuJwQy+CdF0jCcY5h5zLXZoXs1OYp8uRf09bGOIX0FjGo8U6UcVOlf
	dU9+LgMnu4/QWOJ5CeD4zcSwC2W2PFMxXG1w37vRIciKw05usik9BQSMFflNReFxhpHrUnqeoQWWD
	KQ417C9IYWBFtQSM45ivJ1f0f9DvsFPE3qdZl9PObLlkPoTd/mLh/hEEkYr7SI2ZUNaNEKSarxeob
	Gi+Id21fB4n62G5F5BzF2EHNfiM3ieKzNT7X2wT1FMkEFqIJ0lybvhLUTS+KW7Uw9IQQ51QjrKhMh
	zhDvurfQqM27RKscuB7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdbys-0004qT-Cc; Wed, 19 Jun 2019 14:54:34 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdbyh-0004pa-T5
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 14:54:25 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5JEsI3u106573;
 Wed, 19 Jun 2019 09:54:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560956058;
 bh=Meb5QHv2YsjyRqvieBsOFA71QIU21ZFFqwC9XOZFqYI=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=UnwowhF+dQ8U1Jd425nGUZ+ZmbwI/4OxR1QB03gZDmkKvvidKiYh7OTxAup3w5KyH
 PfLjgP1vO8qt6CXPo5l97PokmrWq2YNNdzeWcDdk8bOLT5LkOwvztPnglIcoGYILY3
 8/rhf4nt6BolLSW09QNqWnzABMfNB4KBDBWhvMkw=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5JEsIp1010399
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 19 Jun 2019 09:54:18 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 19
 Jun 2019 09:54:18 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 19 Jun 2019 09:54:18 -0500
Received: from [172.24.190.172] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5JEsFiT055184;
 Wed, 19 Jun 2019 09:54:16 -0500
Subject: Re: [PATCH] [RESEND] ARM: davinci: fix sleep.S build error on ARMv4
To: Arnd Bergmann <arnd@arndb.de>
References: <20190619131148.1743339-1-arnd@arndb.de>
From: Sekhar Nori <nsekhar@ti.com>
Message-ID: <af35b098-217e-e09d-d44a-2885ad498907@ti.com>
Date: Wed, 19 Jun 2019 20:24:15 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190619131148.1743339-1-arnd@arndb.de>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_075424_007800_CB0777BE 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

On 19/06/19 6:41 PM, Arnd Bergmann wrote:
> When building a multiplatform kernel that includes armv4 support,
> the default target CPU does not support the blx instruction,
> which leads to a build failure:
> 
> arch/arm/mach-davinci/sleep.S: Assembler messages:
> arch/arm/mach-davinci/sleep.S:56: Error: selected processor does not support `blx ip' in ARM mode
> 
> Add a .arch statement in the sources to make this file build.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Tested on OMAP-L138 LCDK board with suspend-resume.

Assuming you will pick this directly:

Acked-by: Sekhar Nori <nsekhar@ti.com>

Regards,
Sekhar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
