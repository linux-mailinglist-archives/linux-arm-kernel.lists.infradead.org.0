Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C99A138E8C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 11:06:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GBN2a4AIeo5Gc2xtDbyiI7/2j0qWQK3GGsBuIBdeF4M=; b=eqq80/61y3Lphy
	RP0v6PyILvAD/UhLCulT+oZJWf0mpfYy5um+ZQyC8lJDm5Xi71jSMyvAmJxNwEa/hcd97CcrbPj7G
	M/+jy4n53PEnRVjr/YzXwHv4V8f2vOD27IqmZQmBLe3+QuPbR8DRTVSstlzmC+4bXGlsIhp3XMD6G
	W2NNbqQRi2tH8bdMjmY6njD4SWr+cZp44ruuyveLJkQjRLAW68MOAV0WIii/okE90aS0YjPZ4wIcJ
	6dN/No1ZcBV/3lRJqaNtMuxldDZpX6Qv15wnKABq+338uarZAnv5EdoTIcrLyaHaWyWWZFPRf2dcO
	Y8cAFG+YwJwa+gez4fFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqwbh-00042x-Sb; Mon, 13 Jan 2020 10:06:01 +0000
Received: from mail-bn7nam10on2060c.outbound.protection.outlook.com
 ([2a01:111:f400:7e8a::60c]
 helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqwbR-00040u-Mj; Mon, 13 Jan 2020 10:05:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zxd7HXxP7nSlakC/UDzkBuHn2cCvM0WHzbd54/FMobu048xPsqw6INDGBF5XKUJ+F2mfX9mnxCJe9Pf2YGFkLCvT5gpxrdc8YjQr7tE/ubduGyL3HRT+LmMnl+oHVP0RTglvXPz+a9JNy4t003MYvft9sctQNYsS4LNp9Lch/nzdfFSBuktOPKTnnoXgdZxSBu52Wt9W671v+jlm9CssONv3pB01pWc+jjbCvlMfldhabRfVIK+eV2aidW1RIVlTRTlFBnEkVrSUkO0gK+fgvh0gIqlN5ec15D0wrWNzU6iXToJrNNuvgwTqtCSXeBmVJbB5xxQibkXhIVP0v4mnDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y1Ebke6eveyxao7m6TM2J+k5u29xj8tTIql2r8ll4bY=;
 b=WTmfrLy16QlG3eWEryMR4RVvqhsW+PSZ3oTZBpPG1k0L0JhFLSiPVwrmkE+jfS6LESPsdNi/c/agjeSeLimXOPAldOywzLzORsfFqgkXTvocndglk4D/sgVc6P3KNcNB1c6GqGk83M+1CmofwloRpm12rVddFouBIXNVNBcUbJIv5c9tbEx7qimx3bGBl3IivgMy/gGBSnY3vNkT0+bca0mQFTYj1LfXKmatBO5ebjZS96qjIMyulWproBJpMXwguIdaensXJDJCaIe+lvGeYLPENTIXC+LQEjqZlehE2J4nFzSd6XrN+SDeyXsmq6wIyTnHLmKebnxsSPXmPA30gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=micron.com; dmarc=pass action=none header.from=micron.com;
 dkim=pass header.d=micron.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=micron.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y1Ebke6eveyxao7m6TM2J+k5u29xj8tTIql2r8ll4bY=;
 b=QNy8tJQU9UmXqIMlca4hV9kgbgY1zkL51cnZDiuMPL2/QW8GLG5sqT/XQmvnBqbQ95XxHQFLZRQxyrlqVyc9ul2mgLZA3syl913Lp3sTUpDhSy8G1KBcNBzGAiEWRo7qkSb0f5Ed8fkFe099zXM/ACnpCzulqieCjrbq1aDINWo=
Received: from BN7PR08MB5684.namprd08.prod.outlook.com (20.176.179.87) by
 BN7PR08MB3987.namprd08.prod.outlook.com (52.132.219.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Mon, 13 Jan 2020 10:05:42 +0000
Received: from BN7PR08MB5684.namprd08.prod.outlook.com
 ([fe80::981f:90d7:d45f:fd11]) by BN7PR08MB5684.namprd08.prod.outlook.com
 ([fe80::981f:90d7:d45f:fd11%7]) with mapi id 15.20.2623.015; Mon, 13 Jan 2020
 10:05:42 +0000
From: "Bean Huo (beanhuo)" <beanhuo@micron.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "avri.altman@wdc.com" <avri.altman@wdc.com>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>, "jejb@linux.ibm.com"
 <jejb@linux.ibm.com>
Subject: RE: [EXT] [PATCH v1 3/3] scsi: ufs: remove "errors" word in
 ufshcd_print_err_hist()
Thread-Topic: [EXT] [PATCH v1 3/3] scsi: ufs: remove "errors" word in
 ufshcd_print_err_hist()
Thread-Index: AQHVwwrtV1OULJKwiEi+1cpvXR6BU6foa4ZQ
Date: Mon, 13 Jan 2020 10:05:42 +0000
Message-ID: <BN7PR08MB5684F59B198544C9A470A96DDB350@BN7PR08MB5684.namprd08.prod.outlook.com>
References: <1578147968-30938-1-git-send-email-stanley.chu@mediatek.com>
 <1578147968-30938-4-git-send-email-stanley.chu@mediatek.com>
In-Reply-To: <1578147968-30938-4-git-send-email-stanley.chu@mediatek.com>
Accept-Language: en-150, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcYmVhbmh1b1xhcHBkYXRhXHJvYW1pbmdcMDlkODQ5YjYtMzJkMy00YTQwLTg1ZWUtNmI4NGJhMjllMzViXG1zZ3NcbXNnLTNmNWQ3MDU5LTM1ZWMtMTFlYS04Yjg4LWRjNzE5NjFmOWRkM1xhbWUtdGVzdFwzZjVkNzA1Yi0zNWVjLTExZWEtOGI4OC1kYzcxOTYxZjlkZDNib2R5LnR4dCIgc3o9IjIxNCIgdD0iMTMyMjMzODM1MzkwMDIwNTUwIiBoPSJQSGkrc2lPMWJOQWIyQkhyZlNwVUhWc0Q2QnM9IiBpZD0iIiBibD0iMCIgYm89IjEiLz48L21ldGE+
x-dg-rorf: true
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=beanhuo@micron.com; 
x-originating-ip: [195.89.176.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 533dce1e-65aa-433a-18b8-08d798102650
x-ms-traffictypediagnostic: BN7PR08MB3987:|BN7PR08MB3987:|BN7PR08MB3987:
x-microsoft-antispam-prvs: <BN7PR08MB3987F31F81FE0A46075A5335DB350@BN7PR08MB3987.namprd08.prod.outlook.com>
x-ms-exchange-transport-forked: True
x-ms-oob-tlc-oobclassifiers: OLM:400;
x-forefront-prvs: 028166BF91
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(346002)(366004)(376002)(136003)(189003)(199004)(81166006)(8676002)(54906003)(316002)(66446008)(64756008)(66556008)(66476007)(9686003)(81156014)(86362001)(2906002)(66946007)(478600001)(110136005)(8936002)(55016002)(76116006)(33656002)(26005)(186003)(5660300002)(7696005)(7416002)(6506007)(52536014)(4326008)(558084003)(71200400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR08MB3987;
 H:BN7PR08MB5684.namprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: micron.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jESaNOGIXWyRXRT1VnG//c/2lG4fE9kKVhXNjHPmtVUaSQIETTA4sVs3AgZkBDzv3/Mt2/wLza0OaDfksek40mVEbUy1Gc0lulQfzruEf/iGd7cn0oztGarniHlDzi9JYmJ0kLUJQVt0bvAsJVXqWbZAv0+nSoJf0T60yZVFl6rve4eAfoRggEuglOYa1QJkQA1MtfrIPxDMdYOnhUMXsdjC5L/thkm7OAHYyifiPXolICvnGyyLXh+hVymR/yC2ZPEpifWf1L71DjIu44Su1aFEuUAdKYxTyTk/YlfFTT8ICs4ZbCUlmVQm5putc2WW+UHV9CDmc7ZgzDNrU34u7mZZXw1vLMlT8ugfZASCtfUgh8nwcvvashItp8qeHTYIB79VQIOidsz9Gh6Wg0h/Jb+w9zKelJ9JxNrSjXsp+crKbth+L3xGVT5M3wnBRd6d
MIME-Version: 1.0
X-OriginatorOrg: micron.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 533dce1e-65aa-433a-18b8-08d798102650
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2020 10:05:42.4354 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f38a5ecd-2813-4862-b11b-ac1d563c806f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 85YbZ5ks6XsxvyHABZcaJilnOrhncsfmYYog76WgLeAm3GfWdHK21uqhTqHNFIA0jsh4PSKh+6GZciCjVuta1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR08MB3987
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_020548_075267_AF6E7FE2 
X-CRM114-Status: UNSURE (   3.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Bean Huo <beanhuo@micron.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
