Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1004B1ABBB3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 10:51:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rQn6yVgF3j2fKKtLLB3RJ9ZYOEQAe1y3S/M0/xfHq+c=; b=P4p9b9eptEFUAC
	RbKOA4nhrwJx4pg6TXhWEweLC94rwkW0ab17tv3B5AfsZt0lBTExUGbi/VYDtTNYp1KXzSs8RHII+
	s/T8LgpbJPevwHUoAX+D5mQdQEu2BEnt0hSOJxHPHOTv7gAtLIubZuRM767fASRNDSAqR9taMGmJG
	wQX7PFKZt53JoZmb9U6ffxrllXVINTM0urfHHJOV5NCJV9YnYTP8j6TPojlJBgklXL+UZvzsjtDlK
	IaBxk4GwPhUej5ivBrtmUeWZj8nyDEZB/wiCBe7opfifgyzw5toDVqIxg5EhnWl9GpiioD4+8h4Cn
	uL844C5rO+6xz36iMIdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP0Eu-0003Ap-8g; Thu, 16 Apr 2020 08:51:16 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP0Ef-0002yo-Q7
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 08:51:06 +0000
Received: by mail-ed1-f65.google.com with SMTP id f12so4240736edn.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 01:51:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=612iSfEdCExrydRb4c/BtgR5OtI+RlzyNcwVt1HFejQ=;
 b=FKTVJYSIq+L+FcIILXKICBC2Z1sfRMGwUVPrcWh4+5ED1QYemGg++l8TUGm5pVUQWT
 esVptbKuOeE0mqC7qUOzs6SLH/bYA9sZ/RpO+Yd66tXHt3i9HEVUUIjcr4aSVC5zuVld
 SaRcw2wDlrsp8deG6dqP3ySLw1qtfwNnPzesUotb2VftKzteVqtmdvHRFWqR/v/PKItq
 T9pIKggdvZqBe4TSGXSC4Xci33O306cOx/43kbN/6GCAHFlB/DpLVQS402mR06GlXhII
 mXswliL3N6UFkUlL4qsUDpnSo99VuxiDe5TsAIZLuE6rz5mpmdBLE34Au87BL/VHpptq
 DJZg==
X-Gm-Message-State: AGi0PuYGMClVRKCR+SMta8uYUBNu5MXhsJF20Fo/zDDMF8nqElNoVLHX
 jizUtu53Wn5i8KpCzf0Tf48=
X-Google-Smtp-Source: APiQypLBJohNWBf8al3U6Nm7wdqmu7TVhKtwUuNuYqABpoxhkFpKFPfFew2b9nU4yPhd8D2/wycwag==
X-Received: by 2002:aa7:d1d6:: with SMTP id g22mr7466242edp.36.1587027059468; 
 Thu, 16 Apr 2020 01:50:59 -0700 (PDT)
Received: from kozik-lap ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id b15sm2495600edn.69.2020.04.16.01.50.54
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 16 Apr 2020 01:50:58 -0700 (PDT)
Date: Thu, 16 Apr 2020 10:50:49 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jonathan Bakker <xc-racer2@live.ca>
Subject: Re: [PATCH v6 08/12] arm: dts: s5pv210: Add G3D node
Message-ID: <20200416085049.GA7193@kozik-lap>
References: <cover.1586939718.git.hns@goldelico.com>
 <b6733f80546bf3e6b3799f716b9c8e0f407de03d.1586939718.git.hns@goldelico.com>
 <CAJKOXPcb9KWNAem-CAx_zCS+sZoEHYc0J8x0nk1xjY9hD4-M4w@mail.gmail.com>
 <AB9B8741-CFF7-414D-9489-D381B539538D@goldelico.com>
 <BN6PR04MB0660640B15550F75C8CCD4DEA3DB0@BN6PR04MB0660.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BN6PR04MB0660640B15550F75C8CCD4DEA3DB0@BN6PR04MB0660.namprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_015101_874867_8CF1FEE9 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, David Airlie <airlied@linux.ie>,
 "H. Nikolaus Schaller" <hns@goldelico.com>, dri-devel@lists.freedesktop.org,
 linux-mips@vger.kernel.org, Paul Cercueil <paul@crapouillou.net>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-omap@vger.kernel.org, Paul Burton <paulburton@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, James Hogan <jhogan@kernel.org>,
 devicetree@vger.kernel.org,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 letux-kernel@openphoenux.org, linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>, openpvrsgx-devgroup@letux.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Daniel Vetter <daniel@ffwll.ch>,
 kernel@pyra-handheld.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 11:17:16AM -0700, Jonathan Bakker wrote:
 
> >>
> >>> +
> >>> +                       assigned-clocks = <&clocks MOUT_G3D>, <&clocks DOUT_G3D>;
> >>> +                       assigned-clock-rates = <0>, <66700000>;
> >>> +                       assigned-clock-parents = <&clocks MOUT_MPLL>;
> >>
> >> Probably this should have status disabled because you do not set
> >> regulator supply.
> 
> I don't believe there is a regulator on s5pv210, if there is, then it is a
> fixed regulator with no control on both s5pv210 devices that I have.
> 
> The vendor driver did use the regulator framework for its power domain
> implementation, but that definitely shouldn't be upstreamed.

Starting with Exynos4210 usually they have separate regulator from PMIC
but maybe S5Pv210 indeed is different.  Leave it then without it.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
