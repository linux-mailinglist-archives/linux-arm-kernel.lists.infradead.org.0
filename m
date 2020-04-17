Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A071ADD09
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 14:17:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Tz0XTQVQWx+lQGSf8rMn09wXq1HQuqDcF7oMSr55rs=; b=KlfYGqRC5ena6H
	Ckb7ZcUi3y4TKMOfrswCv9CeR8p0Vu3qwzFe9IDyhzgdD9Uu2unRcUIMLkvibPPNSC2gZ8T4FO9hZ
	LsP1sqlxzKW4PBzPkQhPAwTKTU/hKmKGMrRoYQllDOL+e1MvrDBDrfHAQeDRMnkeFi030pQNHWAvc
	XZk730380NB37sd+ly077qdRUaagnXka7jRO7mpBp5yy3uUSxjZrfVQ2Bo8ujW5+4cPJ5FuOFttiB
	BRh3QWbDzmOkTHnz6TD522l6fyQ0MrIcdP0GWQNtFjGissIDavktFZvmG9xBgc1EZCZXtqP7CAIUA
	DI3TYZaJ0J7RBh37E9tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPPvP-0006g5-NQ; Fri, 17 Apr 2020 12:16:51 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPPuq-0006OW-DB
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 12:16:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1587125774;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=RzdUw8/NV55WKlcwv7PC21SyWddKy4v1gy6xI/rF3XU=;
 b=aWphhrMY5j0Z4i5Sf3Cbkz4awzfM7BJZtw2IWRtp50TDm3AziQGv5Vc55pLX42OvJX
 6cPcF9K76KRPoRw2nogT+PT06bYSQaB/l2bQiEvUQXP1bhmQDAI9dbBOVJClRPOJwXeC
 tsLPDt6nZXpTq+o2vxodF71mKtdBeig3KHH9cIFd0s9M2FMg4Dcsb3R+bEewnXcQ2jOh
 49EZGwpLcRyt8W9R4NSlaQE024qRnEQnbTSOLlJf0bJUPG4qbJlf3VOPwvpgVvEPY0gj
 i//5HHoz8tstDw2g+qgTm2l28n3/KyimgyNS9djLqILaWZPR2YqHrr4YYHNqhpqOByT8
 AGTw==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj7wpz8NMGH/PgwDWjbQ=="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 46.5.0 DYNA|AUTH)
 with ESMTPSA id g06d2dw3HCG81cE
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve X9_62_prime256v1 with 256
 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Fri, 17 Apr 2020 14:16:08 +0200 (CEST)
Subject: Re: [PATCH v6 01/12] dt-bindings: add img,
 pvrsgx.yaml for Imagination GPUs
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: H. Nikolaus Schaller <hns@goldelico.com>
In-Reply-To: <20200416204158.GA1006@bogus>
Date: Fri, 17 Apr 2020 14:16:07 +0200
Message-Id: <C7C58E41-99CB-49F6-934E-68FA458CB8B1@goldelico.com>
References: <cover.1586939718.git.hns@goldelico.com>
 <06fb6569259bb9183d0a0d0fe70ec4f3033b8aab.1586939718.git.hns@goldelico.com>
 <20200416204158.GA1006@bogus>
To: Rob Herring <robh@kernel.org>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_051616_608229_10666785 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5302:0:0:5 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>, David Airlie <airlied@linux.ie>,
 openpvrsgx-devgroup@letux.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mips@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, linux-samsung-soc@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, kernel@pyra-handheld.com,
 letux-kernel@openphoenux.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

> Am 16.04.2020 um 22:41 schrieb Rob Herring <robh@kernel.org>:
> 
> On Wed, 15 Apr 2020 10:35:08 +0200, "H. Nikolaus Schaller" wrote:
>> The Imagination PVR/SGX GPU is part of several SoC from
>> multiple vendors, e.g. TI OMAP, Ingenic JZ4780, Intel Poulsbo,
>> Allwinner A83 and others.
>> 
>> With this binding, we describe how the SGX processor is
>> interfaced to the SoC (registers, interrupt etc.).
>> 
>> In most cases, Clock, Reset and power management is handled
>> by a parent node or elsewhere (e.g. code in the driver).
>> 
>> Tested by make dt_binding_check dtbs_check
>> 
>> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
>> ---
>> .../devicetree/bindings/gpu/img,pvrsgx.yaml   | 122 ++++++++++++++++++
>> 1 file changed, 122 insertions(+)
>> create mode 100644 Documentation/devicetree/bindings/gpu/img,pvrsgx.yaml
>> 
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> Documentation/devicetree/bindings/gpu/img,pvrsgx.yaml:  while parsing a block mapping
>  in "<unicode string>", line 74, column 13

It turned out that there was a stray " in line 74 from the last editing phase.
Will be fixed in v7.

Would it be possible to make dt_binding_check not only report line/column but the
contents of the line instead of "<unicode string>"?

> did not find expected key
>  in "<unicode string>", line 117, column 21
> Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/gpu/img,pvrsgx.example.dts' failed
> make[1]: *** [Documentation/devicetree/bindings/gpu/img,pvrsgx.example.dts] Error 1
> make[1]: *** Waiting for unfinished jobs....
> Makefile:1264: recipe for target 'dt_binding_check' failed
> make: *** [dt_binding_check] Error 2
> 
> See https://patchwork.ozlabs.org/patch/1270997
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure dt-schema is up to date:
> 
> pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade
> 
> Please check and re-submit.

BR and thanks,
Nikolaus Schaller


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
