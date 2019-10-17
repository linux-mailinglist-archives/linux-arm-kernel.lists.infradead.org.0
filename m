Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D60DAB38
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 13:29:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oWoeogkPpUqTn4Irglb0sYw+6kI5d9/MpzYG/+tI1R4=; b=lQvnwRmwYXT2QU
	xbB2bWEWquyv2vMaAcf69WACDCDZTYV09HKRotwIHFzPIZulBuayQRZe3AelRSskoYVBRRmXGg1HC
	bjDrnefzej6bmjut9ZOCOFmvjNHLF59riac5iP8ytjyYSWgJBJcRMc6tGRbJ04bH4smBi9iB2FgVV
	lwDC0Cxs4aYUEUERKMWWZf1QErnhvMTNB9FfGe0S0wno8mgIUGLtj6SNuMU61ICAWdEeLyus6E73k
	tcuaCeJFH99n8Nnc2mNh21Uf5AdIzdoQizDHVKElAiVp2hV4ioPc8iNBOhG2KIl/YJXGwsQ/cy2nK
	CmKGgWoTcad6qWyBewEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL3yc-0002xr-0S; Thu, 17 Oct 2019 11:29:54 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL3yT-0002xF-D1
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 11:29:46 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9HBTinB072838;
 Thu, 17 Oct 2019 06:29:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1571311784;
 bh=7ygDIapPNxB3j5FrIGxfjRl+GM5ZgZIeSEYwl/qdNoU=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=WJJHxC+kH41VpxabPn4rj3jab59mO6nZvu8uJLBA9ffBe+x12sStIkiNn3w74OTVY
 tIgFe4f3tk1PI5LjBs/v40JmvAVNoWb9apLe6hHQ5D7ykSQQ3NmxBlsArxm0xBZzvc
 QFsrzCkmvZ8buU2PfCBvWxIZVt7JgJAiCbmeAlyo=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x9HBTiVZ070830
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 17 Oct 2019 06:29:44 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 17
 Oct 2019 06:29:43 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 17 Oct 2019 06:29:36 -0500
Received: from [172.24.190.212] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9HBTgQT121440;
 Thu, 17 Oct 2019 06:29:42 -0500
Subject: Re: [PATCH] ARM: davinci: dm365: Fix McBSP dma_slave_map entry
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, <bgolaszewski@baylibre.com>
References: <20190830102202.22317-1-peter.ujfalusi@ti.com>
From: Sekhar Nori <nsekhar@ti.com>
Message-ID: <bd3bd211-c558-d4f3-b09b-2c4bc8cc1181@ti.com>
Date: Thu, 17 Oct 2019 16:59:41 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190830102202.22317-1-peter.ujfalusi@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_042945_544000_E304C0DA 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/08/19 3:52 PM, Peter Ujfalusi wrote:
> dm365 have only single McBSP, so the device name is without .0
> 
> Fixes: 0c750e1fe481d ("ARM: davinci: dm365: Add dma_slave_map to edma")
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>

Applied for v5.4

Thanks,
Sekhar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
