Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4F211A177
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 03:39:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CDdZZyURH4f2V+8FHfZDWEZJPitiT4sfpowIeCu1YNo=; b=e58wjMa1IegCsy
	RwFt5+3sCUZPuPCD+/oPHMs1nA0UoaiUzY8Xt3YuS/XIvwH11RjFng9SBiduiBQwqpzRUeVdX1Qxm
	26iQI/SBWMvK/JjFurbd0w6M3CZ/dI7KNCDfgW84OtsD23xPU0dBEnA2kvGVFk321gZGZXMPADvrV
	OA4C35gY1o6rugk43X2fLxDmdSq42EF48Au4kJFTvCN5SJiQVT6FbbQ0/w+nXt25MfITFHRvGp/ZC
	ewgC51u3L0fc7muLRcFF4Sf9nPohPjxr06JiLN8PmKxsPunIhPyM4p6F9yQ9t6nCHRlGQMS+okF7u
	2aNdW5VNhk4/GAQyQ6jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieruK-0007n6-LX; Wed, 11 Dec 2019 02:39:20 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieruC-0007mW-UW
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 02:39:14 +0000
Received: by mail-pf1-x443.google.com with SMTP id y14so977980pfm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 18:39:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lkeETUhQ3f8lWNeTP8ytVN52+By7QmgfsOQEQVp/5Bk=;
 b=QiQikR6kEHX9KZ1Ty8ohFw4WHZKRp4hr1Qd30w5/P5llrwO/ghQvr5AVO96DGVV/iQ
 zUlSw9bd3ZcVlEopdECizjka55M5lzl/Wf/45NGHMMsJQLOW/TrmVP788fJsQQ70A7T0
 xBSdCDZV8jPuHHsFDM3Mssemmmu/UydbPzPAKKrV9z67P+iaSLPmDdiQn77BrVmU88TZ
 r5yjmGbkbcMEBx5HFS6LgJll/Z8K9vMyK4PlxQEBw7UQ2BYt+cNA6N9u36EVxMZWWjM+
 txxz4bz5rM3o1QfR4C+p67D6MKRGg9p85mESLdzx0CPcdazh5iyhqbaWgD1TJ8gFWqG1
 8dHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lkeETUhQ3f8lWNeTP8ytVN52+By7QmgfsOQEQVp/5Bk=;
 b=lh9tKjQm1A4bje4SAXyGVnejpRehZZc/wDciSK8S0Ler7zYegR7aBPEiDFdaMX1vgL
 c3yl4tJYLCxGSMFV+t+G8wE7sE6iq1f50Ogwy7/2VcmIuhD1fJadEFm2+2GRKaY9uduk
 YbyM8ypp7ohI8yDw/OCcZ+ORUyQRoseckNBPdiuE6hf1Simye8sPWWrp+RXAMXzX3elf
 VSabLz14tWohOTgjr5s3hr2s5Wu2FtD6b5nBU+LLcJnUX/PqyQjqvxAazjlpSk5456s9
 DMaiKwzKfIyyydaKtM9kjZfGeXkZzTLwWKiZbEW/Q+tcnFRlMevJPeMLEDQc0o11nF1r
 sAbg==
X-Gm-Message-State: APjAAAVeqCc0ENIQhglYTjYmkWtqhANs6HiiSWamWMUiecykHXSLYTG1
 IjJjKl4Zu8AcSXzszLyT4gHuAAM4OkM=
X-Google-Smtp-Source: APXvYqwv4FD7npjWh+xM8yEtWzQSvRX+xQWGcV0kVvGQhmKaR0MAmXhCirrzY7eQKyfmK8n6ahuV9g==
X-Received: by 2002:a63:364d:: with SMTP id d74mr1504299pga.408.1576031951864; 
 Tue, 10 Dec 2019 18:39:11 -0800 (PST)
Received: from localhost ([122.171.112.123])
 by smtp.gmail.com with ESMTPSA id 200sm398800pfz.121.2019.12.10.18.39.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 10 Dec 2019 18:39:11 -0800 (PST)
Date: Wed, 11 Dec 2019 08:09:09 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH 13/15] cpufreq: scmi: Match scmi device by both name and
 protocol id
Message-ID: <20191211023909.7iun7kdk6pjkync6@vireshk-i7>
References: <20191210145345.11616-1-sudeep.holla@arm.com>
 <20191210145345.11616-14-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210145345.11616-14-sudeep.holla@arm.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_183913_014426_CD8B139E 
X-CRM114-Status: GOOD (  18.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Cristian Marussi <cristian.marussi@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10-12-19, 14:53, Sudeep Holla wrote:
> The scmi bus now has support to match the driver with devices not only
> based on their protocol id but also based on their device name if one is
> available. This was added to cater the need to support multiple devices
> and drivers for the same protocol.
> 
> Let us add the name "cpufreq" to scmi_device_id table in the driver so
> that in matches only with device with the same name and protocol id
> SCMI_PROTOCOL_PERF. This will help to add "devfreq" device/driver.
> 
> Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
> Cc: Viresh Kumar <viresh.kumar@linaro.org>
> Cc: linux-pm@vger.kernel.org
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  drivers/cpufreq/scmi-cpufreq.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/cpufreq/scmi-cpufreq.c b/drivers/cpufreq/scmi-cpufreq.c
> index e6182c89df79..61623e2ff149 100644
> --- a/drivers/cpufreq/scmi-cpufreq.c
> +++ b/drivers/cpufreq/scmi-cpufreq.c
> @@ -261,7 +261,7 @@ static void scmi_cpufreq_remove(struct scmi_device *sdev)
>  }
> 
>  static const struct scmi_device_id scmi_id_table[] = {
> -	{ SCMI_PROTOCOL_PERF },
> +	{ SCMI_PROTOCOL_PERF, "cpufreq" },
>  	{ },
>  };
>  MODULE_DEVICE_TABLE(scmi, scmi_id_table);

Applied. Thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
