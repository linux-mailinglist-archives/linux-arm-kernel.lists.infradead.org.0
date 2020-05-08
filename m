Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E762A1CA55C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 09:42:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q/DJ+sg0m/7JXUwfr1w1Ht+VWQ9aXbODZ8mjxZwQvR8=; b=tpuLt1gfVosk5v
	QRahGlExvjlwLjbzx8ICHctArogWDM4cPJNBZ+tV7uIDtIc5UkFwZDPeMf7w4B5C5p8j3PAkjEjhY
	lgbrNIR8d9eUSoI+MP32/8r/wO5UUXxU86MiFi456xUa80tpSVFc/rAxKpdVHON03thjD96J8iS2s
	6jXrUcGU7TAilJKUiykRyjqnvwuzkuEWFCAB/bpz7EK60/m9SK7VUXrleR42omwpPLjnMoYBqfUuR
	e+NGlRPsZvaNHISeV4lXwaeYhY7KAA9qqXw1rZaT44N2uGYDOt4C/96ILVcFr7anPoOp5cSbZJvjj
	CDjiGHGRytfsC8/p/T5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWxeE-00038I-6E; Fri, 08 May 2020 07:42:18 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWxe5-00036w-IR; Fri, 08 May 2020 07:42:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1588923729; x=1620459729;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=I37AgaRdpjbs+nxjHGbDP0sZ2qQFxRvb6fyyt1mYazo=;
 b=URAm4YlFz/4wu0ek/Qfo8/dEpHfFvIr5h2IBdHl79KtT+2kBL2rb6FAg
 L1XrIh9uy6M8ePylZ9RlNEewKDwwZ/Rf7+DcfsKZCiTkWBaDSPt1D7EqV
 gmpQ0kAxXO3h7yp4SISkO+u2AacfqLtEVSTeNv8w0efd4QPuFX08C+Fdz
 kIcZ4uaFPmVw82a/cAIEWo0KbGYNp5XLIsL2CA+lRRC7cPwcNqOAHw08S
 HRQUF0AvJOzNcjLiy08AW1oB0qA8mhPT3zMJRUSNtKIwrBlu4hJXIgv+K
 DoK0t3TLzzpedP9qY0PWcOVCJzO0cGHOCAVLWTppTPwxaQ6A0BptL1Xh0 Q==;
IronPort-SDR: v5cUdVYlXsm6JbbwUAuEn+ST/kVbT3WyoDm6mJj7UB5LN5xEv7LN/Ris9c8+ivD7+7W6a+xA4C
 GLX2oX4DNlVD+q7JiPM5qCfZXuOsyA2Wj7M9A3Ge6s7nRG26n40a1NiahI2CDttsaSMNAXAnbI
 2H6vuSIGd9Swc9mOm0jt2zqko4agVjGlZpa59Gie8HsfJDKwNnRlqTalZcK6AQUESRLgMyV0g8
 4wnNDnNVvPXyLU2vi9e8GztMVxmQIYHFvRDoYxPCfADVdYZ8yf187QwIHjySjfMWYjlBPyMfiV
 6mg=
X-IronPort-AV: E=Sophos;i="5.73,366,1583164800"; d="scan'208";a="137546072"
Received: from mail-mw2nam10lp2108.outbound.protection.outlook.com (HELO
 NAM10-MW2-obe.outbound.protection.outlook.com) ([104.47.55.108])
 by ob1.hgst.iphmx.com with ESMTP; 08 May 2020 15:42:06 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mDI/fpAKgBMtYG2hX5siiP/m9dUwzW4t9BNUeHreDSIcl4I0VfwHzewnnRLlpe92eXuRjKHmgnnY6AKJ16pypkcXNmi26CrVFJGC5TNJINTAYWYtIfoxNQaXSawj7LZrOQ3qo3XosFTv/r6TUII0dvQoBV2nGIvah5BiU+pYWT40Md0Cc01VpNk4w43Dyi5hYsHm0MliEklgHjc07SlX/MZf056dGIDmRjEIry87sEJwRaIAzOQcVl8MES9cQvEFLUTwnAjvccJVG5uWtAGkewXu9gm/56/xCGvuIFI1fGpAdbtRw4kbcmmd95qsMv43YWAutTZt58L6C1obZHLIDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OI4rR2ix2q82q3FwbT5MS+j7w5GRAA+rCYccx2AkuBo=;
 b=Cnf0itkomUIQBQ9XHm5cT7HRghV2zPokWvdC/P099xudFoV1+6nMUSzOgo5H+IVnN8Yv4uLh1BpJsN4akxNuY/t9+mgB+JqjHnkpI6qOHNKeyutTi6ZKmLuY8M26N1riR47dkrSTxNaqBy4Z7vm8dSVhBvABe4YqjnW1Z5dsWrsxtozCKvIIyowpv8g9fhLnspdvwDG+iC8x9qt9opzCvRxFJ/+IDOg8oF7FdxPmE2VlKhw2pMRgBp9uZ4ztIudS2fdOejjtCtEb13112TuqRdrR7YZdGabx0Pf8yvuGaLxid4kTgXDzwKMgCMTXCiXdf9q9GzF7o4zWh/BfUZZtTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OI4rR2ix2q82q3FwbT5MS+j7w5GRAA+rCYccx2AkuBo=;
 b=JPsiNt/sPnj97+jrrWZ7Vic5npVADZ4QZoVZxH9eawN1ljp54BC/YRLMi132bhVHqNFZWRnjPY+u6+O199B0IlXRgsQQ/HWAHOZo5EnGPXQC+mxNth3ifFGXG9HyNiHXROy5NNpp3y5Vwl017DGvg58uwDWFMkcmhNln80F2PPo=
Received: from SN6PR04MB4640.namprd04.prod.outlook.com (2603:10b6:805:a4::19)
 by SN6PR04MB4160.namprd04.prod.outlook.com (2603:10b6:805:35::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.29; Fri, 8 May
 2020 07:42:05 +0000
Received: from SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288]) by SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288%6]) with mapi id 15.20.2958.032; Fri, 8 May 2020
 07:42:05 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Subject: RE: [PATCH v7 3/8] scsi: ufs: export ufs_fixup_device_setup() function
Thread-Topic: [PATCH v7 3/8] scsi: ufs: export ufs_fixup_device_setup()
 function
Thread-Index: AQHWJN9wfVRdkxFSx0us2APo8GMGyaidzbPQ
Date: Fri, 8 May 2020 07:42:04 +0000
Message-ID: <SN6PR04MB4640777E2AEF4A77A642B81BFCA20@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <20200508022141.10783-1-stanley.chu@mediatek.com>
 <20200508022141.10783-4-stanley.chu@mediatek.com>
In-Reply-To: <20200508022141.10783-4-stanley.chu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mediatek.com; dkim=none (message not signed)
 header.d=none;mediatek.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [77.138.4.172]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 2ace9186-ff57-4f69-4f12-08d7f3234dc3
x-ms-traffictypediagnostic: SN6PR04MB4160:
x-microsoft-antispam-prvs: <SN6PR04MB41601E6709F207164F35EB7AFCA20@SN6PR04MB4160.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:1201;
x-forefront-prvs: 039735BC4E
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SzoA5B9hh0q790wd6hld7tPzLUz8lgLsHs97O4KtnZIJSJW0EEe9d3buXIzPz9tSWdD14RAidQ7fLr0guOI6YtTOK1qpBOvQvhMOLg8OOmAEj2QYtxZOTFRrT0Ux5TPMV191X54N1QytlxYnFilCaUTTtN2Ji2zLI8SBherdChBNe8rCgNYLrOGqXnz7fuoDFyfiRreCZRAhLT3vbY3eZA4YlZb6W+E8gsYPINcAldBMS3RsQ8tM6HZ5RnxIMWqDzjiyvygAUGtT1u6C36kHNOGELg7XgDLR027Bt6WVIwhbfd9xIm4VYtajBGFO2OWD3oeCbPSJoKhfAeEnzoYYUg/HgSU44ciL2Rih4DOmY54wBMxbe1RRriFRr4g4E/R5JISlbjpwWWKUpEQXh3jmSFJQkVnjTiU5Zea+tWV3Uq5O2cqsOAD17S0gmK/s8ADKa3FEtyIv4SSiVeA7f+KSAyljzFxTBUsqvwRIrHeKrneNJ7UohNfCvAPC+6+KpkQnwBl6x8a2B/OFvEwrVM3EqQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR04MB4640.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(376002)(346002)(136003)(39860400002)(396003)(33430700001)(33440700001)(478600001)(55016002)(83320400001)(76116006)(8676002)(33656002)(5660300002)(316002)(71200400001)(8936002)(186003)(110136005)(558084003)(54906003)(52536014)(7416002)(26005)(83300400001)(83310400001)(83280400001)(83290400001)(9686003)(2906002)(4326008)(7696005)(66476007)(6506007)(66556008)(64756008)(66446008)(86362001)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: EwL00SeaswEj5gPo8LIgWFieybVq2HGIZqDNIlGwg4SdPCC4YfrZMHnXrybHzP3+e2jVKmQuioVcvKjusami706g7e7o9gZeXMALOnzq1iPn8AeV0u1xcHCCjmLJxJl3K9oiC+jN+3Zs7osOj+O9uTuRKXHWnOTLM4++4PByGJScgk6CNSLdhyFEWzN794KHuhXd3QZX5NhOYmMwJ+7keG3yhoshjdJiAhh+Vh25sKxihKpnmsiEvrOTuYehNWi+kLnGDQM0BxACyM+b4AqpsS5C/j094Y3B5K5scCgvMntjQb6PV4LfHHcT1AU+lKXIHRDxXscTA09oWTFWP/tKfYT6LhiegnKrNX5bbzlva9bbhSdqkyPXuZsRzNaZWcfozzgDPoGeOP12A2t8OBkMZHi7mPdRo9Wutm5SGTyRWkBla+Jkb+xWQgjFq8tr4Q9FZljtfcmVg49zrS/NBAqrMRYp29x8pDKuKN+zFSSUPRs=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ace9186-ff57-4f69-4f12-08d7f3234dc3
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2020 07:42:04.9375 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lfgxevXsjmkeYOr9vA3xkFTwczCf6HANctkYezQqr8cvTuei36Q0iHWKLppF+b+R1IA1VQ5lFwnwWbiWKX3D5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4160
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_004209_640284_EBF1ACA8 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "bvanassche@acm.org" <bvanassche@acm.org>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "cang@codeaurora.org" <cang@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

 
> 
> -static void ufshcd_fixup_dev_quirks(struct ufs_hba *hba)
> +void ufshcd_fixup_dev_quirks(struct ufs_hba *hba, struct ufs_dev_fix
> *fixups)
>  {
>         struct ufs_dev_fix *f;
>         struct ufs_dev_info *dev_info = &hba->dev_info;
Now that you are exporting it, maybe return if (!fixups)?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
