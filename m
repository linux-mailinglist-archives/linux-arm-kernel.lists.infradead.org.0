Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF55F8957
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 08:08:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AJLii+z/UEdfQQ/cL+zUR6nS+/qhrTChpNUofC5uGnQ=; b=IsM6qo2Nj1hTDr
	KnUAywk7jjL/xZ91NVK56kZsE3lHWtx9do14g/YnqH/oM/W60CQR5h+9w56GtweHuSU3PrjEzFXJO
	8iRFaZcPmUloN/Wh6a7mz1VtS7Lu3wxycsomJA2dsQItNGQ6vRBUiRuhiDhTqBQUNVnHrg0QNmc+K
	j1mHS1knsnvVoeIE5u8KfulVrXB85bYVijSq239vwnS2mYy5bysE0Sa/b/cfUG9JTVlAJrgRsHxtQ
	wznXdno0jjBvTnmIeqHXD2NI0Q+J36iSiy3v3iqxotBmnebBoLJ5uRHMareXe6zwcllaI/7Wm4Xn5
	k4INxFSbCVQv2HRlMp/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUQI7-00058L-PC; Tue, 12 Nov 2019 07:08:43 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUQHx-00057c-2K
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 07:08:34 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 239FFB84DB08AD78415;
 Tue, 12 Nov 2019 15:08:27 +0800 (CST)
Received: from [127.0.0.1] (10.133.213.239) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0;
 Tue, 12 Nov 2019 15:08:25 +0800
Subject: Re: [PATCH -next] crypto: sun8i-ss - Fix memdup.cocci warnings
To: Corentin Labbe <clabbe.montjoie@gmail.com>
References: <20191109024403.47106-1-yuehaibing@huawei.com>
 <20191112070309.GA18647@Red>
From: Yuehaibing <yuehaibing@huawei.com>
Message-ID: <43dff5e6-dc85-a631-2e6a-1dc07540e5a4@huawei.com>
Date: Tue, 12 Nov 2019 15:08:24 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20191112070309.GA18647@Red>
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_230833_278456_AB8F6739 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/11/12 15:03, Corentin Labbe wrote:
> On Sat, Nov 09, 2019 at 02:44:03AM +0000, YueHaibing wrote:
>> Use kmemdup rather than duplicating its implementation
>>
>> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
>> ---
> 
> Hello
> 
> Thanks but the patch was already sent by kbuild robot and merged.

Sorry, this patch title should be "sun8i-ce" instead of "sun8i-ss",

kbuild robot indeed fix 'sun8i-ss' warning,  will resend v2.

> 
> Regards
> 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
