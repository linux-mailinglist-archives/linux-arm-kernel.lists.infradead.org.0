Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E418119E875
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 04:02:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ueb/TzLyfVnJDI8mDOGTns0a+JL7tjFA20e6OM7r4Ac=; b=ILDtfrvOhZzfbl
	JC4CWcJRogGSRO+ZgMDWjno9ekHKk+ElBNbgmRJn1bHHFsx5BTBFClPHmonvq6z5r3kdxK6j8ROPW
	l9t/jSFYFwyyDbnFWusC69bFNPhwSFsPUWKnG7w+JmoKl5IiD5o/TmTBScr2efhtuT09X+KmD/sft
	tPcQWTrjmOSItxiJl5IyYFzysC7bNno8M3V+N6dnKloduVW7Xur6SMPs+xNx7vmUOH7uVEF4Ns1MT
	OB9NjJvKcRKybqlH7YFKny9dZJLg6VVXDC0xE54TVM7YnTPd2Gc0d20iCEyHZrepI79qhwrzKnQnW
	TUzZOiIqoiXzaWpvNedg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKuc7-0003rA-7d; Sun, 05 Apr 2020 02:02:19 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKubz-0003qr-Pe
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 02:02:13 +0000
Received: by mail-io1-f67.google.com with SMTP id i3so11910748ioo.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 Apr 2020 19:02:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4KE1ajm7Pr9JZRShONsIYV51HCcbzA2Ep3Y98R0uXF0=;
 b=Es0jUP7unXolOzW5iDmNxcqzKKHqx/oVV34z1QJTzrLjIbu3T3cYYAQd6rRvjnrM1C
 2oHHUR21Dj6XWrHC4/ItsSXHyTSdBKALuo3Ida8RDtKlh9TPV3RAtQdN0sk4pCXClo6d
 hitvzAFARDquAu2pcz4fpvGN8eKrdEWtqrNc1ykGtZC5KrJZxavCgQWkJtkArCc+kidZ
 aomDSy/hp657cP/CkJTB9heMr/SQggHQPvqkafFTIe15gTfzZDhv5hT6XWqWGWTjR0vs
 uZBJsh0YvJu3/bXuP5Tf+6NeQA8XXVGUn+ZhEQGy+z+Zore/KL7SMZg1YK/4Rsq8l/s3
 mMLQ==
X-Gm-Message-State: AGi0PubRk1zOcY7cxXN9v+CGogy5/tPnskvukGFMfqul2hHN8BlVUDwO
 V3uNF2NZgUAissnI1Tx+ng==
X-Google-Smtp-Source: APiQypJBAkbiTizGN9DKt26SkLi+oMNVXz4uYVjtoFP0Ee1EplO0IkrN+ydU296Tom/Bm7vDZfPvpA==
X-Received: by 2002:a05:6638:155:: with SMTP id
 y21mr713152jao.79.1586052130726; 
 Sat, 04 Apr 2020 19:02:10 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id r10sm3871386iom.42.2020.04.04.19.02.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Apr 2020 19:02:10 -0700 (PDT)
Received: (nullmailer pid 536 invoked by uid 1000);
 Sun, 05 Apr 2020 02:02:08 -0000
Date: Sat, 4 Apr 2020 20:02:08 -0600
From: Rob Herring <robh@kernel.org>
To: Alim Akhtar <alim.akhtar@samsung.com>
Subject: Re: [PATCH v4 3/5] Documentation: devicetree: ufs: Add DT bindings
 for exynos UFS host controller
Message-ID: <20200405020208.GA22609@bogus>
References: <20200327170638.17670-1-alim.akhtar@samsung.com>
 <CGME20200327171418epcas5p4b85bea273e17c05a7edca58f528c435a@epcas5p4.samsung.com>
 <20200327170638.17670-4-alim.akhtar@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200327170638.17670-4-alim.akhtar@samsung.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_190211_832907_04E5D144 
X-CRM114-Status: GOOD (  23.60  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, kwmad.kim@samsung.com,
 avri.altman@wdc.com, cang@codeaurora.org, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 27, 2020 at 10:36:36PM +0530, Alim Akhtar wrote:
> This adds Exynos Universal Flash Storage (UFS) Host Controller DT bindings.

Why the inconsistent subject. 'dt-bindings: ...' please.

> 
> Signed-off-by: Seungwon Jeon <essuuj@gmail.com>
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> ---
>  .../devicetree/bindings/ufs/ufs-exynos.txt    | 104 ++++++++++++++++++
>  1 file changed, 104 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/ufs/ufs-exynos.txt

Use DT schema format. Not sure why you'd do that for one and not the 
other...

> 
> diff --git a/Documentation/devicetree/bindings/ufs/ufs-exynos.txt b/Documentation/devicetree/bindings/ufs/ufs-exynos.txt
> new file mode 100644
> index 000000000000..08e2d1497b1b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/ufs/ufs-exynos.txt
> @@ -0,0 +1,104 @@
> +* Exynos Universal Flash Storage (UFS) Host Controller
> +
> +UFSHC nodes are defined to describe on-chip UFS host controllers.
> +Each UFS controller instance should have its own node.
> +
> +Required properties:
> +- compatible        : compatible name, contains "samsung,exynos7-ufs"
> +- interrupts        : <interrupt mapping for UFS host controller IRQ>
> +- reg               : Should contain HCI, vendor specific, UNIPRO and
> +		      UFS protector address space
> +- reg-names	    : "hci", "vs_hci", "unipro", "ufsp";
> +
> +Optional properties:
> +- vdd-hba-supply        : phandle to UFS host controller supply regulator node
> +- vcc-supply            : phandle to VCC supply regulator node
> +- vccq-supply           : phandle to VCCQ supply regulator node
> +- vccq2-supply          : phandle to VCCQ2 supply regulator node
> +- vcc-supply-1p8        : For embedded UFS devices, valid VCC range is 1.7-1.95V
> +                          or 2.7-3.6V. This boolean property when set, specifies
> +			  to use low voltage range of 1.7-1.95V. Note for external
> +			  UFS cards this property is invalid and valid VCC range is
> +			  always 2.7-3.6V.

The supply for vcc-supply should be restricted to the valid range and 
this is not needed.

> +- vcc-max-microamp      : specifies max. load that can be drawn from vcc supply
> +- vccq-max-microamp     : specifies max. load that can be drawn from vccq supply
> +- vccq2-max-microamp    : specifies max. load that can be drawn from vccq2 supply

How is this information useful?

> +- <name>-fixed-regulator : boolean property specifying that <name>-supply is a fixed regulator

No need for this. Look up the phandle and check supply's node if you 
want to know this.

> +
> +- clocks                : List of phandle and clock specifier pairs
> +- clock-names           : List of clock input name strings sorted in the same
> +                          order as the clocks property.
> +			  "core", "sclk_unipro_main", "ref" and ref_parent
> +
> +- freq-table-hz		: Array of <min max> operating frequencies stored in the same
> +			  order as the clocks property. If this property is not
> +			  defined or a value in the array is "0" then it is assumed
> +			  that the frequency is set by the parent clock or a
> +			  fixed rate clock source.
> +- pclk-freq-avail-range : specifies available frequency range(min/max) for APB clock
> +- ufs,pwr-attr-mode : specifies mode value for power mode change, possible values are
> +			"FAST", "SLOW", "FAST_auto" and "SLOW_auto"

Anything before the ',' is considered a vendor prefix and 'ufs' is not a 
vendor.

If these are standard UFS properties, then they should be documented in 
a common UFS binding. On the flip side, none of the other UFS bindings 
have needed these properties, so why do you?

> +- ufs,pwr-attr-lane : specifies lane count value for power mode change
> +		      allowed values are 1 or 2
> +- ufs,pwr-attr-gear : specifies gear count value for power mode change
> +		      allowed values are 1 or 2
> +- ufs,pwr-attr-hs-series : specifies HS rate series for power mode change
> +			   can be one of "HS_rate_b" or "HS_rate_a"
> +- ufs,pwr-local-l2-timer : specifies array of local UNIPRO L2 timer values
> +			   3 timers supported
> +			   <FC0ProtectionTimeOutVal,TC0ReplayTimeOutVal, AFC0ReqTimeOutVal>
> +- ufs,pwr-remote-l2-timer : specifies array of remote UNIPRO L2 timer values
> +			   3 timers supported
> +			   <FC0ProtectionTimeOutVal,TC0ReplayTimeOutVal, AFC0ReqTimeOutVal>
> +- ufs-rx-adv-fine-gran-sup_en : specifies support of fine granularity of MPHY,
> +			      this is a boolean property.
> +- ufs-rx-adv-fine-gran-step : specifies granularity steps of MPHY,
> +			      allowed step size is 0 to 3
> +- ufs-rx-adv-min-activate-time-cap : specifies rx advanced minimum activate time of MPHY
> +				     range is 1 to 9
> +- ufs-pa-granularity : specifies Granularity for PA_TActivate and PA_Hibern8Time
> +- ufs-pa-tacctivate : specifies time to wake-up remote M-RX
> +- ufs-pa-hibern8time : specifies minimum time to wait in HIBERN8 state
> +
> +Note: If above properties are not defined it can be assumed that the supply
> +regulators or clocks are always on.
> +
> +Example:
> +	ufshc@0x15570000 {
> +		compatible = "samsung,exynos7-ufs";
> +		reg = <0x15570000 0x100>,
> +		      <0x15570100 0x100>,
> +		      <0x15571000 0x200>,
> +		      <0x15572000 0x300>;
> +		reg-names = "hci", "vs_hci", "unipro", "ufsp";
> +		interrupts = <0 200 0>;
> +
> +		vdd-hba-supply = <&xxx_reg0>;
> +		vdd-hba-fixed-regulator;
> +		vcc-supply = <&xxx_reg1>;
> +		vcc-supply-1p8;
> +		vccq-supply = <&xxx_reg2>;
> +		vccq2-supply = <&xxx_reg3>;
> +		vcc-max-microamp = 500000;
> +		vccq-max-microamp = 200000;
> +		vccq2-max-microamp = 200000;
> +
> +		clocks = <&core 0>, <&ref 0>, <&iface 0>;
> +		clock-names = "core", "sclk_unipro_main", "ref", "ref_parent";
> +		freq-table-hz = <100000000 200000000>, <0 0>, <0 0>, <0 0>;
> +
> +		pclk-freq-avail-range = <70000000 133000000>;
> +
> +		ufs,pwr-attr-mode = "FAST";
> +		ufs,pwr-attr-lane = <2>;
> +		ufs,pwr-attr-gear = <2>;
> +		ufs,pwr-attr-hs-series = "HS_rate_b";
> +		ufs,pwr-local-l2-timer = <8000 28000 20000>;
> +		ufs,pwr-remote-l2-timer = <12000 32000 16000>;
> +		ufs-rx-adv-fine-gran-sup_en = <1>;
> +		ufs-rx-adv-fine-gran-step = <3>;
> +		ufs-rx-adv-min-activate-time-cap = <9>;
> +		ufs-pa-granularity = <6>;
> +		ufs-pa-tacctivate = <6>;
> +		ufs-pa-hibern8time = <20>;
> +	};
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
