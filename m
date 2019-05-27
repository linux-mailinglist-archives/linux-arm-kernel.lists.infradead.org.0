Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 938FA2B45D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 14:06:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NLHL6rxjWg9MwT2aszanAoU2+pFTBEUSX+BWQ82f3Ys=; b=ZpRAQPMv1cVvSj
	65KKa2rkK76HhOJbGmU0Bln8tWE0pQ6/wWtx5vLyDQGV65xCi7dWAzaQLykGcEzabB3Bm6zDACsks
	vj37IyTPMDi+pE/phnj06oopzSq0TIP0ERbSjRm4wCe990OMdctv7tnw+Fkvnqq5pJzsIRs8KW3fM
	E3jB+JrhTh7gTYNprpuge/K+SJPGKwsEgZ6C9q5T8ZEsBj1xe8Y5r2Yix4xTMOIMjzjXgKflJnN+d
	i1iH7LMOqFV3suDeSK1e3qCIS3rhXSrLZ1fIZno4KhHjcGQSWT8kYDSrjHsYOs/7EfSnDaC6x5wDK
	g+EgdePE4vSPvv/GZ37g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVEOp-0008Kk-5U; Mon, 27 May 2019 12:06:43 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVEOe-0008Fm-Jj
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 12:06:34 +0000
X-Originating-IP: 90.66.53.80
Received: from localhost (lfbn-1-3034-80.w90-66.abo.wanadoo.fr [90.66.53.80])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 76E9CFF819;
 Mon, 27 May 2019 12:06:26 +0000 (UTC)
Date: Mon, 27 May 2019 14:06:26 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH 01/10] dt-bindings: rtc: Move trivial RTC over to trivial
 devices
Message-ID: <20190527120626.GM3274@piout.net>
References: <290402405a34506997fd2fab2c4c1486dbe6b7e5.1558958381.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <290402405a34506997fd2fab2c4c1486dbe6b7e5.1558958381.git-series.maxime.ripard@bootlin.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_050632_949716_B2FCFF58 
X-CRM114-Status: GOOD (  17.67  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27/05/2019 14:00:33+0200, Maxime Ripard wrote:
> The RTC generic bindings has a bunch of devices that have a pretty simple
> binding, with just compatible, reg and optional interrupts properties.
> =


This is not true, they all also support the star-year property, this is
why they are not in the trivial-devices file anymore.

> This is exactly what the trivial devices YAML schema has been created for,
> so let's move those devices there.
> =

> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  Documentation/devicetree/bindings/rtc/rtc.txt          | 39 +--------
>  Documentation/devicetree/bindings/trivial-devices.yaml | 54 +++++++++++-
>  2 files changed, 54 insertions(+), 39 deletions(-)
> =

> diff --git a/Documentation/devicetree/bindings/rtc/rtc.txt b/Documentatio=
n/devicetree/bindings/rtc/rtc.txt
> index a97fc6a9a75e..234bd2af1830 100644
> --- a/Documentation/devicetree/bindings/rtc/rtc.txt
> +++ b/Documentation/devicetree/bindings/rtc/rtc.txt
> @@ -31,42 +31,3 @@ below.
>                              expressed in femto Farad (fF).
>                              The default value shall be listed (if option=
al),
>                              and likewise all valid values.
> -
> -Trivial RTCs
> -------------
> -
> -This is a list of trivial RTC devices that have simple device tree
> -bindings, consisting only of a compatible field, an address and
> -possibly an interrupt line.
> -
> -
> -Compatible		Vendor / Chip
> -=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D		=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> -abracon,abb5zes3	AB-RTCMC-32.768kHz-B5ZE-S3: Real Time Clock/Calendar Mo=
dule with I2C Interface
> -abracon,abeoz9		AB-RTCMC-32.768kHz-EOZ9: Real Time Clock/Calendar Module=
 with I2C Interface
> -dallas,ds1374		I2C, 32-Bit Binary Counter Watchdog RTC with Trickle Char=
ger and Reset Input/Output
> -dallas,ds1672		Dallas DS1672 Real-time Clock
> -dallas,ds3232		Extremely Accurate I=B2C RTC with Integrated Crystal and =
SRAM
> -epson,rx8010		I2C-BUS INTERFACE REAL TIME CLOCK MODULE
> -epson,rx8571		I2C-BUS INTERFACE REAL TIME CLOCK MODULE with Battery Back=
ed RAM
> -epson,rx8581		I2C-BUS INTERFACE REAL TIME CLOCK MODULE
> -emmicro,em3027		EM Microelectronic EM3027 Real-time Clock
> -isil,isl1208		Intersil ISL1208 Low Power RTC with Battery Backed SRAM
> -isil,isl1218		Intersil ISL1218 Low Power RTC with Battery Backed SRAM
> -isil,isl12022		Intersil ISL12022 Real-time Clock
> -microcrystal,rv3028	Real Time Clock Module with I2C-Bus
> -microcrystal,rv3029	Real Time Clock Module with I2C-Bus
> -microcrystal,rv8523	Real Time Clock
> -nxp,pcf2127		Real-time clock
> -nxp,pcf2129		Real-time clock
> -nxp,pcf8563		Real-time clock/calendar
> -pericom,pt7c4338	Real-time Clock Module
> -ricoh,r2025sd		I2C bus SERIAL INTERFACE REAL-TIME CLOCK IC
> -ricoh,r2221tl		I2C bus SERIAL INTERFACE REAL-TIME CLOCK IC
> -ricoh,rs5c372a		I2C bus SERIAL INTERFACE REAL-TIME CLOCK IC
> -ricoh,rs5c372b		I2C bus SERIAL INTERFACE REAL-TIME CLOCK IC
> -ricoh,rv5c386		I2C bus SERIAL INTERFACE REAL-TIME CLOCK IC
> -ricoh,rv5c387a		I2C bus SERIAL INTERFACE REAL-TIME CLOCK IC
> -sii,s35390a		2-wire CMOS real-time clock
> -whwave,sd3078		I2C bus SERIAL INTERFACE REAL-TIME CLOCK IC
> -xircom,x1205		Xircom X1205 I2C RTC
> diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Doc=
umentation/devicetree/bindings/trivial-devices.yaml
> index 747fd3f689dc..96035c5970d8 100644
> --- a/Documentation/devicetree/bindings/trivial-devices.yaml
> +++ b/Documentation/devicetree/bindings/trivial-devices.yaml
> @@ -26,6 +26,10 @@ properties:
>    compatible:
>      items:
>        - enum:
> +            # AB-RTCMC-32.768kHz-B5ZE-S3: Real Time Clock/Calendar Modul=
e with I2C Interface
> +          - abracon,abb5zes3
> +            # AB-RTCMC-32.768kHz-EOZ9: Real Time Clock/Calendar Module w=
ith I2C Interface
> +          - abracon,abeoz9
>              # SMBus/I2C Digital Temperature Sensor in 6-Pin SOT with SMB=
us Alert and Over Temperature Pin
>            - ad,ad7414
>              # ADM9240:  Complete System Hardware Monitor for uProcessor-=
Based Systems
> @@ -56,12 +60,18 @@ properties:
>            - capella,cm32181
>              # CM3232: Ambient Light Sensor
>            - capella,cm3232
> +            # I2C, 32-Bit Binary Counter Watchdog RTC with Trickle Charg=
er and Reset Input/Output
> +          - dallas,ds1374
>              # High-Precision Digital Thermometer
>            - dallas,ds1631
> +            # Dallas DS1672 Real-time Clock
> +          - dallas,ds1672
>              # Total-Elapsed-Time Recorder with Alarm
>            - dallas,ds1682
>              # Tiny Digital Thermometer and Thermostat
>            - dallas,ds1775
> +            # Extremely Accurate I=B2C RTC with Integrated Crystal and S=
RAM
> +          - dallas,ds3232
>              # CPU Supervisor with Nonvolatile Memory and Programmable I/O
>            - dallas,ds4510
>              # Digital Thermometer and Thermostat
> @@ -80,6 +90,12 @@ properties:
>            - domintech,dmard09
>              # DMARD10: 3-axis Accelerometer
>            - domintech,dmard10
> +            # I2C-BUS INTERFACE REAL TIME CLOCK MODULE
> +          - epson,rx8010
> +            # I2C-BUS INTERFACE REAL TIME CLOCK MODULE with Battery Back=
ed RAM
> +          - epson,rx8571
> +            # I2C-BUS INTERFACE REAL TIME CLOCK MODULE
> +          - epson,rx8581
>              # MMA7660FC: 3-Axis Orientation/Motion Detection Sensor
>            - fsl,mma7660
>              # MMA8450Q: Xtrinsic Low-power, 3-axis Xtrinsic Accelerometer
> @@ -100,6 +116,12 @@ properties:
>            - infineon,slb9645tt
>              # Infineon TLV493D-A1B6 I2C 3D Magnetic Sensor
>            - infineon,tlv493d-a1b6
> +            # Intersil ISL1208 Low Power RTC with Battery Backed SRAM
> +          - isil,isl1208
> +            # Intersil ISL1218 Low Power RTC with Battery Backed SRAM
> +          - isil,isl1218
> +            # Intersil ISL12022 Real-time Clock
> +          - isil,isl12022
>              # Intersil ISL29028 Ambient Light and Proximity Sensor
>            - isil,isl29028
>              # Intersil ISL29030 Ambient Light and Proximity Sensor
> @@ -274,6 +296,12 @@ properties:
>            - microchip,tc654
>              # PWM Fan Speed Controller With Fan Fault Detection
>            - microchip,tc655
> +            # Real Time Clock Module with I2C-Bus
> +          - microcrystal,rv3028
> +            # Real Time Clock Module with I2C-Bus
> +          - microcrystal,rv3029
> +            # Real Time Clock
> +          - microcrystal,rv8523
>              # MiraMEMS DA226 2-axis 14-bit digital accelerometer
>            - miramems,da226
>              # MiraMEMS DA280 3-axis 14-bit digital accelerometer
> @@ -300,18 +328,40 @@ properties:
>            - nxp,pca9556
>              # 8-bit I2C-bus and SMBus I/O port with reset
>            - nxp,pca9557
> +            # Real-time clock
> +          - nxp,pcf2127
> +            # Real-time clock
> +          - nxp,pcf2129
> +            # Real-time clock/calendar
> +          - nxp,pcf8563
>              # OKI ML86V7667 video decoder
>            - oki,ml86v7667
>              # OV5642: Color CMOS QSXGA (5-megapixel) Image Sensor with O=
mniBSI and Embedded TrueFocus
>            - ovti,ov5642
> +            # Real-time Clock Module
> +          - pericom,pt7c4338
>              # 48-Lane, 12-Port PCI Express Gen 2 (5.0 GT/s) Switch
>            - plx,pex8648
>              # Pulsedlight LIDAR range-finding sensor
>            - pulsedlight,lidar-lite-v2
> +            # I2C bus SERIAL INTERFACE REAL-TIME CLOCK IC
> +          - ricoh,r2025sd
> +            # I2C bus SERIAL INTERFACE REAL-TIME CLOCK IC
> +          - ricoh,r2221tl
> +            # I2C bus SERIAL INTERFACE REAL-TIME CLOCK IC
> +          - ricoh,rs5c372a
> +            # I2C bus SERIAL INTERFACE REAL-TIME CLOCK IC
> +          - ricoh,rs5c372b
> +            # I2C bus SERIAL INTERFACE REAL-TIME CLOCK IC
> +          - ricoh,rv5c386
> +            # I2C bus SERIAL INTERFACE REAL-TIME CLOCK IC
> +          - ricoh,rv5c387a
>              # S524AD0XF1 (128K/256K-bit Serial EEPROM for Low Power)
>            - samsung,24ad0xd1
>              # SGX Sensortech VZ89X Sensors
>            - sgx,vz89x
> +            # 2-wire CMOS real-time clock
> +          - sii,s35390a
>              # Relative Humidity and Temperature Sensors
>            - silabs,si7020
>              # Skyworks SKY81452: Six-Channel White LED Driver with Touch=
 Panel Bias Supply
> @@ -336,10 +386,14 @@ properties:
>            - ti,tmp103
>              # Digital Temperature Sensor
>            - ti,tmp275
> +            # I2C bus SERIAL INTERFACE REAL-TIME CLOCK IC
> +          - whwave,sd3078
>              # Winbond/Nuvoton H/W Monitor
>            - winbond,w83793
>              # i2c trusted platform module (TPM)
>            - winbond,wpct301
> +            # Xircom X1205 I2C RTC
> +          - xircom,x1205
>  =

>  required:
>    - compatible
> =

> base-commit: 89d8c504132e4c247707ac92d4bf6bb6607461dd
> -- =

> git-series 0.9.1

-- =

Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
