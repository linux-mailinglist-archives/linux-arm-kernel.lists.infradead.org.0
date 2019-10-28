Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C16E7988
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 21:02:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1lkrfogQ+Z7CAoSJmKzQGPfZf4u95RwwTEbpLlmQWxE=; b=TO8u52XS71yttB
	2tXCrBh6PoB0ud1LiMTtkhmhyu14UibAg6rbrqLpwv6y+8xU4s79W9v2UnaUER7EC7tfTDV129mCp
	rf32Ga9PS6CCyrD5gqwHaaUcjkA8LvXBvOaU7c88Bb4gV9FYWVW56r1c6jNw6cXj5rrP+T36DYn3B
	CeqfSYC6e2JJRoTr0wKBYJcxDPNmPJmI+ojLaFKHsirXszbMqkBLfix9VVxioUBSJk6+TAn0MqeMi
	DiOEdd/UXEprTk4w/gl7yAInzohBkXeIuhJfvsY7QysOPMPTkzC8ULD6u4VbnGiBtvyg+yn0TOnXY
	O7pVPGi32GTB9/aab3tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPBDz-0005qt-VM; Mon, 28 Oct 2019 20:02:47 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPBDa-0005h5-Jy
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 20:02:24 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id D68778365D;
 Tue, 29 Oct 2019 09:02:14 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1572292934;
 bh=JALECq4p6zZ0EyUxViPpEvVgl0VCHYaqT+KhKKtII4I=;
 h=From:To:CC:Subject:Date:References:In-Reply-To;
 b=fa/b0MaivXMk27B/JUfMz8PWM1rdu6m5aS/pZrZQPujEwjdPmKkKWz3YxMYoWtLXa
 C/fy/7eyEHl1+Aqmhz7MJEseVcya0uQZX+XmSzVM4KMlXa0vE9pMHDm52m9jr+kDK9
 q466o02L8jZrmEqdmYSjQ1v9rVkBjjYuoSzzIzelpKAx8JGjWeosgd67C20T3Z44wX
 5WBsPXVxNafXSHUbIIeMcY/u0gGWz53qO2E0hZbceeugI+68ufhIxmyHwWwcLukDly
 U73FtfcfIpD6MmtvLk3Kn1q7OPogRL/JmOy6Ll/K1HXUm53HgK2d7HdkrJbYCL/xIm
 +Ki0wDQVoDA9A==
Received: from svr-chch-ex1.atlnz.lc (Not Verified[10.32.16.77]) by
 mmarshal3.atlnz.lc with Trustwave SEG (v7, 5, 8, 10121)
 id <B5db749440000>; Tue, 29 Oct 2019 09:02:15 +1300
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) by
 svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) with Microsoft SMTP Server
 (TLS) id 15.0.1156.6; Tue, 29 Oct 2019 09:02:12 +1300
Received: from svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8]) by
 svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8%12]) with mapi id
 15.00.1156.000; Tue, 29 Oct 2019 09:02:12 +1300
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>
Subject: Re: [PATCH v4 1/2] dt-bindings: gpio: brcm: Add bindings for xgs-iproc
Thread-Topic: [PATCH v4 1/2] dt-bindings: gpio: brcm: Add bindings for
 xgs-iproc
Thread-Index: AQHViqlp/R7j23SnDEuk/qZzj++qxadqv4MAgATmZ4A=
Date: Mon, 28 Oct 2019 20:02:11 +0000
Message-ID: <54ca79b4275e06b9ebf33450b068c914ed0217a7.camel@alliedtelesis.co.nz>
References: <20191024202703.8017-1-chris.packham@alliedtelesis.co.nz>
 <20191024202703.8017-2-chris.packham@alliedtelesis.co.nz>
 <CAL_JsqJ6a6cSrZsTg6piXmuB6-zuP+EO9vwkRoeH2aS9AVOT1g@mail.gmail.com>
In-Reply-To: <CAL_JsqJ6a6cSrZsTg6piXmuB6-zuP+EO9vwkRoeH2aS9AVOT1g@mail.gmail.com>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [2001:df5:b000:22:54a5:7b66:76cf:b046]
Content-ID: <B609EAC4373C1E41898BFB8B76804CDF@atlnz.lc>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_130223_042962_F0423422 
X-CRM114-Status: GOOD (  17.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "sbranden@broadcom.com" <sbranden@broadcom.com>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "rjui@broadcom.com" <rjui@broadcom.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On Fri, 2019-10-25 at 12:12 -0500, Rob Herring wrote:
> On Thu, Oct 24, 2019 at 3:27 PM Chris Packham
> <chris.packham@alliedtelesis.co.nz> wrote:
> > 
> > This GPIO controller is present on a number of Broadcom switch ASICs
> > with integrated SoCs. It is similar to the nsp-gpio and iproc-gpio
> > blocks but different enough to require a separate driver.
> > 
> > Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> > ---
> > 
> > Notes:
> >     Changes in v4:
> >     - rename brcm,xgs-iproc.yaml -> brcm,xgs-iproc-gpio.yaml as suggested
> > 
> >     Changes in v3:
> >     - incorporate review comments from Rob and Bart
> > 
> >     Changes in v2:
> >     - Document as DT schema
> >     - Include ngpios, #gpio-cells and gpio-controller properties
> > 
> >  .../bindings/gpio/brcm,xgs-iproc-gpio.yaml    | 70 +++++++++++++++++++
> >  1 file changed, 70 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/gpio/brcm,xgs-iproc-gpio.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/gpio/brcm,xgs-iproc-gpio.yaml b/Documentation/devicetree/bindings/gpio/brcm,xgs-iproc-gpio.yaml
> > new file mode 100644
> > index 000000000000..ec1fd3a64aa2
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/gpio/brcm,xgs-iproc-gpio.yaml
> > @@ -0,0 +1,70 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/gpio/brcm,xgs-iproc.yaml#
> 
> Documentation/devicetree/bindings/gpio/brcm,xgs-iproc-gpio.yaml: $id:
> path/filename 'gpio/brcm,xgs-iproc.yaml' doesn't match actual filename
> 
> Otherwise,
> 
> Reviewed-by: Rob Herring <robh@kernel.org>

I'll send a quick v5 of just this patch with the minor correction and
your reviewed-by.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
