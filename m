Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5660D124D83
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 17:28:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fmLJEa74UNM6e0uEMUzdwHvdYPXkwoFEwCDShf8rt6g=; b=kHVTQ7pgo4ovZf
	8wskRQ8uIUyntScArDe5qPjw9kzfuubflFdID8H038emFG5Ny04xHoJ+tx+2JYnPaDw3y3MoHOnDk
	xijFAAN3vYo1HbWPL9+04LfwdD2oCWogugUe5ix0wnFktz1DbzS0OEr5UbhzmS0jfG/w5GfNmlJxw
	uAR/CG96jJgsSvaYLj31p89FUpwlGA3IUgnnk9nT9w4wpjGQFA24NoRe82a0Gz48cr0GjmkA+IJtH
	9hjpQ6+G0753oniKrfdW5wgVCG+VY1S9xbUnNSqLYHnAB+L04pshneiGd2MorP48zKVsPYSNzXocx
	hx2A3QSqk6riB2SQUclw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihcBC-00024Q-Iz; Wed, 18 Dec 2019 16:28:06 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihc7P-0006ky-8P
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 16:24:14 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: X33QiihNNKs7F4+foQ29/DEejNCjDaoL/50JbvcYpgriX0FfPuvQ4aNEOUJvvDVYGh7UvOaPnI
 A5Ed500AE83W4JHdeBo82W/xHdxvEEkyyg84tCbqAJo0OvlSuG+TKQKN+WwW/44Iu8Cv6n2FEC
 vAplqMRAEYBwB/CkMy+RKtbP0LfS94ssnN2fdodsMZc//nsOVIY9SDpNtNjNCoRb40r/XyOeM0
 EhiGt3WetmpDLTrUuu8Beo399akue2Toal8JkeDLFOD1Zc1IEoSEuaAJxh/ls0JSs/yAnMe5XI
 kU0=
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="58926949"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 Dec 2019 09:24:01 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 18 Dec 2019 09:24:00 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 18 Dec 2019 09:23:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MW8bfEy9kGyQhdttVa1fINRKOx63agWETMwVXkXfGAsyVpM7ZC4rHngrSKjZToYc4VynT8PX2lFozcT8ygf1A6vN49+MqjOU+z0iajQrTnYAg8ku5xWFa/s1rgwUOd0iG8ye1tZ4TYZA1Udzx5He8pGWwZHIG38vchNt13ETKFjQkltuo5iDr1WmMwr/aAknKlk/BMPclOtF8V8RC4fnb3lCnHTNGSokuBYt636pgiWMBImrwAY23LVdUX+u6MHvZauVoYm6JxtW+NL+J8d/HEkaZuAfMLk4JH5fcdRAOjRc5fF06m4OL/M8eAoHAFJElt0K8WB+bKbCj/nIjwVA5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w6iiaTiNAGwMTwukhS+6u4KwtuaSg3VgDPHNQ5aNYQM=;
 b=ibh4hSZ+b2eInPftmfsxf0mpTYwpCITMVAZxjf98SWbT85TQ3MEuvLtrZ2HNu+W7J7L7OiauWPFzVI1ehvcr0XmQNct9+WJXQJeIiSUdy7VMXQtdqT3Yehzjk8Y65kRcCZ2xx+wWCOFyYIjhKE44sVxWUarHRZ0Z2eE73c0IuAjYsMSrhG4JsCwfxr4dFcLkIP5eO/x4BFJCs5LeOPzI0yIBvD8L9gXLCzW1WKzLOJ7yAMdSxlWKAMOOgLokHXHemchSYmPJjOqiyfRWdxEhQhkV4wHBHnpCzTEKNYLY6kllSB2V0kvtg4E9ExvX2Wh8J1abtW95QT1OMxidpOlghQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w6iiaTiNAGwMTwukhS+6u4KwtuaSg3VgDPHNQ5aNYQM=;
 b=kVX7lYSOB9EOUh6bRuthkTkJWCmXkHr6fvzGxMOS8CWUF4LrGN2+qVqq6s0rojzogupEdpGpdyAyHfPplx+wqa7pjU77K/u6tY+bv2AhWFd1fpMF5Z8078tTpA2GWJX/0dsXEnWbwIHxJ0HQCTHrJ+LHDcUVJtteJFDJxP4RVNc=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1913.namprd11.prod.outlook.com (10.175.87.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14; Wed, 18 Dec 2019 16:23:59 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1%12]) with mapi id 15.20.2559.012; Wed, 18 Dec
 2019 16:23:59 +0000
From: <Eugen.Hristev@microchip.com>
To: <jic23@kernel.org>, <robh+dt@kernel.org>, <alexandre.belloni@bootlin.com>
Subject: [PATCH 01/10] iio: adc: at91-sama5d2_adc: update for other trigger
 usage
Thread-Topic: [PATCH 01/10] iio: adc: at91-sama5d2_adc: update for other
 trigger usage
Thread-Index: AQHVtb+MG4wZCflqBkexX/EL1yry8g==
Date: Wed, 18 Dec 2019 16:23:58 +0000
Message-ID: <1576686157-11939-2-git-send-email-eugen.hristev@microchip.com>
References: <1576686157-11939-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1576686157-11939-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a5c95de6-49ca-41c9-dc03-08d783d6afc5
x-ms-traffictypediagnostic: DM5PR11MB1913:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB19139DD6195BE81220FDB8D5E8530@DM5PR11MB1913.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0255DF69B9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(346002)(376002)(136003)(396003)(199004)(189003)(52314003)(2616005)(66556008)(316002)(30864003)(107886003)(8676002)(71200400001)(8936002)(66476007)(26005)(6506007)(2906002)(64756008)(66446008)(66946007)(81156014)(76116006)(81166006)(5660300002)(478600001)(36756003)(54906003)(186003)(4326008)(86362001)(6512007)(110136005)(91956017)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1913;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: daJiZ+OpQoiN0coafOld1xWmoB8HdZdm1YhzzNz5PLRBU9q2aunekoHUWme5quCu6Ft6mysJQ5B3aRTVilXgdchaTsb/qPceHQxcencP89eMyE730T/c5edfnpesy7N4n2WAdcjtFhNHj5lB/NNP5iKzHwVq7Px9WoaBMAT9k6WPSBZWqx8cUCgYVzY+Wn1hH7xMLBkWa5HBx8AOJmVLlBOrlpAapGrARVf7QzJMV95O23S0zOKWnJWDecRsqW9gUsF90F2K4UvPhM+H2u733aDIeUKhduVTRiDu90PJwWwpmv6OrJrhoKylaKPIIxaPv/yAOouwq8BsTBvIz2oLQx4uTL1Porpzpl5jRiYMM+RGA+5greMoJZ6gj4KSBKFh0CXtj9rGAxOSirqmR+xoj13Dhd5+csy/8LaBRTdyqNX18OvbfUTPpel9BjY/FtKuHp3kZ3rBtWJtodB4H8jf3CdEb8s/4ytBmpvVXD3KRegVZuWzwR2Oa/JebtuFhiDH
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a5c95de6-49ca-41c9-dc03-08d783d6afc5
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2019 16:23:58.4137 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5Lu40e0ykQPQoiwkOd+scIXNydcVr986/hByzjzip/Z/9WJQKWxGjiSrLnqk9uyHoBRqV+nVXSSvw7TOtDYSBrBsaDPUXfPrZ5rmEoX0bVg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1913
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_082411_389702_13B8C300 
X-CRM114-Status: GOOD (  20.31  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org, a.zummo@towertech.it,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, Eugen.Hristev@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

This change will allow the at91-sama5d2_adc driver to use other triggers
than it's own.
In particular, tested with the sysfs trigger.
To be able to achieve this functionality, some changes were required:
1) Do not enable/disable channels when enabling/disabling the trigger.
This is because the trigger is enabled/disabled only for our trigger
(obviously). We need channels enabled/disabled regardless of what trigger is
being used.
2) Cope with DMA : DMA cannot be used when using another type of trigger.
Other triggers work through pollfunc, so we get polled anyway on every trigger.
Thus we have to obtain data at every trigger.
3) When to start conversion? The usual pollfunc (store time from subsystem)
is replaced with specific at91 code, that will start the software conversion
on the poll action(if it's not our trigger).
4) When is the conversion done ? Usually it should be done at EOC (end of
channel) interrupt. But we start the conversion in pollfunc. So, in the handler
for this pollfunc, check if data is ready. If not ready, cannot busywait, so,
start the workq to get the data later.
5) Buffer config: we need to setup buffer regardless of our own device's
trigger. We may get one attached later.
6) IRQ handling: we use our own device IRQ only if it's our own trigger
and we do not use DMA . If we use DMA, we use the DMA controller's IRQ.
7) Touchscreen workq: the workq is now also used with other triggers. So, move
this from the touchscreen state struct to the at91_adc_state.
8) Timestamp: the timestamp is kept in the pollfunc. However if in the handler
we start a workq, the timestamp is no longer accessible. Copy it to our state
struct.

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 drivers/iio/adc/at91-sama5d2_adc.c | 212 ++++++++++++++++++++++---------------
 1 file changed, 127 insertions(+), 85 deletions(-)

diff --git a/drivers/iio/adc/at91-sama5d2_adc.c b/drivers/iio/adc/at91-sama5d2_adc.c
index e1850f3..c575970 100644
--- a/drivers/iio/adc/at91-sama5d2_adc.c
+++ b/drivers/iio/adc/at91-sama5d2_adc.c
@@ -378,7 +378,6 @@ struct at91_adc_touch {
 	bool				touching;
 	u16				x_pos;
 	unsigned long			channels_bitmask;
-	struct work_struct		workq;
 };
 
 struct at91_adc_state {
@@ -405,6 +404,8 @@ struct at91_adc_state {
 	 * sysfs.
 	 */
 	struct mutex			lock;
+	struct work_struct		workq;
+	s64				timestamp;
 };
 
 static const struct at91_adc_trigger at91_adc_trigger_list[] = {
@@ -710,7 +711,6 @@ static int at91_adc_configure_trigger(struct iio_trigger *trig, bool state)
 	struct iio_dev *indio = iio_trigger_get_drvdata(trig);
 	struct at91_adc_state *st = iio_priv(indio);
 	u32 status = at91_adc_readl(st, AT91_SAMA5D2_TRGR);
-	u8 bit;
 
 	/* clear TRGMOD */
 	status &= ~AT91_SAMA5D2_TRGR_TRGMOD_MASK;
@@ -721,35 +721,6 @@ static int at91_adc_configure_trigger(struct iio_trigger *trig, bool state)
 	/* set/unset hw trigger */
 	at91_adc_writel(st, AT91_SAMA5D2_TRGR, status);
 
-	for_each_set_bit(bit, indio->active_scan_mask, indio->num_channels) {
-		struct iio_chan_spec const *chan = at91_adc_chan_get(indio, bit);
-
-		if (!chan)
-			continue;
-		/* these channel types cannot be handled by this trigger */
-		if (chan->type == IIO_POSITIONRELATIVE ||
-		    chan->type == IIO_PRESSURE)
-			continue;
-
-		if (state) {
-			at91_adc_writel(st, AT91_SAMA5D2_CHER,
-					BIT(chan->channel));
-			/* enable irq only if not using DMA */
-			if (!st->dma_st.dma_chan) {
-				at91_adc_writel(st, AT91_SAMA5D2_IER,
-						BIT(chan->channel));
-			}
-		} else {
-			/* disable irq only if not using DMA */
-			if (!st->dma_st.dma_chan) {
-				at91_adc_writel(st, AT91_SAMA5D2_IDR,
-						BIT(chan->channel));
-			}
-			at91_adc_writel(st, AT91_SAMA5D2_CHDR,
-					BIT(chan->channel));
-		}
-	}
-
 	return 0;
 }
 
@@ -873,69 +844,90 @@ static int at91_adc_dma_start(struct iio_dev *indio_dev)
 	return 0;
 }
 
-static int at91_adc_buffer_postenable(struct iio_dev *indio_dev)
+#define AT91_ADC_BUFFER_CHECK_USE_IRQ(use_irq)  { \
+	use_irq = true; \
+	/* if using DMA, we do not use our own IRQ (we use DMA-controller) */ \
+	if (st->dma_st.dma_chan) \
+		use_irq = false; \
+	/* if the trigger is not ours, then it has its own IRQ */ \
+	if (iio_trigger_validate_own_device(indio->trig, indio)) \
+		use_irq = false; \
+	}
+
+static int at91_adc_buffer_postenable(struct iio_dev *indio)
 {
 	int ret;
-	struct at91_adc_state *st = iio_priv(indio_dev);
+	u8 bit;
+	bool use_irq;
+	struct at91_adc_state *st = iio_priv(indio);
 
 	/* check if we are enabling triggered buffer or the touchscreen */
-	if (bitmap_subset(indio_dev->active_scan_mask,
+	if (bitmap_subset(indio->active_scan_mask,
 			  &st->touch_st.channels_bitmask,
 			  AT91_SAMA5D2_MAX_CHAN_IDX + 1)) {
 		/* touchscreen enabling */
 		return at91_adc_configure_touch(st, true);
 	}
 	/* if we are not in triggered mode, we cannot enable the buffer. */
-	if (!(indio_dev->currentmode & INDIO_ALL_TRIGGERED_MODES))
+	if (!(indio->currentmode & INDIO_ALL_TRIGGERED_MODES))
 		return -EINVAL;
 
 	/* we continue with the triggered buffer */
-	ret = at91_adc_dma_start(indio_dev);
+	ret = at91_adc_dma_start(indio);
 	if (ret) {
-		dev_err(&indio_dev->dev, "buffer postenable failed\n");
+		dev_err(&indio->dev, "buffer postenable failed\n");
+		iio_triggered_buffer_predisable(indio);
 		return ret;
 	}
 
-	return iio_triggered_buffer_postenable(indio_dev);
+	AT91_ADC_BUFFER_CHECK_USE_IRQ(use_irq);
+
+	for_each_set_bit(bit, indio->active_scan_mask, indio->num_channels) {
+		struct iio_chan_spec const *chan = at91_adc_chan_get(indio, bit);
+
+		if (!chan)
+			continue;
+		/* these channel types cannot be handled by this trigger */
+		if (chan->type == IIO_POSITIONRELATIVE ||
+		    chan->type == IIO_PRESSURE)
+			continue;
+
+		at91_adc_writel(st, AT91_SAMA5D2_CHER, BIT(chan->channel));
+		if (use_irq) {
+			at91_adc_writel(st, AT91_SAMA5D2_IER,
+					BIT(chan->channel));
+		}
+	}
+	return iio_triggered_buffer_postenable(indio);
 }
 
-static int at91_adc_buffer_predisable(struct iio_dev *indio_dev)
+static int at91_adc_buffer_predisable(struct iio_dev *indio)
 {
-	struct at91_adc_state *st = iio_priv(indio_dev);
+	struct at91_adc_state *st = iio_priv(indio);
 	int ret;
 	u8 bit;
+	bool use_irq;
 
 	/* check if we are disabling triggered buffer or the touchscreen */
-	if (bitmap_subset(indio_dev->active_scan_mask,
+	if (bitmap_subset(indio->active_scan_mask,
 			  &st->touch_st.channels_bitmask,
 			  AT91_SAMA5D2_MAX_CHAN_IDX + 1)) {
 		/* touchscreen disable */
 		return at91_adc_configure_touch(st, false);
 	}
 	/* if we are not in triggered mode, nothing to do here */
-	if (!(indio_dev->currentmode & INDIO_ALL_TRIGGERED_MODES))
+	if (!(indio->currentmode & INDIO_ALL_TRIGGERED_MODES))
 		return -EINVAL;
 
-	/* continue with the triggered buffer */
-	ret = iio_triggered_buffer_predisable(indio_dev);
-	if (ret < 0)
-		dev_err(&indio_dev->dev, "buffer predisable failed\n");
-
-	if (!st->dma_st.dma_chan)
-		return ret;
-
-	/* if we are using DMA we must clear registers and end DMA */
-	dmaengine_terminate_sync(st->dma_st.dma_chan);
-
+	AT91_ADC_BUFFER_CHECK_USE_IRQ(use_irq);
 	/*
-	 * For each enabled channel we must read the last converted value
+	 * For each enable channel we must disable it in hardware.
+	 * In the case of DMA, we must read the last converted value
 	 * to clear EOC status and not get a possible interrupt later.
-	 * This value is being read by DMA from LCDR anyway
+	 * This value is being read by DMA from LCDR anyway, so it's not lost.
 	 */
-	for_each_set_bit(bit, indio_dev->active_scan_mask,
-			 indio_dev->num_channels) {
-		struct iio_chan_spec const *chan =
-					at91_adc_chan_get(indio_dev, bit);
+	for_each_set_bit(bit, indio->active_scan_mask, indio->num_channels) {
+		struct iio_chan_spec const *chan = at91_adc_chan_get(indio, bit);
 
 		if (!chan)
 			continue;
@@ -943,12 +935,29 @@ static int at91_adc_buffer_predisable(struct iio_dev *indio_dev)
 		if (chan->type == IIO_POSITIONRELATIVE ||
 		    chan->type == IIO_PRESSURE)
 			continue;
+
+		if (use_irq) {
+			at91_adc_writel(st, AT91_SAMA5D2_IDR,
+					BIT(chan->channel));
+		}
+		at91_adc_writel(st, AT91_SAMA5D2_CHDR, BIT(chan->channel));
+
 		if (st->dma_st.dma_chan)
 			at91_adc_readl(st, chan->address);
 	}
 
 	/* read overflow register to clear possible overflow status */
 	at91_adc_readl(st, AT91_SAMA5D2_OVER);
+
+	/* continue with the triggered buffer */
+	ret = iio_triggered_buffer_predisable(indio);
+	if (ret < 0)
+		dev_err(&indio->dev, "buffer predisable failed\n");
+
+	/* if we are using DMA we must clear registers and end DMA */
+	if (st->dma_st.dma_chan)
+		dmaengine_terminate_sync(st->dma_st.dma_chan);
+
 	return ret;
 }
 
@@ -993,8 +1002,8 @@ static int at91_adc_trigger_init(struct iio_dev *indio)
 	return 0;
 }
 
-static void at91_adc_trigger_handler_nodma(struct iio_dev *indio_dev,
-					   struct iio_poll_func *pf)
+static void at91_adc_read_and_push_channels(struct iio_dev *indio_dev,
+					    s64 timestamp)
 {
 	struct at91_adc_state *st = iio_priv(indio_dev);
 	int i = 0;
@@ -1028,11 +1037,30 @@ static void at91_adc_trigger_handler_nodma(struct iio_dev *indio_dev,
 		}
 		i++;
 	}
-	iio_push_to_buffers_with_timestamp(indio_dev, st->buffer,
-					   pf->timestamp);
+	iio_push_to_buffers_with_timestamp(indio_dev, st->buffer, timestamp);
+}
+
+static int at91_adc_trigger_handler_nodma(struct iio_dev *indio_dev,
+					  struct iio_poll_func *pf)
+{
+	struct at91_adc_state *st = iio_priv(indio_dev);
+
+	/*
+	 * Check if the conversion is ready. If not, schedule a work to
+	 * check again later.
+	 */
+	if (!(at91_adc_readl(st, AT91_SAMA5D2_ISR) & GENMASK(11, 0))) {
+		schedule_work(&st->workq);
+		return -EINPROGRESS;
+	}
+
+	/* we have data, so let's extract and push it */
+	at91_adc_read_and_push_channels(indio_dev, pf->timestamp);
+
+	return 0;
 }
 
-static void at91_adc_trigger_handler_dma(struct iio_dev *indio_dev)
+static int at91_adc_trigger_handler_dma(struct iio_dev *indio_dev)
 {
 	struct at91_adc_state *st = iio_priv(indio_dev);
 	int transferred_len = at91_adc_dma_size_done(st);
@@ -1079,6 +1107,8 @@ static void at91_adc_trigger_handler_dma(struct iio_dev *indio_dev)
 	}
 	/* adjust saved time for next transfer handling */
 	st->dma_st.dma_ts = iio_get_time_ns(indio_dev);
+
+	return 0;
 }
 
 static irqreturn_t at91_adc_trigger_handler(int irq, void *p)
@@ -1086,33 +1116,41 @@ static irqreturn_t at91_adc_trigger_handler(int irq, void *p)
 	struct iio_poll_func *pf = p;
 	struct iio_dev *indio_dev = pf->indio_dev;
 	struct at91_adc_state *st = iio_priv(indio_dev);
+	int ret;
 
+	st->timestamp = pf->timestamp;
 	if (st->dma_st.dma_chan)
-		at91_adc_trigger_handler_dma(indio_dev);
+		ret = at91_adc_trigger_handler_dma(indio_dev);
 	else
-		at91_adc_trigger_handler_nodma(indio_dev, pf);
+		ret = at91_adc_trigger_handler_nodma(indio_dev, pf);
 
-	iio_trigger_notify_done(indio_dev->trig);
+	if (!ret)
+		iio_trigger_notify_done(indio_dev->trig);
 
 	return IRQ_HANDLED;
 }
 
-static int at91_adc_buffer_init(struct iio_dev *indio)
+irqreturn_t at91_adc_pollfunc(int irq, void *p)
 {
-	struct at91_adc_state *st = iio_priv(indio);
+	struct iio_poll_func *pf = p;
+	struct iio_dev *indio_dev = pf->indio_dev;
+	struct at91_adc_state *st = iio_priv(indio_dev);
 
-	if (st->selected_trig->hw_trig) {
-		return devm_iio_triggered_buffer_setup(&indio->dev, indio,
-			&iio_pollfunc_store_time,
-			&at91_adc_trigger_handler, &at91_buffer_setup_ops);
-	}
 	/*
-	 * we need to prepare the buffer ops in case we will get
-	 * another buffer attached (like a callback buffer for the touchscreen)
+	 * If it's not our trigger, start a conversion now, as we are
+	 * actually polling the trigger now.
 	 */
-	indio->setup_ops = &at91_buffer_setup_ops;
+	if (iio_trigger_validate_own_device(indio_dev->trig, indio_dev))
+		at91_adc_writel(st, AT91_SAMA5D2_CR, AT91_SAMA5D2_CR_START);
 
-	return 0;
+	return iio_pollfunc_store_time(irq, p);
+}
+
+static int at91_adc_buffer_init(struct iio_dev *indio)
+{
+	return devm_iio_triggered_buffer_setup(&indio->dev, indio,
+		&at91_adc_pollfunc,
+		&at91_adc_trigger_handler, &at91_buffer_setup_ops);
 }
 
 static unsigned at91_adc_startup_time(unsigned startup_time_min,
@@ -1195,7 +1233,7 @@ static void at91_adc_touch_data_handler(struct iio_dev *indio_dev)
 	 * from our IRQ context. Which is something we better avoid.
 	 * Let's schedule it after our IRQ is completed.
 	 */
-	schedule_work(&st->touch_st.workq);
+	schedule_work(&st->workq);
 }
 
 static void at91_adc_pen_detect_interrupt(struct at91_adc_state *st)
@@ -1228,13 +1266,17 @@ static void at91_adc_no_pen_detect_interrupt(struct at91_adc_state *st)
 
 static void at91_adc_workq_handler(struct work_struct *workq)
 {
-	struct at91_adc_touch *touch_st = container_of(workq,
-					struct at91_adc_touch, workq);
-	struct at91_adc_state *st = container_of(touch_st,
-					struct at91_adc_state, touch_st);
+	struct at91_adc_state *st = container_of(workq,
+					struct at91_adc_state, workq);
 	struct iio_dev *indio_dev = iio_priv_to_dev(st);
 
-	iio_push_to_buffers(indio_dev, st->buffer);
+	if ((indio_dev->currentmode & INDIO_ALL_TRIGGERED_MODES) &&
+	    iio_trigger_validate_own_device(indio_dev->trig, indio_dev)) {
+		at91_adc_read_and_push_channels(indio_dev, st->timestamp);
+		iio_trigger_notify_done(indio_dev->trig);
+	} else {
+		iio_push_to_buffers(indio_dev, st->buffer);
+	}
 }
 
 static irqreturn_t at91_adc_interrupt(int irq, void *private)
@@ -1711,7 +1753,7 @@ static int at91_adc_probe(struct platform_device *pdev)
 
 	init_waitqueue_head(&st->wq_data_available);
 	mutex_init(&st->lock);
-	INIT_WORK(&st->touch_st.workq, at91_adc_workq_handler);
+	INIT_WORK(&st->workq, at91_adc_workq_handler);
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	if (!res)
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
