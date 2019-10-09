Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2CB6D1985
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 22:20:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=USLKLKxxtFt6I1YiFhjBKM8IXgHPZIC74B1N61wxymI=; b=AwrCrNuFLpDhk0
	sItEL6dI/5y8bOI0nVeXmskLFnWgb9W72J2FOfOqq/WMx+viThY06fsVmaVh7lhZQlHLTTR8s7IUI
	nLEFs5qxODjHUfKIsRdwtx8FvTJYf+/1HnZgcPJIq4Fv7ovUSONkJrYsfrOZNCBZQa1bUKpEVv6Jj
	9IhzlB6Dr28neuj02Vt7KoSVelFcFptfbbE+4dV7xI6C9sgylIFmTqwPrRuMKbvbyu5gCiePPnGIZ
	BLppN/XXPzqaby+ANKuQJ7vDwSpub1dXSTaX3XJNSXrfo5+LFYI/mCQ1QvQoL8vtLvkUn6/CsvLwH
	9F/fXUleuIAdHHFvCmWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIIR7-0005yr-QG; Wed, 09 Oct 2019 20:19:53 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIIQx-0005yT-U1
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 20:19:45 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x99KJdVu057004;
 Wed, 9 Oct 2019 15:19:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1570652379;
 bh=DWPHmjHxFw0qJYZqM+VpHTwDZP572BNrMME5vOQBFII=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=hcFC6qm5CNMgM+2QtRrI+MOfbRP7U9f+0IuiEa1F4XzTra+0WP9Kjr12ykMYoPRqV
 HUEydWWxqzI79XwoMnYjp87iaLzqkEO/KNBbwQdZHTYsb8M1Lysz+0a16LopuvHZGM
 CWJcKspTkennhC7o94Cws4qun3Oy2raLFDU6CIyI=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x99KJdVc115216
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 9 Oct 2019 15:19:39 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 9 Oct
 2019 15:19:39 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 9 Oct 2019 15:19:39 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x99KJdCE104640;
 Wed, 9 Oct 2019 15:19:39 -0500
Subject: Re: [PATCH v2 0/4] Add Mailbox nodes for TI K3 AM65x & J721E SoCs
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
References: <20190725001020.23781-1-s-anna@ti.com>
From: Suman Anna <s-anna@ti.com>
Message-ID: <e27abe06-2df0-fdae-6fe5-080a40ee3bdd@ti.com>
Date: Wed, 9 Oct 2019 15:19:39 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190725001020.23781-1-s-anna@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_131944_095579_186B879E 
X-CRM114-Status: GOOD (  17.58  )
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tero,

On 7/24/19 7:10 PM, Suman Anna wrote:
> Hi Tero, Nishanth,
> 
> The following series is a revised version of the series [1] that adds
> the Mailbox DT nodes and the sub-mailboxes used to communicate between
> the main MPU processor running Linux and the various R5F and DSP remote
> processors present on the TI K3 AM65x and J721E SoC families. Patches
> are based on v5.3-rc1 + the HwSpinlock DT node series [2], and are
> intended for the 5.4 merge window. Functionality is verified using a
> out-of-tree unit-test module and some additional loopback test nodes
> available here [3] for reference.
> 
> Changes in v2:
>  - All clusters are enabled by default in base dtsi files
>  - The sub-mailboxes are moved to the actual board dts files
>  - Unused clusters disabled in the board dts files

Looks like you missed picking this series up for 5.4. Can you please
pick this up for 5.5? Let me know if you want me to repost the series,
the last patch has a conflict when applying on top of 5.4-rc1 due to
some additional nodes in the board dts file.

regards
Suman

> 
> regards
> Suman
> 
> [1] https://patchwork.kernel.org/cover/11053401/
> [2] https://patchwork.kernel.org/cover/11053311/
> [3] https://github.com/sumananna/mailbox/commits/mbox/test/5.3-rc1-k3-v2
> 
> Suman Anna (4):
>   arm64: dts: ti: k3-am65-main: Add mailbox cluster nodes
>   arm64: dts: ti: k3-am65-base-board: Add IPC sub-mailbox nodes for R5Fs
>   arm64: dts: ti: k3-j721e-main: Add mailbox cluster nodes
>   arm64: dts: ti: k3-j721e-common-proc-board: Add IPC sub-mailbox nodes
> 
>  arch/arm64/boot/dts/ti/k3-am65-main.dtsi      | 108 ++++++++++++++++++
>  .../arm64/boot/dts/ti/k3-am654-base-board.dts |  58 ++++++++++
>  .../dts/ti/k3-j721e-common-proc-board.dts     |  93 +++++++++++++++
>  arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     | 108 ++++++++++++++++++
>  4 files changed, 367 insertions(+)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
