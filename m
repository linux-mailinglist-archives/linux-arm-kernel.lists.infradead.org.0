Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EDDA1DA5BB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 01:43:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=3NtVtf8pIiOxs3KKjFvqLq4NnrR63EL2wFdLQl/jrkM=; b=kCF
	tQcrXHNvPsos2WZqbL9iXTyYLTSIqYah7llasLAcc0QvZm9cmXetOPfOfnCCjfH7LX/z47cVGTIWn
	4i0xGkZwfplH0jzPp+shV3Q6kp11ZU9f/v7xMe2xaq8LPuD74o9RVoTU9FWUgW8rKvrDHZ/9mLLfR
	bpE9T9aJWOglsULffKn/LhBT5RL9VN9JSMycgvw/FlU8LJk5zUjYiirUjy4cR5fW3l/SJyp4Oel4Z
	QA7FGdZvRRm7G0t2WgqRypmw+5vJ0vqXaXYyrJcmtXgWRBfapeWhbYdIWOQTFTbSfk83TJt+15iqM
	5gxLkC7WR+AejeQJp43yNP3QIOV58Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbBsr-0001eN-5z; Tue, 19 May 2020 23:42:53 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbBsf-0001cb-HP
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 23:42:43 +0000
Received: by mail-wr1-x442.google.com with SMTP id i15so1219978wrx.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 16:42:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:date:message-id:mime-version;
 bh=MmIqjO1PtTVd+rdNu9nNb4mADvKA71b2ZrcUks1uRJo=;
 b=vTfMJ8PtHJc/TjzQRTrRhPNVRyHHYycwdoNu7rn6SwqPvWLZ6+03X7Pq1xlTAqKfbq
 pSkz8erEmZbl5NEC7ffg1vjDBeV91vWIi/UpMblVVUXG7fICkxan3TIDYjBEiTzCKrUw
 qVb0ilGsCIYZu/z62LoRz/O/WEvNJUKhVB5XjQyTGwvbc4x6bXh9Iqiq500D+DFFVuBw
 XiFkgIHC3IELUdOO7nHfyfTiYvRDM/6Gaj0O0ZJynaFsDQR93goRr1Ox957iafchATMC
 74fwNFO/J48rEQSFBTg7/aNrT89cUvNxZYrb076WOjRmwcY4hot6ljnVFsjINyEJnk9s
 Q7gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:date:message-id
 :mime-version;
 bh=MmIqjO1PtTVd+rdNu9nNb4mADvKA71b2ZrcUks1uRJo=;
 b=RSwHjifa9NkMKM2agDrlgZxTkgkvCwj+X/t9iFD2NbELJUINgghse49sOt8RTNJ/Xb
 8eJeTv+9CbAC9nMrAw/53P0Vbyf1xWjtpQk68q7vXHB8OeV9sf4VB658bs9wz8JiXly9
 rx1vqciJ0KJ1uyNoSR585INLpMf0MmJHXx+UscxpoCljpr7uw6YF28fs2hE8EIcHyc5S
 gsQNyaASUKUd22uQHJ6x3Om41TDgb93qDnyDUx0pj1nJBK2hlJNqaBT/HnnvNAd6NZpT
 IuDIcIza6GfUD59juwzcouw1heZDOgeQ1ymRZwmz5qB3CL/KHhMqE0ZCzXDR2RC9kDfj
 tfKA==
X-Gm-Message-State: AOAM531wvKL5SLdrXQVq8g+AziJgGLRhrjq1T2HYjZwMF5e3308xhr5e
 M7Aja2Te8RnFON0nxMd/A/1N4Q==
X-Google-Smtp-Source: ABdhPJzYYXY2GYO9fXGwE5+SEib2GsKVQjkMTferPikSHMR/G5SF/9GqcN7uN6IzDDLc5LOSCjL3Dw==
X-Received: by 2002:adf:f102:: with SMTP id r2mr1249229wro.376.1589931759860; 
 Tue, 19 May 2020 16:42:39 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id n17sm1010174wrr.42.2020.05.19.16.42.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 16:42:39 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Christian Hewitt <christianshewitt@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/5] arm64: dts: meson: add W400 dtsi and GT-King/Pro
 devices
In-Reply-To: <20200518023404.15166-1-christianshewitt@gmail.com>
Date: Tue, 19 May 2020 16:42:36 -0700
Message-ID: <7hmu63trtf.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_164241_570440_AA4D92D4 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Christian Hewitt <christianshewitt@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christian,

Christian Hewitt <christianshewitt@gmail.com> writes:

> This series combines patch 2 from [1] which converts the existing Ugoos
> AM6 device-tree to a common W400 dtsi and dts, and then reworks the
> Beelink GT-King/GT-King Pro serries from [2] to use the dtsi, but this
> time without the offending common audio dtsi approach. I've carried
> forwards acks on bindings from Rob as these did not change.

This looks good to me, thank you very much for reworking into a
w400-based include.

Unfortunately, it no longer applies on top of all the other stuff I have
queued for v5.8.

Could you please do a rebase on top of my v5.8/dt64 branch[1], and I'll
queue for v5.8.

Thanks,

Kevin

> v3 - amend author full-name on bindings patch
>
> [1] https://patchwork.kernel.org/patch/11497105/
> [2] https://patchwork.kernel.org/project/linux-amlogic/list/?series=273483
>
> Christian Hewitt (5):
>   arm64: dts: meson: convert ugoos-am6 to common w400 dtsi
>   dt-bindings: arm: amlogic: add support for the Beelink GT-King
>   arm64: dts: meson-g12b-gtking: add initial device-tree
>   dt-bindings: arm: amlogic: add support for the Beelink GT-King Pro
>   arm64: dts: meson-g12b-gtking-pro: add initial device-tree
>
>  .../devicetree/bindings/arm/amlogic.yaml      |   2 +
>  arch/arm64/boot/dts/amlogic/Makefile          |   2 +
>  .../dts/amlogic/meson-g12b-gtking-pro.dts     | 125 ++++++
>  .../boot/dts/amlogic/meson-g12b-gtking.dts    | 145 ++++++
>  .../boot/dts/amlogic/meson-g12b-ugoos-am6.dts | 410 +----------------
>  .../boot/dts/amlogic/meson-g12b-w400.dtsi     | 423 ++++++++++++++++++
>  6 files changed, 698 insertions(+), 409 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-gtking-pro.dts
>  create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts
>  create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-w400.dtsi
>
> -- 
> 2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
