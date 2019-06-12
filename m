Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8A542BEA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 18:17:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XN9NQKLqlGJ6mwGItZ13viXGjeAvQuXbHjFtikAVW6o=; b=usirKgf4JXyjNY
	Dh8tZIw2g9DknDlDXxHP0yRTfOiqQy7QmjDm6FGI6x13zAWUFKxvN4hNOUUbhPL6rhCJonMO9/kcE
	ZStFC7K7DjxsrtHCG7aqyguXeaDygaY0hBQ5P0KsMSmiIklOmGkwLzuNLtRWs8daF9+uYnePpKpYO
	nBxcWhbyC/0gjZ/KehxHP3x7CTpgD1slAi/B+3M8wkyKQ2J2FKcZ5SgNhmtwJZXx5UBcnzwTMQndl
	N3GeWdd9EDgnIHVxODVQ5eVxrpWiEoJAh6/1h/4GnMck2kjLnYL1SfLFsWvzQBFKUfBRjBtDfFleg
	mEpm+S3L4GHDMXbgYe3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb5wa-0006NN-0u; Wed, 12 Jun 2019 16:17:48 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb5wN-0006Mf-BF
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 16:17:36 +0000
Received: by mail-qt1-x842.google.com with SMTP id z24so5899264qtj.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 09:17:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:subject:to:cc:references:openpgp:autocrypt:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=U2vYqaPYdWtpzfrzovO9feBjUjZjzjyP3l5hohlZ2Qw=;
 b=D9u7HA9acjMxG5IDmmk52QrmRvl60xY0S/bA+fJ34Ie35XIKGzY6OZbUdNy24KUCLn
 v0k5PGGDhJJgsyTqYBiiIENrszMhPVIwWIZMJc/dqo5GOCau43SF6mKGAE5ODH5y1H13
 U57jobrMEWYOn66qKQvvfFa4ja97bbNE9Tx1iBlqV2aFM0WA0Lq+G/DmW8CHWvISaq41
 RGl1t9orYPpMJ3yC8uKY6EIXm1djVIRawvm5q3HOQbZWe6/wdZeCgq/AD9jliSdbJp9L
 K8thiwuO7coFPOPDzo9o7IdUv3SZ3asi0RWidz41BJ1xgitsFXuoSyX9F5rR5kNX04Ls
 KkNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:subject:to:cc:references:openpgp
 :autocrypt:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=U2vYqaPYdWtpzfrzovO9feBjUjZjzjyP3l5hohlZ2Qw=;
 b=ZpnEWI2NRugIBAeBobRUGyS8hEhpnecOb0KRfjoK1+UafWJzduzvp7x7iGf0wSkyt5
 Ngs0sKi3bFyMlP7ULO1W4FyZq+/RGRdeiZlGZjdPtjOeuqhnjjpQENy8Aii9O/EFdT6H
 8mm+vYpg94KKwrXdQTVqrEbQnDJDd3HE0HjUFjxzVb7UP5BeOBlIWtMwCSgwiKjuKLFJ
 bnUVoB2WLWpHhhX1OFy1xapl8VZIoepVgKJlDIxbTQcVYarznHquLI55dWR+udCBeYyQ
 rwVIBfpO2Tm7P1ghL1WYeCcMGLWo4XMD5stesOnQ6SS/h9kfQCMYzo4qGpxrdyKZNL94
 kjUA==
X-Gm-Message-State: APjAAAVRg5MSqNpsd5JkiZX7YtxrQujDb792GgFr3GGsEAi12Ad8JpTM
 fAsjWamsLeLB9LjZLySXmpU=
X-Google-Smtp-Source: APXvYqwNdJ0Fb29xxjQiS/MFAVscn9cJ6eF2PqS8LVs89NTOxmhErJbcoeaTaWjZzxjqt76lwlO+AA==
X-Received: by 2002:ac8:1016:: with SMTP id z22mr6334107qti.287.1560356253656; 
 Wed, 12 Jun 2019 09:17:33 -0700 (PDT)
Received: from [10.84.150.66] ([167.220.149.66])
 by smtp.gmail.com with ESMTPSA id n10sm36819qke.72.2019.06.12.09.17.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Jun 2019 09:17:32 -0700 (PDT)
From: Sinan Kaya <Okaya@kernel.org>
X-Google-Original-From: Sinan Kaya <okaya@kernel.org>
Subject: Re: [PATCH 6/6] dma: qcom: hidma: no need to check return value of
 debugfs_create functions
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20190612122557.24158-1-gregkh@linuxfoundation.org>
 <20190612122557.24158-6-gregkh@linuxfoundation.org>
 <8185a8b8-a0ce-4a86-84a2-b51391356052@kernel.org>
 <20190612153948.GA21828@kroah.com>
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
Message-ID: <78da53a1-1363-fad8-16fa-4dfc6555f4e4@kernel.org>
Date: Wed, 12 Jun 2019 12:17:31 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190612153948.GA21828@kroah.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_091735_410397_977F3855 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
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
 David Brown <david.brown@linaro.org>, vkoul@kernel.org,
 Andy Gross <agross@kernel.org>, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/12/2019 11:39 AM, Greg Kroah-Hartman wrote:
>> Interesting. Wouldn't debugfs_create_file() blow up if dir is NULL
>> for some reason?
> It will create a file in the root of debugfs.  But how will that happen?
> debugfs_create_dir() can not return NULL.

I see.

> 
>> +		debugfs_create_file("stats", S_IRUGO, dir, chan,
>> +				    &hidma_chan_fops);
>>
>> Note that code ignores the return value of hidma_debug_init();
>> It was just trying to do clean up on debugfs failure by calling
>>
>> 	debugfs_remove_recursive(dmadev->debugfs);
> Is that a problem?

I just wanted to double check. You probably want to remove the return
value on debugfs_create_file() to prevent others from doing the same
thing.

Acked-by: Sinan Kaya <okaya@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
