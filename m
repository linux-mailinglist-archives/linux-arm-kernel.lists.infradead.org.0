Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BC59521B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 02:06:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NxC33y4nhb5hcsn5Q4U9BGqBOvPlc6UUwaNgH5RklHM=; b=e4G7UDJN2VfizA
	sFOzsCb+K62myNdVfA2pm3MTc0Oi6m+JR7hBZY2IFMfx9ZxHydTJVVjSiWhMgi6XAVtVGpLTD8rcR
	2XE3ZPMuAMSei2pXVMZQLIm7+El2Sv5yUxex5sQPs6scSPoD47SwGSyec10HJx8ehVCgJK89krOLW
	nmLiLD5je+g/LkL53XKVIeEmyIZOA/vaCICQ6hdl/tXa8FomAiol6dARYNJWN8kz5jDVZ6u3ezeSR
	Fn6ba4RLfDKRehP7lrQeyK0qDZlIsDrjANGECNZASocwoD9V2/NB04Lz+Jfv0hAxxY0ubN/djrKjs
	qSql1TI7qhWT4q4fIUVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzrfP-0002bh-IF; Tue, 20 Aug 2019 00:06:27 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzrf5-0002ad-5L
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 00:06:09 +0000
Received: by mail-pl1-x644.google.com with SMTP id h3so1755687pls.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 17:06:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=qQOXa0QSQ8+7zZiklPWl3hCCcZsK+hqnhGUid1sWCU8=;
 b=wGnT9m7b9TR7M7i9MBlpKp6tEOWrDHxiWt77j4NAxEsRfJe/itBFxWCAr7XoUItxbK
 zeP9aFQ/wUJgiuSXIObMoXTjG6xFILJo8WmbIVvsE5IjpT1xQJFvDTJZ3z9i/ICG6t8D
 uZaiGVv8m+1cLepmoqsGHfcQsLCUNHsZ9uNwR7v0MTQsEjqeYijC80kN1yZM9T3qTo6B
 rlAISdOA/qwXYZCWu+6AsxlF/iAM/+nKcaZRPxMa9Knikvh7y4CWffTaqOc4tGUB5m74
 7cmuPVfGzBzCBA3wPl/JaYvwFeFl7dIz68XgvMUL4rVTW3O35pUyCwAtKvqFTer9YMkZ
 mGhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=qQOXa0QSQ8+7zZiklPWl3hCCcZsK+hqnhGUid1sWCU8=;
 b=scd6dAUJhdXkEKyP7OKqAQSFkPdnSdq8rSXwHKidaxaWv1DAuODFncEMWQ2qNpo+Dh
 JfTj4DOg8ZN03rqeqRXfQtQ/4uC8uzAPcWZA6k2x3ewoxjG08YJOmLT9h8mbUgiJOsJm
 bXRfm91yUxuKiZ/dOaMXx4Up/JIpRV8T4330tZQYQEnNbyRUCe4cCZjgzwSZndQmo07V
 qTXd7BOpq2R1e+JW7/CmGO5WPz16IfeuUcDcPtgAWmFczvAlQwhqVwC0dEPcfd9G3iJj
 5nbiwJT7bez2HQWaREoNpjWpKInDI6SPnKKVJOyCwMdNk8+kDhJkcleOGtZ5SXS1JhfL
 pVVg==
X-Gm-Message-State: APjAAAU44AdDi9MzcbJmTzmG4sCYLrMjS3dBCKgncnN5fTWar3dEKwG7
 I0UJk4mb6kpS59myyv53gEcTtQ==
X-Google-Smtp-Source: APXvYqxODMOaWdUOfaqCWz58eCyX2XpNVazF2y31NY989nA8wv08oSs0Wv5q/o/p1dAhx7h45OxnQA==
X-Received: by 2002:a17:902:6f10:: with SMTP id
 w16mr2661912plk.143.1566259565283; 
 Mon, 19 Aug 2019 17:06:05 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:35:cf9b:bad:702c])
 by smtp.gmail.com with ESMTPSA id e129sm6062949pfa.92.2019.08.19.17.06.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 19 Aug 2019 17:06:04 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [RFC 02/11] dt-bindings: power: amlogic,
 meson-gx-pwrc: Add SM1 bindings
In-Reply-To: <CAFBinCAT1JaK6ksD9OzCK_wEEWJdaZL2vLzGeCzVVbz9V67btQ@mail.gmail.com>
References: <20190701104705.18271-1-narmstrong@baylibre.com>
 <20190701104705.18271-3-narmstrong@baylibre.com>
 <CAFBinCAT1JaK6ksD9OzCK_wEEWJdaZL2vLzGeCzVVbz9V67btQ@mail.gmail.com>
Date: Mon, 19 Aug 2019 17:05:56 -0700
Message-ID: <7h1rxgvgyj.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_170608_035296_630E3B22 
X-CRM114-Status: GOOD (  15.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:

> Hi Neil,
>
> On Mon, Jul 1, 2019 at 12:48 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
> [...]
>> +General Purpose Power Controller
>> +--------------------------------
>>
>> +The Amlogic SM1 SoCs embeds a General Purpose Power Controller used
>> +to control the power domain for, at least, the USB PHYs and PCIe
>> +peripherals.
> AFAIK each binding document should only describe one IP block.
> this one seems to be new / different
>
> should it get it's own file?
> also should it be a .yaml binding?

I don't think this is a new IP block.  Comparing across the various
(64-bit) SoCs, it seems to be very similar across all SoCs.

>> +
>> +Device Tree Bindings:
>> +---------------------
>> +
>> +Required properties:
>> +- compatible: should be one of the following :
>> +       - "amlogic,meson-sm1-pwrc" for the Meson SM1 SoCs
>> +- #power-domain-cells: should be 0
>> +- amlogic,hhi-sysctrl: phandle to the HHI sysctrl node
>> +
>> +Parent node should have the following properties :
>> +- compatible: "amlogic,meson-gx-ao-sysctrl", "syscon", "simple-mfd"
>> +- reg: base address and size of the AO system control register space.
>> +
>> +
>> +Example:
>> +-------
>> +
>> +ao_sysctrl: sys-ctrl@0 {
>> +       compatible = "amlogic,meson-gx-ao-sysctrl", "syscon", "simple-mfd";
>> +       reg =  <0x0 0x0 0x0 0x100>;
>> +
>> +       pwrc: power-controller {
>> +               compatible = "amlogic,meson-sm1-pwrc";
>> +               #power-domain-cells = <1>;
>> +               amlogic,hhi-sysctrl = <&hhi>;
>> +       };
>> +};
>
> I'm not sure that we want to mix HHI and AO power domains in one driver again

We're not mixing here. These are all EE domains.  They just have some
control registers in the AO memory region.

> back in March I asked a few questions about modelling the power
> domains and Kevin explained that we can implement them hierarchical:
> [0]
> unfortunately I didn't have the time to work on this - however, now
> that we implement a new driver: should we follow this hierarchical
> approach?

The more I look at this, I don't think we have a commpelling need to
model them hierarchically.  The main reason being is that of the 3
top-level domains I listed[0], we can only managing the EE domains in the
kernel.  It doesn't make sense to model/manage AO domains because, well,
they are always-on (AO).  The CPU domains are managed my the PSCI
firmware, and we don't/won't have any control over that.

For that reason, I think it makes the most sense to have a generic
driver that handles all the EE domains.

IMO, the SM1 driver that Neil wrote in patch 4 of this series is 80%
there.  If we generalize that little more, it can be quite easily used
for all the EE domains.

Kevin

[0] http://lists.infradead.org/pipermail/linux-amlogic/2019-March/010512.html


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
