Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 329921A650D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 12:12:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QqUrAMkzNabBIkn7st56ocQzD+aJad2KZCKLj1g6ggY=; b=ArFGkSmANTeIvr
	1gsBlw+u25SglEesHOwSRb8HIanIHnQ9+/2+uTXC5JG0kedEiPm2t+3q4aqlND8OoCrgxH3es2B7H
	KEfChQvnYIgwHsXR+uIvY1kJIA+26PuwdCkny7iLTNqe+wD5RepDonE1lGDPQ5pTKlCB1BuW30cDP
	o3CIOtiGXc33NhXJDaQOwasx5JMEsuVtEQb/f5ocFLu9lHNlPqBQhfwFoFk4mrpuPbqTviPXVfnpT
	GVCPgb6glFX5mJWkZZQjKh8JGcACmc/DP4uiv9ejpAmQAPRiscyqLbltxK5EpVcDT1Ze64lbNW+xq
	SpFGfXvTYyJFfP9OxwoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNw46-0000hk-Vc; Mon, 13 Apr 2020 10:11:43 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNw3w-0000hJ-F5
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 10:11:33 +0000
Received: by mail-ed1-f65.google.com with SMTP id ca21so8995647edb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 03:11:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=IHzUNdwPsTQhqLll3sOK8O3xrvJdBlinyJZ6YxNwq5s=;
 b=nM4M+j/sGoJAgY51ZLKAskL5VoLsRTCs0I3D+UMhBFt7jWG/C4hVjNxsQiqKjQpQss
 N4efsafH350aj9ArcZGomD9iHl2zuzgimHSKNIQcAoEsOwyeq7zyVftmlfVfzV2jkpzg
 TIVcKpjAPZ4amK7nA3Z3omGJ9UgHSN05EHoTKmw0GBhZ91yxcGcFRREcOviWZdo8lCXy
 R+Gq+sSQlGEcqXEGoxvi9LoanobkM7sgIEPRQ9yH4eHJ0V6LyPJBAtKZbuMUlrYyIQRj
 Y3IaLlqDuJem770oaLXyMll4+vbPo7T81DG6Tyk/E7PYXyRQIiKHXL5DCjb5M5HlsnX5
 phqA==
X-Gm-Message-State: AGi0Pua+eQQ+Na1Sqxtkr1HKnrx1PKATgV01n5RtqQ0P1zNSvv4MMZqq
 Mb/LNjwualUBm93J8TxF2w4=
X-Google-Smtp-Source: APiQypLbUzeNvAIZR67vxpLwZzQRg3r3rXpBNYhH+Po0Qp1noxa7A8r1ABhf2bhfL8AcuoH9Rr3W4g==
X-Received: by 2002:a05:6402:1383:: with SMTP id
 b3mr15439537edv.217.1586772689922; 
 Mon, 13 Apr 2020 03:11:29 -0700 (PDT)
Received: from kozik-lap ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id g2sm1307883edm.77.2020.04.13.03.11.28
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 Apr 2020 03:11:29 -0700 (PDT)
Date: Mon, 13 Apr 2020 12:11:27 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jonathan Bakker <xc-racer2@live.ca>
Subject: Re: [PATCH] pinctrl: samsung: Correct setting of eint wakeup mask on
 s5pv210
Message-ID: <20200413101127.GA10535@kozik-lap>
References: <BYAPR10MB3479E878C547053C6B952E01A3C40@BYAPR10MB3479.namprd10.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR10MB3479E878C547053C6B952E01A3C40@BYAPR10MB3479.namprd10.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_031132_501971_3BDC81D7 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-samsung-soc@vger.kernel.org, linus.walleij@linaro.org,
 tomasz.figa@gmail.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, kgene@kernel.org, s.nawrocki@samsung.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Apr 04, 2020 at 10:08:49AM -0700, Jonathan Bakker wrote:
> Commit a8be2af0218c ("pinctrl: samsung: Write external wakeup interrupt
> mask") started writing the eint wakeup mask from the pinctrl driver.
> Unfortunately, it made the assumption that the private retention data
> was always a regmap while in the case of s5pv210 it is a raw pointer
> to the clock base (as the eint wakeup mask not in the PMU as with newer
> Exynos platforms).
> 
> Fixes: a8be2af0218c ("pinctrl: samsung: Write external wakeup interrupt mask")
> Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
> ---
>  drivers/pinctrl/samsung/pinctrl-exynos.c | 73 ++++++++++++++++--------

Thanks, applied (with Cc-stable tag).

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
