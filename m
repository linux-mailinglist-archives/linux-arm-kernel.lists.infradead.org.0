Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A985954E68
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:09:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RVxQiJsXUTEoO/5+f/4aY8bP19iT9/z5JlH56hyUy0U=; b=ZbphXjaqZar2mv
	LapHwME/TYjRCrhk1EECyE0iP2IcB+bJVU9GM/kHeADO8rOfpCSfKsDluSb38BuXTugOH7bA8ZBs+
	AY5poKbsIrG5ChiLMHZUBOU1LEI02QuN1UKN9hZ7Gwf6P8cwnoZ+yTzsltRnW4ey6szZLFXJmQaEH
	rmPb+Ln0uTOpF7idwLk/u2JfK9rc5MrVUGDduUJDZ4oQNj7vv/o+B1miR7nmxcvz6lcF5GjLmJj/6
	+E+roaXjqbGGALACGFgUfflygioSm1Wwy1zEuAhzXsxvZhMfQYh1SqQ9NdL00rNJOP0DSIKl/BpJF
	mILoOTgsoyouqmlhwhFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkGh-0003CE-TJ; Tue, 25 Jun 2019 12:09:47 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkBc-0008Rp-C0
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:04:39 +0000
Received: by mail-lj1-x241.google.com with SMTP id r9so15970860ljg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 05:04:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DECR+82QUELmBsIKoz3OYFzSqCTnp2MsQHhd+5JCGMM=;
 b=FZyWDBYsKkxMuc9H34ZCdLu0Y2qhtBrQxKaJJydP18wEEcT+veyRDjb4Anxf4qoCB6
 5akYSd9X0el0QGIcMTx+yi9A/nsj60soc3UrrkUT6PwF0WE3WZVfaqvZ/y0i8r2CE8/D
 ZfRD/M9pH7bwF1X0j67HxnjZOxo/VPkt5oXrNQE7MECA7+FjfvNVf7LFx69qBVTQVb+g
 I010mL4h0DrmJEx3WKIohbZ5YsrjfH+xlUZ7XL1NIcEIDT6HPuKgNAOSgHpGWuRkENw+
 lncN8NuT+YHWpisL0M1o738+VkomfP1gJ2fkBr4zTUB80KymVQy9f6ByF/BK6WTVDmef
 gMag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DECR+82QUELmBsIKoz3OYFzSqCTnp2MsQHhd+5JCGMM=;
 b=aiTF6RoN25mhzby5z4DnZ2WgX/wLxUfTxHheAnBIg/3S6x8LqsydH92FjPtEkBYtBj
 yCl4ecWwfnpSLTB/e5/rdVP4je/8lwhb/b0D3+SvSwZoxl8LoXRnotb2QSB/If4+AKNe
 3UpnIpYvLZOyrHJfCkmpg9kPbV4fs6C+8ceN5f7AHbtksf+X2YjShqFCyDN2c+8Ma9xF
 qaju8UUuj8RWp0iP0eqa/TjaM+Z2P/ueYNcWCAiA3nb6pz6SgluQy9F7/yJ7k3IEjkxN
 ggvlnYoRihxQ1iKKKm+Lg1wA2FroYiRLWcpFIBrRI+Esnast4RQNknn8wwOq5T169elW
 3yPw==
X-Gm-Message-State: APjAAAWoXlsJ30dTUsAn1LrkOxr1vBjAIcjnWiJcCyIOMNeO0NvGGgCF
 WRxZXenH09EVC9XgK34UQzf/RA==
X-Google-Smtp-Source: APXvYqzr2LzcxN8gmNkkiByk9zHbpQhNjj8IGKV20EcIGp/zKF8BqzrzhI/w7TfvRep/1Wz+HOrfyw==
X-Received: by 2002:a2e:968f:: with SMTP id q15mr20167462lji.30.1561464270595; 
 Tue, 25 Jun 2019 05:04:30 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id q22sm2257333lje.75.2019.06.25.05.04.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 05:04:29 -0700 (PDT)
Date: Tue, 25 Jun 2019 04:31:05 -0700
From: Olof Johansson <olof@lixom.net>
To: Wei Xu <xuwei5@hisilicon.com>
Subject: Re: [GIT PULL] arm: dts: hisilicon dts updates for v5.3
Message-ID: <20190625113105.utjykne4f5325txa@localhost>
References: <85bbc3ba-8e22-f5f6-dfca-d78a8a5662d3@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <85bbc3ba-8e22-f5f6-dfca-d78a8a5662d3@hisilicon.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_050432_431210_3D9DC340 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Guodong Xu <guodong.xu@linaro.org>, Salil Mehta <salil.mehta@huawei.com>,
 John Garry <john.garry@huawei.com>, jinying@hisilicon.com,
 Mathieu Poirier <mathieu.poirier@linaro.org>, arnd@arndb.de,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Tangkunshan <tangkunshan@huawei.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, linuxarm@huawei.com,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 arm@kernel.org, Haojian Zhuang <haojian.zhuang@linaro.org>,
 Leo Yan <leo.yan@linaro.org>, Zhangfei Gao <zhangfei.gao@linaro.org>,
 Shiju Jose <shiju.jose@huawei.com>,
 "Liguozhu \(Kenneth\)" <liguozhu@hisilicon.com>,
 Zhangyi ac <zhangyi.ac@huawei.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 huangdaode <huangdaode@hisilicon.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 05:26:04PM +0100, Wei Xu wrote:
> Hi ARM-SoC team,
> 
> Please consider to pull the following changes.
> Thanks!
> 
> Best Regards,
> Wei
> 
> ---
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://github.com/hisilicon/linux-hisi.git tags/hisi-arm32-dt-for-5.3
> 
> for you to fetch changes up to 06c3cba62b3be0a46427a2a63b2f08c617d14530:
> 
>   ARM: dts: hip04: Update coresight DT bindings (2019-06-19 16:28:34 +0100)
> 
> ----------------------------------------------------------------
> ARM: DT: Hisilicon ARM32 SoCs updates for v5.3
> 
> - Updated CoreSight funnel and replicator using new bindings to fix warning
>   for the hip04.

Merged, thanks.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
