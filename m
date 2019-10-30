Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11AD7E9C67
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 14:35:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vcjSVcXcHQgPgIL01UoZjRE0ySdqGVEQUyPn+EsWOzQ=; b=X9cb0kIlT2SeqS
	gRxCsLvg8YupL859/FMY3Y2sRmtCpXzVUnq1YuUnaTZ1K8hANgEFvBGuSX+q+JLW70TXecFISC6s7
	Uxsd4fd6BtTo5wF2pSu2S731fW0Ghy5RtX0LJvPEkjPaDc3zF0mNV0w3xqiXh1XSGEWIfytq2H8VN
	IZ/7bwy0UQkN4auGWozzi5IlYV/QPQbkScKlbHQdVHEZFnRiy9XTcEI0S91gaOXdiYaCktg7q0rm1
	hVUunRoYm34ybRBIvszgmWRmNTZadn4xcQalDIQt77Pkd7KqAqyXx3hmfatK8iJo+1mlk0r1SP+hm
	+2D0tGWK9YDhtdBdaqQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPo7h-0008Lr-36; Wed, 30 Oct 2019 13:34:53 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPo7X-0008LD-TJ
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 13:34:45 +0000
Received: by mail-wr1-x442.google.com with SMTP id a15so2325260wrf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 06:34:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=1DmfIPl5+CM3TsZ34vuXwxofsjyE4KJh/0My+RajxZQ=;
 b=UxIZHF+sWhoAndsBktK0bSxlmDG77FTdzaslNT/NXnM1c4D663X7EBQP4zjNN4O/43
 2fhW1SofAqP2PrvS8YkpyMhodLc7EVHOlm3LhhhhnAwC0qSEIjqZAlMnXtkvwN4ai4wv
 E3YoiPxRbBhb7Xgk/6FzBAfLHp2kGqIH9LIRjhiFbkBjTEfDopVpNNZXU3AhHTHODanv
 zIK1tv49Zy1sNGT0BXt1mbQH6YEOD3oa+yQXmv4pPAMx/66YMrZrzb1VCvq/34NzeMoy
 uKxIvF5o3auSfKofgGJVdPrLcB8KQPxZjpucXEx/pr2A/f9o0hjGPDlGuXf50woH6RHc
 Jcmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=1DmfIPl5+CM3TsZ34vuXwxofsjyE4KJh/0My+RajxZQ=;
 b=TsoJytlDxsHbAdA+FcroQFO6Gn6FekvW6wev+e+81DTKw9qSQpEPwFuyMq1yTUxSeM
 iuqVSOwytehOYcgoKkQ/ib0lZYe3tMnqm9KogTzyJxadANd3oy9le+RSl7bjy4LkkXoL
 KVb5bZ3bjGabFQNbltWrrYx+W78We+Gco/LcPz56GbK0QEGYjSE6GylbNVLxi9V6bVXP
 /ICfzJ0yFf7Tdrn6nyhW5r0ckJx0h179JY8JyjVAGDdiVMtV0Cp/cDLBkNOddDaNAdZ/
 /ZSH80my4xVRNbdfhlzM61lFo8yMrwNa7JvQ0oxExh2/nu3mdWm4mvHy3jjSUjHYZm13
 xNgA==
X-Gm-Message-State: APjAAAUqqPhiKPhY4EdR7W7UEd88QmsOA4grv9SdEogbu2I3IlHCZqGf
 Rozt6QcI4yjsKCscbKOYxGyPww==
X-Google-Smtp-Source: APXvYqyoT1R0doXxu5IkmpBYUqwFjQFamtUqmncfw2CjsqAA3J+HnIgsMQPM0YEicjHlTXfnRevufQ==
X-Received: by 2002:a5d:678e:: with SMTP id v14mr23922490wru.393.1572442481524; 
 Wed, 30 Oct 2019 06:34:41 -0700 (PDT)
Received: from [172.20.33.154] ([91.217.168.176])
 by smtp.gmail.com with ESMTPSA id r1sm217474wrw.60.2019.10.30.06.34.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 30 Oct 2019 06:34:40 -0700 (PDT)
Subject: Re: [PATCH] arm64: perf: Simplify the ARMv8 PMUv3 event attributes
To: Shaokun Zhang <zhangshaokun@hisilicon.com>,
 linux-arm-kernel@lists.infradead.org
References: <1572407177-48229-1-git-send-email-zhangshaokun@hisilicon.com>
From: Richard Henderson <richard.henderson@linaro.org>
Openpgp: preference=signencrypt
Message-ID: <b603fc49-01f5-b5b4-7c2c-5f0bc53b6fc1@linaro.org>
Date: Wed, 30 Oct 2019 14:34:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1572407177-48229-1-git-send-email-zhangshaokun@hisilicon.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_063443_969781_5A3C9054 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [91.217.168.176 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/30/19 4:46 AM, Shaokun Zhang wrote:
> For each PMU event, there is a ARMV8_EVENT_ATTR(xx, XX) and
> &armv8_event_attr_xx.attr.attr. Let's redefine the ARMV8_EVENT_ATTR
> to simplify the armv8_pmuv3_event_attrs.
...
>  #define ARMV8_EVENT_ATTR(name, config) \
> +	(&((struct perf_pmu_events_attr[]) { \
> +		{ .attr = __ATTR(name, 0444, armv8pmu_events_sysfs_show, NULL), \
> +		  .id = config, } \
> +	})[0].attr.attr)
>  
>  static struct attribute *armv8_pmuv3_event_attrs[] = {
> +	ARMV8_EVENT_ATTR(sw_incr, ARMV8_PMUV3_PERFCTR_SW_INCR),

You do realize this creates complete perf_pmu_events_attr structures, most of
which is unused and unreachable, right?

Also, why not take the opportunity to assert that the armv8_pmuv3_event_attrs
array cannot get out of sync with the ARMV8_PMUV3_* defines?

Slightly better would seem to be

#define ARMV8_EVENT_ATTR(name, config) \
	[config] = &((struct device_attribute) \
		__ATTR(name, 0444, armv8pmu_events_sysfs_show, NULL)).attr

though I'm not sure why __ATTR is particularly desired above

#define ARMV8_EVENT_ATTR(name, config)      \
	[config] = &(struct attribute){     \
		.name = __stringify(name),  \
		.mode = 0444,               \
	}


r~

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
