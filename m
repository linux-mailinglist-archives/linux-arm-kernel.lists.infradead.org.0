Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0560916A6D9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 14:07:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zpqfS7uvUYE8BRfcZbqvBLJvey/0Qa8YtCcybu8Q33k=; b=mKA/0W2gmayQztJBAUGAIzgVb
	7taSGzApvcU789U4JThTegdUFBezCrmkUvEejMo/65yUZbcBFXW4r7C9XVf7b0NaTjiQUdRxN1Rl+
	hbdUHDAliNGtvQbkAuu4HKd4Ad+VINYLStyPz0gfxnVnnXSTvFsE+LUz4BILR7NKds93o+PItnnR8
	aBCBq3Qs+TAz5yeln0ouD66CqwcclHPDPMAtDc03mZFgoKe6SmYSjlhflC8lGzEGHYj2C6jKbli1Z
	KxqSzO1g8bewxsApJA8WNrVNOdqaemYoEM8wim7CAhJYIdElAclAi849tHOI1DUYwHuGAuJLBrozP
	qE0WIu57A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6DSe-0004kC-8Q; Mon, 24 Feb 2020 13:07:48 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6DSS-0004jJ-GH; Mon, 24 Feb 2020 13:07:40 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01OD7CsK028839;
 Mon, 24 Feb 2020 07:07:12 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1582549632;
 bh=Tx9NLTynxh7HMA5VHJWXsAof1AdXnE/KAs53Nqq7E70=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=J8OaXTwY6rJidCznLf2G/vSUju+4HU3kRW0QV+CMkL2fpPxI5mFwt5l1u7GY1i0cK
 fhdwF15G4WtYxb0NBQQmKRDL/VCrdAXaZORkAKh4uNPMzhrjf4desB5yiRBKSQYI5e
 lr23otClWqEaN2djtLEvvM3O3oRjPmZTJi+w6edQ=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01OD7CFB102821
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 24 Feb 2020 07:07:12 -0600
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 24
 Feb 2020 07:07:11 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 24 Feb 2020 07:07:12 -0600
Received: from [10.250.65.13] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01OD7B3m002482;
 Mon, 24 Feb 2020 07:07:11 -0600
Subject: Re: [PATCH 2/7] docs: dt: fix several broken references due to renames
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Linux Doc Mailing List
 <linux-doc@vger.kernel.org>
References: <cover.1582361737.git.mchehab+huawei@kernel.org>
 <83c5df4acbbe0fa55a1d58d4c4a435b51cd2a7ad.1582361737.git.mchehab+huawei@kernel.org>
From: Dan Murphy <dmurphy@ti.com>
Message-ID: <e9ae8125-3f8f-5f8c-c19c-34ac1bb5c982@ti.com>
Date: Mon, 24 Feb 2020 07:02:01 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <83c5df4acbbe0fa55a1d58d4c4a435b51cd2a7ad.1582361737.git.mchehab+huawei@kernel.org>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_050736_620535_38F42148 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stuart Yoder <stuyoder@gmail.com>, David Airlie <airlied@linux.ie>,
 Michael Turquette <mturquette@baylibre.com>, dri-devel@lists.freedesktop.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Pavel Machek <pavel@ucw.cz>,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-leds@vger.kernel.org, Amit Kucheria <amit.kucheria@verdurent.com>,
 linux-aspeed@lists.ozlabs.org, Jonathan Corbet <corbet@lwn.net>,
 Kevin Hilman <khilman@baylibre.com>, openbmc@lists.ozlabs.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, Joel Stanley <joel@jms.id.au>,
 Philipp Zabel <p.zabel@pengutronix.de>, Zhang Rui <rui.zhang@intel.com>,
 Linus Walleij <linus.walleij@linaro.org>, devicetree@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-pm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, Jyri Sarha <jsarha@ti.com>,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Andy Gross <agross@kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Mauro

On 2/22/20 3:00 AM, Mauro Carvalho Chehab wrote:
> Several DT references got broken due to txt->yaml conversion.
>
> Those are auto-fixed by running:
>
> 	scripts/documentation-file-ref-check --fix
>
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>   Documentation/devicetree/bindings/arm/arm,scmi.txt        | 2 +-
>   Documentation/devicetree/bindings/arm/arm,scpi.txt        | 2 +-
>   .../devicetree/bindings/arm/bcm/brcm,bcm63138.txt         | 2 +-
>   .../devicetree/bindings/arm/hisilicon/hi3519-sysctrl.txt  | 2 +-
>   .../devicetree/bindings/arm/msm/qcom,idle-state.txt       | 2 +-
>   Documentation/devicetree/bindings/arm/omap/mpu.txt        | 2 +-
>   Documentation/devicetree/bindings/arm/psci.yaml           | 2 +-
>   .../devicetree/bindings/clock/qcom,gcc-apq8064.yaml       | 2 +-
>   .../devicetree/bindings/display/tilcdc/tilcdc.txt         | 2 +-
>   Documentation/devicetree/bindings/leds/common.yaml        | 2 +-

For LEDs

Reviewed-by: Dan Murphy <dmurphy@ti.com>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
