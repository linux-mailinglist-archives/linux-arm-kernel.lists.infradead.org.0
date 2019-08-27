Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6DCD9F537
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 23:40:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZQ75QE15jPgH9otbwIrc5qX5cBo/4Nk9/B4cHYQNVPU=; b=jF2nqwVufILJC5
	weG0rtX5CetD1XNyeczpkhtQU5tHbg0iPYSsWijxRA0pYsYBfikED99pMic2UXfxTg+UpqTopjjyJ
	VuYkWewEFbSp6QE5bqC8c9nslfoFeM9FbPPPpRSy0777d/keUTeP30yaY9EXj7lmeMY42I15+i1Fp
	sVj07DQ6RaaIXD1KLp4RlXCBpowo3xFOhqsgQ0UuIs9U13L/1BmKeXQLsPTFbxzAPCrrvpxTeo06w
	GYxUNcAuTunrp4iA/JZ5VE7C4+1CuOMPl/B54JJqdlIhmtplqGyihXAqeI/wP/1G11/QI7vJL1ZUB
	45aJxsT8FPmdVB7ojFUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2jCf-0007t7-2O; Tue, 27 Aug 2019 21:40:37 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2jCG-0007so-LV
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 21:40:14 +0000
Received: by mail-pg1-x543.google.com with SMTP id x15so179481pgg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 14:40:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DKonQVRpDxuV57RWFnVPvnZCeQs/GVO9z3nvXSgf1r0=;
 b=RNPW3UoNs6ORkD9pUca1c1ouunBLevYFSPv0sezjes+wlROyzfPg9LlC7n4jmVM7wI
 Kk5T9mNCxIeQXje28N7P5xYFPNI/az1m+/U6PApK/pWd1CmyOZ2dQ8uE9DaRWIKh6367
 aINXflSFKhohkBUsiUWJxkdT9Al13TzNtp9cF7AdVJ05OgBTHddbjrQ3ZkhFPZoexAJp
 J6IomJUoNPa4euh9zoPEvvHiq6SlbIgGyLczuqEFwQneVikvp5J29tR86V0KxoDHx2kG
 gYilVLvmIBH2LxignmbPvLj8YWOd1/hH7ZgjgZGqDFepTRdICodJzI22Qf8bUYNPjuHK
 h5PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DKonQVRpDxuV57RWFnVPvnZCeQs/GVO9z3nvXSgf1r0=;
 b=pCJgUSU9hr/1+em8V2NLXUlykpepQnOrJc+Fj85cHLyjKo+76OgyWgCQnM5jIuJv+G
 XBeV7R65hVxM7nkCn9hnDUV95MBVBITLGNxqSIQTK/kUR/XK2M9CcY46lX3JkkrnwBI9
 uPey7xj9TqFc/xwP8ooanFh4lEsHNXrhoYWuXaNMiUoMY1efr6ZTqtLeOjN54HZx7jT/
 0lEdqCslwp+1Ecp5SMNa2aS9gCMwOg9uCS3i6wXULSIilHfjimQEJokgPof1Fch/Lol/
 JpbmNrYS5mZMOZBNOggSj70/73av0H51Av0w5voGpUosMevV4jCBomJURn+KAe4IZ5pe
 4lVg==
X-Gm-Message-State: APjAAAWtduEhoq2+SqHEOXRl0yN9GjlABnmp8gV90a+1xO0B+ZbCpW70
 xyEz0d0R8jenxjfcKg2KpmJlfvPieFY=
X-Google-Smtp-Source: APXvYqwu5vZD+obtMUWy3DpHEECbPyUuvymgXZbnv45ma+fVfG8FgRiQQlfq0jCwgt8DYHcNP5bbOw==
X-Received: by 2002:aa7:94a8:: with SMTP id a8mr700592pfl.75.1566942009612;
 Tue, 27 Aug 2019 14:40:09 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id z63sm250920pfb.163.2019.08.27.14.40.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 27 Aug 2019 14:40:09 -0700 (PDT)
Date: Tue, 27 Aug 2019 15:40:07 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH 6/8] coresight: etm4x: Add view comparator settings API
 to sysfs.
Message-ID: <20190827214007.GB14958@xps15>
References: <20190819205720.24457-1-mike.leach@linaro.org>
 <20190819205720.24457-7-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819205720.24457-7-mike.leach@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_144012_726179_2F644599 
X-CRM114-Status: GOOD (  21.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
 suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 09:57:18PM +0100, Mike Leach wrote:
> Currently it is not possible to view the current settings of a given
> address comparator without knowing what type it is set to. For example, if
> a comparator is set as an addr_start comparator, attempting to read
> addr_stop for the same index will result in an error.
> 
> addr_cmp_view is added to allow the user to see the current settings of
> the indexed address comparator without resorting to trail and error when
> the set type is not known.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> ---
>  .../coresight/coresight-etm4x-sysfs.c         | 51 +++++++++++++++++++
>  1 file changed, 51 insertions(+)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> index baac5b48b7ac..483976074779 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> @@ -1272,6 +1272,56 @@ static ssize_t addr_exlevel_s_ns_store(struct device *dev,
>  }
>  static DEVICE_ATTR_RW(addr_exlevel_s_ns);
>  
> +static const char * const addr_type_names[] = {
> +	"unused",
> +	"single",
> +	"range",
> +	"start",
> +	"stop"
> +};
> +
> +static ssize_t addr_cmp_view_show(struct device *dev,
> +				  struct device_attribute *attr, char *buf)
> +{
> +	u8 idx, addr_type;
> +	unsigned long addr_v, addr_v2, addr_ctrl;
> +	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
> +	struct etmv4_config *config = &drvdata->config;
> +	int size = 0;
> +	bool exclude = false;
> +
> +	spin_lock(&drvdata->spinlock);
> +	idx = config->addr_idx;
> +	addr_v = config->addr_val[idx];
> +	addr_ctrl = config->addr_acc[idx];
> +	addr_type = config->addr_type[idx];
> +	if (addr_type == ETM_ADDR_TYPE_RANGE) {
> +		if (idx%2) {
> +			idx -= 1;
> +			addr_v2 = addr_v;
> +			addr_v = config->addr_val[idx];
> +		} else
> +			addr_v2 = config->addr_val[idx+1];

s/"idx+1"/"idx + 1"/

With that:

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

> +		exclude = config->viiectlr & BIT(idx / 2 + 16);
> +	}
> +	spin_unlock(&drvdata->spinlock);
> +	if (addr_type) {
> +		size = scnprintf(buf, PAGE_SIZE, "addr_cmp[%i] %s %#lx", idx,
> +				 addr_type_names[addr_type], addr_v);
> +		if (addr_type == ETM_ADDR_TYPE_RANGE) {
> +			size += scnprintf(buf+size, PAGE_SIZE-size,
> +					  " %#lx %s", addr_v2,
> +					  exclude ? "exclude" : "include");
> +		}
> +		size += scnprintf(buf+size, PAGE_SIZE-size,
> +				  " ctrl(%#lx)\n", addr_ctrl);
> +	} else {
> +		size = scnprintf(buf, PAGE_SIZE, "addr_cmp[%i] unused\n", idx);
> +	}
> +	return size;
> +}
> +static DEVICE_ATTR_RO(addr_cmp_view);
> +
>  static ssize_t vinst_pe_cmp_start_stop_show(struct device *dev,
>  					    struct device_attribute *attr,
>  					    char *buf)
> @@ -2117,6 +2167,7 @@ static struct attribute *coresight_etmv4_attrs[] = {
>  	&dev_attr_addr_ctxtype.attr,
>  	&dev_attr_addr_context.attr,
>  	&dev_attr_addr_exlevel_s_ns.attr,
> +	&dev_attr_addr_cmp_view.attr,
>  	&dev_attr_vinst_pe_cmp_start_stop.attr,
>  	&dev_attr_seq_idx.attr,
>  	&dev_attr_seq_state.attr,
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
