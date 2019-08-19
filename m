Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCD499519D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 01:21:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3XXE92dj8TDsim+Bdp8HnyJ17DfmloeJTXs5jpS9GkA=; b=Nqx/xO0k7O/d0c
	42jPcSdngoWULUjSoApG/lcVJkcxfmpU4FueY/6k72s7jAtzmkbn+D4ZYsjs3DFMU7rVZ09qOMUT+
	jJfceAo739/ob48OHlNW7j0Zrk3GwwCZPGNlIQ/RkzimPAdV/mjE/hfWL8I6+AUQ00ZtnQsYheOnd
	yy2MtsqN5ityHjllYggoB4RhfZZQoenhnUQylXvAjOe/Ci95goHtz3HE4Hjjm+vO3IJ2RldgFZFMw
	rts7y6Kxc2PW6R9C5UHsxITkmhdw2zkh/zIu1tjZMHuBIRc4cUiactPFycGSywcEr9gkmk92Y5rxT
	DLUs8XkbBGYL+zwLRGvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzqxw-00054g-Cm; Mon, 19 Aug 2019 23:21:32 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzqwo-00054A-GX
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 23:20:24 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7JNKJpb000863;
 Mon, 19 Aug 2019 18:20:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566256819;
 bh=tyfJkNHq2EgWFBMlbBdi4Iejj9XMXwAnbWKf48D+V+o=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Cbh9+OTQ3s9PsG8tp/r4Zlfp/ZIh5/bSwoQU0OtozakeWlGir8Wc/XtcSfIaXA/AA
 M40fly1jYvRML+drcNTw+xuGQYhtcpDb9+sVpNogCBBTlVunxyPxvqXT9UuG1G9G94
 ecAEoXzn64IzTUDdaYB0yI6UVAbOPPTTJy2hCdFA=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7JNKJOj002841
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 19 Aug 2019 18:20:19 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 19
 Aug 2019 18:20:19 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 19 Aug 2019 18:20:19 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7JNKI6l051111;
 Mon, 19 Aug 2019 18:20:18 -0500
Subject: Re: [PATCH 0/8] soc: ti: Add OMAP PRM driver
To: Tero Kristo <t-kristo@ti.com>, <ssantosh@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-omap@vger.kernel.org>,
 <robh+dt@kernel.org>
References: <1565164139-21886-1-git-send-email-t-kristo@ti.com>
From: Suman Anna <s-anna@ti.com>
Message-ID: <432a70fc-2683-42ca-3ac7-9775efa3ca41@ti.com>
Date: Mon, 19 Aug 2019 18:20:18 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1565164139-21886-1-git-send-email-t-kristo@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_162022_658779_356F6C69 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: tony@atomide.com, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tero,

On 8/7/19 2:48 AM, Tero Kristo wrote:
> Hi,
> 
> This series adds OMAP PRM driver which initially supports only reset
> handling. Later on, power domain support can be added to this to get
> rid of the current OMAP power domain handling code which resides
> under the mach-omap2 platform directory. Initially, reset data is
> added for AM3, OMAP4 and DRA7 SoCs.

Wakeup M3 remoteproc driver is fully upstream, so we should be able to
test that driver as well if you can add the AM4 data. That will also
unblock my PRUSS.

If you can add the data to others as well, it will help in easier
migration of the individual drivers, otherwise the ti-sysc interconnect,
hwmod, and hwmod reset data combinations will all have to be supported
in code.

regards
Suman

> 
> I've been testing the reset handling logic with OMAP remoteproc
> driver which has been converted to use generic reset framework. This
> part is a work in progress, so will be posting patches from that part
> later on.
> 
> -Tero
> 
> --
> Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
