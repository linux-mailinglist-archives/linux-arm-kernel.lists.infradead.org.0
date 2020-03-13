Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04DC7185066
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 21:35:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PubDDfT4UWMCet2LHY5p6FNayd0pCOtKU/WqUEogLY8=; b=eYMmGa7ay5nsqY
	AEWkvzwLFSy9RteX7bHfgbjDyFNxrM2rAoS06wJBOxyk+dK8FBpKp2WjguVgxAkS+DgWRBRT9Uu5O
	zgFLqMUOp0S0H6dilY9wzCAl2LD9J5W2mOpX2yT0skJta4XLHKKNNIbjrpOrYeTxOUxPyHl6jCLXF
	DRJ1ZFv7FrhCzWlv3t1lbdh/A+IQ4DqnF8RB6XLg+x6FLqKIbcQwz8Yfc+IChdxv/lERJgDtFhTiz
	qOaNiTVySeRpy62Rcjsm6xULlDNsheWQODcAhTXY0EDFfOWu33LrchJnSAJtEZrTEcqrPidJQMjGh
	WjTv6mXB7Zh9nwGsGOKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCr1v-00013h-PT; Fri, 13 Mar 2020 20:35:39 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCr1o-000134-Jy
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 20:35:34 +0000
X-Originating-IP: 87.231.134.186
Received: from localhost (87-231-134-186.rev.numericable.fr [87.231.134.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 3A460240009;
 Fri, 13 Mar 2020 20:35:27 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Vadym Kochan <vadym.kochan@plvision.eu>,
 Vadym Kochan <vadym.kochan@plvision.eu>,
 "linux-kernel\@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: marvell: fix non-existed cpu referrence in
 armada-ap806-dual.dtsi
In-Reply-To: <20200209212016.27062-1-vadym.kochan@plvision.eu>
References: <20200209212016.27062-1-vadym.kochan@plvision.eu>
Date: Fri, 13 Mar 2020 21:35:26 +0100
Message-ID: <87v9n8xab5.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_133532_794971_EDD057E1 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vadym,

> armada-ap806-dual.dtsi includes armada-ap806.dtsi which describes
> thermal zones for 4 cpus but only cpu0 and cpu1 only exists for dual
> configuration, this makes dtb compilation fail. Fix it by removing
> thermal zone nodes for non-existed cpus for dual configuration.
>
> Signed-off-by: Vadym Kochan <vadym.kochan@plvision.eu>

Applied on mvebu/dt64

Thanks,

Gregory

> ---
>  arch/arm64/boot/dts/marvell/armada-ap806-dual.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/marvell/armada-ap806-dual.dtsi b/arch/arm64/boot/dts/marvell/armada-ap806-dual.dtsi
> index 09849558a776..fcab5173fe67 100644
> --- a/arch/arm64/boot/dts/marvell/armada-ap806-dual.dtsi
> +++ b/arch/arm64/boot/dts/marvell/armada-ap806-dual.dtsi
> @@ -53,4 +53,9 @@
>  			cache-sets = <512>;
>  		};
>  	};
> +
> +	thermal-zones {
> +		/delete-node/ ap-thermal-cpu2;
> +		/delete-node/ ap-thermal-cpu3;
> +	};
>  };
> -- 
> 2.17.1
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
