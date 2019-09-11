Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BDF6B0233
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 18:56:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B1kcPhtgkrJ2kOovEywSxVemRP5INX7boO1nQb7rP5k=; b=t1FdvZJR2gpEVbmm41n0LMKSv
	LCQL1wb+t9RC5aZ2PUd5RF7k3u2Y6HoqZSI0F4N0TQvaCHw4QaKodLUd0GOvMZhI5lR4oZXRDeZt8
	2yQvsApHo8I9TJSUDPRc0XJUUjZCmbWPvLYR2eUmEwtbsXrHcsRgdmlUOAsrFgzzoH+w8Zabsv7N+
	jaC1u1OKB9sMVz4UR1traM2SmwrLhbUol9G+TzlvtuFrnHiJ734fsnWihxcSZO3rMs0fOrP23KXD8
	fAFxuLT7Lp4UwjLjjtpnKUQISJSNFlKS8kM7xYjiz/MqHUbqyV2Jm9BKIyll52U/UIIGU7phw1N0z
	Zf8CZl2XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i85uc-0005CU-Dn; Wed, 11 Sep 2019 16:56:10 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i85uG-00059f-6a
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 16:55:49 +0000
Received: by mail-pg1-x544.google.com with SMTP id x15so11799628pgg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 09:55:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=QVzc7x0XOPlA1RrL6UcO+fm5NotNlH7iMncjCJBJnes=;
 b=aXAgJOu/93uoPfF7SbtKK/0ZWJ4poSZHbD00znLc5Os1xU5tX0K0Wu34dE7ri3SRTw
 eomrvo6N+T94gFjQIEXN3wz4vuN63LPFp9mxf5vnM6IRLArMhRmW3Iinut4buyqnQheg
 ZrEcYg+asrwu3ArbguAanYRECh4Zl0hbHt7A8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=QVzc7x0XOPlA1RrL6UcO+fm5NotNlH7iMncjCJBJnes=;
 b=Jhf6YDJ7C4El8PacceX1X/4rzOTooFtWK1eR0AhYPtGtMGON6ZSmINMmrxfF9tHMRj
 QWUhsq2eBZ4UrGXkQTW88OrUTkOxWVeecGbVjfdSrTbR/tKLA61Zpv6HI60oRH7LFQiH
 J/vfdTniXfGQu4qDmBWtjhJA0OznNDpVAVpSQvQ1dSwzFaLEP5ZfHHUEMuuUH2kLN1Ef
 OALO56hEsnGxBWUUbCJA8ND6bKXErq06I0csD/5OPm4IE/LVOaymPUPXcVWWj4qmos3K
 isfLub47zU/4KyUFDQfW1oSfzWq1OJT2MSjtAyAHVeaOfssae3Kxim5Z21c6yf9bewc0
 hwYw==
X-Gm-Message-State: APjAAAX9hF1H08eM+Q4BXCi5WdH1yC+0X+BdtQDH/ltY8EII31GE7J3f
 CX21eyRwlopsQjfWJsVCnDbdzg==
X-Google-Smtp-Source: APXvYqzOqZkMd0NdJa6DTPoVNOt6bO8UiPegUVSWBZC/GbY5p2H/PayFVRYRDsdxzmCTcwjU+N3WRA==
X-Received: by 2002:aa7:8b09:: with SMTP id f9mr38864255pfd.23.1568220946793; 
 Wed, 11 Sep 2019 09:55:46 -0700 (PDT)
Received: from rj-aorus.ric.broadcom.com ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id z29sm35092888pff.23.2019.09.11.09.55.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Sep 2019 09:55:46 -0700 (PDT)
Subject: Re: [PATCH 1/2] gpio: iproc-gpio: Fix incorrect pinconf configurations
To: Linus Walleij <linus.walleij@linaro.org>,
 Srinath Mannam <srinath.mannam@broadcom.com>
References: <1567054348-19685-1-git-send-email-srinath.mannam@broadcom.com>
 <1567054348-19685-2-git-send-email-srinath.mannam@broadcom.com>
 <CACRpkdZe2btC-vjRq1rPaHA9pXUi8N_cZT-RQ5m=PxjmkASieA@mail.gmail.com>
From: Ray Jui <ray.jui@broadcom.com>
Message-ID: <535f7569-70d0-1a7c-e15d-b77301867629@broadcom.com>
Date: Wed, 11 Sep 2019 09:55:43 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CACRpkdZe2btC-vjRq1rPaHA9pXUi8N_cZT-RQ5m=PxjmkASieA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_095548_623433_157570E2 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Li Jin <li.jin@broadcom.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 9/11/19 2:34 AM, Linus Walleij wrote:
> On Thu, Aug 29, 2019 at 5:52 AM Srinath Mannam
> <srinath.mannam@broadcom.com> wrote:
> 
>> From: Li Jin <li.jin@broadcom.com>
>>
>> Fix drive strength for AON/CRMU controller; fix pull-up/down setting
>> for CCM/CDRU controller.
>>
>> Fixes: 616043d58a89 ("pinctrl: Rename gpio driver from cygnus to iproc")
>> Signed-off-by: Li Jin <li.jin@broadcom.com>
> 
> No response from maintainers for two weeks, so patch applied.
> 

These patches were actually all internally reviewed by Broadcom 
maintainers before sending out to the mailing list.

Obviously you wouldn't know about that, :)

One of us should have explicitly given our ACK, sorry...

Thanks,

Ray

> Yours,
> Linus Walleij
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
