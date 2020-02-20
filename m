Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 061CF16684A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 21:28:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wmLbK2prRnX6tlmoN2IB5+jiWCs4lCVQuuGS9nLE6Pg=; b=VJhHKRpysdKhZE
	1h+xH4OKDl4qGTixk1ahOtMfPbMinWc8QreG8XniNdP2dWePEntU3hO19URopxqlPPcq4Gc51AVNC
	YXKuap/LCItrXWc82DnW/PftOTUs6ulPRmz4fnifMqYBwZjZO+A/2Ir9YDFQ+rLPlhhMnGModBTnD
	OhJw8YVngmGtX9mb9EeQ28AqSNfhmolIRMHn6Z8VlU02s2lpVWfBaJ8FZcZqcNepSUh1KxQ99vPNF
	/x+aTuavJ9kXiuG+ZZA8jYk9AkrESuxMUdacFC7x1vGQzmQkg1DDWV0F22Un7CKwgZuIuQYgwYMkp
	AnEmxt5bn9l82U6rf3Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4sQt-0004kb-DN; Thu, 20 Feb 2020 20:28:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4sQl-0004ji-ND
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 20:28:21 +0000
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com
 [209.85.219.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A274C24656
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 20:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582230498;
 bh=e7Roq7Daj5Bqc+VwP6/Sbq5H7ZycqvJy9VIdcG29uAU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=gCipvhE+WLOUNhhRUhdv9GnOviF1bpzSd4O4+SyTc7qCQJ8MOKPQWuOyI0UssKMYl
 16z7KFtQbq0rYvQB02+iSTnpJVaoGtGRCnXD1Wr5CgNhSyQVafuQkezbVt6XE4mppi
 Eavwf9gf4xktUuOxqN7oBdjmhH2/RaZ0MafFUZLY=
Received: by mail-qv1-f52.google.com with SMTP id q9so4972qvu.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 12:28:18 -0800 (PST)
X-Gm-Message-State: APjAAAWDHno41eYFVM+EAqwbUEW2rcM50n/yZ0suKQlVl+GrY8uXkQUE
 7CkQjhzSZJv65xOT7JmQq7yc7lZDSSstSzcQww==
X-Google-Smtp-Source: APXvYqzKZv8uzFgFFGlqw1uQdbtON0g1jljHhpVNKgnhHAnH7T+6Bku3pHRk4YpmaohQNiGnHzdhLZliMv9F7naBmsg=
X-Received: by 2002:a05:6214:11ac:: with SMTP id
 u12mr27563384qvv.85.1582230497726; 
 Thu, 20 Feb 2020 12:28:17 -0800 (PST)
MIME-Version: 1.0
References: <20200214063443.23589-1-j-keerthy@ti.com>
 <20200214063443.23589-2-j-keerthy@ti.com>
 <20200218202048.GA32279@bogus> <6895cf5e-9195-c914-f4ce-a83f36027dbf@ti.com>
In-Reply-To: <6895cf5e-9195-c914-f4ce-a83f36027dbf@ti.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 20 Feb 2020 14:28:06 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLamx4hdXLJ5SCP1FPHRP11JP6V-1=NyRY2QM1bvtMtpg@mail.gmail.com>
Message-ID: <CAL_JsqLamx4hdXLJ5SCP1FPHRP11JP6V-1=NyRY2QM1bvtMtpg@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: thermal: k3: Add VTM bindings
 documentation
To: Keerthy <j-keerthy@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_122819_803745_0410971D 
X-CRM114-Status: GOOD (  21.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Zhang Rui <rui.zhang@intel.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 1:40 AM Keerthy <j-keerthy@ti.com> wrote:
>
>
>
> On 19/02/20 1:50 am, Rob Herring wrote:
> > On Fri, 14 Feb 2020 12:04:40 +0530, Keerthy wrote:
> >> Add VTM bindings documentation. In the Voltage Thermal
> >> Management Module(VTM), K3 AM654 supplies a voltage
> >> reference and a temperature sensor feature that are gathered in the band
> >> gap voltage and temperature sensor (VBGAPTS) module. The band
> >> gap provides current and voltage reference for its internal
> >> circuits and other analog IP blocks. The analog-to-digital
> >> converter (ADC) produces an output value that is proportional
> >> to the silicon temperature.
> >>
> >> Signed-off-by: Keerthy <j-keerthy@ti.com>
> >> ---
> >>
> >> Changes in v2:
> >>
> >>    * Fixed make dt_binding_check errors.
> >>
> >>   .../bindings/thermal/ti,am654-thermal.yaml    | 57 +++++++++++++++++++
> >>   1 file changed, 57 insertions(+)
> >>   create mode 100644 Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml
> >>
> >
> > My bot found errors running 'make dt_binding_check' on your patch:
> >
> > Documentation/devicetree/bindings/display/simple-framebuffer.example.dts:21.16-37.11: Warning (chosen_node_is_root): /example-0/chosen: chosen node must be at root node
> > Error: Documentation/devicetree/bindings/thermal/ti,am654-thermal.example.dts:21.41-42 syntax error
> > FATAL ERROR: Unable to parse input tree
> > scripts/Makefile.lib:300: recipe for target 'Documentation/devicetree/bindings/thermal/ti,am654-thermal.example.dt.yaml' failed
> > make[1]: *** [Documentation/devicetree/bindings/thermal/ti,am654-thermal.example.dt.yaml] Error 1
> > Makefile:1263: recipe for target 'dt_binding_check' failed
> > make: *** [dt_binding_check] Error 2
> >
> > See https://patchwork.ozlabs.org/patch/1237882
> > Please check and re-submit.
>
> Rob,
>
> I am using:
>
> Tree: https//github.com/devicetree-org/dt-schema.git
> branch: master
>
> I have make dt_binding_check working for
> Documentation/devicetree/bindings/thermal/ti,am654-thermal.example.dt.yaml
>
> Documentation/devicetree/bindings/thermal/ti,am654-thermal.example.dts
> is created without any errors :
>
> https://pastebin.ubuntu.com/p/6MkMbKPpbY/
>
> I did not see any errors as the other files erred out.

'make -k' is your friend.

What branch are you on. Only linux-next breaks generally.

> Today i tried with DT_SCHEMA_FILES option and then finally reproduced
> the errors. It is a bit confusing for the first time users.
>
> Now i have it compiled without any errors.
>
> Posting v3 in a bit.
>
> - Keerthy
>
>
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
