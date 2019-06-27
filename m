Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5524157C6D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 08:49:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HocEaSUIRhQs9G7vNV2Kllm/0i6MV4rpsVfT/PMQ9Fw=; b=QmcPtQfkZSoVGc
	uV+Y6B9xN3uyl1terd5QVwLy4UnCOXiemtflQIZwQabcyKWL/HbG/hz85IH4YmIjT+uCeOOQJlWEh
	g6v3z09ACj3m1zSgV6bzjiGcVnILNofBZxWXF1PYmHfrYmggMYG07easJLkz+msFhvo1SC4KkSI/z
	qaJgUeydk2TqBBuUH6dvTcd1gCswdrYVbghq4cGh/ZDKhtt65FScNgphPDCUMS1xVTn7vXqdDx/HN
	X2TYmd+X+48ifVWS4I38vRJgNwypd1GprXgMKqMR4PVPZO+LDmEthdDDyDuu69fJ/A1EA6Qoa3yTt
	HEeYCIHqMeKhLbUFxvfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgODt-0003UD-4H; Thu, 27 Jun 2019 06:49:33 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO8K-0006KM-OV
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 06:43:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bmZJISlXE+U3LQbzyWPwLynPr7jlpqsoB8iC1INwlmM=; b=mgXnQ+q47BmnZtyHymnIYMb6e
 TsNwW/ZtNbIet0erYnXEo+4GkiudfMCrYI8wX2vvs4NpgPb0X834GXB1Apagr0ImJO/kTbf3aHDBK
 FCIvXm6HsxxCn+JSpmpndOM+l5efYlbdoZvpkvZelRI/tCRpAWu8Q5adDC1qE6zDpSS8rKspp9xYj
 9pYlJ4MqMlM7k48x0pxawyfkZjWne/ezERBa4MF/DIzJ7aCYXiVLl/9rAmiary6laiSN9s+h2kkQ9
 92Txe1jkuNh9EzdliNN66WvTkIsf8lXqBOaQ748Bs0UXoeoaPs9J5s2D4rSrS5XSGe2w4+kYM6xzG
 7BEO/sDcg==;
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgKFd-0005wC-5e
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 02:35:06 +0000
Received: by mail-lf1-x141.google.com with SMTP id p24so462310lfo.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 19:35:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=bmZJISlXE+U3LQbzyWPwLynPr7jlpqsoB8iC1INwlmM=;
 b=l0fRgG6s+Fq4A18lpg1cxdbOcioeTu4Lm9DFecpTmnboqpRODLS8/3Ezj5SdtIZIuk
 Wn8UgPzpC7ysvIfJ/75x/ph8s+Ph2ewQWvhqysp2uS+X8WmOh7bxpCmBHVBMHAAbLwFc
 7zAUBNpZLUaf/MMon/8EPpcAGWLRKDbyYzbT1wglTq2YDzLiG3k7BXAAiODHLOyuUPlB
 iZZdljnqJHv8rQaCplv+KHAV6aUoZ7U2cuYRQMTjpTrTrhg78j55H0mnOamxgp6AVOwX
 pPWJ7BGJL6bMRcXxZZ3/JhelsJ/7RnCnggOPohTYWj4Q/nU3YYn5dH66kVOHw2nu8p81
 UQhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bmZJISlXE+U3LQbzyWPwLynPr7jlpqsoB8iC1INwlmM=;
 b=gTTWy6M6wjZY+bbDItOQ/XVQPSRxKUjkLqJCWlRumnc6LN0WTPpJGZwla/9oFGJ1tb
 4kE1nslaE5DUqIyh6V4piwHh1GMGKoHE1PEmSVslIocr6AOybW3KuUlNo+ln7gFxbML+
 xyh+2IKb3nff86+K9i1n8FGRtNiiT8BI8gOWnYvHivVT0aF3qh2oN3A/G0USgx2tmDRv
 RAqFdeWa8L2olDqRXIGaWUzdR3SN3mQFPrxu87nMGzcRA3bsm76mv4UlQbRSYkNtnvpS
 kwrQ2ZunwfA0iwt23hgFV/cFQeVWx+V6rulKb/y04WxODJFKSZvZuZApFs5wN4B1UDGd
 oK8g==
X-Gm-Message-State: APjAAAWc4tqDUY3t+0YiQvqbs2f2rkcUfsl9hvL1/svFWKq/xE78GPF3
 bHbQf6G6jbkQ+WutW8jrbEGEYw==
X-Google-Smtp-Source: APXvYqzcEMNH2SId1inLyk+J0pyMhziInEuh2kv5k68TYehUYeGHVMexHLTYWG7dVGa5w4SVlN6Qwg==
X-Received: by 2002:a19:6e41:: with SMTP id q1mr691970lfk.20.1561602842567;
 Wed, 26 Jun 2019 19:34:02 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id b6sm121113lfa.54.2019.06.26.19.34.01
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 26 Jun 2019 19:34:01 -0700 (PDT)
Date: Wed, 26 Jun 2019 19:30:33 -0700
From: Olof Johansson <olof@lixom.net>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [GIT PULL 4/4] ARM: exynos: Mach for v5.3
Message-ID: <20190627023033.kvw7dvbifwkvfcav@localhost>
References: <20190625193451.7696-1-krzk@kernel.org>
 <20190625193451.7696-4-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625193451.7696-4-krzk@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
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
Cc: linux-samsung-soc@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, arm@kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 09:34:51PM +0200, Krzysztof Kozlowski wrote:
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-soc-5.3
> 
> for you to fetch changes up to a55e040c6f21f55f81c53c56e1d8095df35e1d02:
> 
>   ARM: exynos: Cleanup cppcheck shifting warning (2019-06-25 20:45:09 +0200)
> 
> ----------------------------------------------------------------
> Samsung mach/soc changes for v5.3
> 
> Only cleanups and minor fixes.

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
