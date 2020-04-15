Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 630D01A98CB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 11:26:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=awn3dNizUwOER9hCvRCBh6JOfL4H4KMXJOoi/kYBnPs=; b=u67XaV4Rb2JcQY
	sDHc67HSHe1ApuY2lK4EJ+UU+dlrErNtJzNQoJv/1wsF/6EbUeH6ukqICnk5ZRk4wlGgYXLKgy9X9
	eJbtGBBdwixjpe5gmNkVDgNq3TYxfvSSmXBMZ3HtF+vyuuLqG7vwYamZKJtlq/vdGRjxs5IdYXWx1
	mr6vY7RpI+tuQdSjphr5ZO8eHClNqnaBXosQi3/NDZ+zHgBWVI0zRJQmhequapTVfQd6VJJEogx+z
	yGEKRuLztc96mzpWnprHbR6NRyA6OmjOo/NfbVBrhYXLgNLSTiTuRCRCMXhQfAtE/PPNF5LcViv+I
	aYMsUIC+f4uRVhXnhUsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOeJl-0008TN-UG; Wed, 15 Apr 2020 09:26:49 +0000
Received: from mo6-p04-ob.smtp.rzone.de ([2a01:238:20a:202:5304::12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOeJe-0008SV-Af
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 09:26:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1586942800;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=QSUY1yUiWe9X6ZGNIO1eH3insGRwBB0CwHRK6fHg7uQ=;
 b=ew2hkkIGaSqWtejAQY4GJ8tm93/sg6sqSqehzzs4+zx4pKfBt9SnIxt/R8dXSP7WB8
 NhzFigd69oGHErabgTT05z8p71Eum2xDHvVGi2lRiu8YVz18ouIpwnSG/tyIe6F4y2fv
 dxCzOAH+k3DttU7669WC9hmJNs4PFM95x6uwtQk+3EqazO7mxHyP1GmmWdG2cDqPmrvH
 DZ1aKJelLLfYF333LVi+FzEd32U/8ypWo7Zq78OvNQbTO6kkOPZLh/QuJTc+xez1/wBL
 ScGnzy8FeZdMmZiJ2Z3I3LtpWe2y8k9uhrzkPWlwkD4b+pTWDjC81i5Ogo2PODDjkqwe
 s1Kw==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj7wpz8NMGH/PtwDConyM="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 46.4.0 DYNA|AUTH)
 with ESMTPSA id 6028a2w3F9Qa0oW
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve X9_62_prime256v1 with 256
 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Wed, 15 Apr 2020 11:26:36 +0200 (CEST)
Subject: Re: [PATCH v6 08/12] arm: dts: s5pv210: Add G3D node
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <b6ffa74a-acef-f329-0d9e-981483499e16@cogentembedded.com>
Date: Wed, 15 Apr 2020 11:26:35 +0200
Message-Id: <B1E898A7-73BB-4C20-98D2-2D32F0DC170F@goldelico.com>
References: <cover.1586939718.git.hns@goldelico.com>
 <b6733f80546bf3e6b3799f716b9c8e0f407de03d.1586939718.git.hns@goldelico.com>
 <b6ffa74a-acef-f329-0d9e-981483499e16@cogentembedded.com>
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 Jonathan Bakker <xc-racer2@live.ca>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_022642_955537_F1639167 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5304:0:0:12 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 James Hogan <jhogan@kernel.org>, Jonathan Bakker <xc-racer2@live.ca>,
 dri-devel@lists.freedesktop.org, linux-mips@vger.kernel.org,
 Paul Cercueil <paul@crapouillou.net>, linux-samsung-soc@vger.kernel.org,
 letux-kernel@openphoenux.org, Paul Burton <paulburton@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Tony Lindgren <tony@atomide.com>,
 Chen-Yu Tsai <wens@csie.org>, Kukjin Kim <kgene@kernel.org>,
 devicetree@vger.kernel.org,
 =?utf-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>, openpvrsgx-devgroup@letux.org,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Daniel Vetter <daniel@ffwll.ch>, kernel@pyra-handheld.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sergei and Jonathan,

> Am 15.04.2020 um 11:15 schrieb Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>:
> 
> Hello!
> 
> On 15.04.2020 11:35, H. Nikolaus Schaller wrote:
> 
>> From: Jonathan Bakker <xc-racer2@live.ca>
>> to add support for SGX540 GPU.
>> Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
>> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
>> ---
>>  arch/arm/boot/dts/s5pv210.dtsi | 15 +++++++++++++++
>>  1 file changed, 15 insertions(+)
>> diff --git a/arch/arm/boot/dts/s5pv210.dtsi b/arch/arm/boot/dts/s5pv210.dtsi
>> index 2ad642f51fd9..e7fc709c0cca 100644
>> --- a/arch/arm/boot/dts/s5pv210.dtsi
>> +++ b/arch/arm/boot/dts/s5pv210.dtsi
>> @@ -512,6 +512,21 @@ vic3: interrupt-controller@f2300000 {
>>  			#interrupt-cells = <1>;
>>  		};
>>  +		g3d: g3d@f3000000 {
> 
>   Should be named generically, "gpu@f3000000", according to the DT spec 0.2, section 2.2.2. It's either "gpu" or "display" TTBOMK...

Yes, you are right and we have named it such for all other
devices in this series. I just missed that.

Jonathan, if you are ok, I'll fix that.

> 
> [...]
> 
> MBR, Sergei

BR and thanks,
Nikolaus


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
