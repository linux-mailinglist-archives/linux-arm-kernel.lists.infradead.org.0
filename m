Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 228121E08F9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 10:38:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8Vj8O6WfYas2xPbmOqBqiAvXVcDL/YVXHZGWEq1q8HM=; b=mEAr8aS57LWfp+umF6kubLuQv
	L/KKfE2/cnhYHhkR2eew7HsSADLCfGER6BzizhcmzSaN3PnV6lG5oXwS0TOOXvGL3tDt5XSg2Hydk
	4dwGWbcLRNEUocdR7IPQ1KRyGiZCeYIsbEaOnzgQsVR8b2zhHPOuBrk0gnlo+NUj4VQ193S2HBu25
	XLTA/rLU+mEjJ5eCiAU6KMQFsIPdf3hKp4/bwaOMh0qIMFUKc2IsBirfcO8sSkikuUD3aUfZ1JoAA
	ziDSn/8RKT9aCkDOtgda2uvDRmFA7BsQEjDAqVeP8kXvZtZR09MLOnXR0saT6+juxNh/A6t8Br+H2
	iaQEy4vIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd8co-0004Or-C3; Mon, 25 May 2020 08:38:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd8cd-0004O2-8u
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 08:38:14 +0000
Received: from [192.168.0.50] (89-70-52-201.dynamic.chello.pl [89.70.52.201])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 79D292070A;
 Mon, 25 May 2020 08:38:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590395890;
 bh=Iu3Bf6K8xAknpcdpi+/p3IjPL1Y2521MLs3/DHEjTLU=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=Ivm7FSYUh2nqsjE+OblssRVQFhjQhZGa3VSt8396z3VYi0wiK1zj7mAPXIJMXcuR8
 UVTL52rRVV9wpm1xhWmmPV9Ht4KgxcyKB4ybjIYrzTXalOCJHxFlZbTaASFYMiEwc6
 2Hakkt6Vaz6YqU2RCoDO0ENXRZ8y8w9ZRqtFUa3o=
Subject: Re: [PATCH] media: exynos4-is: Fix runtime PM imbalance in
 fimc_is_probe
To: Dinghao Liu <dinghao.liu@zju.edu.cn>, kjlu@umn.edu
References: <20200524025903.17219-1-dinghao.liu@zju.edu.cn>
From: Sylwester Nawrocki <snawrocki@kernel.org>
Message-ID: <7c5931a5-4355-be85-d61d-908afc8f7a19@kernel.org>
Date: Mon, 25 May 2020 10:38:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200524025903.17219-1-dinghao.liu@zju.edu.cn>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_013813_834542_F99B78E1 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/24/20 04:59, Dinghao Liu wrote:
> pm_runtime_get_sync() increments the runtime PM usage counter even
> when it returns an error code. Thus a pairing decrement is needed on
> the error handling path to keep the counter balanced. For all error
> paths after pm_runtime_get_sync(), things are the same.
> 
> Signed-off-by: Dinghao Liu <dinghao.liu@zju.edu.cn>

Reviewed-by: Sylwester Nawrocki <s.nawrocki@samsung.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
