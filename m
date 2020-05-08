Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 030B71CA54C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 09:37:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X0DzuC2MD5BGzoR08v1sUhK/dCas8ICnKDu1o95c5Zw=; b=lxwknVx69GH8Wc
	0jWE8DQAa95/9kLiNvxd4asEioAMKET+CKSv/0/pixNYU00J29n78l4CJBL5cHZ0IKg0Ywk1KvUGD
	AMotF0xNTb861UcdffyHcBi6a1jO1yP4WyJ0YAzcbCD8fLPleYrjkpNFdyVoRm4/uuja0741hKVHK
	4yIYZEtiPvTFB3A9Ghhjm5LoBsu/iY1bsQMTBGhEDs7ptiLnBTcL/tC7dch2D3Ixk5okTlj/jxOxi
	ffAMiJkIok2sNBQ8P5ZnrAz8HmrQGqcL4inNw279b4pWr1JmfKfvjGoPmd2nGgOLqSyqAv4Z86PHw
	V2LxX4HJLLQAXJ3tBA4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWxZD-00089y-TW; Fri, 08 May 2020 07:37:07 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWxZ4-00088e-43; Fri, 08 May 2020 07:36:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1588923417; x=1620459417;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fZn8HD7caSXnzHsB7/Vyz7JIs8xj44L2oGhRrD9AMBE=;
 b=bKn7b/+ujdDGBO9ZHL8P0dZtlZNlOQ75MMcfE4RRrXnVE9dVkKQ47e5G
 rbhA9v071cKvOmgKcojAEBCDplJ2QTz4Hp9V7J3wvNmOMhoYDwN1zlWtH
 ECfaImRR2NtGSHPR272EhZjgjLc/1Ov65jsfSatMPq30BP6kJD48+MJzt
 fDgTjhhgmkkcVKKnM9ExOa5lVrItpp8GRaeiY5oQQWTS1uHqAKqFERY8Y
 llAH/9rtoAUieZgBAV0c3To524NxCpfRB0X1O5qA628w7i/MiplQu5blK
 bgKnNcvkTnio+hEqPBzWD8QjSQGPtFbZTsIySZ0QqrxbJsV4mtfwPjFdb A==;
IronPort-SDR: nks4wXpSt695a8uiXXG4jVEmP9lncoB4mSecPJB+m3Ux6mn5EZLoDXhp9IUZTgPRQMILpE+fdM
 gOuo60+rAMrpagwT6PMvOeH5oqag29aVJO5mKNy5OgH5e+rrXT+SgrsyTJBFzwd3tK9h7/LeKZ
 DAmd3u0k2dy+gNfxzK8VuuvimqaneJMxjfM2sRzAaVHUrocdFh14GyFHzln8o71r7dszBYUNPf
 bTV4dTcAv5V+CGP+LKEtFRTaJqN1FZtybKtHHc8RxNsLYAmL/IK+v41tIDFFx7oGtU+a3fQ5xe
 z8w=
X-IronPort-AV: E=Sophos;i="5.73,366,1583164800"; d="scan'208";a="246093460"
Received: from mail-bn8nam12lp2173.outbound.protection.outlook.com (HELO
 NAM12-BN8-obe.outbound.protection.outlook.com) ([104.47.55.173])
 by ob1.hgst.iphmx.com with ESMTP; 08 May 2020 15:36:55 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JXjDwfhzu2axdvl8vw/JaejLSy1DGtomiRUECFNsz/ORtwW0wfhO5vylI4fpJM7r/LjAJ+8CFQmrDiXgEAF9XbqEqERq9C8VDc5tpWTW6qwww4tKsUbKUoKLXexYBYGRx4GIMcph9Vk9nsrJC6fFE5MmTGzedEk4NQL9PHcXhl57o2Bvpa5j8r5kPndQx0D+16diljziuxe13FT7KbU/YsQarT33R76hxSdORv2m5nCeC1hxhkWEGBEQZwe+SrdlfHHKAv08p1RF0MSPOCkuWYH50+J0eKrIB6uWA+tcnPFCxkVcxZ+55+2SZC5b/c+ieWNh9TvbUBTIR8rDyHHKNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fZn8HD7caSXnzHsB7/Vyz7JIs8xj44L2oGhRrD9AMBE=;
 b=FqQ4aTTrhv5/bW+O4DoZghBT57uj39q/kWMVFepW4/TvCJkM+j0+hs+vMOstgyBypzoS6I7f/+oFPC5XuQtTZPlBzDGiAsKrQ1btUkvWzPXmrGvyBo6MFBMeYvuTzFGRfVD5b8eJNCFWV838t7lIR1omIDo8dL22CXdoOgoEi4zyLdeQn7gnBdNJtEI2PW3Lm4g5AZ6IhIkUnFynDyY+g8hsLK8vwt9t9Wa51N9SmxWRiCmQv2gLn1z9roM1krKutf6vRuWMoWhWNADj+cbei8NNafv7Zy9R4eB4DSwaOkodaNDvcRq6UBpSlswZc+5FjXwZDXWVXJdf/TXlJHRgyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fZn8HD7caSXnzHsB7/Vyz7JIs8xj44L2oGhRrD9AMBE=;
 b=uz4R76NSRDGEkNJnwjzUzzKu0UNWsnRr3075ECXTe/4aJIM6tXYcGbB8LACBd9pHJCeVUKDS2MZnqqTxKQ06wybcd2oECCLAXG94BjlVjBG7sUoagI5Jf8GzBXIIxeXmrul/PGpNou1I5LJKc/zyl7q14lI8w58yyRm/PAOgubg=
Received: from SN6PR04MB4640.namprd04.prod.outlook.com (2603:10b6:805:a4::19)
 by SN6PR04MB4845.namprd04.prod.outlook.com (2603:10b6:805:b3::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.28; Fri, 8 May
 2020 07:36:55 +0000
Received: from SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288]) by SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288%6]) with mapi id 15.20.2958.032; Fri, 8 May 2020
 07:36:55 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Subject: RE: [PATCH v7 2/8] scsi: ufs: introduce fixup_dev_quirks vops
Thread-Topic: [PATCH v7 2/8] scsi: ufs: introduce fixup_dev_quirks vops
Thread-Index: AQHWJN9vyvDUN/l65E2Sf7Nqh6cQFqidzPQQ
Date: Fri, 8 May 2020 07:36:54 +0000
Message-ID: <SN6PR04MB4640B34E49351EFAB5C185D1FCA20@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <20200508022141.10783-1-stanley.chu@mediatek.com>
 <20200508022141.10783-3-stanley.chu@mediatek.com>
In-Reply-To: <20200508022141.10783-3-stanley.chu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mediatek.com; dkim=none (message not signed)
 header.d=none;mediatek.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [77.138.4.172]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 3ecf238c-d5d2-4f6d-8ca4-08d7f322950b
x-ms-traffictypediagnostic: SN6PR04MB4845:
x-microsoft-antispam-prvs: <SN6PR04MB484543091461459139AD376DFCA20@SN6PR04MB4845.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-forefront-prvs: 039735BC4E
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gcejRt62uzJ9mz2l3g+o5+HKxiTK4ZeuHnLoWFDmCDnigZ1sPDY61LSwyl1QaiT85QaASJHyipGDY8HRFneYuyow9cS4LBXDzX8QsmFLYOTf3RbD6HDZlMbgXniBh4f2gIONqrwYUZOml6AgYqd4dSxjJGSxkMxCL3n/5t3Q5xjFmRdkFzl5JIZ2WN9mwjQuRPJKJuetwxMBzGMvbxRH/6TCwKNUQpC2dNOV94QdiixPCd+X5Eu70BIDxKzTRziuvuKmQRt+27+Jh2/+lup2aU1e7LK01w9xyE1b/0zwh47IfTyEyZHXc8V/56P+Jr6ZEMW9u+PoBj8CN0A8MSR+3PDU+v3MON4U0u/jpuQmwQ5LjxDggyYCkGrGN3ftpuzx5uRZfjZ2YQivYwv3OGkqP486KA3XS/8JdIMihjtDU5HeakNn4A7yJrFtL696I97hHYnmdBE7EBDBqAnFL1o1RHPnXZfktVoaYaXIaf8R43AfFswNpjbp6yTVRI9dS/+MM8a+vZJdKqhChueRR6HZEw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR04MB4640.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(396003)(376002)(366004)(346002)(39860400002)(33430700001)(54906003)(66556008)(7416002)(316002)(478600001)(76116006)(66946007)(7696005)(5660300002)(33440700001)(83300400001)(186003)(8936002)(83280400001)(83310400001)(83320400001)(83290400001)(8676002)(86362001)(66476007)(66446008)(26005)(71200400001)(4744005)(33656002)(55016002)(52536014)(9686003)(64756008)(4326008)(6506007)(110136005)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: iOaSTzk0Zd6GrpxKYh+Z+g0/IcXVEF/aFR+zHD2fDuAgQ8mPbhfcIgRvY+VbsgIHdjKwHL0BZ4b/i2pyzBjDv6RkX4AYGXrUekeparK++QwYjcWDjj+o+1P0C8i9JpNNPXG94tUGFOO1XRf2VdO5GE2DNtawnyf9qrspln7Fw4H9bIpeB5GtyiTn31dKiXhS6ztSNt/yeRhBKhO+3mLAFCUFOI7T/DuxpbSyS0gWMMhIILqXvsiB/O5tSFj7OVxPAfOhL2NInwDsHAT5ryE2EJexwSI8FiwoCkYKhP+lhRyMeItEPD68qpLNr8+JEe2xRBKPo+S8unVTJUtzXMyEa/RWb1atI28ofq7CeEY1OgvDhzEjF2zRerP11CQb1nCgD7c3YEBaDyRkydUW5L/5LX42kPsMntxnU/PiGBCWInhvkDc+2bPp7wMeMUOAQC17l+/466giqr6G4aAz91a6d59jI4ptrWCzX2DhX7fb/Rk=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ecf238c-d5d2-4f6d-8ca4-08d7f322950b
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2020 07:36:54.9785 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: scPdgvA3KVB3SV5BN1Ss+hqttwFthH5BAKp9Zg/J9PzHPO6ZUdSC7EY/ceiNw2RPOm9GnnlFsHJWbSr4n59GqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4845
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_003658_180134_196CC7CE 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
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
> Some UFS deivces may have required device quirks or have non-standard
> features which are enabled only on specified UFS hosts or for special
> customers.
> 
> To not "pollute" common device quirk list, i.e., ufs_fixups table for
> those devices mentioned above, introduce "fixup_dev_quirks" vops to
> allow vendors to fix or modify device quirks accordingly.
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
