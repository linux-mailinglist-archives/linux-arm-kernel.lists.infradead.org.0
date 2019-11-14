Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B49FC309
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 10:51:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M2Lzogn4mZtGrXHb+xIfra97GOZBqh27Mv54k5AF62k=; b=GjLLs7ZYZQjx2UqH4EVbQ1WdY
	wWmJXi3tPxsDg0QY6AFdxLtkBFWMzo33cQE06185qdTaZQoeHSvR9hy3kEC6gGCc9oWjxqtlNFDol
	GwZKl9CMN9cavjmdzySUqtHzZNvTTxozL5hIsYR5y8NkqIq1NgQNKp5psDs/WwyC8PvCP1GjG1cUd
	ol7F/H/odnrK8Mz8u5v+IZu7yndR8631a86uk4sIlgba4hfny+0C2aHpGA6t80YIPNGo3LNr4QsQ1
	oSh5vjWWTYxneznecEfwFMEdkwCuGE6peX+PfDfnkkXVqd3g9bMvWwvkaoDNfQIvBg6RlSIdP+57O
	r5ODeQR+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVBme-0005Tu-7d; Thu, 14 Nov 2019 09:51:24 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVBmW-0005St-5w
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 09:51:17 +0000
Received: from lhreml707-cah.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 76B70F2764B67881FD72;
 Thu, 14 Nov 2019 09:51:05 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 lhreml707-cah.china.huawei.com (10.201.108.48) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 14 Nov 2019 09:50:48 +0000
Received: from [127.0.0.1] (10.202.226.46) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Thu, 14 Nov
 2019 09:50:48 +0000
Subject: Re: [PATCH v2] drivers/perf: hisi: Simplify hisi_read_sccl_and_ccl_id
 and its comment
To: Shaokun Zhang <zhangshaokun@hisilicon.com>,
 <linux-arm-kernel@lists.infradead.org>
References: <1573693023-64564-1-git-send-email-zhangshaokun@hisilicon.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <45b64956-f345-97a0-81ae-71879f4eed7b@huawei.com>
Date: Thu, 14 Nov 2019 09:50:47 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <1573693023-64564-1-git-send-email-zhangshaokun@hisilicon.com>
Content-Language: en-US
X-Originating-IP: [10.202.226.46]
X-ClientProxiedBy: lhreml713-chm.china.huawei.com (10.201.108.64) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_015116_369533_B44DF7F2 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14/11/2019 00:57, Shaokun Zhang wrote:
> hisi_read_sccl_and_ccl_id is not readable and its comment is a little
> confused, so simplify the function and its comment as Mark's suggestion.
> 
> Cc: John Garry<john.garry@huawei.com>
> Cc: Mark Rutland<mark.rutland@arm.com>
> Cc: Will Deacon<will@kernel.org>
> Suggested-by: Mark Rutland<mark.rutland@arm.com>
> Signed-off-by: Shaokun Zhang<zhangshaokun@hisilicon.com>

Reviewed-by: John Garry <john.garry@huawei.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
