Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B74E712020C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 11:11:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cKbpyLPNgB7dXkp6MGcLPo8q6qYiyOlaT7STKbv+HLc=; b=rX2KjTvrDQlrvT
	Uc7wYdSCZ3KWkMacMBhUS+cmSQILoDLlUnXto4eIgHcwRBOmJ6NcE+awe0i1BWKWtU8r7rlsG7OgN
	alw/f++E0fST0xkX2Lv12x2aEWwmZL3JE+Jiow2OVKAQPzEx2vxjL2qvVONvNkKBos2d3H6k2s0dB
	Yi6VchjyhA7+mf5c8hWsNNQM5QaJOo6vEGF6G+u4sLqDhizYRY0kDsmZL2wQ6qKYFY+165TFgd5Gs
	hHbb2K6qlVWp3aR+rlI7Vi3Nf0FAa9gsVNGtgQ/hnOjqZA9FfH/o9Dye01iqx65j/JMbnHJ2SrJCi
	UvHdVn7in+hlhu33vT3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ignLN-0006pz-RP; Mon, 16 Dec 2019 10:11:13 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ignLD-0006pX-9k
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 10:11:04 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: lv7/5kcwSYbSL900dkh5Z9qI/NF+SkI0eBVdLiVY4tUGYfRnR9ig/2m61zvGhTa8v9JYyr9sAy
 CgNyx+CLpf00JVDcmeBTvCwe7sW5sCQI0WptF73XNYC2uOzwWTDYEqgYs6TKPYYvMpRgr4o42l
 XMnoZhpjUjANUoNuc+UBjWakGr7tEIPHgsT2QzBRVOV9+54CCZxaImOEAYbrJCVIkXZEC88Juc
 r7VfM5jlc2bG2lkCepSvNcp3AuI2LC8hpXz62WduL7H2/gR9o1567L5aTWbrUcRlPVYNQb6Mfc
 f0k=
X-IronPort-AV: E=Sophos;i="5.69,321,1571727600"; d="scan'208";a="59116100"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 16 Dec 2019 03:11:02 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 16 Dec 2019 03:10:59 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Mon, 16 Dec 2019 03:11:00 -0700
Date: Mon, 16 Dec 2019 11:10:44 +0100
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH 0/3] SAMA5D2 i2c bus recovery testing
Message-ID: <20191216101044.x7m7edrrjn2xtq6h@M43218.corp.atmel.com>
Mail-Followup-To: Kamel Bouhara <kamel.bouhara@bootlin.com>,
 Codrin.Ciubotariu@microchip.com,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
References: <20191205140305.1144788-1-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191205140305.1144788-1-kamel.bouhara@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_021103_355718_31E5277E 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, Codrin.Ciubotariu@microchip.com,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kamel,

On Thu, Dec 05, 2019 at 03:03:02PM +0100, Kamel Bouhara wrote:
> 
> Here are the sama5d2 patches, as there is not pinmux defined in the
> dtsi. I choosed to only apply it to derivated board as the i2c
> configuration is specific for each.
> 
> Of course, it could be great if could test it on the ptc board as well.
> 

The i2c mailing list is missing, can you resend it please.

By the way, it fails to apply against next and 5.5-rc1. On which version is it
based? I assume a cherry-pick should work but git am fails.

Regards

Ludovic

> Best Regards,
> Kamel
> 
> Kamel Bouhara (3):
>   dt-bindings: i2c: at91: document optional bus recovery properties
>   i2c: at91: implement i2c bus recovery
>   ARM: at91/dt: sama5d2: add i2c gpio pinctrl
> 
>  .../devicetree/bindings/i2c/i2c-at91.txt      | 10 +++
>  arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts     | 33 +++++++++-
>  arch/arm/boot/dts/at91-sama5d2_xplained.dts   | 33 +++++++++-
>  drivers/i2c/busses/i2c-at91-master.c          | 64 +++++++++++++++++++
>  drivers/i2c/busses/i2c-at91.h                 |  8 +++
>  5 files changed, 142 insertions(+), 6 deletions(-)
> 
> --
> 2.24.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
