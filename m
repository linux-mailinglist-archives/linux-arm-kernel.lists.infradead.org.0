Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 702CA465E4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 19:40:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lqaalr+CZloyms68HZL1EYZhOwKdfF2COv2qxzk/3go=; b=VqvQIdAzZy3Bir
	tvI6Cf0vZE4Cyph6p7hU2Ydb42MzjjrHsCABYQ3ckLjAdM0q9sBnUiqGEISUR19I7+LQpxWYlNvJw
	44Us+eK5IYyzHmVcAV+kj3E/9nNV++xn/fogrXxuJbc/bs5QsLmCIsTpO00DynN3E2TCHejUW5DoZ
	loQOrmYi4zWTOoh6EksfT9BFmyNTJ41vzmOZ9Mtgip9IasH2s0y9K9HN1n/rGOj6Uhmlo7YPtPYxh
	yTrOVnt8jCYpdlSUS8gQaqu0u8ZP6C0Z+Jd++AtG/Ibo1/FTjTlaZYt8QtwbYCbtSg8l4S1xRgkoh
	qeJ8clkBextAs9azD1Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbqBR-0001SR-4a; Fri, 14 Jun 2019 17:40:13 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbqB7-0001RK-H0; Fri, 14 Jun 2019 17:39:54 +0000
Received: by mail-io1-xd41.google.com with SMTP id k8so7631145iot.1;
 Fri, 14 Jun 2019 10:39:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pyNZh3/ZiJGCHGyK6bSxYhhEMHeQph+kYYlr649t5fI=;
 b=fnFmAH1S+PAJamnF3NqeGjNJKLKabKSrwIeQ4EWJOLeaxDi+l9iEip4OJmJBE4s4L5
 t9EWMjkoX75msS90FvzStnVp/1AD3CIo70/WhRleVWjKXaqS3APRMAJECm+XcYadU/ix
 NoYetrWGQsDpipp5CJSmFksF4KKmbPS+G5fi+ZUtKbo2GXH7BN59YlDslJywgc2SS+gy
 7nSTV2khtyZxk64W+L6RLIHRhrh19JY6SbxYGhrM4ZCTDfu5g2mtLUyNnQtuaUcGndFD
 fG4rYx3xyR8Rc02ZTzSUJSrO3nLpuK/4ZfzmIZPbx6Ud+dlFALl7B/IX0ZD07hvzgrFQ
 PnCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pyNZh3/ZiJGCHGyK6bSxYhhEMHeQph+kYYlr649t5fI=;
 b=PwlFMnblc7z5KTyoGl6Mz4ErQ4KxWs5vc1iS/r3tPYmZN2YpmmgRux/ONhDGVmShRC
 KsbEkuGYMsF4Dntvbz5tKnRaYRmWTqXY40/qcdLVuGz7Y81f3ffLieZ4hcgTPNEMga3X
 4XPzDj9VRYyEgtkhSF3SLQxwNisrwlhimFz0yZUwzjxFheWcrGrKUamSPmrOMfiKwcRW
 rvi7FYqpL4akTDryb1JNt/OeMdnbZXDR7YKVJ1OYToKijGP00JHRwqPhtMUS6c7SQcwg
 AA4eH5H3e7JwPQPNapByTd9SQgMx/qLjrB7NvEK+YhrDNkpQLTX/t+V2S96gRpNH0Zbh
 7HrQ==
X-Gm-Message-State: APjAAAV5C02iIP5XbfmPV5ESMLNQw1pLkaUeGFbjyWRQ0DFEZ1NtNgeu
 RE59okpVumbn+38rgNSYDxt+SJQdZsSifX+aEF0=
X-Google-Smtp-Source: APXvYqwNZ0eXs3p92pVUhwtqOL0humBUMj2IEaTDc3AAW0U+hb04I4VnHxh86HS27ouhORHP6iTBY8v4nEVPMWiA21c=
X-Received: by 2002:a02:9567:: with SMTP id y94mr69763782jah.28.1560533991898; 
 Fri, 14 Jun 2019 10:39:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190613162703.986-1-tiny.windzz@gmail.com>
 <20190614071245.GA2950@infradead.org>
In-Reply-To: <20190614071245.GA2950@infradead.org>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Sat, 15 Jun 2019 01:39:40 +0800
Message-ID: <CAEExFWupzjErW1E0z3tcR2xyGgpWXwgLZOTqvru4=hk98EfGhQ@mail.gmail.com>
Subject: Re: [PATCH 01/10] iommu/exynos: convert to SPDX license tags
To: tglx@linutronix.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_103953_570007_0186E78B 
X-CRM114-Status: UNSURE (   3.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-samsung-soc@vger.kernel.org,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 joro@8bytes.org, will.deacon@arm.com, agross@kernel.org, krzk@kernel.org,
 jonathanh@nvidia.com, Christoph Hellwig <hch@infradead.org>,
 David Brown <david.brown@linaro.org>, Rob Clark <robdclark@gmail.com>,
 kgene@kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 iommu@lists.linux-foundation.org, linux-tegra@vger.kernel.org,
 robin.murphy@arm.com, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Need me to make them a patch?

MBR,
Yangtao

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
