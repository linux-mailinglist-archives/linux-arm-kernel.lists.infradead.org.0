Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1EC16399D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 02:50:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G3QtP2BOvixM5BlC2k1mKVhxyoSOkGxnMwbnL12H0Xw=; b=P6k1Wx8c+/YCgZ
	mPqVoTFm0efPJ+ahjol6hVooa9O0umPRMlBJb9oJnZ3rFDksNVMqua5jd0N6GKQQw9W6vmCCVHnZe
	KeLj39qOSaCUOmzwkS4mRhjrjZzpsJznAb9qOaDVTyRIrzAJEf8AIL8JY0j/TuV/1tCMat9ChVK31
	kP+gtQxTult4DzA0hhWWYkk3a5yn3EYANeNjzJWhPSOXiiWVLb6XTC6Ac2BUhAreOwam5ixltNDEB
	2c+nElWUuxS7vkGflsi90yTxt8ll7RXtyTvaOkWeEY2UqOnaKhqm78etZq2+9svnAvkLIrZA7ZWI5
	l8KdBZgF2QpyZfaZValA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4EV1-0004hp-VV; Wed, 19 Feb 2020 01:50:03 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4EUt-0004hK-LV
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 01:49:57 +0000
Received: by mail-pg1-x541.google.com with SMTP id y30so259263pga.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 17:49:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=mCpHqL2j5BnpvPO+BvKBhD4kS+poF12ECCa7tnpH+YM=;
 b=ts8VDPPBuLBZSekAbBB4AA9teS6dDAo1HBlFrWgCyrq8tuMc3thxftGa4AHpAl9HfC
 u7yxDltYVpeECwcY8RzDqO6Oc+ujMt1LKMzE60hyRUp4CRmsuXIAURjdU5sPKFRoFEwm
 6FN7vQ7hbitggAiOqBJscQwLzxfsXk6P3kE/ijGHV8xJt/0agF6tzs7iGM9/TJ0Fvy9F
 ArDT1pSLD7/sstOaJU2GCdk92lHOemZWj0EQ3zQfulnRwfJ76bPc+DDLQ9ZRE1nVboYb
 jR7FRhkDaPhSRUnmUrrhkxZbwc53oVyaoPQDanlDY6cxtAjJ8vR46+8/3WdA4kMg6eXF
 I4yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mCpHqL2j5BnpvPO+BvKBhD4kS+poF12ECCa7tnpH+YM=;
 b=IMyYDJFzKIYkl+9Hp9R8ceWxCDFAghvOdFcYUodc34WVU0DUEMegeuAN+/dm6PYBaQ
 k8Iw+TEIkCL7YEqViUuFdRnztdGZMIfdgDBLNyRsffwZXnjtYgTJ2ksy7CSpsJBsDLbz
 Jr+OVgjyCSQSxp71vkS5lJWXDVm0LU826ruXI8AaTBay1iPp3nPHAzh1LR3JpdQjhwII
 QnvmiaU3iSIjsAZ3kHvRW05h+RbcNQ5rDfDa0TNz+FPg1n6gdJEJg74n2SSMnGqxE4yL
 HFjgj/uRzr6qyGdjCoUzz3hsMH7a6IYAISxet/7dvo4RrZkNZvNaRoZmXn/slGHfny9Y
 UfZw==
X-Gm-Message-State: APjAAAUbDjY3PANdTQ+Fq0KoDzrbHqsKWbeUW4tFmwi+C319agitPeZM
 mM+PLiCk5fEbzsybC9a09fUwYA==
X-Google-Smtp-Source: APXvYqywbiuEpD1gaeQyiKrj/G0fRGBegWe1kQhCb3QNT2ZiaM+5B/V4zEAel8kBFDrwr4m3Dknbgg==
X-Received: by 2002:a63:2266:: with SMTP id t38mr26477980pgm.145.1582076994532; 
 Tue, 18 Feb 2020 17:49:54 -0800 (PST)
Received: from localhost ([223.226.55.170])
 by smtp.gmail.com with ESMTPSA id q25sm288920pfg.41.2020.02.18.17.49.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Feb 2020 17:49:53 -0800 (PST)
Date: Wed, 19 Feb 2020 07:19:51 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [RFC PATCH 04/11] cpufreq: Remove Calxeda driver
Message-ID: <20200219014951.2o2diuw5dzooafji@vireshk-i7>
References: <20200218171321.30990-1-robh@kernel.org>
 <20200218171321.30990-5-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200218171321.30990-5-robh@kernel.org>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_174955_741634_170F3139 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
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
Cc: Mark Langsdorf <mlangsdo@redhat.com>, kvm@vger.kernel.org,
 linux-ide@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-clk@vger.kernel.org, soc@kernel.org, Joerg Roedel <joro@8bytes.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, devicetree@vger.kernel.org,
 Jon Loeliger <jdl@jdl.com>, linux-pm@vger.kernel.org,
 Andre Przywara <andre.przywara@arm.com>, Eric Auger <eric.auger@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>, Tony Luck <tony.luck@intel.com>,
 Alexander Graf <graf@amazon.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org,
 Jens Axboe <axboe@kernel.dk>, Matthias Brugger <mbrugger@suse.com>,
 Stephen Boyd <sboyd@kernel.org>, netdev@vger.kernel.org,
 Cornelia Huck <cohuck@redhat.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Robert Richter <rrichter@marvell.com>, James Morse <james.morse@arm.com>,
 Borislav Petkov <bp@alien8.de>, Robin Murphy <robin.murphy@arm.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18-02-20, 11:13, Rob Herring wrote:
> Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
> Cc: Viresh Kumar <viresh.kumar@linaro.org>
> Cc: linux-pm@vger.kernel.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> Do not apply yet.
> 
>  drivers/cpufreq/Kconfig.arm          |  10 ---
>  drivers/cpufreq/Makefile             |   3 +-
>  drivers/cpufreq/cpufreq-dt-platdev.c |   3 -
>  drivers/cpufreq/highbank-cpufreq.c   | 106 ---------------------------
>  4 files changed, 1 insertion(+), 121 deletions(-)
>  delete mode 100644 drivers/cpufreq/highbank-cpufreq.c

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
