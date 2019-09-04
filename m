Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 112E2A86A2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 18:33:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NhBybBwg0H3JMNY89blkL0zRM7ArPwolMfb9EOEMxIM=; b=MaHAsqVGhxiPkk
	lj4DBPA+4WKrbMQP+X0pVcMeW4yqB6W3su7AKkFZ0G/z2tOL/mq0jTFvx02VwMdNZiOgidJApVCyE
	59drnlIR5iPMa9hgeVauejVBeUrJJgvoP5FUT5M6DoagOo0e+Zos5vr54U3mnqDNBNYhs2coSwJIc
	LF20TwGex5pxdG1hfz36dn6inc7Hw/r6mdX2UVL1quTdLYPbK8F/4B8emvQagH9B9zgsGxDsUDKjA
	eI0ZWMQfg0Sr2M3g2XKEsAj7aoEjkwvsaeUtcI5Os2KiSQL57L7T5dMQ3qlLo8SpaFhQyOZVVY2VB
	Xuevu0bQOd/4rqd1RalQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5YE6-0002JC-5z; Wed, 04 Sep 2019 16:33:46 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5YDv-0002IU-9M
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 16:33:36 +0000
Received: by mail-pl1-x634.google.com with SMTP id t1so1548985plq.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 09:33:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:user-agent:in-reply-to:references:mime-version
 :content-transfer-encoding:subject:to:cc:from:message-id;
 bh=pwMt7TX08fV0E4tBOUdJSpnSHKehbGCSOy56W7fVPPo=;
 b=hfzYxGvNCqyEQhmreer0hgYa9uSk+pTSbRTtTa2uhIK7mMGttmgJVeiaI5BVkZgT44
 XZWukCsJntPeAqYt1YgYMu+PDgMLuUwz7mP4xVrOzVa829I2t1XmWrFHliiKQDQHjiWn
 neijkHIfGPsZyPPVryv3D8Gh5fcL92/P2i9DqRmUav89S5Xf5lMc0Nanh3hQspkoMML0
 w+tdCSRnsuvkHJ6a/OZpwAIsdwGofdX6bUHiu67NOiDiMP07jqVb29f30pfB/cG5tbdQ
 CnBYo6ZUjO67JukuVAw2OJ3BEkPuPms8MV+jBn0ptM2VRguZQ44/R2MX4WgROcyZxcPo
 RQEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:user-agent:in-reply-to:references
 :mime-version:content-transfer-encoding:subject:to:cc:from
 :message-id;
 bh=pwMt7TX08fV0E4tBOUdJSpnSHKehbGCSOy56W7fVPPo=;
 b=ggYhlsYRDBTJ5woFG0u+x6/7Bwp92GMGIhggh2AT0qo7ok8GcFw/PhSY5I83hdPuSQ
 5GOWB7tAIc3fA4yiOlQzD/HIVewBIGz8TaXT5xFZhlnbcNpDAUyry0sqBrp93uxqDbDN
 w8cym3OYT3/zwEJy5RMc55a6+9f7JTkSWnV55fuv7qLRb7atXCxJSj6NM1ygjD+XA9cM
 Ar8VN17h/xJcr8NdQKToYzLGh3uPz7+H9Ii4RE5DRjomN5HKIFgHb1bSCVXkTfppFp53
 kigTUt2bz5QO0Qt5BBmp1374vyZRgFi0cJlFmK2iNZ7g5egkoNtKXH4B95HcwrPtQmb4
 gK9A==
X-Gm-Message-State: APjAAAX3KYihScTJ2rg2+LmK4yhFdECy9W23ymX+mEVaEbeqFzirf3L+
 ikMi4PAL2KUQujrZ8xof70/L
X-Google-Smtp-Source: APXvYqyiD1CwYd8LMne01JukedrqcpYAaKd66CF/KQ61IFz2AGqd5GiGXXiEIQna4MAwGDdwHsfqlg==
X-Received: by 2002:a17:902:9a07:: with SMTP id
 v7mr42466183plp.245.1567614813411; 
 Wed, 04 Sep 2019 09:33:33 -0700 (PDT)
Received: from ?IPv6:2409:4072:994:cdd3:65d0:8a4e:9992:92e2?
 ([2409:4072:994:cdd3:65d0:8a4e:9992:92e2])
 by smtp.gmail.com with ESMTPSA id c15sm9015587pfi.172.2019.09.04.09.33.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Sep 2019 09:33:32 -0700 (PDT)
Date: Wed, 04 Sep 2019 22:03:26 +0530
User-Agent: K-9 Mail for Android
In-Reply-To: <CAK8P3a2gVsy8Do8Wrpu9wCTTBSb1qx-+mNtyCKKUA=hQVfDwSw@mail.gmail.com>
References: <20190803124404.GA11140@Mani-XPS-13-9360>
 <CAK8P3a2gVsy8Do8Wrpu9wCTTBSb1qx-+mNtyCKKUA=hQVfDwSw@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: [GIT PULL] Bitmain changes for v5.4
To: Arnd Bergmann <arnd@arndb.de>
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Message-ID: <547D13E1-64E1-46FD-A68C-B9AE7BB8FFF1@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_093335_335375_610C7658 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:634 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Olof Johansson <olof@lixom.net>, arm-soc <arm@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

On 4 September 2019 6:17:59 PM IST, Arnd Bergmann <arnd@arndb.de> wrote:
>On Sat, Aug 3, 2019 at 2:44 PM Manivannan Sadhasivam
><manivannan.sadhasivam@linaro.org> wrote:
>>
>> Hi Arnd, Olof,
>>
>> Please consider pulling the Bitmain SoC changes for v5.4. These
>changes
>> are supposed to be pulled in for 5.3 but I was waiting for the common
>> clock driver to be reviewed (still not), hence missing the timeline.
>> Details of the changes are in the signed tag.
>
>I just found this while going through old emails, it seems I never
>pulled it
>so far and did that now.
>
>Please note that our address has changed, and new pull requests and
>patches should go to soc@kernel.org so they end up in the patchwork
>at https://patchwork.kernel.org/project/linux-soc/list/ where you can
>see the status.
>

Okay, will use this address for future PR's. 

Thanks, 
Mani

>Sorry for missing this earlier.
>
>      Arnd

-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
