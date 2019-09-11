Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AABFB0569
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 00:13:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A8p27Wgt+DB6dj+Dbno30/M0aDCgk+sC2icP7IK9hDQ=; b=fPk7WtNIEvbm3z
	b8C9ISmtHOxWte27UVvn0OdrVWiRq6EaZ2kS/+RBreVvDeH8hWsklJfzUpo2CLUMRYH6pFno6OndJ
	YFNbot+wjwnJ419HH9TudztZSb9NKLCoKXVq8HVGy4CSn21cQeMzg+L8KJiq5sVPAaXuNJ21Bsr3K
	re505nTxCcWbld5C820xhTk8nZlR5ZrFP5Pthj7wRLb856bpC4/r4dH/ce2Jazl4Um6zKEtygmMCT
	3qxMsEXFN5YimWlAfneejmJBrTOavMQWU9SSWOB10WK9HnOZnS43HyBCKhLL/15qiWN/nF21MrRVV
	8JDqOPEHuhpfOFNCGHbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Arn-0006G2-Hk; Wed, 11 Sep 2019 22:13:35 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8ArZ-0006Eq-75
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 22:13:22 +0000
Received: by mail-pg1-x544.google.com with SMTP id m3so12211231pgv.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 15:13:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=nf55d0M2fgrTAZT8patiiuxPZwICTFJSYQN2V2QrDmQ=;
 b=anYEbfk0b5+4asQZViJ4GPOYj9WhTStLmh+ecrhz8v0xdn4zwEPtVsZfof1Lme4QKG
 b32MZ4jlp1aoNGec5iHuPGezZ3FzV6+R16gp2x0cz7OsJCmV/AthIUpblCcZuw36Gto7
 mJkKm7YXtOUw2VruFSiLqhQj0OJu9fPbzDsFVuzSNY/cxfPyn9H0FwUDZLL1LMqq00G1
 oI1QPoTi1nvd0pX87LlIIbwYg89eK2LT1S43DfayBVQKgXroKePJDLEGsZqSvKP18I9I
 cHuVxbQjxuvEUCu+JKod7gM2xasHWrJxerWu65fq7bPTxfGnDob4I8Jir7+fVc6Xf8Kk
 JWnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nf55d0M2fgrTAZT8patiiuxPZwICTFJSYQN2V2QrDmQ=;
 b=pn9CjRooo1rrt8iV2ZPCyeB9DhJGbJt1y6YyHKaCPhdT/APQDOjleLfwjzv9eXNvf5
 LVILG9sQO7xqWbJXp2HcJeMmtbvBAMYuOL5BsMI8qkLVpQHRjQcphYGAA+vFhA7s+G0a
 o5QONWLcNt9ClY5R0EoKh4RcQzBhPyvR0BJrphduLyeKBqd6PUCIQIgz//y6wUj0mjdW
 UUBnTizjgacNu31cDYY4eQHZZt/XGBDBJVdPO38iRyc6pLOLMNpLJOgFRYHMAWyjhg/C
 LrnY3DgjXJlgejG5I+zqpEaxVeS3eC3crS7HTgfHMZWDhRDbA2QoyctsFgD3zEz2XhGC
 PwXw==
X-Gm-Message-State: APjAAAVFAI56C6SOgE5I6RFGSNtQ/fY4RfG482/MlFefl2hIuPNxXTQW
 GfUcg+nVU7vAaVSiHTt6I/90bg==
X-Google-Smtp-Source: APXvYqzPGDfNqvq/dqDwP6b3TOEtC3Bb+5uRpJ4DO9WApq2laqUm31jZznk69DG8lZqgNynRXwxbkg==
X-Received: by 2002:a65:6284:: with SMTP id f4mr13973604pgv.416.1568239999858; 
 Wed, 11 Sep 2019 15:13:19 -0700 (PDT)
Received: from [192.168.1.188] ([23.158.160.160])
 by smtp.gmail.com with ESMTPSA id r1sm18455579pgv.70.2019.09.11.15.13.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Sep 2019 15:13:18 -0700 (PDT)
Subject: Re: [PATCH v1 1/2] block: bypass blk_set_runtime_active for
 uninitialized q->dev
To: Stanley Chu <stanley.chu@mediatek.com>, linux-scsi@vger.kernel.org,
 linux-block@vger.kernel.org, martin.petersen@oracle.com, jejb@linux.ibm.com,
 matthias.bgg@gmail.com
References: <1568183562-18241-1-git-send-email-stanley.chu@mediatek.com>
 <1568183562-18241-2-git-send-email-stanley.chu@mediatek.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <66fddf12-0dc4-1c73-affd-f8404e87342f@kernel.dk>
Date: Wed, 11 Sep 2019 16:13:16 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1568183562-18241-2-git-send-email-stanley.chu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_151321_261669_E83CE320 
X-CRM114-Status: GOOD (  17.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On 9/11/19 12:32 AM, Stanley Chu wrote:
> Some devices may skip blk_pm_runtime_init() and have null pointer
> in its request_queue->dev. For example, SCSI devices of UFS Well-Known
> LUNs.
> 
> Currently the null pointer is checked by the user of
> blk_set_runtime_active(), i.e., scsi_dev_type_resume(). It is better to
> check it by blk_set_runtime_active() itself instead of by its users.
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> ---
>   block/blk-pm.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/block/blk-pm.c b/block/blk-pm.c
> index 0a028c189897..56ed94f7a2a3 100644
> --- a/block/blk-pm.c
> +++ b/block/blk-pm.c
> @@ -207,6 +207,9 @@ EXPORT_SYMBOL(blk_post_runtime_resume);
>    */
>   void blk_set_runtime_active(struct request_queue *q)
>   {
> +	if (!q->dev)
> +		return;
> +
>   	spin_lock_irq(&q->queue_lock);
>   	q->rpm_status = RPM_ACTIVE;
>   	pm_runtime_mark_last_busy(q->dev);

I'd prefer just doing:

	if (q->dev) {
		...
	}

instead. Other than that little complaint, looks good to me.

-- 
Jens Axboe


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
