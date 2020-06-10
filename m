Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C76E1F4EF4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 09:34:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1GtSO1pKmpRNQu/bs/xE+Il18lG/p8wIUvZ+A02bKkg=; b=iSuhnuU10RaBj4ivoZXRdNG1RN
	h1zmevFRKXN1cmVMqayL9ynp0Vko+ouz9XWbSKdBTMzyIkgsbbgANCB4ir7tlp/MR0am9n5uQ9yUw
	dBUPnUoe/xuEJ9kSsGeLe34FfKvZSz/CvN6z43oeCKRi2VQ9XSZEiaIMPzyNVcjA5zwA6vZmb6OBg
	Ea+TMZJ/AAmscnOVPtf53hbL/UoxS/5c5jrYBf6J1EUH6m5j4faCRvoAzHA4MsmO7w3A+EUNY99Pw
	H8Kyzdrg8/wBJ+k2oleIISG4IMQVPtYtgGqP/oC65aQTIrEf7AJchSfE/NreIZFsYPMWQP1NoGgRw
	7FxC7UFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jivFU-0007vw-Cm; Wed, 10 Jun 2020 07:34:12 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jivFM-0007vO-OO
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 07:34:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1591774444; x=1623310444;
 h=references:from:to:cc:subject:in-reply-to:date:
 message-id:mime-version;
 bh=H0mGDxnEZFg00erzET87dowCc530Z3JfzOW8o5EaPg0=;
 b=pJoZi4htaIgh6XAcON5G1C+YLah4AiqN0vGtVj6aB89XhjslASisT3Ix
 eKx5KHBca+6LmUVR/O55TQD+7vFEP5lleCmRoOJo8zFbjHs87TlpMKrlh
 osfYFz6PjmCO2aBBA883VMvDV+L8MALxdbL05Lwa+TagnnbzPvbfNctYU
 7cg8gfCHlWFreg1MD320dIk3AqLnBftzTTG0fImDJxlrQi9T1JEX1a7aa
 LxkCFQ11olwFnyTQlGPnlYc5J2honlL1Nz07TE1HlMFSlmBuES9e2ZlUF
 jR7RQ/RnO/8HwZLX7cK91gFFh5lVdWKH59rptbZRxx27J3dFa7DyHhAp7 A==;
IronPort-SDR: tRCMCf0cC57dobeWM9CJUIUQEBcjnDkCmmimitTGVaen/LOuUjJfmwx/3UvyiNCGvpEpxrEMxV
 i+fTQD7Jj/YMoq28YKgrurZQZG8LWNIVhLHfRwhwWyWNu6adaMHKRvFsLsAstV2A6PXoZMQ4yW
 PmU+Zqxib8XRTAJ3u+e2Kizd0AyEww1SRjyhWZPcKRaZ19R0Eqqn92I2+UC40fPzDrUnvmV0UP
 0N/+33BfpjbARGiOuL7HUqz26a0R+IK+AMczYoJ/CyhlHXm01hRpjd3axPeR0ZPhHVA/vMn75m
 0HI=
X-IronPort-AV: E=Sophos;i="5.73,495,1583218800"; d="scan'208";a="82940802"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Jun 2020 00:34:01 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Wed, 10 Jun 2020 00:34:01 -0700
Received: from soft-dev15.microsemi.net.microchip.com (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1847.3
 via Frontend Transport; Wed, 10 Jun 2020 00:33:59 -0700
References: <20200609072828.9088-1-lars.povlsen@microchip.com>
 <5f006733-52b6-e003-5db3-2ff16596918c@roeck-us.net>
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH v2 0/3] hwmon: Adding support for Microchip Sparx5 SoC
In-Reply-To: <5f006733-52b6-e003-5db3-2ff16596918c@roeck-us.net>
Date: Wed, 10 Jun 2020 09:33:58 +0200
Message-ID: <87eeqnidcp.fsf@soft-dev15.microsemi.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_003404_831433_00578F76 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.232.147.91 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Jean Delvare <jdelvare@suse.com>, linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Lars Povlsen <lars.povlsen@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Guenter Roeck writes:

> On 6/9/20 12:28 AM, Lars Povlsen wrote:
>> This is an add-on series to the main SoC Sparx5 series
>> (Message-ID: <20200608123024.5330-1-lars.povlsen@microchip.com>)
>>
>> Changes in v2:
>> - Changes in driver as per review comments
>>
>
> And you expect the reviewers/maintainers to remember what those were ?
>

Well, I can see that this might not be the case. I'll be a little more
specific next time. Sorry about that.

For the record, it was:

- Removed unnecessary #includes
- Statement reordering in s5_read()
- Replaced EINVAL with EIO
- Add 'break' in default: case statement.
- Removed extra ()
- Removed superfluous initialization

I got some more comments from Jonathan Cameron
<Jonathan.Cameron@huawei.com>, so there will be another round.

Thanks,

---Lars

>> Lars Povlsen (3):
>>   dt-bindings: hwmon: Add Sparx5 temperature sensor
>>   arm64: dts: sparx5: Add hwmon temperature sensor
>>   hwmon: sparx5: Add Sparx5 SoC temperature driver
>>
>>  .../bindings/hwmon/microchip,sparx5-temp.yaml |  39 +++++
>>  arch/arm64/boot/dts/microchip/sparx5.dtsi     |   6 +
>>  drivers/hwmon/Kconfig                         |  10 ++
>>  drivers/hwmon/Makefile                        |   2 +-
>>  drivers/hwmon/sparx5-temp.c                   | 152 ++++++++++++++++++
>>  5 files changed, 208 insertions(+), 1 deletion(-)
>>  create mode 100644 Documentation/devicetree/bindings/hwmon/microchip,sparx5-temp.yaml
>>  create mode 100644 drivers/hwmon/sparx5-temp.c
>>
>> --
>> 2.27.0
>>

-- 
Lars Povlsen,
Microchip

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
