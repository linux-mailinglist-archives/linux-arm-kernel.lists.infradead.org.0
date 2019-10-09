Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A28FD0BF3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 11:56:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r+9PQOE++eCmaK4w0FlO90hHSPXxL9vkWtDIboYZ4Yk=; b=bUQBDjsDOVYXi2
	e4DtJi4sNP9/2XbLNWaC13oUe6qYAj5QaksDnHhgMl7aoUU8OcYktpgzxOCIWP7nXTZCzCx4/G5/+
	ywSpSS5v2+doUCjmzjSaPzS/VZy/DHnFvU/no4Vu7WmlzxkX8snLTYmpUGVVeNjNnLKRRB0OOZJJI
	gyjDUWfZGqx1RWbHP25iKKrs15WGbqyOVs0ZiwihnBT05jjuBegdKUg+ZSAu1BM8GfncxU0VWuWsT
	ia4XcS4D0mRzN6OJrtBEDe70UBeh4b5JFC+nvkqswbd3LsD9fveNe4kJeBmeWsZp74neEt44vXr8f
	V1YTRI1tYqbqMRv/pybA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI8i8-0007yI-8L; Wed, 09 Oct 2019 09:56:48 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI8i0-0007xl-JE
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 09:56:42 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x999uYfE051750;
 Wed, 9 Oct 2019 04:56:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1570614994;
 bh=hJk1QqWDxBHr549Ey1KHH9as6OvUiWG5ahTGSI2IUBw=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=VYcWVANDFQ1nxQtSs3/YpAlV00C0bShS2xPdsfd7yp6ECQ/wnvpe5FNh9bUDrETmd
 rUd9zmGgOcmJNanqN51f5jsmpsS8a3krb9+1jYezhRRtC6LpTyP8P6r+jlNNBKo0wU
 SCvf5ks1k/oWOB609ML8KI66VMxw0avoRwil8S1k=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id x999uY4T038772;
 Wed, 9 Oct 2019 04:56:34 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 9 Oct
 2019 04:56:34 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 9 Oct 2019 04:56:31 -0500
Received: from [172.24.190.215] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x999uVjm033887;
 Wed, 9 Oct 2019 04:56:32 -0500
Subject: Re: [PATCH 0/2] Add Support for MMC/SD for J721e-base-board
To: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>
References: <20190919153242.29399-1-faiz_abbas@ti.com>
From: Faiz Abbas <faiz_abbas@ti.com>
Message-ID: <f176e389-d181-8848-2bce-6680232b8fa8@ti.com>
Date: Wed, 9 Oct 2019 15:27:14 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190919153242.29399-1-faiz_abbas@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_025640_718996_72D01E91 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, nm@ti.com, robh+dt@kernel.org, t-kristo@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 19/09/19 9:02 PM, Faiz Abbas wrote:
> The following are dts patches to add MMC/SD Support on TI's J721e base
> board.
> 
> Patches depend on Lokesh's gpio patches[1] and device exclusivity patches[2].
> 
> [1] https://patchwork.kernel.org/cover/11085643/
> [2] https://patchwork.kernel.org/cover/11051559/
> 
> Faiz Abbas (2):
>   arm64: dts: ti: j721e-main: Add SDHCI nodes
>   arm64: dts: ti: j721e-common-proc-board: Add Support for eMMC and SD
>     card
> 
>  .../dts/ti/k3-j721e-common-proc-board.dts     | 34 +++++++++++++
>  arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     | 50 +++++++++++++++++++
>  2 files changed, 84 insertions(+)
> 

Gentle ping.

Thanks,
Faiz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
