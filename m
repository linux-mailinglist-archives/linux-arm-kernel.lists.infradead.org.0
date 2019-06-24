Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A90F51C86
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 22:39:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HhG//9P8wHD0+Suxb+Y2NdRlQ6uWEDyctMFcil+j2CM=; b=dIM++V8cbN8eKc
	HKI1u4d1NH9PuHNswvIt4yzhLUlDDVWaHVzy0sVkqonJhxT/gWbkgT+p5bolGESKjDyz8x0smAlaP
	rlsYbuqUzklR9TTuVIUgC6LhuheKWEwauYDty1teoRK3T6lvbRNBL3h8IkX9/xeQBz8zSFyp3kmLw
	zd353R3YVQ2bZjlJXERkOPAkVAN484gu+QFEydGsAkzYB78TjcmiS0YjSWJVTceeMwlPFVhYJJIAE
	HNgF/2Ek1Ki06uLK3uw4garvzY/nP8bdDA9usT8m87g34br6QQJQFN2AISFP2PHoqnGEcsfT/ApsQ
	doLOTn25wgH9jIikGShg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfVk7-0002M2-5G; Mon, 24 Jun 2019 20:39:11 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfVjx-0002KI-0k
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 20:39:02 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5OKcqA8077427;
 Mon, 24 Jun 2019 15:38:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561408732;
 bh=Rx7KKINFV12iE6CsBC74T41LgUQI1T0uN4iRkdsLxVY=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=S1lURTsrPoOWHuJSpNy7BEmoQkPEfxkyyRt7zqaLIMNkoAmyildJrQqyBevODEeE2
 /bc4RgLar3zkS/jeToHT5IySR880x7GTjCXitX1MVc1V5mTxg+k3tIE6yXltodEyWb
 hMx+3eNzvXj22AZMUbbKtuS0OKqgpVGATkXRAy8M=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5OKcquw069074
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 24 Jun 2019 15:38:52 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 24
 Jun 2019 15:38:52 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 24 Jun 2019 15:38:52 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5OKcqeD087798;
 Mon, 24 Jun 2019 15:38:52 -0500
Subject: Re: [PATCH 0/3] Add HwSpinlock support for TI K3 SoCs
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring
 <robh+dt@kernel.org>
References: <20190531021321.14025-1-s-anna@ti.com>
From: Suman Anna <s-anna@ti.com>
Message-ID: <90211f72-7ce4-94e5-aef7-bbe14266dfbb@ti.com>
Date: Mon, 24 Jun 2019 15:38:52 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190531021321.14025-1-s-anna@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_133901_164240_4316A02E 
X-CRM114-Status: GOOD (  15.88  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bjorn,

On 5/30/19 9:13 PM, Suman Anna wrote:
> Hi Bjorn,
> 
> The following series adds the support for the HwSpinlock IP present
> on the newer TI K3 AM65x and J721E SoCs. The first 2 patches are
> related to the K3 support, and the last patch is a minor debug related
> trace to see the number of locks registered on each SoC.
> 
> I will be posting the DT nodes once the binding is acked.

If you do not have any comments, can you please pick up this series for
5.3 merge window?

Thanks,
Suman

> 
> regards
> Suman
> 
> Suman Anna (3):
>   dt-bindings: hwlock: Update OMAP binding for TI K3 SoCs
>   hwspinlock/omap: Add support for TI K3 SoCs
>   hwspinlock/omap: Add a trace during probe
> 
>  .../bindings/hwlock/omap-hwspinlock.txt       | 25 +++++++++++++++----
>  drivers/hwspinlock/Kconfig                    |  2 +-
>  drivers/hwspinlock/omap_hwspinlock.c          |  4 +++
>  3 files changed, 25 insertions(+), 6 deletions(-)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
