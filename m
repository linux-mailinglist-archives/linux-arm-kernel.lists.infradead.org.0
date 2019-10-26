Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E960E593D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 10:24:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jApTXFAgNCcLlxTKTrD/tNWiUc14HlqA+B9BnPFthJI=; b=sjKNHHCqcFJDH6
	tSvgGc+oun5j/yIuoPbr9Z8h5ibf6tpFo8UMrMwBzEcRO8PBqXgp99nP7/eAOoQgANs8alq/JBt1g
	uLUQuEiTT3cPQILpSIMJ+FoIAGOudI0pa65xk0dKDNb926fD7CtRsw6rY7Bu7mBSJ3FAhX53bQPgX
	/4iGmMVXDbc4Q4nyVkkazk+4g9E/uEUOoHHvU3F8KLSUa8RWc+Mwzx5SpLpfHOAj+YbsC0mwZcLw7
	ifz6ZUitVX3/pSicJ9NpKnt7ganaBQawofbhQXvxZXI2eH49DHYMSWmEo792suajkfqSogwtizVrO
	F6X1grZyJWxERCYMX8wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOHNB-0007jn-1P; Sat, 26 Oct 2019 08:24:33 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOHMw-0007ir-Rq
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 08:24:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1572078246;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=i+MQHbSzYrAECD2i9GTqSSZFbktvxXHglJFMdbybaRE=;
 b=AgA5lXfOTrXaK238DqY9gmzIUWqLRwq3W3kQjZX4F/IHDDzv8hkyObCjNBTVu7agBL
 5IFkz4WpR8E0ThAdxgN0qlZn3vku1stov24IcP9ZL2aTaNnQYhttcAXunrBlFsBE0qAu
 W5WUzpXSoyHb9Ml04NujbDGgW89pK98sDDwXw+rocO3NApip+qrNvOYCBY7BWk4wF24s
 ibjCFuNjN0CCSiuDhWL37D1LB5KcfZHhkFae7b8LlhtCM9US0KbqZfxm/S9pm3/wu4k+
 7+bwBxax4s863r1t+7Q82GEFAr4rgHAR+UPwmPR4R5uSYhCqBBpPoPNCU88lTiqd9tZJ
 GVJA==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBp5hRw/qOxWRk4dCysP/lx4uw33QyGXuNISy7Vq++g6sYlqLxXuQw="
X-RZG-CLASS-ID: mo00
Received: from [IPv6:2001:16b8:2694:9c00:1e1:24c4:3f0e:1772]
 by smtp.strato.de (RZmta 44.28.1 AUTH)
 with ESMTPSA id R0b2a8v9Q8Nvkz4
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve secp521r1 with 521 ECDH
 bits, eq. 15360 bits RSA)) (Client did not present a certificate);
 Sat, 26 Oct 2019 10:23:57 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Subject: Re: [PATCH v2 01/11] Documentation: dt: wireless: update wl1251 for
 sdio
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <20191025211338.GA20249@bogus>
Date: Sat, 26 Oct 2019 10:24:05 +0200
Message-Id: <3A15C879-3A17-4FFC-B41E-0B98B63E8F7C@goldelico.com>
References: <cover.1571510481.git.hns@goldelico.com>
 <741828f69eca2a9c9a0a7e80973c91f50cc71f9b.1571510481.git.hns@goldelico.com>
 <20191025211338.GA20249@bogus>
To: Rob Herring <robh@kernel.org>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_012419_490715_456CA880 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5302:0:0:10 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 devicetree@vger.kernel.org, Tony Lindgren <tony@atomide.com>,
 linux-wireless@vger.kernel.org, Kefeng Wang <wangkefeng.wang@huawei.com>,
 Bjorn Helgaas <bhelgaas@google.com>, netdev@vger.kernel.org,
 linux-omap@vger.kernel.org, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Yangtao Li <tiny.windzz@gmail.com>, Kalle Valo <kvalo@codeaurora.org>,
 Petr Mladek <pmladek@suse.com>,
 =?utf-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 John Stultz <john.stultz@linaro.org>, David Sterba <dsterba@suse.com>,
 Thomas Gleixner <tglx@linutronix.de>, letux-kernel@openphoenux.org,
 Allison Randal <allison@lohutok.net>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 kernel@pyra-handheld.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> Am 25.10.2019 um 23:13 schrieb Rob Herring <robh@kernel.org>:
> 
> On Sat, Oct 19, 2019 at 08:41:16PM +0200, H. Nikolaus Schaller wrote:
>> The standard method for sdio devices connected to
>> an sdio interface is to define them as a child node
>> like we can see with wlcore.
>> 
>> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
>> Acked-by: Kalle Valo <kvalo@codeaurora.org>
>> ---
>> .../bindings/net/wireless/ti,wl1251.txt       | 26 +++++++++++++++++++
>> 1 file changed, 26 insertions(+)
>> 
>> diff --git a/Documentation/devicetree/bindings/net/wireless/ti,wl1251.txt b/Documentation/devicetree/bindings/net/wireless/ti,wl1251.txt
>> index bb2fcde6f7ff..88612ff29f2d 100644
>> --- a/Documentation/devicetree/bindings/net/wireless/ti,wl1251.txt
>> +++ b/Documentation/devicetree/bindings/net/wireless/ti,wl1251.txt
>> @@ -35,3 +35,29 @@ Examples:
>> 		ti,power-gpio = <&gpio3 23 GPIO_ACTIVE_HIGH>; /* 87 */
>> 	};
>> };
>> +
>> +&mmc3 {
>> +	vmmc-supply = <&wlan_en>;
>> +
>> +	bus-width = <4>;
>> +	non-removable;
>> +	ti,non-removable;
>> +	cap-power-off-card;
>> +
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&mmc3_pins>;
> 
> None of the above are really relevant to this binding.

Ok, but how and where do we document that they are needed to make both ends of the interface work together?

> 
>> +
>> +	#address-cells = <1>;
>> +	#size-cells = <0>;
>> +
>> +	wlan: wl1251@1 {
> 
> wifi@1

Ok.

> 
>> +		compatible = "ti,wl1251";
>> +
>> +		reg = <1>;
>> +
>> +		interrupt-parent = <&gpio1>;
>> +		interrupts = <21 IRQ_TYPE_LEVEL_HIGH>;	/* GPIO_21 */
>> +
>> +		ti,wl1251-has-eeprom;
>> +	};
>> +};
>> -- 
>> 2.19.1
>> 

BR and thanks,
Nikolaus
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
