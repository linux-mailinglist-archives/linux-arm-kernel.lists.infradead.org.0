Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C26A03C753
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 11:38:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=it8dH9/A8lQan9hXPVDgpPplIrYzc2AteAQ5UQ7MfY4=; b=Lz/YJ94LnK2C+3
	XNNzzYkpf98NMvSq45TdHvJgyL62vj16rhLERyDmkRelEbtM/zpyPWK0li/Av9qm7p+jawVkBjmVi
	KsM1gl/bRXDNL9pukOtBIshroyza/ukI7IX+j5jjEFKyMEeujcXF/s4B1+CKwPf1wFfhLHGX8d0Rj
	XEywgS4yrAIJyUTsGZzsDWKY3lPLXVJJoRMivaxY8ktygKbl+V8jram/IZmK9xQe1aF9cBqEwJtQo
	xyaRJUIJ6w69ZuGs+oEro0QwnwmyOhFt+Kd+KcQyRMykbmR6cAMPcKTi3UgvhGWtJ0hqNpNQJN4T0
	dK5R56KSB3I506RiDcwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadEL-0007L2-Fc; Tue, 11 Jun 2019 09:38:13 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hadE0-0007KI-JU
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 09:37:53 +0000
Received: by mail-pg1-x544.google.com with SMTP id 20so6654714pgr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 02:37:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=9agf1wB19p+J83b1VsLOfSDCvk5Iwih8vT9zIEbIhto=;
 b=uoJ6xso6aov+5DAxvyb5o40wrZU1FXY+1+wAIyp/jryKLjiHMMBNtAgYzTdICid9EW
 go3OVPwipJhta6jl7ptE0/WhIkeZiCfooS6SSugO1LaOXqML8eCmYzkZdul2b2Xfpmz+
 gclHl8JJUL6HWpk8WO5AKmqkx5Q1wz6C8BWINY5aO24OO68z5tpL9w7ehYBSCWOO7PTd
 psldWcpkoLBpx8667PB9lQ7Hl4xkX/Et3VKXKqqbb6JSkBTLLyJxb8Owby/IighLuBP6
 QryTlp/APxF2h1MpIYTj0IxAOJH3NZ9/aeDzKcKsBH1oE2YkS2KFjvJfoqVePF3HWsAP
 5xrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9agf1wB19p+J83b1VsLOfSDCvk5Iwih8vT9zIEbIhto=;
 b=UN7aex2Em+U5NUEPNwQm3o/PqUxhX/4I+LrLuWVTciFUxt9xTY1YMhgFNQAXtm2fGB
 lsJYlQcdpzox6+9wMuFEuhz7E8q0W+kPtwI2zbI0xBhpIGOMc5pEYOs1Snt5DFF9b9Lb
 HpT7YmFrRa1Jyx7u29+HK6ZDnLhP1CCncQBNl0CAwtVgg8tRXf05eXyWf9fbJu+pRJcv
 ecrhjLo+AKip/lkbkxWm1L1frhd1cptEFsTENp5mIAz48JB/sobZE5jIYm+OTmO5W5G5
 RnG7HlGVju7d6Gt+3ZAGQzg/sqPX2tpUET+tAu4LRGcXUL3wiUb8J0XRzzSyHLZuRRxd
 CmuQ==
X-Gm-Message-State: APjAAAUnstOh75c1alIBF5maRUSg4OmXxFxKdjxVKPeMTm8rBPlLbZlU
 w0Tlx7DXUIBPJ4BaxjJ3G/C7IWsYcJDlSg==
X-Google-Smtp-Source: APXvYqwW7A1WbJwAEbMJSnf3kHqZzSWeA7fnuPpsGxWy3rdDIeIaKarnUVnZCU2Z96HhMWgjooUtYg==
X-Received: by 2002:a65:5688:: with SMTP id v8mr19726836pgs.138.1560245871063; 
 Tue, 11 Jun 2019 02:37:51 -0700 (PDT)
Received: from ubuntu ([104.192.108.9])
 by smtp.gmail.com with ESMTPSA id y22sm8563571pfm.70.2019.06.11.02.37.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 02:37:50 -0700 (PDT)
Date: Tue, 11 Jun 2019 02:37:44 -0700
From: Gen Zhang <blackgod016574@gmail.com>
To: ssantosh@kernel.org, marc.zyngier@arm.com, olof@lixom.net
Subject: Re: [PATCH] knav_qmss_queue: fix a missing-check bug in
 knav_pool_create()
Message-ID: <20190611093744.GA9783@ubuntu>
References: <20190530033949.GA8895@zhanggen-UX430UQ>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190530033949.GA8895@zhanggen-UX430UQ>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_023752_668352_892C9CE0 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (blackgod016574[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (blackgod016574[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 11:39:49AM +0800, Gen Zhang wrote:
> In knav_pool_create(), 'pool->name' is allocated by kstrndup(). It
> returns NULL when fails. So 'pool->name' should be checked. And free
> 'pool' when error.
> 
> Signed-off-by: Gen Zhang <blackgod016574@gmail.com>
> ---
> diff --git a/drivers/soc/ti/knav_qmss_queue.c b/drivers/soc/ti/knav_qmss_queue.c
> index 8b41837..0f8cb28 100644
> --- a/drivers/soc/ti/knav_qmss_queue.c
> +++ b/drivers/soc/ti/knav_qmss_queue.c
> @@ -814,6 +814,12 @@ void *knav_pool_create(const char *name,
>  	}
>  
>  	pool->name = kstrndup(name, KNAV_NAME_SIZE - 1, GFP_KERNEL);
> +	if (!pool->name) {
> +		dev_err(kdev->dev, "failed to duplicate for pool(%s)\n",
> +			name);
> +		ret = -ENOMEM;
> +		goto err_name;
> +	}
>  	pool->kdev = kdev;
>  	pool->dev = kdev->dev;
>  
> @@ -864,6 +870,7 @@ void *knav_pool_create(const char *name,
>  	mutex_unlock(&knav_dev_lock);
>  err:
>  	kfree(pool->name);
> +err_name:
>  	devm_kfree(kdev->dev, pool);
>  	return ERR_PTR(ret);
>  }
Can anyone look into this patch?

Thanks
Gen

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
