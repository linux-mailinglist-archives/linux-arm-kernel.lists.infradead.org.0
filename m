Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D8A1166C41
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 02:22:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=smJ6ojW/BXDoFKaNnPQv8pXfNv0FK7pFjxdDUFdtD8c=; b=DnyQoogtudH/4t
	HoKV2vq4gm/7KBOY99w5zaNN3rmVN+vaT+SXNmGdVgCNr8yhfYGod7wjvD6fZVQ3sisZh+Sj9abxj
	0HzNBdcVf3MmF7XeV0Mc1GpElmlc+I9onoARa90EHnQxj1scrTxWD81mRS1hhcIRJNgubdSS779uT
	HG05P0zXybBjtpVnSply4qUbR8i0GX0/cnBNtOfMl/mgndUvHZzv6eNvLGnjw50AtmYPW5kum6JTW
	j7HHrfnzBuJySTjxedcD87yAAaQfPpsZGLDEo9cPt73if2W8iUjRhb2qGOhK4DgIW6iHqAE0bS77c
	VtdSs+TSt5iSSwsKbrbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4x17-0001n9-I5; Fri, 21 Feb 2020 01:22:09 +0000
Received: from mail-eopbgr1410094.outbound.protection.outlook.com
 ([40.107.141.94] helo=JPN01-OS2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4x0y-0001mm-QR
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 01:22:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h5hBVG7azj9EJCIuvzof2zMgoksELummaMFQWcQb49lnX+W3kBTBaiggwWmHy2gZM/XRfOblF1QCXNllclCMd5eeI4blC2YZqX+Nc91vbz14nQyEJG2V90kY7KGp0qk3og/QAjbAbNKo73vCU5f+/SHe//gB3UEBjCrZrixT5i2/m+C7Lsi1G4lyXmw25poUrJXf9nVQJ9BsOPK1BrXycwChB5VJxcvSXD/1htelzezMOWmnEZMektIPWpm3dpBbbLzIhYTCweP4iEBRHcDUNHQcbxtYkMfnza+kn/Noh6OH3gNR5+H3gcdsoFV1cZ2I2BPKVDnW5MC97wNjLAsNvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5161AfVXEkcFkWF4JI9+8jEUNa29i1G0GB4GcaRt694=;
 b=MPD2eSuHhPqTt2oPBBSXtJx51Bm05yPvDSpj8CJYWl/6sw4roD+VU5Cy4jM5IGn4vGWkFdMEp48TulGXFlpwsdmLZMWet+2RKdoTD5RWLSRUCb//yakqPjdDe4vzsh0BS3RYV1PtT2kZvVuaEzZ03pc/IdgYkr6oxZk9vdEhUHHUNcC4IokGBAco9RS0E2Fn65uOsemQmqmzUNxds3qV/yjzUBn7g0pN1fHi7XgZv5OmaCYydD83ME2wsdiUfsgk5RQ0NkAIzwDQo0uVGLLKLBnokv06XSrHgAMhigJDBjRQAZyswRL+JdHAf7nLiA2QwyOTg/Ji4o4Mm9/l0rJgjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5161AfVXEkcFkWF4JI9+8jEUNa29i1G0GB4GcaRt694=;
 b=LJGyhNnuS9kVhujFdbxxyyLb4may31rbNEV2cSCVkAetwyUYJwZKoVznucDQH2t3xnO1q3wPBd8MGk4OWzRREbqFdE6PKGrLEO5IEwDG5CdMm7p+bul3XmVPlLdGH9XkIscYpdR0WsPnVhcrBcvJa3u7+s8Dy1thJ+GfxLPrtkQ=
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com (20.179.175.203) by
 TYAPR01MB1981.jpnprd01.prod.outlook.com (52.133.179.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.26; Fri, 21 Feb 2020 01:21:52 +0000
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::318b:31aa:4212:bd49]) by TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::318b:31aa:4212:bd49%7]) with mapi id 15.20.2729.033; Fri, 21 Feb 2020
 01:21:52 +0000
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: RE: [PATCH] arm64: dts: renesas: rcar-gen3: Add CCREE nodes
Thread-Topic: [PATCH] arm64: dts: renesas: rcar-gen3: Add CCREE nodes
Thread-Index: AQHV0rrj9t2+g7Tn902BcYcYnn287KglBN7g
Date: Fri, 21 Feb 2020 01:21:51 +0000
Message-ID: <TYAPR01MB4544754F7A8BE110F24CC6BBD8120@TYAPR01MB4544.jpnprd01.prod.outlook.com>
References: <20200124133330.16121-1-geert+renesas@glider.be>
In-Reply-To: <20200124133330.16121-1-geert+renesas@glider.be>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com; 
x-originating-ip: [124.210.22.195]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d22f49b5-186e-42d4-0e5a-08d7b66c6e88
x-ms-traffictypediagnostic: TYAPR01MB1981:
x-microsoft-antispam-prvs: <TYAPR01MB198165332852E4A16F6981E4D8120@TYAPR01MB1981.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0320B28BE1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(136003)(396003)(376002)(346002)(39860400002)(199004)(189003)(6506007)(5660300002)(8676002)(478600001)(4326008)(86362001)(64756008)(8936002)(66556008)(66476007)(66446008)(76116006)(26005)(2906002)(66946007)(81156014)(52536014)(186003)(54906003)(33656002)(55016002)(316002)(7696005)(55236004)(81166006)(9686003)(71200400001)(4744005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:TYAPR01MB1981;
 H:TYAPR01MB4544.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ufxr1aSu7k06cgPtdoKS9GVh86hRkYi+Gi/scvqR8PH3lwxtqTv306KauOKDm5VvKg4MzqzinvnYQxwDvBGcYDJn8/QqEAtDa+Yp953ORPNjz3Z0h5noQoFYt7/pns+feA0R19wige/xOcqXWzoD7Y+j37sz/7ipfxa/OxK2RqKJjn72YVMw7ZUITsiPKCXcKYQMIntu/i1kumjQkNigoCjkd3JM0j0MqASgdMaFM5vq00WMUi95x7lRULLCtTwXonY6nRLnM9egPqlzO+eJS9RiYzF04KTIyp0hS29+wD3bP5JBYETc4mACzZN5/MXPZp5UCwZUkINreP9mJLeFgPPjz8t+fP12PQjjiAi1pIkmG9JpCi+jhwBAC39xMEbo1+oL+F4JgD2EDmQjk90FmYbtll9ihQM4k1EKPr7wsvdb1yyyfbc/EuRU/N5C/jaB
x-ms-exchange-antispam-messagedata: NshrRwzjckjvXFC1Ic/JpUjw5nkTrdFiMH+eZSGfRd+iTOu35Sccvlj+pYtPnQPOuk2Gq8cgyUU2HUxFj8AKvkq0gFxd+pSTP0wpultrbi7yMPL3OQZh/2bHZ7iNMmU32y5sim+RWPYqQQDD7f0Ilw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d22f49b5-186e-42d4-0e5a-08d7b66c6e88
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2020 01:21:52.0469 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6t4rYArW0iPRIzevA3zvc7bfFKO+DyDyDi2pUjX30pkdNCKSf0IXzQnrlpHUXY05KvVDwTr0Sj8w2n0MUWsD2iDdQeLf0COJHtd4+TT5ZEvBpUsViy5uDgEfbaG1RmrB
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB1981
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_172200_917784_B728E2BC 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.141.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 Gilad Ben-Yossef <gilad@benyossef.com>, Magnus Damm <magnus.damm@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Geert-san,

> From: Geert Uytterhoeven, Sent: Friday, January 24, 2020 10:34 PM
> 
> Add device nodes for the CryptoCell instances on the various Renesas
> R-Car Gen3 SoCs that do not have support for them yet in their device
> trees (M3-W, M3-W+, M3-N, E3, D3).
> 
> The R-Car H3 device tree already supports this device.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Thank you for the patch!

Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>

Best regards,
Yoshihiro Shimoda


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
