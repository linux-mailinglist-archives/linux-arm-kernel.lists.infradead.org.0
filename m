Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B685177BA1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 17:11:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZLcuax+CvVDXP4BkSWMSo64CaPZKVAhVhIyfQ3KP/mo=; b=pMFlZQVNcgPq8U
	x1bkaVhJLxvPMJ5nHDEYQx8NHTBveC8S/CWIOHzAo29Ov8DcjLsOrT/u/Uv3aDlz0YI/hIAxDztxA
	8n1cpfWFhrJ3KxTNdj4uMpp5S5ZtoRBqYgYKMT6bhH/KVWxLUhGSUYQ9CjdT1Y1nXQuv3i5vruZL/
	cT4ucut1xO/FRWgl6B1SeglMECxSH/mOXMPcBtxHoNhQa1dSo/pg2J6S4ikoc7fK+UqRnH5iE9Cl4
	VqSyu7e9DWtAfDpE4E1uYagRyMgKclKwLCWcoQ8IJ1FaIOqoC+UywM2T356lsskRQLoGws+pxU3AL
	1Rg64gfZYOD3A135j0BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9A8s-0007Re-23; Tue, 03 Mar 2020 16:11:34 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9A8k-0007Qc-0n; Tue, 03 Mar 2020 16:11:27 +0000
Received: by mail-wr1-x443.google.com with SMTP id v4so5056285wrs.8;
 Tue, 03 Mar 2020 08:11:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=+SzpTWQT3Ru6kg4f8Uj442Z+FLl17Fjj2BOSrwBP2tA=;
 b=JvMOlYXWMq0Xw1p+AMSLlLQea6qJWe/imSAwECDX0rMvjouX6tXhiTzi6l9PrEOKZH
 mdkAi2TI7TwqRHeOSAeN4q9w+Mfvk/US67aBFw14KS0w9HiygV3cRD7xJ9z5VRS3PXBr
 1jaA30b2hzUR0OE/6lXyX2IVnqwBLNuda+OJC4XozRGsax9OtpUhBPfs8c9xgxYWsIqA
 VuTKw5sjUPmNkpaU06pgtELNoVNP1YKm/LPYmN5gz9+5lVtFmcvVqJxFf5crA986u4HC
 RRz7ZOhDNXYl+enXW+x20gh545dfWhHil10Ywy6BIlDvrtAIwOqafQWOWpl3U18e7JhH
 mXOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+SzpTWQT3Ru6kg4f8Uj442Z+FLl17Fjj2BOSrwBP2tA=;
 b=ecnkHYaO4j8qHi6bx9JTJ1QqmvvNPv9erRwBd0rFoz/1mUBGRUThFHc4xUw+GBB+h+
 /wVvEXB/nHaUDVgj1DbcRchxxXFwNtFllCjFmR+jgLZOdoSMXwyX6ofRbUxuK5AmU+ZJ
 6FcNx5Gizo907QttVT7wIfS7tq2Dx6RQKY+7F6RGmO6ucoIHIy6MjwCh6xMqSDABP5eZ
 CYXNThcnrP7j6D2S0SYWpPxDrBrEJM20Sd0hM65yIt0xO0IXX116PAsGbjiUNvU6LIL0
 ProxZYDDCeECCvPGCVx+jdOeKnHB9V5DJYcPuOYLyZOpzi5ukajB6+DC23xd3uMcc/ib
 o4Vg==
X-Gm-Message-State: ANhLgQ33BxgBxT97KLJyllUd3pfWTxsq80OC/M2lh6gLAdY+OMP4jVHi
 jsjsW553jFVNN6lqu5dhWNE=
X-Google-Smtp-Source: ADFU+vsxfAPm/x+IV3Wuxbup+iavPIjBhYZz58QDdng5ipw9V1mPOt2TMllv6EsxNgKf3ODQBhebjg==
X-Received: by 2002:a5d:5743:: with SMTP id q3mr6227104wrw.135.1583251884664; 
 Tue, 03 Mar 2020 08:11:24 -0800 (PST)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id s5sm32669295wru.39.2020.03.03.08.11.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 03 Mar 2020 08:11:23 -0800 (PST)
Subject: Re: [PATCH v3 2/2] arm64: dts: rockchip: Add initial support for
 Pinebook Pro
From: Johan Jonker <jbx6244@gmail.com>
To: Tobias Schramm <t.schramm@manjaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>
References: <20200229144817.355678-1-t.schramm@manjaro.org>
 <20200229144817.355678-3-t.schramm@manjaro.org>
 <bcc2c8d4-a2cd-58c1-89af-e42439f8f344@gmail.com>
Message-ID: <850e60b0-c260-c184-839f-93b064388e32@gmail.com>
Date: Tue, 3 Mar 2020 17:11:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <bcc2c8d4-a2cd-58c1-89af-e42439f8f344@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_081126_064326_A0D726BD 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Alexis Ballier <aballier@gentoo.org>,
 Katsuhiro Suzuki <katsuhiro@katsuster.net>, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>, Markus Reichl <m.reichl@fivetechno.de>,
 linux-rockchip@lists.infradead.org, Matthias Kaehlcke <mka@chromium.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Nick Xie <nick@khadas.com>,
 Vivek Unune <npcomplete13@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Add more reg = <..>

On 3/3/20 4:37 PM, Johan Jonker wrote:
> Hi Tobias,
> 
> Some minor style issues.
> This dts file contains a partition node.
> Question for the maintainers (Heiko?):
> Should that partition be included or not?

[..]

>> +&i2c4 {
>> +	i2c-scl-falling-time-ns = <20>;
>> +	i2c-scl-rising-time-ns = <600>;
>> +	status = "okay";
>> +
>> +	fusb0: fusb30x@22 {
>> +		compatible = "fcs,fusb302";
>> +		reg = <0x22>;
>> +		fcs,int_n = <&gpio1 RK_PA2 GPIO_ACTIVE_HIGH>;
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&fusb0_int_gpio>;
> 
>> +		status = "okay";
> 
> Remove or else status below.
> New nodes are already okay I think.
> If insure check compiled flat dts output to see if it is still there.
> 
>> +		vbus-supply = <&vbus_typec>;
>> +
>> +		connector {
>> +			compatible = "usb-c-connector";
>> +			label = "USB-C";
>> +			op-sink-microwatt = <1000000>;
>> +			power-role = "dual";
>> +			sink-pdos =
>> +				<PDO_FIXED(5000, 2500, PDO_FIXED_USB_COMM)>;
>> +			source-pdos =
>> +				<PDO_FIXED(5000, 1400, PDO_FIXED_USB_COMM)>;
>> +			try-power-role = "sink";
>> +
>> +			ports {
>> +				#address-cells = <1>;
>> +				#size-cells = <0>;
>> +
>> +				port@0 {

reg = <0>;

>> +					usbc_hs: endpoint {
>> +						remote-endpoint =
>> +							<&u2phy0_typec_hs>;
>> +					};
>> +				};
>> +
>> +				port@1 {

reg = <1>;

>> +					usbc_ss: endpoint {
>> +						remote-endpoint =
>> +							<&tcphy0_typec_ss>;
>> +					};
>> +				};
>> +
>> +				port@2 {

reg = <2>;

>> +					usbc_dp: endpoint {
>> +						remote-endpoint =
>> +							<&tcphy0_typec_dp>;
>> +					};
>> +				};
>> +			};
>> +		};
>> +	};
>> +};


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
