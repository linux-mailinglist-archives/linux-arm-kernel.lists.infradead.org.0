Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1169828EDE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 03:39:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+rcOVP8Krg1yT8E7WTaRS31ePcQzjnAmiVaA2drZ6xQ=; b=Ryjid2jaaK6kPg
	S+XKXmrg8MYNzvipdRkn12iSQvhddYVPClkGubeOtuDRfwkmoLpj5YjPtjl4Ut3WiM6OaZwQQdl77
	3tN88576PW1WEkg13bPG6EZHGCET2fEEOzkgh/cRuioJWGuHyPTTjdBa2ZybXnlsXCLFkZHvqiXIS
	uCo2if7fh4kNVfToKr0A2MA+KBynVrAo4XZI2ZQgGTA2JwORk2ptaIQvIPcRPF3IiFY8qMB/SDkOC
	Iiw70yMkU1O/OHT3/cqu8K3XaHbneq03eV0IuO7zxePTYotPqHyOqHliHElTln2sx52fZfDfCJGIh
	YWh0Ew2AZplbKYoLuEjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTzAi-0004S5-D5; Fri, 24 May 2019 01:39:00 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTzAY-0004PC-M1
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 01:38:52 +0000
Received: by mail-qk1-x742.google.com with SMTP id w25so5054941qkj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 18:38:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=BD8gsIvGveusm922tD1e2XMMn8H4dDeMiU5yfjezjZI=;
 b=xVg4PJseLvecfb9jz98prCdPoo9JQYisyN8ivZrwv0hVZSOVec7u8vyLPiJq1+AWkU
 xORi9/5fKgn1vYui99U0fVJvpP7Dcq6vdalwSuLo8zeRtE2qiHYW7xyaclgO3BgWgcUs
 hYoiRoYWFJcgtf34suZ4wcYNRghBczu4DMsNX4G89r2iXKVQoXBp67z0GaQTk51FzN4L
 rrdhxO61WsmSUNowOgD2qwQcBg03svO7TEO3Y4wE7v6ct7MaMYxuyIGg2daJ76EocMK9
 gdAdbpFVldM/rdtSs9O/n1vAh/FNLGi2O39ytO+3jdyJkOeeMsV44+RyLHGNIabnoYP1
 SxTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BD8gsIvGveusm922tD1e2XMMn8H4dDeMiU5yfjezjZI=;
 b=NzfqwHVvGRbCCrpqSRYHBD+qoshmn1funfLZdzEZXN2yf+zH4BE+LAggNxy/f55Noj
 gPr56q7swRwnjbG2WiaXQpHujXlPTLNjwuxifZ+AWPjm33n+rECx158OZYpME/EayhNS
 WaXLhzJ8mStJn9Roz+csTcYwICCJpjXQq17ttrW9We0mb82mVALlmEIHKx4syb3bIoYs
 R5wthOR1lww3wKGGAcOTepAHj7d0/b+lCwAN3uynnEowRcdYNatEp+FgInTuZGUedSyf
 xM5NjYlm/tZu19is6GuZN81GFSa/gm4nmm1RhxYUNjH23FBfXl5qO/0ZE9C5nQqDbqZ9
 r6Zw==
X-Gm-Message-State: APjAAAWnk5+FaHqJHYOzZjGf/Tj7THoJjaNriG3/bkeZy0JeLZ3lYrMQ
 0QnqvRpyb/wWi/mcm6cTMX6VbQ==
X-Google-Smtp-Source: APXvYqwYIIZ/sR4oA2tEC93zoJvGsRR2w2lnu7OyHYSXPUgaNp8l91gDLyUIatxi+0C1sLDmYy+s8g==
X-Received: by 2002:a37:8703:: with SMTP id j3mr18291782qkd.188.1558661929282; 
 Thu, 23 May 2019 18:38:49 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li483-211.members.linode.com.
 [50.116.44.211])
 by smtp.gmail.com with ESMTPSA id d58sm775782qtb.11.2019.05.23.18.38.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 23 May 2019 18:38:48 -0700 (PDT)
Date: Fri, 24 May 2019 09:38:42 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v4 00/30] coresight: Support for ACPI bindings
Message-ID: <20190524013842.GA5971@leoy-ThinkPad-X240s>
References: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
 <20190523143227.GC31751@leoy-ThinkPad-X240s>
 <23a50436-4bcf-3439-c189-093e1a58438d@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <23a50436-4bcf-3439-c189-093e1a58438d@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_183850_806844_75C94A4B 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: coresight@lists.linaro.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki,

On Thu, May 23, 2019 at 04:31:54PM +0100, Suzuki K Poulose wrote:

[...]

> > When you send out the new patch for exposing device connection, please
> > loop me so that I can base on it for perf testing related works.
> 
> Sure, will do.

Thanks a lot!

> As such, the perf testing should not be affected by that
> series. It is just a helper to demonstrate the connections. But yes, it
> will definitely help you to choose an ETF for a cluster, if you had multiple
> ETFs on the system. Otherwise, you should be OK.

Yeah, the perf testing approach is heavily based on sysfs out/in nodes
to find the trace pathes.

> Please be aware that the power management support is missing on ACPI platform.
> So you must make sure, by other means, that the debug domain is powered up.

Thanks for reminding; for the first step, I will not add any power
management enabling steps in the testing script, we can add the
related operations if later we have clear idea for this.

Thanks,
Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
