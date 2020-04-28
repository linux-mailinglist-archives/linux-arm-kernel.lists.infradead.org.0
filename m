Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 837A91BC45E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 18:01:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m/N2rn/Wcq/CIWQSiw5r1qWHr5cZLRon0J/jtww4R3o=; b=i1NFwZj909BELk
	1npL2QqZwLvDG/4kt6OPgZA6LslZwCE1kqI6T8wiEU4uRUweIopE7seLGw1jtAPfX/dEJ++06zp9y
	gnaTLZg4ESZy1Pe/UtJBNszlimiYG5Np4dGEUhi1VSkmopVrbSBNtw5CiVoTT8x3WGlGu1/0YZpnf
	dm2LECi8i1nhL7m1BTyFZXvB8BVzClbm2nopYNA+iMnQAuWhEiftleeTmXbMH1pP4OzE6kZVwGIem
	fK8nHEzjg083LB2H7liUwPp0dyyKKM+qidSBJCPkB0Cc8u6tP+UEMzvVrsCCJLefRYuSegX/2H1As
	3OJrGMyjwyMTzbjhSv7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTSfm-0007G6-QF; Tue, 28 Apr 2020 16:01:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTSfd-0007FP-Sv
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 16:01:19 +0000
Received: from [192.168.1.74] (75-58-59-55.lightspeed.rlghnc.sbcglobal.net
 [75.58.59.55])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5594320575;
 Tue, 28 Apr 2020 16:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588089677;
 bh=SWWuqtYeFWZ3I38DWk43ah6fy3VoLbdmJTw+uLQwDoI=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=yaI41Jkq+YEXEWlPtQ1lcY8i1uGO7n5apErXelEicg+EfkI5N+z8am7E0XXlGBHEH
 xmABJW4riW9ZKJDwCUQ9qLJMMxh8iveS+Auh3Zc6HraVQHnjVolcQ4myd4WFi9mrM2
 4izd940/7PNWJkzUZAjQWqS4zhNX3uvG3/trrxKs=
Subject: Re: [PATCH] dmaengine: qcom_hidma: Simplify error handling path in
 hidma_probe
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>
References: <20200427111043.70218-1-christophe.jaillet@wanadoo.fr>
 <20200428125426.GE2014@kadam>
From: Sinan Kaya <okaya@kernel.org>
Autocrypt: addr=okaya@kernel.org; keydata=
 mQENBFrnOrUBCADGOL0kF21B6ogpOkuYvz6bUjO7NU99PKhXx1MfK/AzK+SFgxJF7dMluoF6
 uT47bU7zb7HqACH6itTgSSiJeSoq86jYoq5s4JOyaj0/18Hf3/YBah7AOuwk6LtV3EftQIhw
 9vXqCnBwP/nID6PQ685zl3vH68yzF6FVNwbDagxUz/gMiQh7scHvVCjiqkJ+qu/36JgtTYYw
 8lGWRcto6gr0eTF8Wd8f81wspmUHGsFdN/xPsZPKMw6/on9oOj3AidcR3P9EdLY4qQyjvcNC
 V9cL9b5I/Ud9ghPwW4QkM7uhYqQDyh3SwgEFudc+/RsDuxjVlg9CFnGhS0nPXR89SaQZABEB
 AAG0HVNpbmFuIEtheWEgPG9rYXlhQGtlcm5lbC5vcmc+iQFOBBMBCAA4FiEEYdOlMSE+a7/c
 ckrQvGF4I+4LAFcFAlztcAoCGwMFCwkIBwIGFQoJCAsCBBYCAwECHgECF4AACgkQvGF4I+4L
 AFfidAf/VKHInxep0Z96iYkIq42432HTZUrxNzG9IWk4HN7c3vTJKv2W+b9pgvBF1SmkyQSy
 8SJ3Zd98CO6FOHA1FigFyZahVsme+T0GsS3/OF1kjrtMktoREr8t0rK0yKpCTYVdlkHadxmR
 Qs5xLzW1RqKlrNigKHI2yhgpMwrpzS+67F1biT41227sqFzW9urEl/jqGJXaB6GV+SRKSHN+
 ubWXgE1NkmfAMeyJPKojNT7ReL6eh3BNB/Xh1vQJew+AE50EP7o36UXghoUktnx6cTkge0ZS
 qgxuhN33cCOU36pWQhPqVSlLTZQJVxuCmlaHbYWvye7bBOhmiuNKhOzb3FcgT7kBDQRa5zq1
 AQgAyRq/7JZKOyB8wRx6fHE0nb31P75kCnL3oE+smKW/sOcIQDV3C7mZKLf472MWB1xdr4Tm
 eXeL/wT0QHapLn5M5wWghC80YvjjdolHnlq9QlYVtvl1ocAC28y43tKJfklhHiwMNDJfdZbw
 9lQ2h+7nccFWASNUu9cqZOABLvJcgLnfdDpnSzOye09VVlKr3NHgRyRZa7me/oFJCxrJlKAl
 2hllRLt0yV08o7i14+qmvxI2EKLX9zJfJ2rGWLTVe3EJBnCsQPDzAUVYSnTtqELu2AGzvDiM
 gatRaosnzhvvEK+kCuXuCuZlRWP7pWSHqFFuYq596RRG5hNGLbmVFZrCxQARAQABiQEfBBgB
 CAAJBQJa5zq1AhsMAAoJELxheCPuCwBX2UYH/2kkMC4mImvoClrmcMsNGijcZHdDlz8NFfCI
 gSb3NHkarnA7uAg8KJuaHUwBMk3kBhv2BGPLcmAknzBIehbZ284W7u3DT9o1Y5g+LDyx8RIi
 e7pnMcC+bE2IJExCVf2p3PB1tDBBdLEYJoyFz/XpdDjZ8aVls/pIyrq+mqo5LuuhWfZzPPec
 9EiM2eXpJw+Rz+vKjSt1YIhg46YbdZrDM2FGrt9ve3YaM5H0lzJgq/JQPKFdbd5MB0X37Qc+
 2m/A9u9SFnOovA42DgXUyC2cSbIJdPWOK9PnzfXqF3sX9Aol2eLUmQuLpThJtq5EHu6FzJ7Y
 L+s0nPaNMKwv/Xhhm6Y=
Message-ID: <1efa0186-7fbe-9cb5-2719-2d7192f99e27@kernel.org>
Date: Tue, 28 Apr 2020 12:01:15 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200428125426.GE2014@kadam>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_090117_972353_85FAE2B6 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-msm@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org, vkoul@kernel.org,
 agross@kernel.org, dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/28/2020 8:54 AM, Dan Carpenter wrote:
>> @@ -897,7 +897,6 @@ static int hidma_probe(struct platform_device *pdev)
>>  	if (msi)
>             ^^^
> This test doesn't work.  It will call free hidma_free_msis() if the
> hidma_request_msi() call fails.  We should do:
> 
> 	if (msi) {
> 		rc = hidma_request_msi(dmadev, pdev);
> 		msi = false;
> 	}
> 
> 	if (!msi) {
> 		hidma_ll_setup_irq(dmadev->lldev, false);
> 		rc = devm_request_irq(&pdev->dev, chirq, hidma_chirq_handler,
> 				      0, "qcom-hidma", dmadev->lldev);
> 		if (rc)
> 			goto uninit;
> 	}
> 
> 

Let me clarify how this works. MSI capability is not present on all
platforms. Therefore, this is detected by an ACPI/DTS parameter called
HIDMA_MSI_CAP.

msi = hidma_test_capability(&pdev->dev, HIDMA_MSI_CAP);

Therefore,

1. Code will request MSI capability if it is present.
2. Code will fallback to plain IRQ, if MSI allocation also fails.

I hope this helps.

We need both #1 and #2 to be supported.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
