Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 025F61BAA48
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 18:46:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nA1qoITiID8nR2J1wJ6r8AV6bESWrgzTMcc2AAG4ms4=; b=lC/SpFWNJn9syL8YGzHIL6SrRV
	jmVAaiSF0zo2H+kj98cBGH8vrKo2y/p8Or4Qd0c4yI2PMcSKlfgp7Rr2eHHxm817P0CraIfhvvwHx
	ovrHqCZrjkyYWTwsTa5MoAo1wYJGOtuCgwtPk/1sSjliXH0h5Htn2/9bziKveZQAwoC14+MPYJ+B3
	uRf6DzKfm6ZRnvvsv26Af4jEeDKgF/ATILRjAUGsuUHS0eWtUd50I6n/bfWptPp30WGnrUNzO3JDc
	uxJE0N28vhkPId/ifQRwxQaSwav4HWEeR3u/ruYdOVbn74UMxob9BNpXSqr1nNjfpMIujTou0tv8z
	AwTHi91A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT6tn-0003uF-Ni; Mon, 27 Apr 2020 16:46:27 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT6tf-0003sR-Px
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 16:46:21 +0000
Received: by mail-wr1-x444.google.com with SMTP id x18so21349026wrq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 09:46:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=K+g8CFmqfjmYJhrJrB84iQ9ane1MJeR/rniO7Hj0TcQ=;
 b=j0X8ISUfitBA/7pgF+7wgu8pr3DqkIkyLmpu2c7JYW1hSgdSSbqKuFseYFmFzggSq4
 YBiGPvcexHTHn523bsRBKfW9983b4IPLe9iYFu6seqdh6a+UMOwsLAsEdK3HDE5DC9Wd
 HCEwqdEC0m97fG2KxiGGXEPQtnRb2knFsV5KNAlmha64oKZiHul0yB/9FKB94Veevpez
 g40O8b8Jc23aooitCnmdv5VCoJhzPZwGIzS3hm5EqF3fV3qM/yXIK8mZWUK+eRkE+cMv
 q/97FOTCOwZ5ZJ3W2cRDwsU7yltn850rt7KXhyoV72KoqiqWSPLq/6tBCRXm4ElrWdni
 gI8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=K+g8CFmqfjmYJhrJrB84iQ9ane1MJeR/rniO7Hj0TcQ=;
 b=BO2lNo+iF/pvy44ajvFUVEB+0xaY6arqxbu2uWlLpnf+Wv9fIUlH/6BkwJzafBasI3
 yX6DBNomIm0Mc6RUqhoS5MgSXwYNqKuGjiMnHvbVqkEy3XltFuY7Bj0RqC2JpKSIXeuz
 7G63f+PiHbfzFPzE9o1p/6v/zBIKqC6STk4zC8OvNGnt4R4eEVzvwKYetNvn1z/d3PrU
 g3cM+j5rXkVfMndk9EHERUo0ajWsDr020Nd0Zq6Y3LsitVlPIE+nDDWC/p5S72ArG64r
 gxtbTfQJGDjuSWZscxpEMRMwKjzYAX3SOkK3Dr5WS8PTmnBxx4lCwXLhF6KxYNnN78x+
 pCsg==
X-Gm-Message-State: AGi0PuYYOPupA2ztjQVHb2snD46miUjc9vYxXjZuyqFHimy1a8ibxNLd
 8U3P2FqgJG83y8iAsyVk++74gw==
X-Google-Smtp-Source: APiQypIeEHjLe+6L+bZvcDi8pabn6zUvT6/Fw3vHzATYAOxTOerhsjaw3lgm9cNww142ONc10a58tA==
X-Received: by 2002:a5d:4292:: with SMTP id k18mr26970411wrq.137.1588005975964; 
 Mon, 27 Apr 2020 09:46:15 -0700 (PDT)
Received: from localhost (cag06-3-82-243-161-21.fbx.proxad.net.
 [82.243.161.21])
 by smtp.gmail.com with ESMTPSA id n7sm15664278wmd.11.2020.04.27.09.46.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Apr 2020 09:46:14 -0700 (PDT)
References: <20200328003249.1248978-1-martin.blumenstingl@googlemail.com>
 <1jblnd2tp3.fsf@starbuckisacylon.baylibre.com>
 <CAFBinCDzNw6nV3oBJs6C0sssW61GERBXq39DCM22BT9zS8M31A@mail.gmail.com>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH v5 0/3] Amlogic 32-bit Meson SoC SDHC MMC controller driver
In-reply-to: <CAFBinCDzNw6nV3oBJs6C0sssW61GERBXq39DCM22BT9zS8M31A@mail.gmail.com>
Date: Mon, 27 Apr 2020 18:46:12 +0200
Message-ID: <1j8sig3mi3.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_094619_896829_FCC47CCA 
X-CRM114-Status: GOOD (  18.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ulf.hansson@linaro.org,
 jianxin.pan@amlogic.com, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, yinxin_1989@aliyun.com, robh+dt@kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 lnykww@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Mon 27 Apr 2020 at 18:23, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:

> Hi Jerome,
>
> On Mon, Apr 27, 2020 at 10:56 AM Jerome Brunet <jbrunet@baylibre.com> wrote:
> [...]
>> > Changes since v3 at [3]:
>> > - split the clock bits into a separate clock controller driver because
>> >   of two reasons: 1) it keeps the MMC controller driver mostly clean of
>> >   the clock bits
>>
>> If the register is in the MMC controller register space and the MMC
>> driver is the driver using these clocks, it is where the clocks belong.
>> I don't get why it could be an issue ?
>>
>> Is the clock block is shared with another device, like on the Gx family ?
> no, it is not shared with another device (to my knowledge).
>
>> > 2) the pure clock controller can use
>> >   devm_clk_hw_register() (instead of devm_clk_register(), which is
>> >   deprecated) and the MMC controller can act as a pure clock consumer.
>>
>> Why can't you use devm_clk_hw_register in an MMC driver ?
>> Unless I missed something, it is provided by clk-provider.h, which can be
>> included by any driver.
> indeed, I could use devm_clk_hw_register in the MMC driver.
> Ulfs concern was that a lot of code was needed for managing the clocks
> and I agree with him. so this is my way of keeping those details away
> from the MMC driver and have two separate drivers which are better to
> understand overall.

Martin, Ulf,

I understand that CCF code might seems verbose and I'm happy to help
review it if necessary but I don't think every driver out there should
register some kind of fake clock controller driver everytime they wish
to use CCF API.

Yes the it might make the driver code cleaner but the overall
architecture is harder to follow.

CCF was made so driver from any subsystem *may* use it. Creating a
controller for a single register is overkill. The HW architecture of
this particular device does not justify it.

>
>
> Martin


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
