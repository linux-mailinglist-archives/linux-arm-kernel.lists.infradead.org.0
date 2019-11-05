Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8937FF0439
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 18:42:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=imi2fiobUc2J3OE9ZSBjRMHZGiwVKHq0PgDV2IyDv1Q=; b=Dl5IMm5JNyE22H
	4DWeXtYKb9bxSFj8bGhH992ycqMWlxtS9mOJ3BtKVNeY9szVIaH2xjL3mYKJ5qjKfVNpnrM7WYVDJ
	Oe2u9U0nplep74YmV2EGz7ITT56yYB0b71q9yj853InsrOrClEJngPv7nObbBYqUEQMA7MMexzK5a
	E+mTfOALYCjRhcuYt0fA70i3exSmFletiOCEZtld4Zsu6KfrJYr79X6V39Y8svxLj/04iQoeZZeMJ
	t7LMHjtDfG0oKXI6+6uYA0OeV/ChO0IAYkAvXEofLiaMT8/3I4rxkaYqndLcTmEvJokYXJarc+RAb
	B8OKE1LZHMfy+KD80Nhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS2qH-00076p-7K; Tue, 05 Nov 2019 17:42:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS2qA-00076L-5A
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 17:42:03 +0000
Received: from sol.localdomain (c-24-5-143-220.hsd1.ca.comcast.net
 [24.5.143.220])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 84CE9214D8;
 Tue,  5 Nov 2019 17:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572975721;
 bh=wpN5dFK9y7CHh7qhkGjKOJbrRTRGtSpcxKUvYH3cpdM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UDKQjMTqFTL1AZCg5U4sHPerBG12YJ8qDC+VWkfCSUVMh2tGMk3XNEe7Z8hChxM1v
 jzI7+CbehGyLJPsR1DnBj/2FohcSXmH9eu1gOIJ8k9oBYklbyn8RrpIuOwNy1uOZXW
 JSwA0hdZJrEmrzKr7VVE7UEOTayZvfNe6B2Ejlw4=
Date: Tue, 5 Nov 2019 09:42:00 -0800
From: Eric Biggers <ebiggers@kernel.org>
To: Tero Kristo <t-kristo@ti.com>
Subject: Re: [PATCH 09/10] crypto: add timeout to crypto_wait_req
Message-ID: <20191105174200.GC757@sol.localdomain>
Mail-Followup-To: Tero Kristo <t-kristo@ti.com>,
 herbert@gondor.apana.org.au, davem@davemloft.net,
 linux-crypto@vger.kernel.org, ard.biesheuvel@linaro.org,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20191017122549.4634-1-t-kristo@ti.com>
 <20191017122549.4634-10-t-kristo@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191017122549.4634-10-t-kristo@ti.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_094202_219899_6377DEBE 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: herbert@gondor.apana.org.au, ard.biesheuvel@linaro.org,
 linux-crypto@vger.kernel.org, linux-omap@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 03:25:48PM +0300, Tero Kristo wrote:
> Currently crypto_wait_req waits indefinitely for an async crypto request
> to complete. This is bad as it can cause for example the crypto test
> manager to hang without any notification as to why it has happened.
> Instead of waiting indefinitely, add a 1 second timeout to the call,
> and provide a warning print if a timeout happens.
> 
> Signed-off-by: Tero Kristo <t-kristo@ti.com>
> ---
>  include/linux/crypto.h | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/include/linux/crypto.h b/include/linux/crypto.h
> index 19ea3a371d7b..b8f0e5c3cc0c 100644
> --- a/include/linux/crypto.h
> +++ b/include/linux/crypto.h
> @@ -682,8 +682,15 @@ static inline int crypto_wait_req(int err, struct crypto_wait *wait)
>  	switch (err) {
>  	case -EINPROGRESS:
>  	case -EBUSY:
> -		wait_for_completion(&wait->completion);
> +		err = wait_for_completion_timeout(&wait->completion,
> +						  msecs_to_jiffies(1000));
>  		reinit_completion(&wait->completion);
> +		if (!err) {
> +			pr_err("%s: timeout for %p\n", __func__, wait);
> +			err = -ETIMEDOUT;
> +			break;
> +		}
> +
>  		err = wait->err;
>  		break;
>  	};

I'm not sure this is a good idea, because operations could legitimately take a
long time, e.g. if someone passes in a huge data buffer.  How do you know that X
amount of time is always going to be enough?

- Eric

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
