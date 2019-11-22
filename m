Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEAEC1075E6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 17:37:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1sob1VGHz1J00Z++StER/f55e2RsjSw37HtJ0ONDtn4=; b=KT0Kf2GubX4lOz
	kD8MEssclkrpJe5UEnZgahG0FQ4FxqyTUCC0VzCkfLJzhuE7rS6E6SfRa0TGUAMGWwxmqLr2PfLa7
	DWCHwriIx2RGT9CbxFJ2VJsAQSsp2xeJaBFS3hJuSqme9fMInSS/Tq2ZH+9AQt3TXGgJ6Tdvy7ODY
	QTcJi4/gLfzDhZV2HQobsPSkWKOrBBcwiWNHc7F2onQrJgFvel/fK+/2IxsaXv4h19mEJjBZuSUWZ
	vK/BEaOC7jfABXqp+h1bkmUGZSa8QSqyrz6RDS1DzeUey4/+5Z8nifsaxUxn/+vw7e4kqsaDw8KcP
	3DOjxCppOvkFswD4/ymw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYBvN-0002bQ-NL; Fri, 22 Nov 2019 16:36:49 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYBvF-0002ak-Oy
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 16:36:43 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 2A23F20B9F;
 Fri, 22 Nov 2019 17:36:36 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 19DE81FF32;
 Fri, 22 Nov 2019 17:36:36 +0100 (CET)
Subject: Re: [PATCH] crypto: picoxcell: add missed tasklet_kill
To: Herbert Xu <herbert@gondor.apana.org.au>,
 Chuhong Yuan <hslester96@gmail.com>
References: <20191115023116.7070-1-hslester96@gmail.com>
 <20191122085512.m75tjfa3valqfgyv@gondor.apana.org.au>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <218e9053-42c7-098e-ecda-e0306361cc23@free.fr>
Date: Fri, 22 Nov 2019 17:36:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191122085512.m75tjfa3valqfgyv@gondor.apana.org.au>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Fri Nov 22 17:36:36 2019 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_083641_958183_B1275835 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
Cc: Jamie Iles <jamie@jamieiles.com>, linux-kernel@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22/11/2019 09:55, Herbert Xu wrote:

> On Fri, Nov 15, 2019 at 10:31:16AM +0800, Chuhong Yuan wrote:
>> This driver forgets to kill tasklet when probe fails and remove.
>> Add the calls to fix it.
>>
>> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> 
> Yes this driver does look buggy but I think your patch isn't
> enough.
> 
>> diff --git a/drivers/crypto/picoxcell_crypto.c b/drivers/crypto/picoxcell_crypto.c
>> index 3cbefb41b099..8d7c6bb2876e 100644
>> --- a/drivers/crypto/picoxcell_crypto.c
>> +++ b/drivers/crypto/picoxcell_crypto.c
>> @@ -1755,6 +1755,7 @@ static int spacc_probe(struct platform_device *pdev)
>>  	if (!ret)
>>  		return 0;
>>  
>> +	tasklet_kill(&engine->complete);
> 
> The tasklet is schedule by the IRQ handler so you should not kill
> it until the IRQ handler has been unregistered.
> 
> This driver is also buggy because it registers the IRQ handler
> before initialising the tasklet.  You must always be prepared for
> spurious IRQs.  IOW, as soon as you register the IRQ handler you
> must be prepared for it to be called.
> 
>> @@ -1771,6 +1772,7 @@ static int spacc_remove(struct platform_device *pdev)
>>  	struct spacc_alg *alg, *next;
>>  	struct spacc_engine *engine = platform_get_drvdata(pdev);
>>  
>> +	tasklet_kill(&engine->complete);
> 
> Ditto.
> 
> However, the IRQ handler is registered through devm which makes it
> hard to kill the tasklet after unregistering it.  We should probably
> convert it to a normal request_irq so we can control how it's
> unregistered.

Or inversely, registering the tasklet_kill() through devm, so that it
is called *after* the ISR unregistration.

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
