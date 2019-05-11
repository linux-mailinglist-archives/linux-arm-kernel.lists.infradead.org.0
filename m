Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 711CF1A712
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 May 2019 09:33:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=06ds3GiqgPigK8RJj5CvIuu6FSwWwJMxml4QUBTfvYY=; b=qhiXcA99Nc2Bdr
	LDyYaHkSIJ9gxJHB1MPLtzKRa2gMZ7tvv1XYU6aOT5563zBsnkt3kybWRJvhJwG5unjwsub2KR96l
	2HAYvdl8VM3vpwt60MrExU00k9ARZcft64lXuEBC1I4U/yEhndyadOp4rHOIgAbDlvvBBKAB/LZMC
	Ct6m/S2+faYK/3Ihnm9yLkxMP3OuY+FPNAPY7mk1a/V2Rbxn+jtdgJsEkixzJObUv3ikSg1Le34cG
	SvGW6uRfkBABGcjuYYfHXhk3d80ods1KHnR+x2mfFjfiGZp8Ap68eGUfdjpSPKjBIkiAV+A3VpMjU
	bhuXPSOQzS7wk4jz+zTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPMVA-0005pR-RZ; Sat, 11 May 2019 07:33:00 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPMV0-0005p1-AY
 for linux-arm-kernel@lists.infradead.org; Sat, 11 May 2019 07:32:51 +0000
Received: by mail-pg1-x541.google.com with SMTP id t187so4092668pgb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 11 May 2019 00:32:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+ksfCNh+4KH9uw/jweW2n7UtifV0NBPC440whlqdjmk=;
 b=yPwuS4OrCRmR/SZ4XA+yJynBW2t33nTOHgfHNOgVptqFSAsT+kSCeDnmWOAYYbjGA9
 O+qQW4zMu5aB2V5ZkOeUsLtQNYNSSoWrYTpzneGRymnLhV2oXAqoGY8npWNSALxl2cRF
 QUGhoWTQXV5/LzAzIjwgFc79XGscAIJ7sHlkBcD6wksHiZqWG3ljnIm1mxvYJb4at1xG
 LoIbf3j1WAfGvzyiAHrKt3W2vI2kukGfCR4dJHb9RcRH6eqdMqxVStJOekPVtMV+EmI+
 PT6GYEsr9hw7OI1GLVn/mLLma0aX6Imw8f3HXDwHvSn/bv/H+/kD5w/h5CBMB0nAxj8n
 a3xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+ksfCNh+4KH9uw/jweW2n7UtifV0NBPC440whlqdjmk=;
 b=A5e9dqGUrdAdn0trid+5aTLx57k5hXeJMfuERXHxiSuvUOZlAyJk5IK09l2PsGSRte
 +8tfUwaf+9jTu2xSjX6g4dHTEjzwmDrNXSMmGfVR5Da061D4z4P8jSSMjogNmsCIcw4I
 jiLu+j329UPmmvZU2lMvoJD6rC6eCsZkf1SR9uvHEj3VMzsTmg+xc26m412Y2fgcooru
 haqW5sg42oW9CajyDYgWA2g5HfW2R3r4UNaH6vKOhprXBLfnomshi84gS3T8VdG6Bcf7
 bpdD+fmKJRq5TutCsAIMq56/ZMemM/HlN00KWhFEmsI1Hlosg6PJywmbuF6Zw2b1UcTt
 +fDg==
X-Gm-Message-State: APjAAAU1xvoVVOi5viTo+b7TURIibhT8MevYuojDAYr27cz+Mxhimfhh
 4G2IZk8/2dGEMRNez5tfzrSoEof68/xewSuG
X-Google-Smtp-Source: APXvYqxCM/mSGf1Lq9R+GZu4xviXjinW1khK2m/EVD/8a2VUj0IxiuFO3E/nZFmOZRwK1K4qF1NkYQ==
X-Received: by 2002:a63:9d83:: with SMTP id
 i125mr14164953pgd.229.1557559968195; 
 Sat, 11 May 2019 00:32:48 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li253-4.members.linode.com.
 [173.255.243.4])
 by smtp.gmail.com with ESMTPSA id q17sm21668798pfi.185.2019.05.11.00.32.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 11 May 2019 00:32:47 -0700 (PDT)
Date: Sat, 11 May 2019 15:32:29 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH 5/5] docs: coresight: Document snapshot mode
Message-ID: <20190511073229.GA18064@leoy-ThinkPad-X240s>
References: <20190501175052.29667-1-mathieu.poirier@linaro.org>
 <20190501175052.29667-6-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190501175052.29667-6-mathieu.poirier@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_003250_428045_F8A77A3E 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: corbet@lwn.net, alexander.shishkin@linux.intel.com,
 coresight@lists.linaro.org, suzuki.poulose@arm.com, acme@kernel.org,
 peterz@infradead.org, mingo@redhat.com, mike.leach@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 01, 2019 at 11:50:52AM -0600, Mathieu Poirier wrote:

[...]

> +2.2) Snapshot mode:
> +
> +Using perf's built-in snapshot mode with CoreSight tracers is supported - to
> +do so the '-S' command line option needs to be specified.  Since current sink
> +devices are used in double-buffer mode when operated from the perf interface,
> +the size of the perf ring buffer needs to be adjusted to match the size of the
> +buffer used by the CoreSight sinks.  From the perf command line it is possible
> +to specify the number of pages to use for a session using the '-m,X' option,
> +where X is the amount of pages.
> +
> +The system memory buffer used by ETR devices is automatically adjusted
> +to match the size of the perf ring buffer and as such does not need to be
> +modified on the perf command line.  For ETB and ETF devices the perf ring
> +buffer size need to be adjusted to match the size of the internal buffer.
> +
> +The following examples assume a system page size of 4096 byte:
> +
> +	# cat /sys/bus/coresight/devices/20010000.etb/mgmt/rdp
> +	0x2000
> +	# perf record -e cs_etm/@20010000.etf/ -S -m,8 --per-thread $APP

In this case it shows the usage for etb, thus should:
s/20010000.etf/20010000.etb/

BTW, the user needs to convert the rdp to byte size with multiplying 4,
it's good to explain for this in the doc or give related info in the
driver warning log.

Thanks,
Leo Yan

> +	# cat /sys/bus/coresight/devices/20010000.etf/buffer_size
> +	0x10000
> +	# perf record -e cs_etm/@20010000.etf/ -S -m,16 --per-thread $APP
> +
> +	# perf record -e cs_etm/@20070000.etr/ -S --per-thread $APP
> +
> +Once an application is launched trace snapshot are collected by sending the
> +USR2 message to the process being monitored:
> +
> +	# perf record -e cs_etm/@20070000.etr/ -S --per-thread $APP &
> +	[1] 14808
> +	# kill -USR2 14808
> +	...
> +	...
> +	# kill -USR2 14808
> +	...
> +	...
> +	# kill 14808

> +
>  
>  How to use the STM module
>  -------------------------
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
