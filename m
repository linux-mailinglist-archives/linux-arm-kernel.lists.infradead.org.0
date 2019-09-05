Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C03CAA183
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 13:32:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=BClnReGDH8g13zUZrdpG1NJStgiFSKwNUJWqCKgE5PE=; b=pheyvkMIUK24ii
	N/JBsBxmqOJ7a8MC/jCuVr0SWm2lUkNkVERxCLlS1DW7+vogmLLf62Odr8f6zP2I3BE3v4AnzoA2G
	0Hk8ZE6SNXOyv3lbCuoixr75l/c8UAgNhKm6aiplnD/E4v6SUucTpz0c+a2ytwOxPy2Y1IUNAxfqh
	s7I4aj0kGhs5WmVT//OV9ghBOZmfL+81FsxCssmA4djY6nwDl4UHfuMwR3G5S8tDhwZWEAxEqzrls
	0gBj8nqybqux5d7r0LO+9agbXdwLGd+rWaLYghthje3kWfM0+8HuReHm2miWp1NqLCFaMYsaMHR1O
	H3dTB5/j+i1/w3K+1xrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5q0L-0008Pu-Mc; Thu, 05 Sep 2019 11:32:45 +0000
Received: from mail-eopbgr10054.outbound.protection.outlook.com ([40.107.1.54]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5pzq-0008Nd-E5
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 11:32:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FkGXp3y3Q/2OwyTxRmfjJxI6T0S0wkIKiBujUfZOJdbM1WjJaT21vLU/xpExsGqakI8MXjIJ9oWiZk/rjzu8r1+FReokXGjoaK2tvVb6Bty5iwXOQm+5RPne/Z9q7H8NhaPuhTS+F74MyERO73lKLo6w1XxdsujxwWRyD7JBT8A1oOW7W1Ft6FdBY5WwvGo0fWO9QKPQTMO5cZoMbT/X5ErlshNEirZgN1mdBsSY6Z6KHOAVyhORyMvdtqnZTxPYYBlhmQSIIagfMTJSWpH62iFoJYGUTYWvm0A4UMV7U0q7VdnuJiALPXyHYO+W7HcCLTWy10ox2ppg9Pjqc1Cq3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZBI+FYX1KFSBz1ie9G32vFr88YGL2wi8tUzmwVkl/Ts=;
 b=nioxZGrDqGAsHbpXXixBMVtqrH0PTNUdrRk1JH3IOItMhdwCBZJxJMFJuMHnpk5K02kw4ORcxvMqjRc1gNEZIN5gGCwMbkx1UMcKhaxzx1B+YIpIZLycSy/ZLF2CJbLmU4pT3nAvgiZ4X8ReohpfXc7c0bYRtTyv2uUz8Bl+sEKxHS+8nwM80uXb4ez15LLe6A+hbOiojD5FaLC4HQi+MNECu7owYui9lSs4fQBnZkr/ZrOrB4MkKy7Lyw6HYWKJOkN2Gp0Gn6rT5A3YxldtwiGxcWJKNZJmAL9OZKxNz0KZEHb4iTiYBpn1jk4KYqKqO9M800TEEiSEMcl2Cofcmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZBI+FYX1KFSBz1ie9G32vFr88YGL2wi8tUzmwVkl/Ts=;
 b=CVXIwvFz/vhR4PeSfuIT9NX/9uv5rzNL+2WAZG2Evu3yXXZWzqyjIgdMFyzzYfSlUbjCmjxgm2CxN0B+8CiRxJSSmGclpuJqyhM0wKVAH+AAUF3qWQioFneLIKVAOwhu1ivxqEKm0qFjOdUzHZNFqur9UoSpZCfruIy95vqeqno=
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com (10.175.20.18) by
 VI1PR0402MB3549.eurprd04.prod.outlook.com (52.134.4.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.14; Thu, 5 Sep 2019 11:32:06 +0000
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::19cd:9f82:31ce:fbbb]) by VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::19cd:9f82:31ce:fbbb%8]) with mapi id 15.20.2220.022; Thu, 5 Sep 2019
 11:32:06 +0000
From: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v3 4/7] serial: fsl_linflexuart: Be consistent with the
 name
Thread-Topic: [PATCH v3 4/7] serial: fsl_linflexuart: Be consistent with the
 name
Thread-Index: AQHVY92MysyPIFyCEEuEgtvcGJKDEQ==
Date: Thu, 5 Sep 2019 11:32:06 +0000
Message-ID: <VI1PR0402MB2863B0A0D1D12FA9CC2515E2DFBB0@VI1PR0402MB2863.eurprd04.prod.outlook.com>
References: <20190823191115.18490-1-stefan-gabriel.mirea@nxp.com>
 <20190823191115.18490-5-stefan-gabriel.mirea@nxp.com>
 <20190904075259.GA10983@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stefan-gabriel.mirea@nxp.com; 
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 47e1512b-c3a7-4c74-72b6-08d731f4ae9d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB3549; 
x-ms-traffictypediagnostic: VI1PR0402MB3549:|VI1PR0402MB3549:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB35498FA3B82BAE402303654CDFBB0@VI1PR0402MB3549.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 015114592F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(39860400002)(376002)(396003)(346002)(199004)(189003)(2351001)(53936002)(99286004)(76176011)(52536014)(81156014)(102836004)(74316002)(6506007)(53546011)(54906003)(7416002)(4744005)(81166006)(316002)(66066001)(305945005)(71200400001)(6436002)(26005)(71190400001)(7736002)(1730700003)(8936002)(256004)(6916009)(8676002)(5640700003)(186003)(478600001)(7696005)(229853002)(2501003)(66446008)(2906002)(486006)(64756008)(66476007)(66556008)(91956017)(33656002)(6246003)(5660300002)(76116006)(9686003)(86362001)(14454004)(476003)(3846002)(25786009)(446003)(55016002)(4326008)(66946007)(6116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3549;
 H:VI1PR0402MB2863.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: YScnS9d/ZqGpteTPFTnJ+IzbzrwEDgKzXgySvYv4RMTxgv9MtIym1wole8sfgfEAOarYF79Gl59+FY+HUuXzN0XaHUZacm3DrrOJEBiGKyXZVNapLHCBOI33W4p7xpLIm7f6dmWJbgfM5Ezg9e2xMG8a4AqIkLFwdCU1jrHqbzLIC3PLW5/T7LQSN2TWjmmk3uh62AsrdoXf+cclF/n30nyy6UpzkB5jR7jZYnb78CrH75SwwgMMK04ccT/qtNWrC6TrvC0f51+KxJiX0+Zcx1Kvlh4S9LliC85GI9aOqKPa8Vs7nJi2IutqPVeJYaKtKNLf872vdpG2As9XV+/lirlwhdtVomFSbqL9ZSmY4XAy5jdB/0/OiT1B6D/Ggt6ccpFWxZpRU/TP+t2g4jF/VltV8kmTyAH5XRtzBeW49eE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47e1512b-c3a7-4c74-72b6-08d731f4ae9d
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2019 11:32:06.5650 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OVesSTo2T03B86FCNLPE1Z7ckD0QO5MOIpe0AMvV8z3bvoAi6RWegT3nUl0xPtXkutwBqOKMF+K7xKxyj/D5jo0yh6py+zRFKWUKCSXvDRs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3549
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_043214_582253_606D0D37 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.54 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Greg,

On 9/4/2019 10:53 AM, gregkh@linuxfoundation.org wrote:
> On Fri, Aug 23, 2019 at 07:11:37PM +0000, Stefan-gabriel Mirea wrote:
>> For consistency reasons, spell the controller name as "LINFlexD" in
>> comments and documentation.
>>
>> Signed-off-by: Stefan-Gabriel Mirea <stefan-gabriel.mirea@nxp.com>
>> ---
>>  Documentation/admin-guide/kernel-parameters.txt | 2 +-
>>  drivers/tty/serial/Kconfig                      | 8 ++++----
>>  drivers/tty/serial/fsl_linflexuart.c            | 4 ++--
>>  include/uapi/linux/serial_core.h                | 4 ++--
>>  4 files changed, 9 insertions(+), 9 deletions(-)
> 
> Doesn't apply to my tty-next tree :(

Thanks for letting me know; I will fix this in v4.

Regards,
Stefan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
