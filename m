Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53DCF14DDF6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 16:36:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WASyvT11q8z5VuJTEsUk0ruDhvWNJThn391dtYIXTUk=; b=Xq+Zrs8Qku7rMh
	QLFG9DsrKHXeX+e/3X0bOg0eXmv7fGH31OrRK6kPXYe6rUyrak+zu+UojdDVzpzXEpPcncuJh5dFO
	Pu+zaYjehXL7qihaAIx6fVFtssAM+QdLhvLFm0/sPjirEufdvACK7WM8ZGLE4iGP6ytK8rLQBAW5T
	MALouwLSA+GiI/T//0rHK4qTe/SlxjD8Ruhf2aMWb4TD6Jv4Odq7HD2awijRoFQCWDqg1DN0t4cJO
	V41ACZf9YAo/LA7DSqVijtY2CEj3ha72w9U7o7W9Uk59IkVpYTg2rPtPK5YYcaMc2/PFeA9YquC8Q
	haB9zcg2ZvEpJxMoCxtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixBs0-0003yZ-QI; Thu, 30 Jan 2020 15:36:40 +0000
Received: from mail-am6eur05on2060f.outbound.protection.outlook.com
 ([2a01:111:f400:7e1b::60f]
 helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixBrp-0003wb-Cl
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 15:36:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mhotx3wmq6ypaslPF32efuzzynh8UYhfh+XB2fzUw7dFXF5eHEkVjdY+mEZkeL1uLolrQ9VMp1cnLtnqA+dbYxXlcO5nyoRqnb4Ubi3//YCwKkhEIE6GIKwgRVpqwYEsMt1pghFLgDWeHtG0Z2ms6gN7ePA+WE7oskZ+8AKkQ+OWuGHFNXvPvmCsefNIgZflCB3ooEomwcFcpZ/elQPLKLqPBjbb+B5vUDd8tB6SF1UoEuYvuRvcQWvWgOXdnObwep3jaPJ054M+ewArAVnbHm7bBhk8pSGPJ3HgXRkZz359VQlpuy3KTRcIbSrYVcgLMjLeM5gygtu6EZi1vFeN0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jktkoij8NDa+Avoo8z2LJAHwuQ8W9yYnG+n3azfiACE=;
 b=Ttqa1e/qnHhL5JJKVKbaowgs/I5rXTarmkEu1IPIY0V2X4qtAqJA8C83Z4E7MIp/8wvZPJt9t8+PlpHqtLeldNpXaoWvDAaddmPfbd90y25OMaXQq7XKMrV1h5UxOfe9ZdrlktwOKWlJO2wWOv5M7rpH9XaGDngzRCuW8cHALsg2AFQea0bU/QJCcXBFadtFqtPTwvGhZ0EMoSoJVtur/s7N+VwqABEawIKee5cedI782yipg7DvpajJMUg3EjIbaHKmr6sb/Ffk61HpyHDCG1oMGRBjRYJ3oIVVMuUzOlwZq3VG2z0QDr7Bt8WbbPd3KGgIh7GjLpO7tGnRUunYqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=n7space.com; dmarc=pass action=none header.from=n7space.com;
 dkim=pass header.d=n7space.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=n7space.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jktkoij8NDa+Avoo8z2LJAHwuQ8W9yYnG+n3azfiACE=;
 b=ElClxTr/FC5B8QhPB1ynlcx2wo4a5DKgil7Fu3gSijYdAusTeoMV0AJJufWuF8eru685wHJ3AH80W33funJbKENyF6MqgVhjHgqHDonFqjfAikvPTz3YINApwHfPphZFxMCGUkpZhwVIUwg+F5jtXm1qy30rT14HYxq/XY2KfAk=
Received: from AM0PR03MB3651.eurprd03.prod.outlook.com (52.134.80.160) by
 AM0PR03MB4610.eurprd03.prod.outlook.com (20.177.40.209) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.24; Thu, 30 Jan 2020 15:36:25 +0000
Received: from AM0PR03MB3651.eurprd03.prod.outlook.com
 ([fe80::f0ed:9987:f93f:76d3]) by AM0PR03MB3651.eurprd03.prod.outlook.com
 ([fe80::f0ed:9987:f93f:76d3%7]) with mapi id 15.20.2686.025; Thu, 30 Jan 2020
 15:36:24 +0000
Received: from arm-deb9.n7space.com (85.232.243.86) by
 AM0PR0402CA0031.eurprd04.prod.outlook.com (2603:10a6:208:15::44) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2665.20 via Frontend
 Transport; Thu, 30 Jan 2020 15:36:24 +0000
From: =?iso-8859-2?Q?Wojciech_=AFmuda?= <wzmuda@n7space.com>
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "coresight@lists.linaro.org"
 <coresight@lists.linaro.org>
Subject: [PATCH 0/1] Xilinx Zynq Ultrascale+ MPSoc CoreSight DT nodes
Thread-Topic: [PATCH 0/1] Xilinx Zynq Ultrascale+ MPSoc CoreSight DT nodes
Thread-Index: AQHV14MHfOvnV7RdIEuRZSCDICwobA==
Date: Thu, 30 Jan 2020 15:36:24 +0000
Message-ID: <20200130153613.20365-1-wzmuda@n7space.com>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR0402CA0031.eurprd04.prod.outlook.com
 (2603:10a6:208:15::44) To AM0PR03MB3651.eurprd03.prod.outlook.com
 (2603:10a6:208:42::32)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=wzmuda@n7space.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.11.0
x-originating-ip: [85.232.243.86]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0c4b053c-6a38-4f3b-8888-08d7a59a2a1f
x-ms-traffictypediagnostic: AM0PR03MB4610:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR03MB46108663ECF46378BDAD322798040@AM0PR03MB4610.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2582;
x-forefront-prvs: 02981BE340
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39830400003)(136003)(396003)(366004)(376002)(346002)(189003)(199004)(316002)(1076003)(54906003)(2906002)(110136005)(7416002)(4326008)(508600001)(2616005)(6486002)(956004)(86362001)(66476007)(71200400001)(16526019)(7696005)(52116002)(8676002)(26005)(5660300002)(81166006)(81156014)(186003)(36756003)(8936002)(66946007)(66556008)(66446008)(64756008)(107886003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR03MB4610;
 H:AM0PR03MB3651.eurprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: n7space.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: V7fgdo+UuPI6KqZK8BgrcLVdiHWHGm6y9z0JR4UwTmFWM1QNZmmty5HFrdhHGXIHKea5zxMnnHGRC3G5UmXTejInkoG4lJo1TWb1imeCrbuEo4D9rqC2T3/R3UkZ303/femqE8M/xJ7YSOHRliFTNEjI9JnVJLwm1X++Y6Kqm/m9IqCCebVEoyKDWx/Ub1e0xJP2CPlh7SJWGBw5TdsaDllfnIYFkawmLgawaBB7qk8jp45eA83FFcfYwOcoDvw1knYrAIE182D7CVnYdybNuEDZDSrmrP13UrIQ8ATTiJEyZb7ddCnx9VcnWicQaHu9+l69528NWH13yarbUuvzNQ6Y25AaPs7nw+UUKBr2WzNhN8gz81hcv67JmlCwz3Qglc95JFUwtLlaJMluai+lsO2aB5l5Saj16TurTHZekufmy8kOO9jwS8Y92JAbJvRn
x-ms-exchange-antispam-messagedata: 8o8vv7wdnsN/kC6cLFazzW0a+dRGfnXS3o+xEdJNp3fMZG3O6t5vebC29WhdrWDaXbW2cz/rF+FVjygwJlFf4bXYrZS8EQUcUEd2/lkxSPX68gG85QaCL1GNvuINdzXocNybR8hN6qynDEboU9GVPw==
MIME-Version: 1.0
X-OriginatorOrg: n7space.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c4b053c-6a38-4f3b-8888-08d7a59a2a1f
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2020 15:36:24.8089 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5938c8fc-39b0-401e-a174-4e3ffe97d69d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h5uB256hSheN8cQHScdiUXzzLgP0KgWito26qWg17xngG99SkQx6o7b96DF2F4zIvnOCb/GCW/pIZyDdJbVObQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR03MB4610
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_073629_639170_8088486B 
X-CRM114-Status: UNSURE (   6.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "mathieu.poirier@linaro.org" <mathieu.poirier@linaro.org>,
 "rajan.vaja@xilinx.com" <rajan.vaja@xilinx.com>,
 Michal Mosdorf <mmosdorf@n7space.com>,
 "antoine.tenart@bootlin.com" <antoine.tenart@bootlin.com>,
 "nava.manne@xilinx.com" <nava.manne@xilinx.com>,
 "michal.simek@xilinx.com" <michal.simek@xilinx.com>,
 "m.tretter@pengutronix.de" <m.tretter@pengutronix.de>,
 "t-kristo@ti.com" <t-kristo@ti.com>, Krzysztof Pilch <kpilch@n7space.com>,
 =?iso-8859-2?Q?Wojciech_=AFmuda?= <wzmuda@n7space.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 =?iso-8859-2?Q?Micha=B3_Kurowski?= <mkurowski@n7space.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Wojciech Zmuda <wzmuda@n7space.com>

This patch adds CoreSight nodes to Zynq US+ device tree. I tested in on
recent v5.5 tree, on Xilinx ZCU104 development board.

Tracing with perf:
   root@zynq:~# perf record -e cs_etm/timestamp,cycacc,@tmc_etr0/u true
   Couldn't synthesize bpf events.
   [ perf record: Woken up 1 times to write data ]
   [ perf record: Captured and wrote 0.073 MB perf.data ]

   root@zynq:~# perf report --dump | grep "CoreSight ETM Trace data" -A10
   . ... CoreSight ETM Trace data: size 74112 bytes
           Idx:0; ID:14;   I_ASYNC : Alignment Synchronisation.
           Idx:12; ID:14;  I_TRACE_INFO : Trace Info.; INFO=0x1 { CC.1 }; CC_THRESHOLD=0x100
           Idx:19; ID:14;  I_ADDR_L_64IS0 : Address, Long, 64 bit, IS0.; Addr=0xFFFF800010839BF8;
           Idx:28; ID:14;  I_TRACE_ON : Trace On.
           Idx:29; ID:14;  I_ADDR_CTXT_L_64IS0 : Address & Context, Long, 64 bit, IS0.; Addr=0x0000FFFF83F37080; Ctxt: AArch64,EL0, NS; CID=0x00000281;
           Idx:44; ID:14;  I_ATOM_F1 : Atom format 1.; E
           Idx:45; ID:14;  I_CCNT_F1 : Cycle Count format 1.; Count=0x0
           Idx:46; ID:14;  I_TIMESTAMP : Timestamp.; Updated val = 0x29aa0b739ec; CC=0x1
           Idx:58; ID:14;  I_EXCEPT : Exception.;  Data Fault; Ret Addr Follows;
           Idx:60; ID:14;  I_ADDR_L_64IS0 : Address, Long, 64 bit, IS0.; Addr=0x0000FFFF83F37964;

Please note that to get non-zero timestamps on this platform, the timestamp
generator module needs to be explicitly enabled, e.g. from U-Boot, by writing
'1' to 0xfe900000.

Debug components:
   root@zynq:~# echo 1 > /sys/kernel/debug/coresight_cpu_debug/enable
   root@zynq:~# echo c > /proc/sysrq-trigger
   [   57.5093] ARM external debug module:
   [   57.513099] coresight-cpu-deb fec10000.debug0: CPU[0]:
   [   57.518407] coresight-cpu-debug fec10000.debug0:  EDPRSR:  00000001 (Power:On DLK:Unlock
                                                                                              [   57.526583] coresight-cpu-debug fec10000.debug0:  EDPCSR: ocal_cpu_stop+0x2c/0x38
   [   57.534236] coresight-cpu-debug fec10000.debug0:  EDCIDSR: 00000000
   [   57.540494] coresit-cpu-debug fec10000.debug0:  EDVIDSR: 90000000 (State:Non-sece Mode:EL1/0 Width:64bits VMID:0)
   [   57.551095] coresight-cpu-debug fed10000.debug1: CPU[1]:
   [   57.556406] coresig-cpu-debug fed10000.debug1:  EDPRSR:  00000001 (Power:On DLK:Uock)
   [   57.564584] coresight-cpu-debug fed10000.debug1:  EDPCSR:  local_cpu_stop+0x2c/0x38
   [   57.572237] coresightpu-debug fed10000.debug1:  EDCIDSR: 00000000
   [   57.578494] cesight-cpu-debug fed10000.debug1:  EDVIDSR: 90000000 (State:Non-secure Mode:EL1/0 Width:64bits VMID:0)
   [   57.589096]oresight-cpu-debug fee10000.debug2: CPU[2]:
   [   57.594408] cosight-cpu-debug fee10000.debug2:  EDPRSR:  00000001 (Power:On DLK:Unlock)
   [   57.602587] coresight-cpu-debug fee10000ebug2:  EDPCSR:  debug_notifier_call+0x2b8/0x3b0
   [   57.61084 coresight-cpu-debug fee10000.debug2:  EDCIDSR: 00000170
   [   57.617103] coresight-cpu-debug fee10000.debug2:  EDVIDSR90000000 (State:Non-secure Mode:EL1/0 Width:64bits VMID:0)
   [ 57.627705] coresight-cpu-debug fef10000.debug3: CPU[3]:
   [   57.633016] coresight-cpu-debug fef10000.debug3:  EDPRSR: 0000001 (Power:On DLK:Unlock)
   [   57.641193] coresight-cpu-deg fef10000.debug3:  EDPCSR:  local_cpu_stop+0x2c/0x38
   [   57.648846] coresight-cpu-debug fef10000.debug3:  EDCIDSR: 000000
   [   57.655104] coresight-cpu-debug fef10000.debug3:  EDDSR: 90000000 (State:Non-secure Mode:EL1/0 Width:64bits VMID:0)
   [   57.665708] Rebooting in 60 seconds..

Wojciech Zmuda (1):
  arm64: zynqmp: Add CoreSight components

 arch/arm64/boot/dts/xilinx/zynqmp-coresight.dtsi | 272 +++++++++++++++++++++++
 arch/arm64/boot/dts/xilinx/zynqmp.dtsi           |   2 +
 2 files changed, 274 insertions(+)
 create mode 100644 arch/arm64/boot/dts/xilinx/zynqmp-coresight.dtsi

-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
