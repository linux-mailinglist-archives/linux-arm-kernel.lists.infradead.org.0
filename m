Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A3A42AE0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 17:25:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=58/5eYLHmp0Acxy9W0Bq8Z9Kp0RwxyMq4jOtdcRgkOs=; b=JNNzffY4Vnb2y8
	d36qbwtcvY/t5zeUEVXto9cjU8nf3438ibhE7gkfa9o82WcDZSiaA4ljzowOk8ZKcEKdZ4lWsDUPx
	flVL9YoEBWVOdpm+2P/dYeOfHnqdm021K7XaT9YDzEcxHpF6F1jgYDMzJegfwgP4mTVQCifRqBuAp
	GvIl8qTmlYsFx3xFJ5qJyYyna9H3sbXmW262+ttdAo/OxajK/5wv8ayjr/oVLLQeWAmKyd5NHqLyQ
	rdXl1tMsil2jk3Ne+gOFAX/w4IZz4e4Fydetg2qQf7rJJYiYm9OFsF3yhzaPd7gwqyZvGwYHh0uVd
	VjrMvL3EWC356qpbkrhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb57h-00059c-6G; Wed, 12 Jun 2019 15:25:13 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb57N-00058i-Up
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 15:24:55 +0000
Received: by mail-qt1-x844.google.com with SMTP id 33so10773497qtr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 08:24:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:subject:to:cc:references:openpgp:autocrypt:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=x/y4rh2GpXVp2fvK0BIj6HcH04gYu7ik1dJuJV7JqSE=;
 b=gfaonzahNiQIay2TIzNRmKH4jfqBoa1rd4ukaLTrYRQkLOdLp/2X+zYhdgIRZjuL+K
 M5BnzEoMLwGRU0ca+2ghr+czB10fUMRNz15o2Yl3sItCK7ORKZWLOyRO33YxZe1+I7wX
 oJGEAHeAnxuxq5DIDNxwaL7LPR5SDkxCWlll7J91Z5/xkxwLaFSEJ3eKqELLHIiHj7w5
 oNfQx6zhhGF4PpAwBVYbvHURhwNORv0bMni9nOD2yvW8cJXLgd2yEWP41spERrfDl4IT
 F0SkvhzRsgjZItQJA33SFy2QIs0g6znV28uE5Lj+g4bDj8uGi2bF0+yszeI5v43VD5OT
 0h3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:subject:to:cc:references:openpgp
 :autocrypt:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=x/y4rh2GpXVp2fvK0BIj6HcH04gYu7ik1dJuJV7JqSE=;
 b=dSZxw1wv8B9ISwjK01MqJQ3eTkpt2i+YKnMaAWSD6G7ee2wlFY1g679Te55Bz0/zjG
 yk+GK5CbbgfzL8zLwho5SKlOgI31UWncV1p9ugr6aFgowMl5wWf+TW5ayqnGLOnZJn2V
 0MIXVo50kb8oCqRr4g35JQaF0KTS/1AbyVohXjtZnwopeHXZn551m5zTAWcXwOEdJ1XN
 QY6GzxpBh3ZIvvByiuZdIdyuscV8suLbB5cQKqRHgGcs8h4Z0uyupSIr6PXfW+TZNjov
 tJKKO8Puz9UNU/c0I3T3Pytan04/kVM4CXK7qy5L9JqrTbNZ9ICbj51El5YczvLLMwFC
 0ecg==
X-Gm-Message-State: APjAAAWzprEMJx4qrC58FqLM6XvPKcLNw3tPkrHW2HXdkKNKi7+Rna2t
 IgrVfLFrPc/TE392gIWKL9A=
X-Google-Smtp-Source: APXvYqye/2ePZackd8UnkSvmHspMqWBf3Ci8+wA0N4ZKXatISVMJv90tpsbH4oujNN2SjfCd7T+3Lw==
X-Received: by 2002:aed:3ed5:: with SMTP id o21mr69291746qtf.369.1560353092224; 
 Wed, 12 Jun 2019 08:24:52 -0700 (PDT)
Received: from [10.84.150.66] ([167.220.148.66])
 by smtp.gmail.com with ESMTPSA id i17sm8068790qkl.71.2019.06.12.08.24.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Jun 2019 08:24:51 -0700 (PDT)
From: Sinan Kaya <Okaya@kernel.org>
X-Google-Original-From: Sinan Kaya <okaya@kernel.org>
Subject: Re: [PATCH 6/6] dma: qcom: hidma: no need to check return value of
 debugfs_create functions
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 dan.j.williams@intel.com, vkoul@kernel.org
References: <20190612122557.24158-1-gregkh@linuxfoundation.org>
 <20190612122557.24158-6-gregkh@linuxfoundation.org>
Openpgp: preference=signencrypt
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
Message-ID: <8185a8b8-a0ce-4a86-84a2-b51391356052@kernel.org>
Date: Wed, 12 Jun 2019 11:24:51 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190612122557.24158-6-gregkh@linuxfoundation.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_082453_989978_AF4CDB57 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (franksinankaya[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 David Brown <david.brown@linaro.org>, Andy Gross <agross@kernel.org>,
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/12/2019 8:25 AM, Greg Kroah-Hartman wrote:
> When calling debugfs functions, there is no need to ever check the
> return value.  The function can work or not, but the code logic should
> never do something different based on this.
> 
> Also, because there is no need to save the file dentry, remove the
> variables that were saving them as they were never even being used once
> set.
> 
> Cc: Sinan Kaya <okaya@kernel.org>
> Cc: Andy Gross <agross@kernel.org>
> Cc: David Brown <david.brown@linaro.org>
> Cc: Dan Williams <dan.j.williams@intel.com>
> Cc: Vinod Koul <vkoul@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-arm-msm@vger.kernel.org
> Cc: dmaengine@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Interesting. Wouldn't debugfs_create_file() blow up if dir is NULL
for some reason?


+		debugfs_create_file("stats", S_IRUGO, dir, chan,
+				    &hidma_chan_fops);

Note that code ignores the return value of hidma_debug_init();
It was just trying to do clean up on debugfs failure by calling

	debugfs_remove_recursive(dmadev->debugfs);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
