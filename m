Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 260AFB0FA5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 15:12:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bfhf98R8xgF58g/9ifTfjnWLA5CvA0AHRHNxZIBDYsU=; b=m9nuNYnq4Ba4za
	ypgMbXGolZM5xwiuyo/zuUivj8RGNpKZCFOyzfjbVu8+0sPHdKSQN8S7cqMr0Wz81cYbqct5KHABt
	xTROXwBLrD/rqR2TPGrdqPaew7E3839tbsOTDrYPYLCiLdRc2ES1Ayzv3dJbs2WSizHDle7iUZHuH
	tftfYvEdo8XHZjDkMut8NJpk7hCfJn+9dAc8p7TwmAxjr3dbp2v7cdeY5Go7N+9JhhlAxcoTSHRdJ
	lPhLPIZmlr6NytmCgaDVBpa9TtkxufjocduunJNr0bJobWgN8k+gg2O6F8WjPaERx8a2FZICUjBYC
	EbuAQSn8hMyLxJ5XE+4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Ou1-0007Oj-Bl; Thu, 12 Sep 2019 13:12:49 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Otl-0007O7-JK
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 13:12:34 +0000
Received: by mail-pg1-x541.google.com with SMTP id j191so2939917pgd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Sep 2019 06:12:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=eDPbVXqU+y+RmPn4/ZLvHXxFmtHPu9FG57Z6VOzUMvY=;
 b=HnE6QibGc8QbXvgR7z4lNSDL09+NmGKGy1fRXULhjvG0xbmEdafAJkCDi0302zxTwt
 qBPwDfRYcQB7pUUuEdBpFzdGMwGnMo4BwjofoqTRT2+qK7/5cCDO40UvT4ULFlUtOzWU
 z5aajg2c+ulNJSH3EudIAIulziEwBpZphkcXIGpikHIGOXTeYK99PrDs43X1xUeKmjc4
 vRVE60SnTPpsjQrfNkCwMLRLNhm38Eu7xU6Qo/5AeJ+CJE1ve6p8qsbZ7Tmna+66s5N6
 cbui7ZzWXNWy377MilRPai/306n+XaMMeck8va3DiwUhi3Vh+LNL9HVtJocbHL8yNGyV
 HGcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=eDPbVXqU+y+RmPn4/ZLvHXxFmtHPu9FG57Z6VOzUMvY=;
 b=Tm315D40Tdj+1L8c2BgTFipB9VDDH1p91v1ph3/pUqsmhIGKEDCippsypsf9147OR/
 pBYRRc7k+Fna8taq2jnlErs1G84EfAHyi5x3beYeATyN5yaQUQVuxWGM1UwuaA3gamhz
 WdsjcSf0QnPWoVGTsXkngmMe4UYML9/qzMx/Dpq7BkTOU9xelVt8mcwZ/Fj7OSEULlfg
 AicfxPZ9VBul9/WtpFH9XtHFgvTIwrefc3D/GwP6GkO1dVYAjmIghbmU6a89yYeSrFHU
 +WpKmVaqqgO+8mDbUrY/kkdXQLA6KH+cEA31oHSFgrV/Qf0ssiiuLFkXnq+YTzrpa7mh
 Ycjw==
X-Gm-Message-State: APjAAAWbLNSMF00ucFQa+sHwUSlju/NlYE6fJIR7+XX38ryMfCl3meuV
 e8+718b09dHvnM4LbRY/cvsZlNOK430=
X-Google-Smtp-Source: APXvYqy5IRnkfN40k2/B7q313u2BRWeMvX80jlePX/MlMV1tGW/e5n3Y99EGn/AhhLeBvPK61j8c0Q==
X-Received: by 2002:a62:2787:: with SMTP id n129mr10490181pfn.45.1568293952678; 
 Thu, 12 Sep 2019 06:12:32 -0700 (PDT)
Received: from ?IPv6:2600:380:4b2e:3b64:29ff:2f14:b019:100?
 ([2600:380:4b2e:3b64:29ff:2f14:b019:100])
 by smtp.gmail.com with ESMTPSA id m13sm24678837pgn.57.2019.09.12.06.12.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 12 Sep 2019 06:12:31 -0700 (PDT)
Subject: Re: [PATCH v2] fixup null q->dev checking in both block and scsi layer
To: Stanley Chu <stanley.chu@mediatek.com>, linux-scsi@vger.kernel.org,
 linux-block@vger.kernel.org, martin.petersen@oracle.com, jejb@linux.ibm.com,
 matthias.bgg@gmail.com
References: <1568277328-4597-1-git-send-email-stanley.chu@mediatek.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <2a285805-cdf3-fe7a-0d1a-9f53f821d025@kernel.dk>
Date: Thu, 12 Sep 2019 07:12:28 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1568277328-4597-1-git-send-email-stanley.chu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_061233_632661_F16B5AA9 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-mediatek@lists.infradead.org,
 peter.wang@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/12/19 2:35 AM, Stanley Chu wrote:
> Some devices may skip blk_pm_runtime_init() and have null pointer in
> its request_queue->dev. For example, SCSI devices of UFS Well-Known
> LUNs.
> 
> Currently the null pointer is checked by the user of
> blk_set_runtime_active(), i.e., scsi_dev_type_resume(). It is better
> to check it by blk_set_runtime_active() itself instead of by its
> users.

Applied, thanks.

-- 
Jens Axboe


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
