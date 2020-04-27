Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 765CD1BA48C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 15:25:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n/EVYnTwTu9iBqGbjk8Cld1Lu1mPiCCqXYMneQERop0=; b=PO4zuBjld98mPV
	Yw54uarPewiCkzhvSe/K/ZO+OfEiogP3Z3ohKwLZA2Lfu/ZZ8zPgGwKhVGg3l5lG6L4v/GGPM25/z
	SeqKcS+oUiJg27401IsJPRDQ6b4doKIq49xeGFplug5bZgYFh5+YfwI4YIydzVS3ChvTQrW+dB1Jz
	tQH31joXfDmPNk6AzWnbSG3mBTP6Vq9q+M17ENPUdXwLmkWnR4Hpg+uhwnqBQKOfKtAPkCzeRnCFR
	Yqv9XsS48GPuAD3WZEB/gE9tOLgqtkrejuS07874nMl9CxUBql2bg2fCcBMfulT7iH8zrwVfpYd88
	9IhpoDw2H9fwtTDIWtIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT3kk-0006dE-Ug; Mon, 27 Apr 2020 13:24:54 +0000
Received: from mleia.com ([178.79.152.223] helo=mail.mleia.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT3kb-0006cF-P6
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 13:24:46 +0000
Received: from mail.mleia.com (localhost [127.0.0.1])
 by mail.mleia.com (Postfix) with ESMTP id E6E983DC9E9;
 Mon, 27 Apr 2020 13:24:41 +0000 (UTC)
Subject: Re: [PATCH net-next] net: lpc-enet: fix error return code in
 lpc_mii_init()
To: Wei Yongjun <weiyongjun1@huawei.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 "stigge @ antcom . de" <stigge@antcom.de>
References: <20200427121507.23249-1-weiyongjun1@huawei.com>
From: Vladimir Zapolskiy <vz@mleia.com>
Message-ID: <936fc5fb-25a1-8974-71e2-80c2c4bdd0f4@mleia.com>
Date: Mon, 27 Apr 2020 16:24:40 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200427121507.23249-1-weiyongjun1@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-49551924 
X-CRM114-CacheID: sfid-20200427_132441_970355_2770457E 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message. 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_132441_970355_2770457E 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: netdev@vger.kernel.org, kernel-janitors@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/27/20 3:15 PM, Wei Yongjun wrote:
> Fix to return a negative error code from the error handling
> case instead of 0, as done elsewhere in this function.
> 
> Fixes: b7370112f519 ("lpc32xx: Added ethernet driver")
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>

Acked-by: Vladimir Zapolskiy <vz@mleia.com>

--
Best wishes,
Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
