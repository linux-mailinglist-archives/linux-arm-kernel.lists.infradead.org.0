Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A2EDB563
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 20:02:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jX1VREsFlB9ZLx4xlBkv7D37CQ2sLt2CT+M2TVqgxxA=; b=Y9h1UEyfBKNqjI
	ghKQFRobn4/rjgEHenazgqnpoKURdY3Gx4r4hKxdoyHZjowtGial3W5D3hJpr0b+yfUtnlG2QD7Dk
	wd4mJEClSX1/mtdeNIRaRw8LjicpFuGyrgnJQMTz6Sr3on9z4UBLSuMgfcUsWKLKONlKlMaA0uGyP
	vjFq+Nr3ueghvE8Oc2uIl4cxg/S1nuCvCcBB8eXFT5Kt6PTgvZ6UmHBKSO1EvQYE7y5iLL5lPT7iD
	uQVP9/lWmDoY7+4r57IR4vuJwz+zyb6BKCcmO9u9QCtzCmBbMV4v2OzrkwGAzIpqIY38sm3yLi8l1
	6SRQaMo/gxbbmWNc+6bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLA6U-0007PZ-5z; Thu, 17 Oct 2019 18:02:26 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLA4l-00058H-Uk
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 18:00:47 +0000
Received: by mail-pg1-x543.google.com with SMTP id p30so1803392pgl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 11:00:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ToCE10/No6jJLIJ3g4BFJ/Azu6H7pIF5txzafJLRqpY=;
 b=NsFLwd0rgG+YrVVf9sUIC3v01ZiefqbHoZSeMhGo08M91vGRqHeucfBGTbn4D2s/oT
 +YzGZ1AMeuKnAh0Loz5Ji1LuUAVsdtXKKyEIacqTF/YDiCNmUwqgtgYctJVvNmBBnd4V
 9ZGnFM1WlNG+lImz7Dre7FAhWoCYkIq8Zdae/XAsRnWoBwiA2bkEaF4EppfeuBNLeUqY
 Cb8yG42vXMCqxN1/pJmNB9nj7NUgOdGYl90xpurWj4C23gpVwCqkUc48psVftcfQj76q
 plqiDMERAhxFzVklVusNtcHBcEb2EhpSe5eDr0TzouEmLp3JMqXgy+P8FX9GhXPzpZoj
 +AAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ToCE10/No6jJLIJ3g4BFJ/Azu6H7pIF5txzafJLRqpY=;
 b=eIaNAoe6w4WFHOEHwEZl3vViYT0x6tmVjGiyCcZ0Jlc+QiFmmJGaN0uiZnabN3/+m6
 ZcMcrx/JRQCL6omJOMmZJhnLJwGP+6qp9WsNz06iiOmXixWhLlSl5OEkKJ2uMIPI/L+r
 aLmZ28C0uNfDRrmHY5NDPwIfmJKt9hWyc1mDp7Pr6jpYzkeChKNXu7GCdiqGBpQPgmif
 VBLC3on25VH5Oq3fuv+wNCjCvUA2AiGGBS1iEKdN/3gbQ3MsFCj2e59f0rzghIbhES8W
 I2oJ9zv/QkdwxVIGOTdWNViGR90qWvIIOWj5o1raAq3F/NTDKPvtxWMQi2f55ta4Nh+V
 j6rw==
X-Gm-Message-State: APjAAAWy3nJrEEsbbqwk24uazawInnaa/Q2M1/m0+etgEuaby825Usc4
 7y/EIsn8Xd51uIQdC7Itno90GA==
X-Google-Smtp-Source: APXvYqwSZ5VwkOrc4Tmg7HP7z4Fnd/FGqOiQbf3KY2eiEeXBpjdvtvUyJ4ico8Mq5Uj6x+i7hlK80w==
X-Received: by 2002:a63:710:: with SMTP id 16mr5587646pgh.329.1571335237737;
 Thu, 17 Oct 2019 11:00:37 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id q204sm3610512pfc.11.2019.10.17.11.00.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 17 Oct 2019 11:00:37 -0700 (PDT)
Date: Thu, 17 Oct 2019 12:00:35 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v3 03/11] coresight: etm4x: Add missing API to set EL
 match on address filters
Message-ID: <20191017180035.GC17991@xps15>
References: <20191015212004.24748-1-mike.leach@linaro.org>
 <20191015212004.24748-4-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191015212004.24748-4-mike.leach@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_110040_162362_AAABECDE 
X-CRM114-Status: GOOD (  17.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: corbet@lwn.net, gregkh@linuxfoundation.org, coresight@lists.linaro.org,
 suzuki.poulose@arm.com, linux-doc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 15, 2019 at 10:19:56PM +0100, Mike Leach wrote:
> TRCACATRn registers have match bits for secure and non-secure exception
> levels which are not accessible by the sysfs API.
> This adds a new sysfs parameter to enable this - addr_exlevel_s_ns.
> 
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> ---
>  .../coresight/coresight-etm4x-sysfs.c         | 42 +++++++++++++++++++
>  1 file changed, 42 insertions(+)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> index cc8156318018..45fa7743eea4 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> @@ -1233,6 +1233,47 @@ static ssize_t addr_context_store(struct device *dev,
>  }
>  static DEVICE_ATTR_RW(addr_context);
>  
> +static ssize_t addr_exlevel_s_ns_show(struct device *dev,
> +				      struct device_attribute *attr,
> +				      char *buf)
> +{
> +	u8 idx;
> +	unsigned long val;
> +	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
> +	struct etmv4_config *config = &drvdata->config;
> +
> +	spin_lock(&drvdata->spinlock);
> +	idx = config->addr_idx;
> +	val = BMVAL(config->addr_acc[idx], 14, 8);
> +	spin_unlock(&drvdata->spinlock);
> +	return scnprintf(buf, PAGE_SIZE, "%#lx\n", val);
> +}
> +
> +static ssize_t addr_exlevel_s_ns_store(struct device *dev,
> +				       struct device_attribute *attr,
> +				       const char *buf, size_t size)
> +{
> +	u8 idx;
> +	unsigned long val;
> +	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
> +	struct etmv4_config *config = &drvdata->config;
> +
> +	if (kstrtoul(buf, 0, &val))
> +		return -EINVAL;
> +
> +	if (val & ~((GENMASK(14, 8) >> 8))

This patch isn't compiling for me.  A parenthesis is missing to close the if().


> +		return -EINVAL;
> +
> +	spin_lock(&drvdata->spinlock);
> +	idx = config->addr_idx;
> +	/* clear Exlevel_ns & Exlevel_s bits[14:12, 11:8], bit[15] is res0 */
> +	config->addr_acc[idx] &= ~(GENMASK(14, 8));
> +	config->addr_acc[idx] |= (val << 8);
> +	spin_unlock(&drvdata->spinlock);
> +	return size;
> +}
> +static DEVICE_ATTR_RW(addr_exlevel_s_ns);
> +
>  static ssize_t seq_idx_show(struct device *dev,
>  			    struct device_attribute *attr,
>  			    char *buf)
> @@ -2038,6 +2079,7 @@ static struct attribute *coresight_etmv4_attrs[] = {
>  	&dev_attr_addr_stop.attr,
>  	&dev_attr_addr_ctxtype.attr,
>  	&dev_attr_addr_context.attr,
> +	&dev_attr_addr_exlevel_s_ns.attr,
>  	&dev_attr_seq_idx.attr,
>  	&dev_attr_seq_state.attr,
>  	&dev_attr_seq_event.attr,
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
