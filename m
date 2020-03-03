Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3567C17759D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 13:04:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rpPTjZFFw5inV/JtaBXUwUC44l1Ho0bB3EJTQ1T54t0=; b=VNJ6v/Rt8T4F9GbXVMpfSDRYE
	5M4PAKiQvccMSpHz6s4xy8ckR34av0DGTPaQtrlkHK9mJ/65a4wt1CiIl/stevT8Nh2cpMpfGHxuE
	aTaw/AD/OF8U2VZG+ddcyVzs89U8KtX1YHjAoFrJLOtTW8PwfckEO2xpEvltRPPcFWENJgK0aTJCH
	7tDSgwoQQVZVFr3IXbCMoKE0PmV5ImdXWOwAFSlSSxeNPmhEFCs7qsCGVh5NVz4lmlU0OioNyXe3l
	G6EnxngRmW7NsFnybd9zkYb7V1yI8eMwCbDHs2aVL9ieiY2Zbpp0zJZQ4omxlRNSuydJ7lBSdjJsq
	kxndKuHZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j96HN-0006EJ-Ll; Tue, 03 Mar 2020 12:04:05 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j96HG-0006Dm-Jf
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 12:04:00 +0000
Received: from lhreml709-cah.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 2D46E240784E90244EDE;
 Tue,  3 Mar 2020 12:03:51 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 lhreml709-cah.china.huawei.com (10.201.108.32) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 3 Mar 2020 12:03:50 +0000
Received: from [127.0.0.1] (10.202.226.45) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Tue, 3 Mar 2020
 12:03:50 +0000
Subject: Re: [PATCH RFC 2/3] bindings/perf/imx-ddr: update compatible string
To: Joakim Zhang <qiangqing.zhang@nxp.com>, <will@kernel.org>,
 <mark.rutland@arm.com>
References: <20200226073433.5834-1-qiangqing.zhang@nxp.com>
 <20200226073433.5834-3-qiangqing.zhang@nxp.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <153d46ef-d8bf-c474-393b-7c1ddb1eb360@huawei.com>
Date: Tue, 3 Mar 2020 12:03:49 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200226073433.5834-3-qiangqing.zhang@nxp.com>
Content-Language: en-US
X-Originating-IP: [10.202.226.45]
X-ClientProxiedBy: lhreml725-chm.china.huawei.com (10.201.108.76) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_040358_793792_0AEB379C 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 26/02/2020 07:34, Joakim Zhang wrote:
> Update compatible string according to driver change.`
> 
> Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
> ---
>   Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt b/Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt
> index 7822a806ea0a..b27a1d4fec78 100644
> --- a/Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt
> +++ b/Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt
> @@ -4,7 +4,9 @@ Required properties:
>   
>   - compatible: should be one of:
>   	"fsl,imx8-ddr-pmu"
> -	"fsl,imx8m-ddr-pmu"
> +	"fsl,imx8mq-ddr-pmu"
> +	"fsl,imx8mm-ddr-pmu"
> +	"fsl,imx8mn-ddr-pmu"
>   	"fsl,imx8mp-ddr-pmu"
>   

You need to ensure that you're not loosing backwards compatibility such 
that old firmware still works with a new kernel.

I see that the dts files use the generic "fsl,imx8m-ddr-pmu" and the 
per-Soc string as well, so looks ok, but I don't know about DT files out 
of mainline...

Thanks,
John

>   - reg: physical address and size
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
