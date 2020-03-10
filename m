Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E553A1805A0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 18:56:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wvq8y6sBRqzcf+dWOz/rmMsE8XJ0nVdSptPGxdtQjBI=; b=HZ2kZJM4429TOh
	xsVK0U013G1IrG0zI//27BzPg5IOPNBsmJrgeipjf9Wc1/KgBm5pAc+X3Zx88LkHnP9MveppeHhiR
	hQDmP6B8HGCW7DNr4Qnpvpa1TcN5s3Qur8d6dsuozNzJVLSRVRXwM0Ee2uH2FnMhmcgb8eudxoiSW
	hUH9FpXEG5+qe/2m/c+FrQL1fmmUN//dYndg6oA/lTf8TAaQ9tnjI6rgE4iAr62f8mp3zknkVhQbr
	6XDsJLbRYCSLYMTI8phMsWQq/SMDud1GhH1+kxiSu8cX9aLORVpSX0vS5aQ05oXX/Hg44uMqskB03
	XbT4+alA7nhTOW076PIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBj7T-0004PZ-Bj; Tue, 10 Mar 2020 17:56:43 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBj7I-0004P4-Mj
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 17:56:35 +0000
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 9681F537;
 Tue, 10 Mar 2020 17:56:30 +0000 (UTC)
Date: Tue, 10 Mar 2020 11:56:29 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 8/9] docs: perf: imx-ddr.rst: get rid of a warning
Message-ID: <20200310115629.15a66690@lwn.net>
In-Reply-To: <b27b54bd4f847032fd33313d6497ff320c0f3d78.1583250595.git.mchehab+huawei@kernel.org>
References: <afbe367ccb7b9abcb9fab7bc5cb5e0686c105a53.1583250595.git.mchehab+huawei@kernel.org>
 <b27b54bd4f847032fd33313d6497ff320c0f3d78.1583250595.git.mchehab+huawei@kernel.org>
Organization: LWN.net
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_105632_757458_80D8F3F5 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [45.79.88.28 listed in list.dnswl.org]
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
Cc: linux-doc@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Frank Li <Frank.li@nxp.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue,  3 Mar 2020 16:50:38 +0100
Mauro Carvalho Chehab <mchehab+huawei@kernel.org> wrote:

>     Documentation/admin-guide/perf/imx-ddr.rst:47: WARNING: Unexpected indentation.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  Documentation/admin-guide/perf/imx-ddr.rst | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/admin-guide/perf/imx-ddr.rst b/Documentation/admin-guide/perf/imx-ddr.rst
> index 3726a10a03ba..f05f56c73b7d 100644
> --- a/Documentation/admin-guide/perf/imx-ddr.rst
> +++ b/Documentation/admin-guide/perf/imx-ddr.rst
> @@ -43,7 +43,8 @@ value 1 for supported.
>  
>    AXI_ID and AXI_MASKING are mapped on DPCR1 register in performance counter.
>    When non-masked bits are matching corresponding AXI_ID bits then counter is
> -  incremented. Perf counter is incremented if
> +  incremented. Perf counter is incremented if::
> +

Applied, thanks.

jon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
