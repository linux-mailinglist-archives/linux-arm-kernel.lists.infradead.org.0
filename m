Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3684C1C4F4F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 09:40:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TKXSJFgyr+dTZhFPx+f2ZtFsgWUbYfTN6OGvdx8d43s=; b=XHl2BnsQwJhvLU
	PwaeHA3EH1rOTpeEIV5qphknQ0pNwY/5dAvAZQNYHLTBsJOud1q5qgBOfE5/qRM5NaA2erTmUrTgS
	jDuHVU/eibYigZtHGS7R814TjwqkZOfV/FK5rb0lucIeQzQWGYmFwJdy2hHxgWcoUH9LS0nhk58OB
	E3s9dUQuzgcv/5NDJnIwQAsiKHJ2uccteQ6FB9QTwFpU2W6Sv2MLtcDEHc6zXIpZuxshqjOOS/2xR
	+G5TFnB8ZR2Ehx0+b6ja7IFv4cstDmlA/avw08NZjRcLbaqjwFIvC12t1spULAt0DyNw5D3Q0rY4j
	ECsmJPlrkHxKWmfxyi/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVsBH-000052-C6; Tue, 05 May 2020 07:39:55 +0000
Received: from mail-mw2nam12on2047.outbound.protection.outlook.com
 ([40.107.244.47] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVsBA-0008W6-S6
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 07:39:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bXucuw/gS9xbKCcNGJB0Fr28f4M1UjtE9huQS4oRS2RCRlwLg76sjiVTba29ZYSaLgjtzEE3cP22IL3jgO7kl6+9Y2dE8M067R6r8Qf1cAEhPtHFfwCbG3Uad4YZTLk3FWdI3lSxapOdr/hNFOAQZxoITjPpGQ4tINBjyY7Wd06oKpVjFcdg0otQtqVZrBnT/dsKr/5Ww8RjNU5ci9WiJDxnSEXQiN2mO35OgsRyl1ghRdic/wcTNb0VJ9AbFLR2ydE9pndOcUehytpa2MOlfVeVR39upsYSMf/x5Om6NkOgg6Jp2j645OaR9g74aB1lee2vdvjy0SVbaRYD9DqZnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9KtlHuufGD5peeKvlvoLZW05IM8ehxZUNI2Gd/ZyBO8=;
 b=lVUYC/ZgJ3wkpOTX5JJVNFQ1mjZ9QZw4ptNaT0x16K5zoZhubj3yjLK/m6KOCrG9A9ln4hYIhUIlr2uiF0n/X+8yRdj8IRP8v+nFVyQPGtqbBZqke6+UtdV9mWXbeDgpsnX/kgTBBxcexCXz28kKxYGAFTuxnnnHI6OwsBCNjV0Hm63ADA5KelSg9ZL4RE4+5LcRzv/TEeoH8l4+0VJtAO6domCG1+LZX/m7z6mOFYP2hdSrxC134qfwcivoRskE90AE/dWql1enSTG8LPvzJKTpXmm83pgjZLV2bp6uM9cirllpvvh6hRF2UqHrkOC7Z7AS+8iPwZYHpJtOPVXfwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9KtlHuufGD5peeKvlvoLZW05IM8ehxZUNI2Gd/ZyBO8=;
 b=lnQFUJnlsktCfCfMtqVOjICTnlNIQxvpb2ID2n16//1fqg841RauG5zMalBI0+9koHUq94Xbmnfd1dIYLz08Z1iMtorT8QXtK+US6lmBE4rbd31Jj6ccp+i19hxFxR/JagkxnGAjUXr1b/6EC0hBcnZLvHayfaOFXRCFVeLqrYc=
Received: from CH2PR02MB6871.namprd02.prod.outlook.com (2603:10b6:610:8e::22)
 by CH2PR02MB6885.namprd02.prod.outlook.com (2603:10b6:610:89::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20; Tue, 5 May
 2020 07:39:45 +0000
Received: from CH2PR02MB6871.namprd02.prod.outlook.com
 ([fe80::d8a1:61f0:62fa:6afb]) by CH2PR02MB6871.namprd02.prod.outlook.com
 ([fe80::d8a1:61f0:62fa:6afb%4]) with mapi id 15.20.2958.030; Tue, 5 May 2020
 07:39:45 +0000
From: Venkateshwar Rao Gannavarapu <VGANNAVA@xilinx.com>
To: kbuild test robot <lkp@intel.com>
Subject: RE: [xlnx:xlnx_rebase_v5.4 874/1290] error:
 include/uapi/linux/xlnx_mpg2tsmux_interface.h: missing "WITH
 Linux-syscall-note" for SPDX-License-Identifier
Thread-Topic: [xlnx:xlnx_rebase_v5.4 874/1290] error:
 include/uapi/linux/xlnx_mpg2tsmux_interface.h: missing "WITH
 Linux-syscall-note" for SPDX-License-Identifier
Thread-Index: AQHWIq4+c+6LcXoajUSe60KAjMKlE6iZGiWw
Date: Tue, 5 May 2020 07:39:44 +0000
Message-ID: <CH2PR02MB6871EDDE2F3E723A7AF6CBB5B1A70@CH2PR02MB6871.namprd02.prod.outlook.com>
References: <202005051522.FyKtGLMM%lkp@intel.com>
In-Reply-To: <202005051522.FyKtGLMM%lkp@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=xilinx.com;
x-originating-ip: [110.224.131.92]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 522971fd-c552-4927-59f0-08d7f0c77b24
x-ms-traffictypediagnostic: CH2PR02MB6885:
x-ld-processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
x-microsoft-antispam-prvs: <CH2PR02MB68855D6728109A0D114DEC1BB1A70@CH2PR02MB6885.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:22;
x-forefront-prvs: 0394259C80
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cCAOzSrqed3wN1i7NZOPZSJs7M4ylXiPQARknhrm1Wt9nzJmP63ZA2X4iWun9/EcqCE5WujRMx8cILoSX8kMDS6keyQdHEQ4ul1ODsdUYfl/WjB2nnVY9B0EVFhDzoA6CTHeZdxXWBju/4E/n+tzL0dj8yj7vcLJgoPnzyDTXhzNjdyTlrRRRKqw0RcE97nWG9t1d3YrxhybfDtutl+DzaOP9MVKRqvXC/6qPE5j7tIHJQ1fL3Hz9nU5oJsmcbKezAs8eud/e+dcCXTRgZnGOl0Fqo7dWva5OatoCaCguzLkvYOKuMp8n9A4lxoyKIc7Z8T2e9UCBrnReTKMvWJHMTvbRvg+S8DX4r0ojo4MF+K0ld07MZ6Rr1IHF8TtPCYw4QzEs202Yp+Wz+MWDUAM25UEQiHuOUnaCtQtQ6+BtWCPpWL82DFPmfzJDW0R/asWhrV212Y9VsqwS9JHlGVGtdXpChqaaqxvNI9eKwTDUa/9VeeeBXIdlLLNwj8NX/fiBVsW5itfaphHi8qgQnOzfuWL8Gk5Oiv/5CgelsIXgBR/bqId2XWTu2/dbtqyjyGPwti7SDv0bwaSMqFUrMM+63MhsHHyMC46UtHyNmx/zns=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR02MB6871.namprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(136003)(376002)(39860400002)(366004)(346002)(33430700001)(966005)(2906002)(86362001)(7696005)(316002)(4326008)(9686003)(54906003)(478600001)(66476007)(64756008)(66556008)(71200400001)(66946007)(76116006)(33656002)(6916009)(5660300002)(186003)(26005)(52536014)(83080400001)(6506007)(33440700001)(8936002)(66446008)(55016002)(8676002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: uN1zaM8qXuDTyrwSThULZluz2Jca7Ll/7pmUTB6Bd/W7+wM8puaOj4ftI+BZKQ9E7XXWJ0hAbY1++9msXVOx9b+iuOt5t1T11pMz4VBUmBPpWL1btfNIujhUT+sSwHg6jhMUBULf5AQFWWrkwCm0eL5KEEwBnDLICVgLxPJR1eWf8ly9j17pr/r7w/8XuJYyk3a8FPVxNC+rP441NWNpNSht5igd2x1RwV8pQg++neP7DTXhl9Mw9phntmzQE7srKnxGUrFq6QG0z8IqWisaNNfjbYhWRQgg3WDVNnGM4CozmqZo3/wGf/DnCBwuLtmH7dZn24ze9pM6cl9LtlvvDqRrY6Y+NMtYwZz8reFHBR80Sjv43sY+tZyMNs1zG/wY1O+wuEuV8UpG5ALAJawu6u/yB4LVMIG6a0NHM0V4VfNnaR5othUcKEMEikrSKH2numZqG9vRyrIvdfllWvfRN9AduRBOVY5+4kzHiCvAhtFtXgeWv97qSSOsC8xO2VhXUpsZxedOaa4mBTC6T2bNN/C3Ky/R4JZlhgX2DKJUscAt7gKHQ8lIWSsD8AfZIpfHLmolYSFEqUCEQX1XuAsMLSh3g2gR4zU23UPeZOlILaCXR6ZFuWcJS5b4SfXrfWOOVFfNeAqCAklzgkKnhnUh6sHzqBteMrEPXKdo6p4WlRQo59zZ8Ne7MehuboTO1GqV5v+PgJsPVU4eh3JNAsa98EarJ4vwkGYvk/8OCn6UVhF6+gfYLKZYogw5ZUa2kHm8VE2BeTepSb5aqgiV6nLVuZGToYIIFw0xiUR8gqLhmlo=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 522971fd-c552-4927-59f0-08d7f0c77b24
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2020 07:39:44.9889 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3861YXMyAT6RLNsYEq7uIDYZxGMYbspcGfa5VYbg+E3idA6L2NiQG9Elc1ujwDGTcUNPaw+6ty3tqcvkwXxNBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6885
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_003948_913590_560A15F2 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.47 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.244.47 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "monstr@monstr.eu" <monstr@monstr.eu>,
 "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

I initiated the patch. It may take some time to be part of git hub.

>-----Original Message-----
>From: kbuild test robot <lkp@intel.com>
>Sent: Tuesday, May 5, 2020 12:53 PM
>To: Venkateshwar Rao Gannavarapu <VGANNAVA@xilinx.com>
>Cc: kbuild-all@lists.01.org; linux-arm-kernel@lists.infradead.org;
>monstr@monstr.eu
>Subject: [xlnx:xlnx_rebase_v5.4 874/1290] error:
>include/uapi/linux/xlnx_mpg2tsmux_interface.h: missing "WITH Linux-syscall-
>note" for SPDX-License-Identifier
>
>Hi Venkateshwar,
>
>FYI, the error/warning still remains.
>
>tree:   https://github.com/Xilinx/linux-xlnx xlnx_rebase_v5.4
>head:   e12386f224bfe787db71c18f2c4106e886ac98be
>commit: bf43a837d149dc4c51971b8698aabcbf7961d930 [874/1290] staging:
>xlnx_tsmux: Initial version of xlnx mpeg2tsmux driver
>config: nds32-defconfig (attached as .config)
>compiler: nds32le-linux-gcc (GCC) 9.3.0
>reproduce:
>        wget https://raw.githubusercontent.com/intel/lkp-
>tests/master/sbin/make.cross -O ~/bin/make.cross
>        chmod +x ~/bin/make.cross
>        git checkout bf43a837d149dc4c51971b8698aabcbf7961d930
>        # save the attached .config to linux build tree
>        COMPILER_INSTALL_PATH=$HOME/0day GCC_VERSION=9.3.0 make.cross
>ARCH=nds32
>
>If you fix the issue, kindly add following tag as appropriate
>Reported-by: kbuild test robot <lkp@intel.com>
>
>All errors (new ones prefixed by >>):
>
>>> error: include/uapi/linux/xlnx_mpg2tsmux_interface.h: missing "WITH
>>> Linux-syscall-note" for SPDX-License-Identifier
>   make[2]: *** [scripts/Makefile.headersinst:66:
>usr/include/linux/xlnx_mpg2tsmux_interface.h] Error 1
>   error: include/uapi/linux/xilinx-v4l2-events.h: missing "WITH Linux-syscall-
>note" for SPDX-License-Identifier
>   make[2]: *** [scripts/Makefile.headersinst:66: usr/include/linux/xilinx-v4l2-
>events.h] Error 1
>   error: include/uapi/linux/xlnxsync.h: missing "WITH Linux-syscall-note" for
>SPDX-License-Identifier
>   make[2]: *** [scripts/Makefile.headersinst:66: usr/include/linux/xlnxsync.h]
>Error 1
>   make[2]: Target '__headers' not remade because of errors.
>   make[1]: *** [Makefile:1195: headers] Error 2
>   <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp]
>   make[1]: Target 'prepare' not remade because of errors.
>   make: *** [Makefile:179: sub-make] Error 2
>
>---
>0-DAY CI Kernel Test Service, Intel Corporation
>https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

Regards,
Venkateshwar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
