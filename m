Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51304B6AE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:32:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tjYZ1BR9kCRkJ0hoB/SGsZwhkLxji5APAlDdeak/aN4=; b=RVKZQB5zQI5ZKy
	79cysDoNMj7mbFclf7JXp7ATAjpbLtBWHcyKjbhvKIunlLbUIe+ox38/Pxi3nahWyUqtshpMv/lsG
	KDl7vynsL5LzGQBICbUYh14SGuBvOQP5Ye3d3X/srvo8UidgAJEghrSOePaOoEPdUR+K9kgedlW4A
	ea0dMpdhB5P4keHP8aOYYqBUa0O+JtmSa6awfMqqIMNBwVvMdVG4Fzr+t5vIt5cWsjK6vQH6uMQ5X
	zuE87k5t5YXUUlakS/znlfUuz6f7NO1U4cEf1sOah+KoqyxW5/8Pa39jEOQVuNT3PvaqS/UrXafGV
	Ag2YIcYF9rUbaDfIFcnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqTR-0005TA-Ls; Sun, 28 Apr 2019 20:32:33 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqJ8-0002fe-Dj
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:22:16 +0000
Received: by mail-lf1-x141.google.com with SMTP id d12so6337900lfk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:21:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=WBNRW6rEKvmiV1EHP4AivSlXBQuClRHj0jEwZDFl4eA=;
 b=Ja7HFyIijNv8Osr2VMzaYAAjG9ae2SKwgYHE9E44Qt38mP9ynZXTGq2293v1JqNov5
 LkLgnykgeuwpte+ko5TDsBadpwBWdwXQybhuUQqZGbrrPV9XPKjcxJQ41D5Wczx3pgXc
 UEJamKGc4fZKWWPwRLbTdVH4HwynYkyiCSM5sLdS1swMNm6jtjAVy/r4nYAkMEArug1C
 +evKBRH1Eu2XywmmdukWgjD0mU6PQVBG8g7HCDokd74GJ+kzLZlT1M561p1SL8waxH26
 6zKJy5m12j4Yu+0r9rtucyFyk300GYNCss+vj192jKwqcssltompoo/mclwdo0JOFlSW
 EqhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WBNRW6rEKvmiV1EHP4AivSlXBQuClRHj0jEwZDFl4eA=;
 b=TTrRvBnZ1iRFe4u4Mt2UVcmG1DOVjl7CdgSq0yErKcYkBc4oN2KvN+RVWnQNl8uDo4
 myl65elaMarl9qz40DJ/GfOL8w8ojCIKDF4atzm9ohkF89gDEn7qCJ1Y/k6Fb1Pxszqo
 oXz1HuVrmEnW3LdRvzGHwQfkMqNZaKli0VjE1BQKsM3CqIMjQ1DupmBgOJ9Jx7v9eA7W
 IDjPNQW6QtpWn1jI8F9afwRLINRn4XUBgZFxmt4SoI8p2F1bSb7qcN1I3P/a2TaXqRCO
 McJj8mBKazeKhPOw5gHAw4q5MbW9EXoyN1v8IcilsQa68QEeS46mVjHscCWQ0RkWuoEj
 TxOQ==
X-Gm-Message-State: APjAAAUFVr/b+NNAMQ8vodh58nP67Ywz9NOsa6mAkQCawXY2g4BZhyJR
 UP0B0I54YmkJ8mfBkhIQFr7WRQ==
X-Google-Smtp-Source: APXvYqyJ9GDMPKcRLAnKxSeLPKKbHKPCyvVyPSW2tv7nVDqGJfWBJf6roA2CztD8j9U53sSpJ1/IVA==
X-Received: by 2002:a19:5218:: with SMTP id m24mr27816790lfb.113.1556482912794; 
 Sun, 28 Apr 2019 13:21:52 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id x71sm6881484lff.82.2019.04.28.13.21.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:21:51 -0700 (PDT)
Date: Sun, 28 Apr 2019 13:03:07 -0700
From: Olof Johansson <olof@lixom.net>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [GIT PULL 1/2] ARM: dts: exynos: Second round for v5.2
Message-ID: <20190428200307.hmjavmlbxwlfvfdl@localhost>
References: <20190428144221.11187-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190428144221.11187-1-krzk@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_132154_910823_651F1A54 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
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
Cc: linux-samsung-soc@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, arm@kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 28, 2019 at 04:42:20PM +0200, Krzysztof Kozlowski wrote:
> Hi,
> 
> On top of previous pull request.
> 
> Best regards,
> Krzysztof
> 
> 
> The following changes since commit 8cc76b1c75722196fb3d7ffe67cbfeb721a7b0e3:
> 
>   ARM: dts: exynos: Remove console argument from bootargs (2019-04-10 18:13:31 +0200)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-dt-5.2-2
> 
> for you to fetch changes up to b4bcbdee137833aab04942671b48a9a3beb0801b:
> 
>   ARM: dts: s5pv210: Fix camera clock provider on Goni board (2019-04-24 19:55:14 +0200)

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
