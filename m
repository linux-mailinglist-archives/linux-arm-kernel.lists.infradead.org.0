Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C71C1CDCF0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 16:19:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dncVQbP2eOTAC0+yJ/v0+6Z+sKtHsqPOaBK02hoTkMw=; b=j7XzgW54EprMSB
	7KPQ9ZhO6gGzLtCcBjBlEXBjdb/5GFvIo8TlhLYJtiyUAzdZth7mnjDk8yABjg75svnN7IK280XJY
	86EH+q4EkUtT2tvzuTPo72cxdEvejAZkCO4I0/JVjOPqHoszxP1kYhdFvioDCsBIUtuPaA58UAJk1
	vcaOo59CQKgCLFoXjdg1nLH9x3ERGtKYh3+TMPLs04oqDgfg9cxPnxFWI5OiJwDHsXRLVzFICEWVu
	Ptof9zV+wLD/8sKzEOkYkOZepmEKDefsLZ6ygdxrBrNHm6m0o3Xa0I/L6CHtcjWnM6DM++YCWR0Us
	LgkbJKEWEqcYr+fOw0/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY9HV-0001uW-QP; Mon, 11 May 2020 14:19:45 +0000
Received: from mail-eopbgr00044.outbound.protection.outlook.com ([40.107.0.44]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY9HO-0001tm-I6
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 14:19:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QAOc/rnGD6RT2NpZMSOnun2LyZWRKNXxeCqDjgaTlw2vpLoyXXqdqocHeGyoITbPQOJqnL9/K7bvPyRf15TDcIGzkojrwAF9zvHvVSnATXYdRpsIZ1/cZZiA/1KBOaNgPorRR512aZwa7fWauLMkAyTKBqfWKqfW2rEoY4fhqlofDk/op05x5uQSsxYyY4zLxrib7prtxym8qbVLHTy4iwMBW9iOQdupBy7hdgFQkB0ZNqGEeuWAUEt1APbC4/6ijkeibhjQXhnMyrv+Cdxp/jeaL8g4rpxbpNlz72SJWcP9r0KUUJTG021El3Bc5azU6NiA52aCE/2NBPcNAQNifQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mUkTUCcExqaKJA4Rj2+JEMQ9cc7Gp1JpAhT6Eg2RVtA=;
 b=mNHXmFYxkucE3ivzVN7eqeyss4d3Ko9HMe3N/U3QsjzOAoTsNkDWrs0dZHqBh9nndFVf7mPgIdWqN1PD75TQm7UYK97sXhy0P45bF/yKU40C6nHRW2WZSeaXJbzID8Ap/Sry0EmlL/c54tl5mNGR4NEgoy/5mSME1p6bx0RRY0/SQ+xhpgZEmX2dS8xoMZBRzXvVtVtPZznzRVnRU88iQG3IACjgi4UgENrGsus/tJ/hQQOc3A2KrCxDqqli5JRdzAe12pH62XdOfcV9T1l8ye2fMn/t/1yl0Fqskn+dBrwjgmcPOd/cX4YQlZvOGH9zGYTtO2Rpzn8ENLCi2iUFhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mUkTUCcExqaKJA4Rj2+JEMQ9cc7Gp1JpAhT6Eg2RVtA=;
 b=YB259rZYNpcetv1AexuI1YJ3cmdXlXYOEugHxLkNu+wdAIwbJ5RJY5tEiGhr23jvKo+gaichGVBGsaRcMfrSTcsqzblYD+0/oSjIQiDFeizdysDVmGWr7pXRn6EjDXpxNxJTyeOYZyCOvjtqLesm7WjCFUftuAALJdZ/87XhZEs=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4294.eurprd04.prod.outlook.com (2603:10a6:209:4a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.34; Mon, 11 May
 2020 14:19:34 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 14:19:34 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "p.zabel@pengutronix.de"
 <p.zabel@pengutronix.de>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "andrew.smirnov@gmail.com"
 <andrew.smirnov@gmail.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH V2] dt-bindings: reset: Convert i.MX7 reset to json-schema
Thread-Topic: [PATCH V2] dt-bindings: reset: Convert i.MX7 reset to json-schema
Thread-Index: AQHWJ4yy+z4Jpw7g40y+P/D//QH5jaii7ugQ
Date: Mon, 11 May 2020 14:19:34 +0000
Message-ID: <AM6PR04MB4966123682B6883E41BA6CC780A10@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1589198262-21372-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1589198262-21372-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [218.82.155.143]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d8042e9e-ee49-4c55-c1b0-08d7f5b65450
x-ms-traffictypediagnostic: AM6PR04MB4294:|AM6PR04MB4294:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB42944FA4A7B408AC2905306880A10@AM6PR04MB4294.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:605;
x-forefront-prvs: 04004D94E2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wXNkEe1CYHoyr0td7kWKhJa9k7b9mHbElhnFegVI2mceEDqBxwxpDSUyvaQhqVO49uWqe2mnUBxHIBnx1bP4zmTvRwoyvyliYeWBH8hf25OQ6vpz3Y6vNhhR3n2LFdvLlH7tfYPKhlqh1b6XOxgNaQx+n3KfltevCBY9YcjWLDBKPVJlAYce8bRVCKoDSzSTMKIDMQLIjNbnso58txtu/eS2FsZBR5QDpLimAjJGuhp7Ifd7uyrG8Q//y3wU5cWv7sS3w+hEB56IELGEyvqPbTAoQuTGfbAOZriZ4vyp3L9i/LikaHM3wnrdZZ9uuNFu9U6dhBw9nSq5rW6ptwCCfqsVgksiT4nm+l9GAnkXAeX2FwiWclUqGNp6iKpOFAA1jsgCsCEQAbN3SiUqZqXqOupvXYieUoZsfbrBFq1LyIWZumFYUtOxZfz45LEuGt42RXs2ChRz7pgW5CqINyVJA0qHbedqEdBH49949gQLhBNnU6UqCSJJpPIMZHc52zTIbA8Hk27pN6RpBH1hC43OaG2sHd+7Ou/BKKdprftjDKA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(136003)(376002)(39860400002)(396003)(366004)(33430700001)(26005)(7416002)(478600001)(8936002)(6506007)(186003)(7696005)(8676002)(5660300002)(71200400001)(316002)(64756008)(66476007)(66556008)(110136005)(33440700001)(66946007)(66446008)(9686003)(558084003)(33656002)(4326008)(86362001)(55016002)(44832011)(2906002)(52536014)(76116006)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 4NYtl0wjx4wfwL9wyPe4xM3b0mhvVw/MoE3BdXtkF6yW+miSjg/T3ec3UOUuSYkBefi08Oakvh1CL8sjVBKfFeZJDyc5HkhhZM4l5uv5siy7AejqPhvKTYqKgI9yFa/WA8qN6rnuRDqXB4Va6c5L+ne46zBI27/q2Dc0ThdZijHUJTzWAX5xaoIaYM4erolqZGztFIrsn2TCxoujUIREhMwmr7srSMlM/khJo+6kptXxktHIJI/B/8qpl0VoBh88xGngErftLOXgXHITvaYtTMuUEr8QGEvDB4n4wYDv7Hnt1rcdedQZysZhQX28aPrXbUQZr/jwlTy3ULtVDXEebnYuYy/Zh4TG2iYI6nwnAI1dZsPNnJEdsEysjO+xwnFylO1ULo1A7NQDu2ICj4w39VhxPCrRyIsEi52HneUW1lib23ChjoJSI1lxFXgUuQtcFstVoE1Dg5JVQQ6J2CM3CE+nKypkUNVAYEp1aghmAYToN/HDIRLvsfpQUB54wo/o
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8042e9e-ee49-4c55-c1b0-08d7f5b65450
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2020 14:19:34.2646 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6faGv/7QGxyuAeRbh3zfDU+XvtPDASFxd/hV4Yvy7WCdhdg3o/cBjmYrbD8rY606A7ASLgnB5rYGrDgxe7VJnw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4294
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_071938_697726_2B5B4510 
X-CRM114-Status: UNSURE (   6.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.0.44 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.0.44 listed in wl.mailspike.net]
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Anson Huang <Anson.Huang@nxp.com>
> Sent: Monday, May 11, 2020 7:58 PM
> 
> Convert the i.MX7 reset binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
