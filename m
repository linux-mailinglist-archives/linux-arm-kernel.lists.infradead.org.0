Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD0A1E091A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 10:41:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NeubXvxf4+AmkaCRXnnCQ3rHWRdQtjvzrxPAFeoK+9w=; b=AhBbs0AxkblYDKFyCmh/zpRaE
	iASkFfSrPNn1KLcHtctLckgvkRQ2Hf2WADjZ3omEjXHYJkWv8+5FICo0qVg7rXcoXqZoIVNa8Dkl1
	JgRfYy4MYT9jQSfTXsRt9Qtz4yRsW3l2ZhxRmtaqeRxyKJFW2EwA8mZTkojq0e5rXiDO0nDvLSjtM
	SkUZ4yDResneh64f7XO2v3v/gW9GMLa2y/s++TOPbr++Q9l4+sqMYHn5Csj2sUztdRFmdOraY7WZK
	G0oiEDPk1u0BGWnS0sdbwKTjK8E1K2N4X4V0wfngIQG5FS2rZ6i8cXGMgN+IAStcwXMw0o23iBaqU
	lKNB784+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd8fI-0000D7-5V; Mon, 25 May 2020 08:40:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd8ef-000875-Bv
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 08:40:24 +0000
Received: from [192.168.0.50] (89-70-52-201.dynamic.chello.pl [89.70.52.201])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5C2FE206C3;
 Mon, 25 May 2020 08:40:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590396016;
 bh=GL159ZQNLTlj2WGGQuKXAGi8lVtqHdeHMIsD6BmONC0=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=vqcq27tKaqWpr2bu+p4rvaNWHiBH9SFiUHGgkSNz2qWurwhKBRcYZ7Wgwa9XT+tYI
 5ZCU/f7UIuTx/PYDcGbRmMkEUQoV1Ww71wkpqptMTvdZZb4FUtv12lQ7f2jBQM1RRR
 HA1AG4NZHDl3VlKZZptPu168RbCwdkvYkAM9fSU8=
Subject: Re: [PATCH] media: exynos4-is: Fix runtime PM imbalance in
 isp_video_open
To: Dinghao Liu <dinghao.liu@zju.edu.cn>, kjlu@umn.edu
References: <20200524033404.23227-1-dinghao.liu@zju.edu.cn>
From: Sylwester Nawrocki <snawrocki@kernel.org>
Message-ID: <bde57b79-dc52-6fca-4efd-e8c7b1c57373@kernel.org>
Date: Mon, 25 May 2020 10:40:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200524033404.23227-1-dinghao.liu@zju.edu.cn>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_014017_523105_A58893E5 
X-CRM114-Status: GOOD (  12.66  )
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

On 5/24/20 05:34, Dinghao Liu wrote:
> pm_runtime_get_sync() increments the runtime PM usage counter even
> when it returns an error code. Thus a pairing decrement is needed on
> the error handling path to keep the counter balanced.
> 
> Signed-off-by: Dinghao Liu<dinghao.liu@zju.edu.cn>

Reviewed-by: Sylwester Nawrocki <s.nawrocki@samsung.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
