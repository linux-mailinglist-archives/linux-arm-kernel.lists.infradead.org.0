Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F271C1ED4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 22:50:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pXabdVl/NjnVKnO+kg2xeCE2ftcAb7g3yuYBv/Sw4Kk=; b=ddqZqVRmPZ46hi
	QJUBjDXd3DogRSR7lg8dWNVXlLB3lwkn6PXztmqeBwXapJe3LYTR8lgf9J4/OOIZDrdgwb1Ysci1b
	U/1F+ncrJQ8vX8y2JaAnlTDcLaTeQExLrv6mwVrEfLBChmJZmabs0LTGonG28Ix15oHqmmiTby1K/
	iViaepXYdLYF9jSZRgcLWJ5Q+7JddDieAhoaQG1GeLXl4IV9Z/lNQpw9RvlUxc50T2AJtNdB3KBec
	K5wCvHkbkZGR557dlTobngAc1PL2kpEoUwzJRTjVo1nYcv6evDXENWMcSLabT6G1n6XRY+Ui2dsVw
	mrj0q/L2yza/5tr+p8Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUccB-0000kw-Kr; Fri, 01 May 2020 20:50:31 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUcc2-0000ja-0e
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 20:50:24 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 041KoED9011902;
 Fri, 1 May 2020 15:50:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588366214;
 bh=sttXSPRWFfKNYpmJR/8jZ/NACgQEfJehdKwZvLb3aoA=;
 h=From:To:CC:Subject:Date;
 b=wpnPM3WCmaNhOO/CmnDKa6itIBcUTPMKPc0Ga7unvvYwXfa2k6E+McS6UfHPzbhmE
 dkEZm1VeuA16hvgnGUAC3lfhuIADuWKOwuPkwxbkJrCHYR+nQfqzk/+QThSAoWUWQ0
 p7jQCx8yVDmyn5n5oHRmIyYDR4n8VYm2njKvPmXw=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 041KoEEM039844
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 1 May 2020 15:50:14 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 1 May
 2020 15:50:14 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 1 May 2020 15:50:14 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 041KoDFS076888;
 Fri, 1 May 2020 15:50:14 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: Richard Cochran <richardcochran@gmail.com>, Murali Karicheri
 <m-karicheri2@ti.com>, "David S. Miller" <davem@davemloft.net>, Rob Herring
 <robh+dt@kernel.org>, Tero Kristo <t-kristo@ti.com>
Subject: [PATCH net-next 0/7] net: ethernet: ti: k3: introduce common platform
 time sync driver - cpts
Date: Fri, 1 May 2020 23:50:04 +0300
Message-ID: <20200501205011.14899-1-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_135022_185820_0FDF80F5 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nishanth Menon <nm@ti.com>, devicetree@vger.kernel.org,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Lokesh Vutla <lokeshvutla@ti.com>, netdev@vger.kernel.org,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

This series introduced support for significantly upgraded TI A65x/J721E Common
platform time sync (CPTS) modules which are part of AM65xx Time Synchronization
Architecture [1].
The TI A65x/J721E now contain more than one CPTS instance:
- MCU CPSW CPTS (IEEE 1588 compliant)
- Main NAVSS CPTS (central)
- PCIe CPTS(s) (PTM  compliant)
- J721E: Main CPSW9g CPTS (IEEE 1588 compliant)
which can work as separately as interact to each other through Time Sync Router
(TSR) and Compare Event Router (CER). In addition there are also ICSS-G IEP
blocks which can perform similar timsync functions, but require FW support.
More info also available in TRM [2][3]. Not all above modules are available
to the Linux by as of now as some of them are reserved for RTOS/FW purposes.

The scope of this submission is TI A65x/J721E CPSW CPTS and Main NAVSS CPTS,
and TSR was used for testing purposes.
                                                                       +---------------------------+
                                                                       | MCU CPSW                  |
+-------------------+           +------------------------+             |                TS         |
| Main Navss CPTS   |           | Time Sync Router (TSR) |             |          +-------------+  |
|                   |           |                        |             |          |             |  |
|            HW1_TS +<----------+                        |             | +--------v-----+    +--+--+
|                   |           |                        |             | |        CPTS  |    |Port |
|              ...  |           |                        |           X+-->HW1_TS        |    |     |
|            HW8_TS <------------<---------+             |           X|-->HW2_TS        |    +--^--+
|                   |           |          |             +--------------->HW3_TS        |       |  |
|                   |           |          |             +--------------->HW4_TS        |       |  |
|                   |           |          |             |             | |              |       |  |
|                   |           |          |             |             | |              |       |  |
|            Genf0  +----------->          (A)---------+ +<--------------+Genf0         |       |  |
|                   |           |          |             |             | |              |       |  |
|              ...  |           |          +-----------> <---------------+Genf1     ESTf+-------+  |
|                   |           |                        |             | |              |          |
|                   |           |                        |             | +--------------+          |
|            Genf8  +---------->+                        |             |                           |
|                   |           |    SYNC0 ...    SYNC3  |             |                           |
+-------------------+           +------+------------+----+             +---------------------------+
                                       +            +
                                       X            X
(A) shows possible routing path for MCU CPSW CPTS Genf0 signal as an example.

Main features of the new TI A65x/J721E CPTS modules are:
- 64-bit timestamp/counter mode support in ns by using add_val
- implemented in HW PPM and nudge adjustment.
- control of time sync events via interrupt or polling
- selection of multiple external reference clock sources
- hardware timestamp of ext. inputs events (HWx_TS_PUSH)
- periodic generator function outputs (TS_GENFx)
- (CPSW only) Ethernet Enhanced Scheduled Traffic Operations (CPTS_ESTFn),
  which drives TSN schedule
- timestamping of all RX packets bypassing CPTS FIFO

Patch 1 - DT bindings
Patch 2 - the AM65x/J721E driver
Patch 3 - enables packet timestamping support in TI AM65x/J721E MCU CPSW driver.
Patches 4-7 - DT updates.

=== PTP Testing:

phc2sys -s CLOCK_REALTIME -c eth0 -m -O 0 -u30                                            
phc2sys[627.331]: eth0 rms 409912446712787392 max 1587584079521858304 freq  -6665 +/- 35040 delay   832 +/-  27
phc2sys[657.335]: eth0 rms   33 max   66 freq     -0 +/-  28 delay   820 +/-  30
phc2sys[687.339]: eth0 rms   37 max   70 freq     -1 +/-  32 delay   830 +/-  29
phc2sys[717.343]: eth0 rms   33 max   71 freq     -0 +/-  29 delay   828 +/-  23
phc2sys[747.346]: eth0 rms   35 max   75 freq     -0 +/-  31 delay   829 +/-  26
phc2sys[777.350]: eth0 rms   37 max   68 freq     -1 +/-  32 delay   825 +/-  25
phc2sys[807.354]: eth0 rms   28 max   57 freq     -1 +/-  25 delay   824 +/-  21
phc2sys[837.358]: eth0 rms   43 max   81 freq     -1 +/-  37 delay   836 +/-  23
phc2sys[867.361]: eth0 rms   33 max   74 freq     +0 +/-  29 delay   828 +/-  24
phc2sys[897.365]: eth0 rms   35 max   77 freq     -2 +/-  30 delay   824 +/-  25
phc2sys[927.369]: eth0 rms   28 max   50 freq     +0 +/-  25 delay   825 +/-  25

ptp4l -P -2 -H -i eth0 -l 6 -m -q -p /dev/ptp1 -f ptp.cfg -s
ptp4l[22095.754]: port 1: MASTER to UNCALIBRATED on RS_SLAVE
ptp4l[22097.754]: port 1: UNCALIBRATED to SLAVE on MASTER_CLOCK_SELECTED
ptp4l[22159.757]: rms  317 max 1418 freq    +79 +/- 186 delay   410 +/-   1
ptp4l[22223.760]: rms    9 max   24 freq    +42 +/-  12 delay   409 +/-   1
ptp4l[22287.763]: rms   10 max   28 freq    +41 +/-  11 delay   410 +/-   1
ptp4l[22351.767]: rms   10 max   26 freq    +34 +/-  12 delay   410 +/-   1
ptp4l[22415.770]: rms   10 max   26 freq    +49 +/-  14 delay   410 +/-   1

=== Ext. HW_TS and Genf testing:

For testing purposes Time Sync Router (TSR) can be modeled in DT as pin controller
+       timesync_router: timesync_router@A40000 {
+               compatible = "pinctrl-single";
+               reg = <0x0 0xA40000 0x0 0x800>;
+               #address-cells = <1>;
+               #size-cells = <0>;
+               #pinctrl-cells = <1>;
+               pinctrl-single,register-width = <32>;
+               pinctrl-single,function-mask = <0x800007ff>;
+       };

then signals routing can be done in board file, for example:
+#define TS_OFFSET(pa, val)     (0x4+(pa)*4) (0x80000000 | val)
+
+&timesync_router {
+       pinctrl-names = "default";
+       pinctrl-0 = <&mcu_cpts>;
+
+       /* Example of the timesync routing */
+       mcu_cpts: mcu_cpts {
+               pinctrl-single,pins = <
+                       /* [cpts genf1] in13 -> out25 [cpts hw4_push] */
+                       TS_OFFSET(25, 13)
+                       /* [cpts genf1] in13 -> out0 [main cpts hw1_push] */
+                       TS_OFFSET(0, 13)
+                       /* [main cpts genf0] in4 -> out1 [main cpts hw2_push] */
+                       TS_OFFSET(1, 4)
+                       /* [main cpts genf0] in4 -> out24 [cpts hw3_push] */
+                       TS_OFFSET(24, 4)
+               >;
+       };
+};

will create link:
    cpsw cpts Genf1 -> main cpts hw1_push
                    -> cpsw cpts hw4_push
    
    main cpts Genf0 -> main cpts hw2_push
                    -> cpsw cpts hw3_push

#enable Main CPTS Genf0, period 1sec
 testptp -d /dev/ptp0 -i 0 -p 1000000000
 periodic output request okay
#enable Main CPTS HW2_TS and read 
 testptp -d /dev/ptp0 -i 1 -e 5
 external time stamp request okay
 event index 1 at 22583.000000025
 event index 1 at 22584.000000025
 event index 1 at 22585.000000025
 event index 1 at 22586.000000025
 event index 1 at 22587.000000025
#enable MCU CPSW CPTS HW3_TS and read                                                                                   
 testptp -d /dev/ptp1 -i 2 -e 5
 external time stamp request okay
 event index 2 at 1587606764.249304554
 event index 2 at 1587606765.249304467
 event index 2 at 1587606766.249304380
 event index 2 at 1587606767.249304293
 event index 2 at 1587606768.249304206

[1] https://www.ti.com/lit/pdf/spracp7
[2] https://www.ti.com/lit/pdf/sprz452
[3] https://www.ti.com/lit/pdf/spruil1

Grygorii Strashko (7):
  dt-binding: ti: am65x: document common platform time sync cpts module
  net: ethernet: ti: introduce am654 common platform time sync driver
  net: ethernet: ti: am65-cpsw-nuss: enable packet timestamping support
  arm64: dts: ti: k3-am65-mcu: add cpsw cpts node
  arm64: dts: ti: k3-am65-main: add main navss cpts node
  arm64: dts: ti: k3-j721e-mcu: add mcu cpsw cpts node
  arm64: dts: ti: j721e-main: add main navss cpts node

 .../bindings/net/ti,k3-am654-cpsw-nuss.yaml   |    7 +
 .../bindings/net/ti,k3-am654-cpts.yaml        |  152 +++
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi      |   22 +
 arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi       |   19 +
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     |   12 +
 .../boot/dts/ti/k3-j721e-mcu-wakeup.dtsi      |    9 +
 drivers/net/ethernet/ti/Kconfig               |   15 +
 drivers/net/ethernet/ti/Makefile              |    1 +
 drivers/net/ethernet/ti/am65-cpsw-ethtool.c   |   24 +-
 drivers/net/ethernet/ti/am65-cpsw-nuss.c      |  172 +++
 drivers/net/ethernet/ti/am65-cpsw-nuss.h      |    6 +-
 drivers/net/ethernet/ti/am65-cpts.c           | 1041 +++++++++++++++++
 drivers/net/ethernet/ti/am65-cpts.h           |   50 +
 13 files changed, 1528 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/net/ti,k3-am654-cpts.yaml
 create mode 100644 drivers/net/ethernet/ti/am65-cpts.c
 create mode 100644 drivers/net/ethernet/ti/am65-cpts.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
