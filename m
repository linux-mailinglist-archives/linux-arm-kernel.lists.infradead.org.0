Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A78359EBD1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 17:05:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=CdwTK6Fzx+5M4KEqJwodWrS5i9+R3Z1AVW/NkiPhthg=; b=WM5+9MmOfY4+eQ
	lGkT69jj0w4vUSWNT7pcEdqJ0PBQi1QZLE9QC2uxgZTfz6fA2Dwo35eu/o7EvpUS9I3INbmkqojl4
	AUCDCiMmNON91T7kgR/2cqACyUHv6/PjTIWkp67BcFt7naNLi7xYykdOyfE7FJe3DaRNwqxtPiT3j
	AFZjiS1g9szTMjNI29YP4c/vnk4FWrttKY4HjnEW/mq27Er2MSVJfv6pe9Syr1ZGKb0VU+pHYiRPD
	7XVJzPTq7y7WD1JXufHF3Rq0+3DoFj+V0WUXNeOgk3Lx70ji/mUvDCIwT2B9Fqh6Yw4QEPFQq5O0X
	zo1Y9PVpAyluVDIU68UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2d1u-0005D2-Jo; Tue, 27 Aug 2019 15:05:06 +0000
Received: from mail-eopbgr80072.outbound.protection.outlook.com ([40.107.8.72]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2d1f-0005Cg-4C
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 15:04:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UMzcT8Zj4y0ndYZs4nKRHDx1pk9hVYh5oTlrhVrvh/x6hL1XRN3LpRtgKBl/CEe1Im0Lsvef6ww0OqZ9alNNa1EzH/WEIpAIfCExr/preIKQN34o+lk9FIreNA5W7eOkMPUb5rhruWWZfMugcJuDtXbCHD5cBxkK53a/SkUr06FImMhnUMwfvsnWWnMjDxyu7+tJYRrN6M1NzATfWDttxrTYyYKOjsmzEpoYHWC4cdh0mcyr/d/xF04MoYJK01OtRjPwkFaMCbcUNMIZXGoB4kR0sdDWBU+MLZI1w4/JAd0paWG8N4ZEARPZHCOFpjerFGTPm3ktFQr6e28dI0MIHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zamh+tn53KCYW/Vo3jhLKc+2dsYqS01OUcHPSMJ+CiA=;
 b=DJui9jxlCIIk34y1/MRgvrCggDcPJprms3AuesKr91tdKW18HvqVyTv/gFGXDb3HtLT4kmQiKrvdJs5Yp8XInL53qk0nzpTps+QzlGaUb8yWwQJitAHWUnQwTiqnFm9MPjXvTqT7SoTPrGNNL7hQN/L+wStgFTqQ4tGHZ5T1qpO6nn3TArTIGolilCJv8EJ3tdXmjqt1tOKT8kukoOjJi+tkVHsk0z7Vhf9NryKj8DKzf+2sAb98M6LSjaPS0+f/xvxMeMkPv3/dNg/idTwhPAqZW/OqB3JK9uiJuHZ9ZzYdthuFbVJBsMiRL6vVUgOLumvOfTsct/FvZIKSDBaafA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zamh+tn53KCYW/Vo3jhLKc+2dsYqS01OUcHPSMJ+CiA=;
 b=sYqUtcBaQja+zZlPw5sEsFBZf2wcNav3MYIyUCTn5sbvzlAFoTSvTVvepC5kuJm8rHGXmBdUtMFJfeh/daKrl9GRr9tpy3My7S5EHhnd8ThWb6Z14qIH+onZ+MUEMD/Bj+ic3xLmtE5zxEWrvlrRLIFAJ4OeKBKw/KgQ9eFvgkE=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB4398.eurprd04.prod.outlook.com (20.177.55.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.19; Tue, 27 Aug 2019 15:04:45 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::c5e8:90f8:da97:947e]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::c5e8:90f8:da97:947e%3]) with mapi id 15.20.2199.021; Tue, 27 Aug 2019
 15:04:45 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Jurgen Lambrecht <J.Lambrecht@TELEVIC.com>
Subject: Re: FYI: imx-sdma firmware is not compatible with SLUB slab allocator
Thread-Topic: FYI: imx-sdma firmware is not compatible with SLUB slab allocator
Thread-Index: AQHVXNw+wzto4eeux06zQsdxRt35zA==
Date: Tue, 27 Aug 2019 15:04:44 +0000
Message-ID: <VI1PR04MB7023FB06F79F31334905D34EEEA00@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <1e2fe2dc-f5ea-db73-59cf-c61ec558131a@televic.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2f9da255-bf66-4e5d-2860-08d72affe56d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB4398; 
x-ms-traffictypediagnostic: VI1PR04MB4398:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB4398EE756467AEB59AA2FA9FEEA00@VI1PR04MB4398.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0142F22657
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(376002)(396003)(346002)(136003)(189003)(199004)(25786009)(6916009)(86362001)(55016002)(66476007)(6436002)(3846002)(4326008)(66446008)(66556008)(66946007)(64756008)(91956017)(76116006)(54906003)(478600001)(99286004)(6116002)(9686003)(53936002)(6246003)(14454004)(186003)(7696005)(76176011)(81156014)(316002)(81166006)(5660300002)(44832011)(229853002)(8936002)(2906002)(476003)(486006)(7736002)(66066001)(53546011)(71190400001)(74316002)(26005)(6506007)(71200400001)(102836004)(8676002)(305945005)(446003)(33656002)(52536014)(256004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4398;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: RtMKm+uO2b1SYmuXf2+4zYa6N4ldn9Sx83kmE62LLO8Abt20ENAhmZmEt4eUVvg9u+znXuTVNK4uF2lGYJ3pXJYZ9CN7Kwwy59wYKTO+O1DHB1GCQFxxsv4I9JWra2Sn/GupRJWGs4nzwPhtK2jvK9WP2neweLOcE5u2hLpOXISsZKqeFnLT1u4iw1yNBL5I2vGijtRiKrlSPFNb1eJGP+o+fHvuWFtqUL99Nj3k0aBA0acx+V7tz6HRgl8lvrYFIuD4ZBdopR6yq9zNmpeiyPQ1mDAix0AmH+J0ZwLuaEy4oMnrawlv2IjUJd26JB8gcX6qWoFwqzFlOHs5ldWmRKDEgZQdMW1dxv3cJDeWenwPlH7St5JHoIZIoPlOI13IYAlXAIFzYGFiHcr2r3t+fgmHgFhm2/P0w6qnoDxrdsw=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f9da255-bf66-4e5d-2860-08d72affe56d
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2019 15:04:44.9106 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 33wGl/mbPySJ3Cuq0f0a488Bswyn+dFtfw3JZD+CpddtAjmuDPWDckwJVXbKBPzOG8TB/vi0Ab9ZUI+JIAEd0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4398
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_080451_255548_A06C82C9 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.72 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Robin Gong <yibin.gong@nxp.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27.08.2019 16:35, Jurgen Lambrecht wrote:
> We are updating our kernel on our custom board with an iMX6UL from 3.14
> to 4.19, and when loading linux-firmware/imx/sdma/sdma-imx6q.bin v3.5
> the kernel hangs when booting, only "Starting kernel ..." is printed (by
> uBoot I think).

If you enable "earlycon" you should be able to see an useful error 
message from crashes in early boot.

Enabling earlycon is board-specific: if you have a correct 
/chosen/stdout-path reference in dts just adding "earlycon" to kernel 
cmdline should work otherwise you can specify 
earlycon=ec_imx6q,0x202000,115200 with the exact address depending on 
which uart is console on your board.

> When I remove the sdma bin (built-in the kernel via EXTRA_FIRMWARE),
> then it boots.
> 
> I found that the slab allocator (menu config -> General setup -> Choose
> SLAB allocator) is the culprit: when using imx_v6_v7_defconfig the
> kernel boots, but not with our config (based on a tiny config I think).
> And the config that makes the difference is the slab allocator: with
> SLUB or SLAB the kernel (with sdma bin) boots, but not with SLOB.
> 
> I don't know how to force selecting SLUB in Kconfig when selecting
> IMX_SDMA, but anyhow first this issue must be confirmed on other
> processors from the iMX family.

If there's an incompatibility between SLOB and sdma then it's sounds 
like a bug which should be fixed, not worked around via kconfig.

I tried to enable EXTRA_FIRMWARE on v4.19.68 and imx6ul-14x14-evk booted 
worked fine for me with these changes:
diff --git arch/arm/configs/imx_v6_v7_defconfig 
arch/arm/configs/imx_v6_v7_defconfig
index 7f524cee1357..cedd4d2e0e02 100644
--- arch/arm/configs/imx_v6_v7_defconfig
+++ arch/arm/configs/imx_v6_v7_defconfig
@@ -11,8 +11,8 @@ CONFIG_RELAY=y
  CONFIG_BLK_DEV_INITRD=y
  CONFIG_EXPERT=y
  CONFIG_PERF_EVENTS=y
-# CONFIG_SLUB_DEBUG is not set
  # CONFIG_COMPAT_BRK is not set
+CONFIG_SLOB=y
  CONFIG_ARCH_MULTI_V6=y
  CONFIG_ARCH_MXC=y
  CONFIG_MACH_MX31LILLY=y
@@ -90,6 +90,10 @@ CONFIG_RFKILL_INPUT=y
  CONFIG_DEVTMPFS=y
  CONFIG_DEVTMPFS_MOUNT=y
  # CONFIG_STANDALONE is not set
+CONFIG_EXTRA_FIRMWARE="imx/sdma/sdma-imx6q.bin"
+CONFIG_EXTRA_FIRMWARE_DIR="../linux-firmware"
+CONFIG_FW_LOADER_USER_HELPER=y
+CONFIG_FW_LOADER_USER_HELPER_FALLBACK=y
  CONFIG_CMA_SIZE_MBYTES=64
  CONFIG_IMX_WEIM=y
  CONFIG_CONNECTOR=y

Please try to get a stack dump with earlycon.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
