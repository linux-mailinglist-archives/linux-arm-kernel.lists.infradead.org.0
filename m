Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D533AD403
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 09:39:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wgY0+Qa7n3pvRK6pp0XYQS8qKC+R3/DGjLMo+OpZ7bA=; b=mkd1XzN6s03ETX
	FfuOzDRhi885cDCaOtvEIQSd207XQLeA+9dpw3pG5uNZuO5e6y/5ezG3OlYlNdZR9HpgkZxIiq1hJ
	xqhdSXMIp+7VScBaCQ/OF+YxM4vEq6eurvKduVZf+gTzR6gINxdrfPUTxWM4VGCGCXEzCQtFzAMtR
	dvTw0d5XqSYGa83QyxwGg5I01mVCelc1HJhA0+4mnUEu1NU6toE9KRNb92HaMGo7XYAYpwPU/5Zxf
	Cf93RjzRSv/6tF1C+L/XtKksGijLw0z6dJvNv8kYvA0FP71TY4tu5ss0YzWUO0b7PIINEikSjFzjH
	qKIVtN405hmXf8CpDWkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7EGb-0000UZ-9q; Mon, 09 Sep 2019 07:39:17 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7EGM-0000U7-MU
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 07:39:04 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x897c5XT064682;
 Mon, 9 Sep 2019 02:38:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1568014685;
 bh=d3WXiAoIHNOPCQY5Nl1J90ozKzsARnBX6JhSEGqGL1I=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=GOPzJ6FtRI9C9NRAolMibCbql+mDn4YJhAW+wa+J9Cu4DxO3SjhbrnXFqPMPgiJ/1
 ydDPw/cHHGr3j8mS6AFhSds5njIITcN+wSn/TbWSeYceA2BJtOkxnSSYy7jB/s+DQO
 ExjfMz6E6mhperX3qTLjE3ECPvrcSncBf6TVViTo=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x897c5V2062592
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 9 Sep 2019 02:38:05 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 9 Sep
 2019 02:38:05 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 9 Sep 2019 02:38:05 -0500
Received: from [172.24.190.212] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x897c22Y072294;
 Mon, 9 Sep 2019 02:38:03 -0500
Subject: Re: [PATCH v2 4/5] ARM: davinci: support multiplatform build for ARM
 v5
To: Bartosz Golaszewski <brgl@bgdev.pl>, Kevin Hilman <khilman@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, David Lechner <david@lechnology.com>
References: <20190725131257.6142-1-brgl@bgdev.pl>
 <20190725131257.6142-5-brgl@bgdev.pl>
From: Sekhar Nori <nsekhar@ti.com>
Message-ID: <5fd79cda-59d4-b69b-9902-5d01e1087c62@ti.com>
Date: Mon, 9 Sep 2019 13:08:01 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190725131257.6142-5-brgl@bgdev.pl>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_003902_774528_163BE92D 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On 25/07/19 6:42 PM, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> 
> Add modifications necessary to make davinci part of the ARM v5
> multiplatform build.
> 
> Move the arch-specific configuration out of arch/arm/Kconfig and
> into mach-davinci/Kconfig. Remove the sub-menu for DaVinci
> implementations (they'll be visible directly under the system type.
> Select all necessary options not already selected by ARCH_MULTI_V5.
> Update davinci_all_defconfig. Explicitly include the mach-specific
> headers in mach-davinci/Makefile.
> 
> Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Acked-by: Sekhar Nori <nsekhar@ti.com>

Thanks,
Sekhar


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
