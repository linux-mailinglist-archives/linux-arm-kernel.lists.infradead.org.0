Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD17518FC2B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 18:57:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JMjdM6CG7HR3t8mPQbcwzanGvCQRu3BGY4pssx+dnek=; b=KxITp6oBl5K+V1
	QoJrCjo08/MC5GaPkG9afDqr+Yuqa47Ym61RsskU2J7c2twtN1WsnX0vLG8CuiJsezUsFOuAa0fgD
	4xcoETQjSNeremBDTLfbH/1ETveaDDat9UMHU3kwNmsmV1PYaf9e1CYNPTJjxu9K4nsM8hoYIitQl
	IHE294lNbSixDgVZ6r/Gvdjxsa2VNqQU56+gJD8UfWONzKzG5LZuLFmY8R+o2p0USN8lMhA5/sRmX
	TNRchGpHoKPjIMmlXi7t8/ANIGxwuKi2YeLWdhXf+Ife8EARBjxIQ1j/xGaXK5cbVSostpHQ5/kMK
	KC3PN77M6fnyvgYq7HSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGRKY-0004In-UC; Mon, 23 Mar 2020 17:57:42 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGRKF-00049m-FL; Mon, 23 Mar 2020 17:57:25 +0000
IronPort-SDR: XSmrdQYMRxakr+UvHi122eqauWoMR4pXbbndVHt6vB3kYU/9UItnUUmUCipqFTeQDZJX+gkbpl
 Cm8J7EZk28qxIPjf1L9q7fbbOAppZUduCBl+kSZ6iJ3TWHokn/iQYLHx5Wr8KZI03HcMhxINpM
 23gCZdb5jfZKrB+TdcdIUGBTfqP0GnLeNPYvDYHlsI32cKRiHUeAPvOm+MiSSXC5hMz6y46git
 wK6OnCPwSayBsjUliSP8mbPlvX/aSwXCFfyAViNLVfIykCEvinruwrpPKFEUIgzISdoVMtGGBA
 rt4=
X-IronPort-AV: E=Sophos;i="5.72,297,1580799600"; d="scan'208";a="70964770"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Mar 2020 10:57:02 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 23 Mar 2020 10:57:02 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 23 Mar 2020 10:57:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UzQskDdqYA5sr7bZEOSVlrMOcPEZa8d1g/yHgUxVOoFz/5d8DbhwHzPDU6TC+Epvj8lIrYDiXUaYEAo3mwo01Atb0XbtsOXlhx+3VBS3ZYS8yATawpDYnwTiTPxSU0RYuVSUA7Mio1jAHUT58flF+bVbmSLn7q4nRi+j7AFdK5EsTZiVgEydejczoJeSMkuCw8yX+GSaIkgwuV7XO4S2YXIVkU8dhIaj/FWzmZAqtxXPGynlXgS4v9hW7q4hSnrVFi2x2bRwa43LWVpxP4E6pv+RZy75HRh6/cJGrkqNnRrJIPsqalgutrpJhFYHKljArxbrKdeHC/3MsCjdk3jGnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RLknpR8qIUH/NTM48rvSJn8ntHIYvx69fE0ZrHkOEiA=;
 b=RunMgiJik9Oy3LMYiLiYEjiIz1anBe9ace2dHcIPdQdSHdEbciuvII1/gxncAskAcxkH09FB+4Lnt9iO8TK0wjsYaSXza9rdJrWzYiUvfhtrm8svBGrhXIDfVcll3s/QzfLwzf6RnbsqlUk0d2f8NG5N3Vhe2bwSC6siVZY2Yuk5f8i++yxY3idGfVON/sdtuKXWCGyQi66K3T36LpamVuStbEGUgeNHwfA4CQC39OfHrXefLRUzkUe/ByMR/EdmosgXbdgFjXazVhZjT43zRDgnIOs7jFhqpxbUm5yR6p0OK+slF59+DrjQC+ZUTqueVlaV+ghBZMSXBNua6RPu5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RLknpR8qIUH/NTM48rvSJn8ntHIYvx69fE0ZrHkOEiA=;
 b=kGEr2PRuVPcMSIIiyG3vVn3rlL2QObipJynvmsc0FNFdeVuO/ZHDXYCraDi/vlAZisCLKYotkXFvzuSr3Tha5qqwh0ewDA4ZTAh71GFtks5dVQT0EQQ2K4sFdtiJCg+ARu7wUJq9Fs74bTCL8Xas6nkcat6cH2G6CnmYKw7JkJk=
Received: from BY5PR11MB4419.namprd11.prod.outlook.com (2603:10b6:a03:1c8::13)
 by BY5PR11MB3925.namprd11.prod.outlook.com (2603:10b6:a03:182::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.22; Mon, 23 Mar
 2020 17:57:00 +0000
Received: from BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::e918:9196:b47e:9692]) by BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::e918:9196:b47e:9692%3]) with mapi id 15.20.2835.021; Mon, 23 Mar 2020
 17:57:00 +0000
From: <Tudor.Ambarus@microchip.com>
To: <lukas.bulwahn@gmail.com>
Subject: Re: [PATCH] MAINTAINERS: update entry after SPI NOR controller move
Thread-Topic: [PATCH] MAINTAINERS: update entry after SPI NOR controller move
Thread-Index: AQHWATxzB3pzaldLS0q/vR8lNGgubg==
Date: Mon, 23 Mar 2020 17:57:00 +0000
Message-ID: <22897927.UjJTgWM9OM@192.168.0.120>
References: <20200321064217.6179-1-lukas.bulwahn@gmail.com>
In-Reply-To: <20200321064217.6179-1-lukas.bulwahn@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Tudor.Ambarus@microchip.com; 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b028224b-4a9d-4421-0995-08d7cf53966a
x-ms-traffictypediagnostic: BY5PR11MB3925:
x-microsoft-antispam-prvs: <BY5PR11MB3925F42478085D27C38119BFF0F00@BY5PR11MB3925.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0351D213B3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(136003)(366004)(396003)(39860400002)(199004)(6512007)(53546011)(9686003)(81166006)(8936002)(86362001)(316002)(478600001)(2906002)(54906003)(186003)(26005)(66946007)(66476007)(66556008)(66446008)(76116006)(64756008)(91956017)(6916009)(6506007)(71200400001)(14286002)(6486002)(8676002)(81156014)(15650500001)(4326008)(5660300002)(4744005)(39026012);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR11MB3925;
 H:BY5PR11MB4419.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Xg08fyhdEMqHemeyiNoWogOeosi6S1sxlipGFR/XemRX2asRWB1OlvTiM440G+wrCideQnUE00k2Vj4MobwQLHFfpMHT79A8lmzg4j2B3IxpR0F2f5JuDCvNsLMSPvZo8laZVguNFk3pst701V47YvJL+jKlr+lcl/ey+lNlwyE+FGGCxOuFqKbFaCWobJBTpdYSQXj1xLe5jyd8GI/xqQDQid1R3SyTxp8vJF7GODkW63jga7aaG/JRRH9vG73KBa008CIzehecqNc9FCn4NVv8uehv7487yGREgeMPINdsKMyT/wqM0jCwXmP0MgmrUrRZj12SJDojfb9hAHkYf5azF0iF1mu+mECsLij3ucPV0la+hFuMlu2ARg3fGEzCTgqU7T4/rrtzJX+CdFVRDrHySGelm7MqlFtzAsM1Ww1tFosVmBJiS6ibXRdSqr31nL+1lNEI+LY3VC6GQIouJaSb3L/j/AtpQoOAbvg0pV9HlFpSwFBPL2sSMBSGMEFN
x-ms-exchange-antispam-messagedata: qywx5mUZD0KrZXMejv1SPDaQS/mFltBrWgbbT8O9zDin/DyCPl17PBLUjW81De60sA/tmVP4C2zZ9k7LG6BpvLXJ+zc6o4+6mvIlGi2R5HqTT9LwndqbhZWQsdC+M/Q1RKw7Fc5lIfNpCfNmSj46JQ==
x-ms-exchange-transport-forked: True
Content-ID: <253F337988CC1D479FB10CD757D5D7BC@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b028224b-4a9d-4421-0995-08d7cf53966a
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2020 17:57:00.7392 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: F6a2Yi0lm1uUc/GOoEe0dxatx2ZXFuCXcrLoEDOcAl+I/rBVnghnxrkfWE+Q+upiNSFq0iVYt+YAlBsUfUma1G5wcUgFepXfftsKqLXutcE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3925
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_105723_542589_DD123550 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: vigneshr@ti.com, bbrezillon@kernel.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, vz@mleia.com, linux-mtd@lists.infradead.org,
 joe@perches.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Saturday, March 21, 2020 8:42:17 AM EET Lukas Bulwahn wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the
> content is safe
> 
> Commit a0900d0195d2 ("mtd: spi-nor: Prepare core / manufacturer code
> split") moved all SPI NOR controller drivers to a controllers/
> sub-directory. However, the moved nxp-spifi.c file was referenced in the
> ARM/LPC18XX ARCHITECTURE entry in MAINTAINERS.
> 
> Hence, since then, ./scripts/get_maintainer.pl --self-test complains:
> 
>   warning: no file matches F: drivers/mtd/spi-nor/nxp-spifi.c
> 
> Update the file entry in MAINTAINERS to its new location.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> ---
> applies cleanly on next-20200320
> Boris, Tudor, please pick this trivial patch. Not urgent.
> 
>  MAINTAINERS | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied to spi-nor/next, thanks.
ta


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
