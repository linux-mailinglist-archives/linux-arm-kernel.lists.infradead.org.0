Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F331B3645
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 10:14:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7GonteX160Vx+wq8nufzYzL42Z/xRHR7Jz6rJppCSx4=; b=WjzP8kf8A/v8S4
	+XpcweOrBk1YeZ61VpP0uHnRyebSFvR8nYNQokuQD8+k29dBaYlaUzXzqXmuEMZ6S6oXNjkTEjWHT
	lhGwWsVeGg+d9hWuPuJ1/pigKCENBPmtkKWH9amhpo6DX80f4Qzs6+96VHsp7JydjgZq2wAv2oXh2
	D9f3Xm2ZcjLUMRyG9QNW0ixwqAMeYRht8GKvi/K7DtXMuTBp/HfJYaKxwi1xWxHP8IRFdDDZjYrGW
	+0NUM4d0+80agjp8Tz/+2SjkUvRpQP30NjL6r88RcW8Py45EhiKMLK2/KVg6ng107H51pCDc7VUdF
	bwz6nXtdSMUIpNw3eXhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9m9O-0000OZ-Jx; Mon, 16 Sep 2019 08:14:22 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9m97-0000Na-IV
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 08:14:07 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190916081403euoutp01e838cecfd2173df3b3e3055fc89eabf3~E3RLLvlnS3194931949euoutp01i
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 08:14:03 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190916081403euoutp01e838cecfd2173df3b3e3055fc89eabf3~E3RLLvlnS3194931949euoutp01i
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568621643;
 bh=owkzwat6GBg23nSFlj4wgYY6tYKk4F6M9w00IZ1dGEI=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=aYIQcNCD2Sr9Zal4mPJA+OV+X8qaWNZC2+74CCeATsi0Xj24VYDowfVft8gVYtVMa
 8+44abgKVja4xBokfQjgWKKxnRoiVIgYuCuxnUJaap/zAFgSDE7fRn5IgT6EXcHSk9
 rgkcE5Cg+tQfN8NxrfdzWGABsnRw+Cv8l38gPrxQ=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190916081401eucas1p13fe025e6e0b8694f4756a952364ffb81~E3RKLodI91353413534eucas1p1S;
 Mon, 16 Sep 2019 08:14:01 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 01.CB.04469.9444F7D5; Mon, 16
 Sep 2019 09:14:01 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190916081401eucas1p2df3fb141562109b5ab03c9b2a202c8d4~E3RJXoxzS2893928939eucas1p2c;
 Mon, 16 Sep 2019 08:14:01 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190916081400eusmtrp29ea4a2bdc243f57c295eeadc475586db~E3RJJM2Nu2860128601eusmtrp2l;
 Mon, 16 Sep 2019 08:14:00 +0000 (GMT)
X-AuditID: cbfec7f2-994db9c000001175-c0-5d7f4449f450
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 36.A5.04117.8444F7D5; Mon, 16
 Sep 2019 09:14:00 +0100 (BST)
Received: from [106.120.51.74] (unknown [106.120.51.74]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190916081359eusmtip23f382bca99376ac62914202d4bdb2951~E3RITpPYF3138731387eusmtip28;
 Mon, 16 Sep 2019 08:13:59 +0000 (GMT)
Subject: Re: [PATCH 00/11] ARM: dts: qcom: msm8974: add support for external
 display
To: Brian Masney <masneyb@onstation.org>, bjorn.andersson@linaro.org,
 robh+dt@kernel.org, agross@kernel.org, narmstrong@baylibre.com,
 robdclark@gmail.com, sean@poorly.run
From: Andrzej Hajda <a.hajda@samsung.com>
Message-ID: <2da29e80-73fb-8620-532e-0b5f54b00841@samsung.com>
Date: Mon, 16 Sep 2019 10:13:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190815004854.19860-1-masneyb@onstation.org>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02SfUzMcRzH+97vsbj27ar1WYy5sNg8jT++hjxvP8xmbJ5a4+in0uPupzwk
 tXEkKyKa6+Y8XEOrtKNTYeXEOdZNURKtto48lBYuGhW/+zH99/58Pq/39/t5f/flKY2FDeXj
 kvaI+iRdgpb1o22PBl0zVq3IjJp9yTiFuLp+0iTX5VSRp7WfaTJiy6eIud7FkBeePpaUvrYj
 YupuQKT5+weKOHuaaXI838KRgl9XVcTa1cKQ/NoGjjyvMbGk+GWjipws+sQQe14k6b70gyKG
 e/UcaT9Tj5YEC6UXSpHQ12rghKp2CxLuDVykhWpjOycUZZ9nBGvJcVZ4fKpJJbxpucsKtwc6
 GaHjhEMl3LRkCsWtgYKjpo0T6nLP0MJX64R1eKvfwmgxIS5N1M+K2O4Xm1fhZlKcQfsenWvj
 stAFnIN8ecDz4KGnR5WD/HgNvoagqvk6oxTfEPwwljEypcFfEdi71uYg3uuoaExRmKsIzJ/P
 skrRi6D82RMkGwLxRnA/v8/JOgiXI6gfXi1DFD5BQZ0t1ztg8TQYuvmKlbUaR0CP4bLXTOMp
 0DR0xcsE483wpfMBozAB4DzvpmXtixfA0FCRl6fwRLjda6IUHQJtbrM3D+D3PPS5LZwSdAWY
 X75iFB0IHx23/vbHw0i1bJB1JnRcO0Ip5mwElRXVlDJYAA8cjYycn/qz9Y2aWUp7KRgGTyPl
 WfyhtTdA2cEfTtsKKaWthuyjGoWeBB0NlX8PDIHiZx72FNIaRyUzjkpjHJXG+P/ei4guQSFi
 qpQYI0pzksS9MyVdopSaFDNzZ3KiFf35u0+HHV+qkKdphx1hHmnHqrMMh6I0jC5N2p9oR8BT
 2iD1puz0KI06Wrf/gKhP3qZPTRAlOxrH09oQdbpPZ6QGx+j2iPGimCLq/01VvG9oFqpdvjlv
 wsCdRd29JeaIwUVTY9veTV5csGFVxkhAwzFnRHS6KWz5Q+0yn+LD/S09/p7KMQ7X1Plvu8M7
 d7mCCsMPxm8LD7UjU3/a99kZhrj7dW+Z6uSw9bu3hJWvtvmY5pXVfRqOjDcHr5UaC82Xr/dn
 vPdd887K/iwon1u2cpNjZXualpZidXOmU3pJ9xuinIgKtwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRjHeXfO2Tlaq7ep+GJ0YRBh0Wxe2muZGPThFboIYuWNWnbQyjnb
 2SwLyi8D3XK57IJTvJQWmqRoFzVFXaM1TSEtS8tuji7ouhBZmaucFvjtx/P8fw888OcoaQsT
 xB3M0vHaLFWmTOxL9/52vFhHtp5KXf9mOAT3j/2icWG/U4R7Oz/S+M8tC4Ur7P0MfvTtkxjX
 P7MBXPauD+DH3z9Q2DnxmMYFlmoWn5u+KsJNY0MMtnT2sXiwrUyMa548FOEzpeMMtpmT8buq
 HxQ2dNhZPFpsBzEBpL68HpBPTw0saRmtBqRjspImrdZRlpTmlzCkqa5ATO4XDYjI86F2Mbk9
 +YohL00OEWmuPkVqnvoRR9sIS7oKi2nytWl5HEySR2k1eh2/MkMj6DbLkhU4VK6IxPLQ8Ei5
 IkyZujE0QhYSHXWAzzyYw2tDovfJM8yNLibb6X/s3oURNg+UQyPgOATDUePDbCPw4aSwBqAP
 b9VeRjAQ3alwU3Psh6aHjGIj8J3JjAM06S5hvQs/uAu5BrtZ78IfXgfoxRfzbIqCJgqZ+i+x
 c4oZoPPmAuBVxDAYeZqHxV6WwGg0Ybg0O6fhKjTguTx7NgDuQXdbrGAuswQ5S1y0l33gJuTx
 lM7OKbgaTZcPUHO8At12l/3jQDTiqhAVAal1nm6dp1jnKdZ5SiWg64A/rxfU6WohVC6o1II+
 K12eplE3gZnW3Lr380YLMH6MtwHIAdlCSZ7hZKqUUeUIuWobQBwl85fszj+RKpUcUOUe57Wa
 vVp9Ji/YQMTMcxYqKCBNM9PBLN1eRYRCiSMVyjBl2AYsC5Tkw+4UKUxX6fjDPJ/Na/97Is4n
 KA90LWIWxJyxm9uv9SkvVjm44kOdSTLJ2JEHPSjxXJppW0Pn0rOXk7fcTKnpiSWJXQufVy0w
 J+bufBAXq++tLR1wR+1PKDttWNYu+lwk9Zn6tj1h6n1crLt6MdOw6ErP8Nqco3c94fEXqnT6
 1tqGqEclzovasdzC7/bXMQ6Xel3w1A4ZLWSoFGsoraD6C6VaZdtLAwAA
X-CMS-MailID: 20190916081401eucas1p2df3fb141562109b5ab03c9b2a202c8d4
X-Msg-Generator: CA
X-RootMTR: 20190815004916epcas3p4d8a62e215eff5e227721d3449e6bfbd3
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190815004916epcas3p4d8a62e215eff5e227721d3449e6bfbd3
References: <CGME20190815004916epcas3p4d8a62e215eff5e227721d3449e6bfbd3@epcas3p4.samsung.com>
 <20190815004854.19860-1-masneyb@onstation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_011405_819439_D57F097A 
X-CRM114-Status: GOOD (  23.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 jonas@kwiboo.se, airlied@linux.ie, linux-arm-msm@vger.kernel.org,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Laurent.pinchart@ideasonboard.com,
 daniel@ffwll.ch, enric.balletbo@collabora.com, freedreno@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Brian,

On 15.08.2019 02:48, Brian Masney wrote:
> This patch series begins to add support for the external display over
> HDMI that is supported on msm8974 SoCs. I'm testing this series on the
> Nexus 5, and I'm able to communicate with the HDMI bridge via the
> analogix-anx78xx driver, however the external display is not working
> yet.
>
> When I plug in the HDMI cable, the monitor detects that a device is
> hooked up, but nothing is shown on the external monitor. The hot plug
> detect GPIO (hpd-gpios) on the analogix-anx78xx bridge and MSM HDMI
> drivers do not change state when the slimport adapter or HDMI cable is
> plugged in or removed. I wonder if a regulator is not enabled somewhere?
> I have a comment in patch 10 regarding 'hpd-gdsc-supply' that may
> potentially be an issue.
>
> I'm still digging in on this, however I'd appreciate any feedback if
> anyone has time. Most of these patches are ready now, so I marked the
> ones that aren't ready with 'PATCH RFC'.
>
> I'm using an Analogix Semiconductor SP6001 SlimPort Micro-USB to 4K HDMI
> Adapter to connect my phone to an external display via a standard HDMI
> cable. This works just fine with the downstream MSM kernel using
> Android.


This patchset risks to be forgotten. To avoid it, at least partially, I
can merge patches 1-5, is it OK for you?


Regards

Andrzej


>
> Brian Masney (11):
>   dt-bindings: drm/bridge: analogix-anx78xx: add new variants
>   drm/bridge: analogix-anx78xx: add new variants
>   drm/bridge: analogix-anx78xx: silence -EPROBE_DEFER warnings
>   drm/bridge: analogix-anx78xx: convert to i2c_new_dummy_device
>   drm/bridge: analogix-anx78xx: correct value of TX_P0
>   drm/bridge: analogix-anx78xx: add support for avdd33 regulator
>   ARM: qcom_defconfig: add CONFIG_DRM_ANALOGIX_ANX78XX
>   drm/msm/hdmi: silence -EPROBE_DEFER warning
>   ARM: dts: qcom: pm8941: add 5vs2 regulator node
>   ARM: dts: qcom: msm8974: add HDMI nodes
>   ARM: dts: qcom: msm8974-hammerhead: add support for external display
>
>  .../bindings/display/bridge/anx7814.txt       |   6 +-
>  .../qcom-msm8974-lge-nexus5-hammerhead.dts    | 140 ++++++++++++++++++
>  arch/arm/boot/dts/qcom-msm8974.dtsi           |  80 ++++++++++
>  arch/arm/boot/dts/qcom-pm8941.dtsi            |  10 ++
>  arch/arm/configs/qcom_defconfig               |   1 +
>  drivers/gpu/drm/bridge/analogix-anx78xx.c     |  60 +++++++-
>  drivers/gpu/drm/bridge/analogix-anx78xx.h     |   2 +-
>  drivers/gpu/drm/msm/hdmi/hdmi_phy.c           |   8 +-
>  8 files changed, 295 insertions(+), 12 deletions(-)
>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
