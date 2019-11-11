Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F16F762E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 15:16:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=38nbJrFG1Ud7Px5jZXIa9a2DnF1NjbtGGS5mRd/tr9g=; b=rGHDwJ/kx+oQ+/q/Ysst0cYGu
	uaQty1AtTHtr+VAAXYf5eXoXP4TKrm7kofG5gIP7K3pxkZ3L2gfqDdBxRUrDYGBeeZ6cA87XS+Ee6
	iZaSh+J50OXOlEL8mJ1kSV/nS/F/QGGVCISwFTAcvL+4hg17TiXb0eGTTiiCYfmWOTH4exxC4xu+r
	+CvuefFXVpWvF/5KCZo0Z6UPwluHets+YkN+EmovZ8yfFJuf8PSAl89yJVkG7yhTrEC7LvVIjE3pl
	Zdkj/x7t/ZIeZTnre+SXMk5Cq4ooG4UGpeZ0DCvxN92Bzb0Ifq+c6/aDqj24/ytheGyDF87BNNvLA
	wueKAKe5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUAUL-0006c5-BC; Mon, 11 Nov 2019 14:16:17 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUAUD-0006bk-Ex
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 14:16:10 +0000
Received: by mail-pf1-x441.google.com with SMTP id 193so10753529pfc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 06:16:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=febfKlWJi5gGxYdmeWZw4Fi5Cx8ThIzR9wUIWuDizCE=;
 b=dcidApTOUPNVuSFDYFLRSDVmUaujchonwjxB3OPh3A8fUBSMjJ1VijN6wTxjziztJ3
 mMfB+A9a6kbau0dpDL15pcCI4gsrXB3ITA0mQ+ZxnFb/ql20jhYY1ZjqWVhp40kaQz1o
 8H+YWXud1Pd6HQhbT4SSOQ59OQr6M6n7rRbikjvv632blP/8RGM70rCTdDkAkRz7JV7k
 oJ3LCt9MvQRCX3Ut75e0mjcdhtthxh1zH9G9yPxpFLLLtLPi+rkRWwqKnQmvV/fhXquy
 +mvPG8CnJL7MNS40XwnttmrXtPzkbUwiSwsP3IZtdFZ6ni2BfmvE42ABruSG65PYhbh6
 VgWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=febfKlWJi5gGxYdmeWZw4Fi5Cx8ThIzR9wUIWuDizCE=;
 b=rLG9WbmILnmWqt4SzA+V39ElsNznxS/74b6SvwwaKmdOii5cHUpl0gTbses7vfr9Db
 s14VpRc7mEZu30r4lyMFYMmc3bwehpgtt6ZJrqd7Cy9UVBy/zMOHymRJYghWrr4sWP9B
 6gjhIp3i7SydWdNFl/VmcSuKKpBquRXSOIVrKuTbbxwcdhlmAFryeKBan221pqaruuIj
 jhtiPV7Nr3Rv43Oy46wqERn1YafO+83DcBDD3ivVMapYmWC8cR4+QVaX9HqHuK3j1gQ+
 BDysx6YzvyJnsDY5rNRVtK2m1woIQDFdERXpYbcIHzrHiDy5dvwwWrd9bBGOSHha96tG
 uhdw==
X-Gm-Message-State: APjAAAU9xPPQmSODJf2YiIquSo7hRZgcIn1db1J/vHgD0FBy6YGIPdLU
 NxkB2/walOr34MnUMQb0pr0=
X-Google-Smtp-Source: APXvYqwKi/pjpY+1q9oCaxglZOH6Jtmslpke/PA4yi6SHCxe0djIH9S8SnYfqxtXvP4AihM0ZUNDpg==
X-Received: by 2002:a17:90a:9741:: with SMTP id
 i1mr35005987pjw.41.1573481768634; 
 Mon, 11 Nov 2019 06:16:08 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 u8sm3700134pga.47.2019.11.11.06.16.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 11 Nov 2019 06:16:07 -0800 (PST)
Subject: Re: [PATCH -next] fsi: aspeed: Use devm_kfree in
 aspeed_master_release()
To: YueHaibing <yuehaibing@huawei.com>, jk@ozlabs.org, joel@jms.id.au,
 eajames@linux.ibm.com, andrew@aj.id.au
References: <20191109033209.45244-1-yuehaibing@huawei.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <62eacd00-300c-bc3e-b680-605bd0b7a983@roeck-us.net>
Date: Mon, 11 Nov 2019 06:16:06 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191109033209.45244-1-yuehaibing@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_061609_528296_4241E8E9 
X-CRM114-Status: GOOD (  17.85  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, alistair@popple.id.au,
 linux-kernel@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 linux-fsi@lists.ozlabs.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/8/19 7:32 PM, YueHaibing wrote:
> 'aspeed' is allocted by devm_kfree(), it should not be
> freed bt kfree().
> 
> Fixes: 1edac1269c02 ("fsi: Add ast2600 master driver")
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>   drivers/fsi/fsi-master-aspeed.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/fsi/fsi-master-aspeed.c b/drivers/fsi/fsi-master-aspeed.c
> index 3dd82dd..0f63eec 100644
> --- a/drivers/fsi/fsi-master-aspeed.c
> +++ b/drivers/fsi/fsi-master-aspeed.c
> @@ -361,7 +361,7 @@ static void aspeed_master_release(struct device *dev)
>   	struct fsi_master_aspeed *aspeed =
>   		to_fsi_master_aspeed(dev_to_fsi_master(dev));
>   
> -	kfree(aspeed);
> +	devm_kfree(dev, aspeed);
>   }
>   
>   /* mmode encoders */
> 
The memory is attached to the device, and will thus be freed once the device
is released. Why is the release function needed in the first place ?

Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
