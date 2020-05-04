Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B88A1C3711
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 12:39:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X7lZF5aK7Oof0ms4XgbVUolNOOBd3Xq04RRPM3dWn5c=; b=e6Lq3ZTrefOE7K
	MFb/BStwB4ijAC21lc8j+mi3Ed4sYo+1QUWag0FPh6PBm4bGSfPcHl09Gn6WCPM45jer2A1bYbapt
	NoHNtpY8YNeNHxOmuiqwhzQ5dTCFb09Nzuw2PrZrbqR9izIwG70ndhaZsJ/S7l9WIv5fQKtWkkQz+
	lNqmr5jgehOLUfNXvyJv7BscTXdZKqd89kwpvSD1XIqQPPUye1Gd1jFMIjG1PZtev1mUvOK3Y1mFA
	d0Y2TGGLDnHNOBJ6HA4kQH7WZmjYpEWTOjei3SRnJkjlbwNkS8meN54SEEhYC+KwaKaSA4gKqzQQ3
	Xbg7NJSD8w8JfvWPInsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVYVC-0004A7-HG; Mon, 04 May 2020 10:39:10 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVYV3-00048Q-Gl; Mon, 04 May 2020 10:39:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1588588741; x=1620124741;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FwXG+TMXpunyUVasdokpmJi7frTG6neYxSD/E/O+P/c=;
 b=K+d/jKw07462IHYmthDiNevrvx9Vv9yLD0td0ivrJXFLEmhmgpj0WNpY
 AtFB9/Y6CZcdm3n0SQh/oaKfmRpxLnQ+jmYsrucMu4HFVkplKtVNtxgBi
 RPCjJ6bQX51xnk8YsBSswupWrMSIETljo5gu2Cj2tL8j86AM+C/z3HEXF
 09W7Xon83tLrmruP7XxLjKxIWOyGNRaAlaG0gblhmjDP5M7PjRlyeVBKQ
 0KM+g2aRhvA0rDXf5mUsLCVXURuke1+2GjmrH+ei8R6l7kOFQMEDLpdUh
 KNC0H36qHo1sm6qTqKXuZZ+Pj3x56FON54ee5b7CFurWub2k21ivO53RU A==;
IronPort-SDR: mAo7J/fFckCqxXpG4f9exYON51t2J6LaW/P/4K+hBGwsQPELkrffUOMUcBcI7gDdM+iUetOkSQ
 yRZ1wr7XJ2F+VsceKK925BHkBtGxYSqxjBVUY+Ovcvl3tMMqMsNvjLy3tt2Nnz6mKTexIx2Anp
 LN3Oyf+uzJWFCrPxpVfcjlbhfP0v7NQEg26b/wxUtmA4fJAG7dEZGk93oHzMwNuL94vvUf2gfq
 UnIX2+pybq+a+Uf/eHRLA9eZHCyQV5F9Zcmi85CdQeG+N6fX5X1me/EGcZTBo3FHowGn54Luyb
 0NM=
X-IronPort-AV: E=Sophos;i="5.73,351,1583164800"; d="scan'208";a="245702817"
Received: from mail-dm6nam12lp2177.outbound.protection.outlook.com (HELO
 NAM12-DM6-obe.outbound.protection.outlook.com) ([104.47.59.177])
 by ob1.hgst.iphmx.com with ESMTP; 04 May 2020 18:38:57 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=loUPuMA8Y7W1e93H41wwCXI8SqCEes4Hv4kIcvVSdvFXbTzhy0lrKUFrCrwgHo+0mtnFqGE2SgC2sB37wDtVKJscshuVpz7WCcYtp7rZqSpqdqlcVGY4OGoAmei4UHhRrSXWPsMQMCZ1vI+25YOGEhpdnd8MgoAHW6P3b9nwtH2wRSpw6D9fl5c6m5Gi1RDTPTH1rC8zNqkgFeG68nEMS5YEqq4GHZe6n9qsttAGSzSXQaDRZZLwno6FAx9udiATqFzg3HBziXxQ9Sl0Bt8gomeCtgCvYVji8hizJ2sD7PSJtDJ8KWZ2HxG2dWlQSTterHVfqOxwCwcvZ0wJuL3KgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TTMP2XBQGRYyLVgiFyEHb2BSzLlGfqhcihiAh4a3UKk=;
 b=lJZOk/pEeKFP9L7GWZkI8V8RP71dnnHngiCXPFJMwRqafYLqSEAqBi5ZBouoWMxfaZbb5RlGOH+UBWpaaw/nh2tuR14l690juEdgkcKcvrIHwlfU+dUNXQ/S7q1hoHO7bWLowdPq6k5ZL9B5lJKR+5tJA0JIRoUp7rifDhLQxDYAF8lk0attNtYk7J5egzEEJ2N/TDcQ9JXxEAHtPXjGTkotcoT8mLMQgh7jiO6YqoDs77rbWD0K/NNNCNolnByXUzKoJrXY937RIX940xbTCYuylh8oOvaaO59OKhn/vuyHNETxnkCyd4I75Gb/RwybH9CwHqsi71dSc9M0YA7AoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TTMP2XBQGRYyLVgiFyEHb2BSzLlGfqhcihiAh4a3UKk=;
 b=SFOqvkZvEUZ3f8mbQyDUyCAfZVjYm/3ePPeGbS9VRzFNvy/9WP2as3WVoZCqNE4xd8FIZp1fEMHg1Rhez2roAs3RlT8Hj1LqRBPMgE6TL3MGR7WlfMUyLNsMdCN7xtji8P1f/xys9cTdf5p/SL7ZBjHRqw9hwZV858VP9KXVGdE=
Received: from BYAPR04MB4629.namprd04.prod.outlook.com (2603:10b6:a03:14::14)
 by BYAPR04MB5815.namprd04.prod.outlook.com (2603:10b6:a03:105::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20; Mon, 4 May
 2020 10:38:56 +0000
Received: from BYAPR04MB4629.namprd04.prod.outlook.com
 ([fe80::75ba:5d7d:364c:5ae1]) by BYAPR04MB4629.namprd04.prod.outlook.com
 ([fe80::75ba:5d7d:364c:5ae1%6]) with mapi id 15.20.2958.029; Mon, 4 May 2020
 10:38:56 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Subject: RE: [PATCH v5 2/8] scsi: ufs: introduce fixup_dev_quirks vops
Thread-Topic: [PATCH v5 2/8] scsi: ufs: introduce fixup_dev_quirks vops
Thread-Index: AQHWIT7PzG7CXHcWEEulPGYE2+Uu5aiXvauA
Date: Mon, 4 May 2020 10:38:56 +0000
Message-ID: <BYAPR04MB46294C86DB9BD1A91256F39BFCA60@BYAPR04MB4629.namprd04.prod.outlook.com>
References: <20200503113415.21034-1-stanley.chu@mediatek.com>
 <20200503113415.21034-3-stanley.chu@mediatek.com>
In-Reply-To: <20200503113415.21034-3-stanley.chu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mediatek.com; dkim=none (message not signed)
 header.d=none;mediatek.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 791adb35-f763-4f3b-d22f-08d7f0175945
x-ms-traffictypediagnostic: BYAPR04MB5815:
x-microsoft-antispam-prvs: <BYAPR04MB581511CE2BFADDCBCB92D3B4FCA60@BYAPR04MB5815.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:1728;
x-forefront-prvs: 03932714EB
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: o4pChki1X8iMKkpLsr1BzPW50MAko4+Tzc5tYqQpR0h332x7SGEY/WsUGGX9+wIr5HT6KQNnzVMAQexmVZVhcdBnSfwNXogenkSnQF1sDyTEN3Lp4xJuxpLM1aCAIa1svL7wjgeJgHyRJzV9vlvXORFnfRuCpgWWL05u7U1WViBV/aAEy5m+pAWbGHI/mJLTlt5e3QaVIjWLHySlrwhZx5tbmg37zL7ki8lrm9RUfCqDFJTuuXL2JzwnpGJ9ZkLaZjXm+wQ742W7Q8NHcr4LkF9V723iSIkEl6ngCKHHUC8X346eD/K2YwBac9MRmlO/0YsOZrDTlZNbmApdzSd1zkJnD5HtHgls6C8Qu6+sGDDwe2CgE7LtK5Q/PutXRYfyN3PI1vMGSho7/TGhHLx631vpFRIP/58heG54iciy7/hIEmDUaoL7H93Zr7HRFyMs
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR04MB4629.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(39860400002)(136003)(366004)(396003)(346002)(64756008)(71200400001)(186003)(66946007)(9686003)(76116006)(26005)(52536014)(55016002)(8936002)(54906003)(110136005)(4326008)(558084003)(316002)(478600001)(33656002)(6506007)(7696005)(66556008)(66446008)(66476007)(2906002)(5660300002)(8676002)(7416002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: xw7W/MPdOBlH+5/d/4sdd+ULjm18HsHJhMhEQ0tnPiDbnKS28llL8SrM9t63tgNYwvjQDK1XTNLLb6mHgP1aMqFTMEp+pieJ9zJDxtGK9TI4StdwvEddoaXWVA7Vrtffx2vHRI11TyWQEGRUAx/Qusqq+gfYuM/fqdFkC/6TT0oBpn0WuQSw5JPrRRKl/qyGi1NVCHTf02rhHlc+GNoPrrcx+fs8KLh8F/ss5GYLTos2qSUgynbvjkYD9sEBlHKngZ9iCfijBtPxhzIbbrlesHcncT1S86LM9oCyrxOwY6s1L/ZXN+Jx/oilu/agZbBNAhYv9/xuECITRuQDfm/Fmw+REZR9BAj4wVAm0e7d4CU9eLql4Rg0riEbEFZruzCbBlXaTg0SgzmV6Qw3TV9vE3ICv4nyOxcEDm0h0LVinvzl1JnlwonL30j5DFXXYO43o6eDifTTpui3DAeFnK6i5VUpM65nhc1nmb9EtcWVxQTSqNX6W7lVAtMk2y/Gr5tgb+sqbG57ZpnzqN142BPYs56Ag76GeQDqzMAloWH2cRx2T5H44tS6RnoggQgcxeQFCIkXumXnsLCgG63+/4WJMxYDoNgC8QKOf85M4+p8G/K/9sqyvIpMlZh8yi4EKZ4i0ZXdP08xYONkMOWJf2IDnmrhNt38wu+xJd3e48KVmjIX6deqKih6/K49hDN6ZLSHL7b/0nrJutrBGoBp+bHmyAf9pltXlWbAVeAYm3FdxEV//aFRrw9tY08eCBtR9+riYCK8FFBtgQ//dd1sX1uS7MUm2iRCtDv2t9H1b3fwlBA=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 791adb35-f763-4f3b-d22f-08d7f0175945
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2020 10:38:56.7357 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lKieLbBUq2Z9wIt92T5B30cBIPOak7cxI9rpD1YfSnoNk11cZPBzVGNA3+9UYgN2dodPp66LXsijAWYulwlcHw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5815
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_033901_572560_C5F80318 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
>         ufs_fixup_device_setup(hba);
> +       ufshcd_vops_fixup_dev_quirks(hba);
Maybe call your new ufshcd_vops_fixup_dev_quirks as part of ufs_fixup_device_setup.

Thanks,
Avri

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
