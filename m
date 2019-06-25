Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E6EF54E67
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:09:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7sZg7bqOIV0OTIVfBauJU3OXYh8cvqFiHV4nFD4NZCU=; b=MPC+1Rt0CDw5tt
	CLVphfeEmhgLoWBTbv21LTy/+1s9szL7PDPlrG3eg0Rh+FR2APh0pyLrROoBYSa5FDBSYRS2r5/Q1
	TSg8HCg9mUTsekzYz59NZ3qvf3F2couYaLPuWiAwvIHTnuPDX1U+iK4lGRmHVreJBMXG0GUyrejRC
	eNTVNmvz+HGDwH25u5GnpluQ5sobFW4rdPUNQOsO83BTb2saL6tvNSW3tDSFVgqe9hei8m45DbaNG
	p4hE43IXW9xw/XSvNnTiFTahyip8ZhdzPdcXTC8JWIrIl6KgjtAhyzyfPX4A/eJy/AnHzrnD2j6Wh
	Hk8wvcMQjxbcvTYpxGGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkGQ-0002w1-LX; Tue, 25 Jun 2019 12:09:30 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkBa-0008QU-40
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:04:37 +0000
Received: by mail-lf1-x143.google.com with SMTP id x144so4988934lfa.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 05:04:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=74Rxi3eimAzM4I3inLg/cIywP5WZAvOGysreVjpPr4s=;
 b=FDcBAKUVGyCKbcZej2tTxKoz47ACwuFlu1V/RPzxV122u1O10zEl/WbNylnIN2otp+
 t5oLHJdZMWzx1PE88gqZlkPgSO4m94Anvb+l4EuEb0/W7zo1IHHGtR1zsAJG50nGszrn
 K1FQR6jc4Q3Ou5Q86Tly2AV4moJlNFzRiKDQgnYP0L5wHk3L0ltrLqZvlRm7mh9TMlKC
 ULKkhwndftfvTiF3iz8Bt2hX2wzqUjVPrAwpm/lQAaGbjFNpBsFhXL+aP8D87lHdmdPb
 +sTiEeuZg0tnLC9A1Ym3vv3E97Ji3YqcbE7EOrwc3NtuZPJXD2nl1LjeqJWFAViCQVcX
 TgiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=74Rxi3eimAzM4I3inLg/cIywP5WZAvOGysreVjpPr4s=;
 b=hCZlK7+W2s23PXKqsGbcQBoeVeh11dDZmdvFrlOzDocDsie7WYUCDU12Y+GWRP3aM1
 F87SJ9qTzrTeFJenYzR5w+uS2/md/pXD+lXCQ27z+4N1nrfk2qAUflqTXejXLl+9g27I
 Vx0JhBQe6BenZXD77UxsCWOCPLiwVAI0tJTGEfnKLEeIv61JLX1o8hpCZAqZfx4kJ/FB
 Nj0DzN/TKxRr1mWwGL4ddZOcgTymkN0lSgOWWnEdtcML1BdKDBt5IrurrzzU49EeynPG
 4Nv0Pgc3WxqfPJKWDkg0QcIwArCiDPSkZXOYYC6mR+wsg7Mr5fw4hYF2X8f098XxNV8/
 ChzQ==
X-Gm-Message-State: APjAAAW4q0eCdgAv0t+xfYJbSmy3jOmeSF/flA4LTQE115FQqt168dyv
 FQtnUSZk+GQkvZpIDTD391GHnA==
X-Google-Smtp-Source: APXvYqwWiN38yfit2hFkYJ47R/SlgczJ/+L2JTj74aZj9Ph4J0gnyxZssbEHavfmMjGv8yDmaJqnsQ==
X-Received: by 2002:a19:3f4b:: with SMTP id m72mr77451327lfa.91.1561464268521; 
 Tue, 25 Jun 2019 05:04:28 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id u18sm685595lfe.65.2019.06.25.05.04.26
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 05:04:27 -0700 (PDT)
Date: Tue, 25 Jun 2019 04:30:33 -0700
From: Olof Johansson <olof@lixom.net>
To: Wei Xu <xuwei5@hisilicon.com>
Subject: Re: [GIT PULL] arm64: dts: hisilicon dts updates for v5.3
Message-ID: <20190625113033.qx6pu7edgldkwm5d@localhost>
References: <12521191-b14c-8e54-a09f-c0de3d9f8326@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <12521191-b14c-8e54-a09f-c0de3d9f8326@hisilicon.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_050430_249773_32066665 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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
Cc: Guodong Xu <guodong.xu@linaro.org>, Wanglai Shi <shiwanglai@hisilicon.com>,
 John Garry <john.garry@huawei.com>, jinying@hisilicon.com,
 Mathieu Poirier <mathieu.poirier@linaro.org>, arnd@arndb.de,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Salil Mehta <salil.mehta@huawei.com>, Tangkunshan <tangkunshan@huawei.com>,
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

On Wed, Jun 19, 2019 at 05:20:53PM +0100, Wei Xu wrote:
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
>   git://github.com/hisilicon/linux-hisi.git tags/hisi-arm64-dt-for-5.3
> 
> for you to fetch changes up to 9500ff14c4cf0eedf4c5f55175b9046768db5cbd:
> 
>   arm64: dts: hi3660: Add CoreSight support (2019-06-19 15:43:31 +0100)
> 
> ----------------------------------------------------------------
> ARM64: DT: Hisilicon SoCs DT updates for v5.3
> 
> * Hi3660 SoC and related boards:
>   - Added CoreSight trace components
> 
> * Hi6220 SoC and related boards:
>   - Updated CoreSight funnel and replicator using new bindings to fix warning

Merged, thanks.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
