Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 906A61D478B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 10:00:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tfhe7qlkf/pne5YdP0jGeQ8yT0zlh26TKXOwzQmcv5g=; b=a5zBac0mPHU5Gy
	QokhGWsnJKDR0t1WngAyO2ltN7kfh5iV+IlxjqD5bfnpeeA2hq/IBsJ6yUimcJrkf9o4wd1z051pc
	yFiVen14zHqk6mVYfHWi2wf1a4a/hW/bkT1iiyRes2aFEtbTWqJKgVbRRVOJ5UO+ZcG8lo7T303oR
	1X1S5pI0d6JdcOrQ/LU2HJjEFq3VUnwNgd4Bejv3KC+QjjCn0KUOWGNp4Kgx//hWXlfnJA5dVOmEe
	g4yNGFOyPE7WHG95uCh9/Ih5iqEeIgS5578kTi4zyWh4zszXoG6Nwb7ihrNdF/5IgyV/d6HhIPWTB
	jqTT5zLFie0+9KFp7b5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZVGB-0000TU-GU; Fri, 15 May 2020 07:59:59 +0000
Received: from mo6-p03-ob.smtp.rzone.de ([2a01:238:20a:202:5303::9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZVFz-0000Sz-7j
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 07:59:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1589529585;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=bU5sZyM8w1KL+vZGRsgMWFgVeXL93IV+Cv0ulYGm/2A=;
 b=DyS5CtAzQP1P8x8pYM799rqpOv8S7mn7f6oSYE99QGkDC8G0dwW0lY70uJkVJh0den
 dxDiwBw8yobAhcEVMRvK7I3B41wCNsy+BdpeJXexwGoEHbv3ZdhWzlf2A4Gk0sCRs30p
 VU0Mdui9X0K4igbg/eObjSu5ac83pAoQmqzCraZ/Z+UR1LlGv7aCQMgaHTMtDC1Szv2a
 loYMDx8tUvJrB/OcntwYj82i01YXifcRfZdzoiJuvGkbHRFWp5+rIBwSf7cNHtZ+4NhE
 ssYT4E5nSsLgt+fjCz506/8V+pL60OGxm1HQ/FOg1LGfwDPX4WrwzuyXwHLf5ULreFMZ
 mJCQ==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj7wpz8NMGH/vtwDOvBTU="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 46.6.2 DYNA|AUTH)
 with ESMTPSA id R0acebw4F7xbYgL
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve X9_62_prime256v1 with 256
 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Fri, 15 May 2020 09:59:37 +0200 (CEST)
Subject: Re: [PATCH v7 01/12] dt-bindings: add img,
 pvrsgx.yaml for Imagination GPUs
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <20200505155311.GA18025@bogus>
Date: Fri, 15 May 2020 09:59:36 +0200
Message-Id: <DD3BF759-4F3D-4147-9A80-DB6C18B13400@goldelico.com>
References: <cover.1587760454.git.hns@goldelico.com>
 <3a451e360fed84bc40287678b4d6be13821cfbc0.1587760454.git.hns@goldelico.com>
 <20200505155311.GA18025@bogus>
To: Rob Herring <robh@kernel.org>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_005947_427377_DB269A64 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5303:0:0:9 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, David Airlie <airlied@linux.ie>,
 James Hogan <jhogan@kernel.org>, Jonathan Bakker <xc-racer2@live.ca>,
 dri-devel@lists.freedesktop.org, linux-mips@vger.kernel.org,
 Paul Cercueil <paul@crapouillou.net>, linux-omap@vger.kernel.org,
 Paul Burton <paulburton@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, devicetree@vger.kernel.org,
 =?utf-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 Maxime Ripard <mripard@kernel.org>, linux-samsung-soc@vger.kernel.org,
 letux-kernel@openphoenux.org, linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>, openpvrsgx-devgroup@letux.org,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Daniel Vetter <daniel@ffwll.ch>, kernel@pyra-handheld.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> Am 05.05.2020 um 17:53 schrieb Rob Herring <robh@kernel.org>:
> 
> On Fri, Apr 24, 2020 at 10:34:04PM +0200, H. Nikolaus Schaller wrote:
>> The Imagination PVR/SGX GPU is part of several SoC from
>> multiple vendors, e.g. TI OMAP, Ingenic JZ4780, Intel Poulsbo,
>> Allwinner A83 and others.
>> 
>> With this binding, we describe how the SGX processor is
>> interfaced to the SoC (registers and interrupt).
>> 
>> The interface also consists of clocks, reset, power but
>> information from data sheets is vague and some SoC integrators
>> (TI) deciced to use a PRCM wrapper (ti,sysc) which does
>> all clock, reset and power-management through registers
>> outside of the sgx register block.
>> 
>> Therefore all these properties are optional.
>> 
>> Tested by make dt_binding_check
>> 
>> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
>> ---
>> .../devicetree/bindings/gpu/img,pvrsgx.yaml   | 150 ++++++++++++++++++
>> 1 file changed, 150 insertions(+)
>> +    oneOf:
>> +      - description: SGX530-121 based SoC
>> +        items:
>> +          - enum:
>> +            - ti,omap3-sgx530-121 # BeagleBoard A/B/C, OpenPandora 600MHz and similar
> 
> Should be indented 2 more here and elsewhere where you have a list 
> under a list.

added for patch v8 series.

BR and thanks,
Nikolaus


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
