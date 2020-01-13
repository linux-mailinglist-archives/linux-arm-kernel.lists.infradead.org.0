Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57FF6138BF6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 07:46:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q/mQWCuPioAdgqduiVqiz7cnp/kk9PoUe1rzYM9u6ZU=; b=sact4+cD3rdTdG
	AXaD+t4zZpRF3EYUw2giTwWNKZK/JNLrQm0vA6KSWeQ9PYzX7Z8V8/V35bm9AIAWLmIgJfIozZGQT
	Fc/AC4q7jw6F8iZ7sGJw8MFs+Rdw9KV6B/n9abZ2OyayhPz5ktlfjEqeYIZ5rN7kfV/CvZCeNyOse
	ccbHV/C6SmABDyRkeuQml4fm7MGS66XP5h/Y8duKXn6HeRlrBaBv1Ly3IG4OBCihlJdhz0v5yys3O
	qSKhm/EF5SapOpD25fAZD0jwyZg1PjJxerRdD21aJqdci6IbnMvZ8xYVBBrQRgQiUp3vMqwnT2tpm
	JU+tSxr9tcJ9QixIgHXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqtTy-0006Yn-7J; Mon, 13 Jan 2020 06:45:50 +0000
Received: from mail-eopbgr80082.outbound.protection.outlook.com ([40.107.8.82]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqtTn-0006XG-Em
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 06:45:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RXT3NxssAkyOQauTEZknust8+ISQIoCkcTLTnPm5lgJI7TSWyvnlP+44TjGqAUZCUhQ3GSwMB3RZ6qjtbzdlH0QjOckXql6pARWJ/9T+vLJwVofLwpW5nLFyk2V2wwCfG99MtFdkjE5wPI7+UhWoDOBNHaYzfhWbLRhn38nsqfYNi8cP5lBrZMbpozke5Oar52k4EbAaZ+Du6wHJo4GDfB/lFr2jM+vXMMPHCe3aFzhXuwoSstFXeWWfL/WlOahUlVaCGkKmaaN+y66M3R2NDDpfgzxGFI2uAmIjeq5MBXJAPckAwKx/M+mmacrwc1VucqqQn74kxR7D3QJNFAIEUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0AqYxbeUjev659w2GF9CDhC1hBk4wSIEV3nAm3LD1e8=;
 b=UjZy6Coo38kp+KywMFravV2eYxvm9AL6b5kjFjsaPaZuS3NCbFKCAmH8sdk3wQIamRxpV/M5rk8v4Q2r2foSLZC2IKsf1qegkZ7NiLaTbqkcZhDZQMgl8VFGlDM/6I1LNZ0oNbLV0K5fQkMYR4zN4tK4GrYoCstXJw3zV27wRukj6NZ5lETR4/tD+F+5eHsGjcl0Z/iB5MzhtEP/dZBdoIKjCkgOvVdOiFnCor1DiYxThVShQ4kpcmImuhR6Zu9PM2eRfj/BLhKEwhUpyiA0CRoDwP87DwzFdHjKseu4KwNHWS1K/hlj65D9mWjfpBG3F+FFtloLGIJmZl3eUgOvsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0AqYxbeUjev659w2GF9CDhC1hBk4wSIEV3nAm3LD1e8=;
 b=nUG955hDbmcAWlTxnW92AI+CD7MXizVJdL5e8mzJavKiJrHrwmh03LiB+VaxvRU/XiudFK6WMcsE0i18e/fk9rySovwiT2OWtTY8uARXXC+BXEU/uRvzPblIDJS4jzkrctbplFxMYeH7RYI4rv471HnScqaEcrbpAWMmX49hGuI=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4498.eurprd04.prod.outlook.com (52.135.148.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Mon, 13 Jan 2020 06:45:35 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2623.015; Mon, 13 Jan 2020
 06:45:35 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Sudeep Holla <sudeep.holla@arm.com>, Viresh Kumar <viresh.kumar@linaro.org>
Subject: RE: [PATCH] firmware: arm_scmi: Make scmi core independent of
 transport type
Thread-Topic: [PATCH] firmware: arm_scmi: Make scmi core independent of
 transport type
Thread-Index: AQHVppfygI23RUpETUWFTxolQ+nTs6fiPXoAgAAVYACAAcKWgIAEV0ng
Date: Mon, 13 Jan 2020 06:45:34 +0000
Message-ID: <AM0PR04MB448197C42958AE684D021FE288350@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <5c545c2866ba075ddb44907940a1dae1d823b8a1.1575019719.git.viresh.kumar@linaro.org>
 <CAK8P3a3=q2zX9xQo7eZKp7e70rAeNB8VoSjg2aE06QJuSw8y3Q@mail.gmail.com>
 <20200109093442.4jt44eu2zlmjaq3f@vireshk-i7> <20200110122725.GB45077@bogus>
In-Reply-To: <20200110122725.GB45077@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c2d4186f-beee-4089-8480-08d797f4313b
x-ms-traffictypediagnostic: AM0PR04MB4498:
x-microsoft-antispam-prvs: <AM0PR04MB4498BA22702923F212DFC4A888350@AM0PR04MB4498.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 028166BF91
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(136003)(346002)(376002)(396003)(199004)(189003)(8936002)(8676002)(86362001)(9686003)(26005)(186003)(55016002)(44832011)(81156014)(81166006)(5660300002)(53546011)(7696005)(6506007)(52536014)(4326008)(54906003)(71200400001)(66446008)(76116006)(33656002)(110136005)(316002)(2906002)(478600001)(66946007)(66476007)(66556008)(64756008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4498;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gd2ItDIT2UUcY4WTxKUfUEWTTf8FiQhWhuD6levtnaizW9oPTAT9HAMpb50f7ESAhno5bsEpRTiQ/CdCmewnbWmaLBZ1ylOP0T5gLoCzhq+dTO0IDRIsqWk2GcwO8XtNck/CVkNzuQ0h+QhE9RYzpGA5dTsECgDtZFyX3c94mg7h2lqC/8x+78yqkLsbjZgH6PtWZjHHPcMRGJt+Cj+NexOjMZLiixAorqG1su3Nl2nke4ZJ5uephAkQ7FXFZwWx9jYRsZe0aZ+Ht9iAbuUqjVooYRujqgDiATd+WTpGifvGsU6Ku5ajv9CoX/H0ZZjFSXadYkddli/pEc7T4sU0kUBVeu3kt1fqQCiynCstO4XWnREF5V7J+khW9bPCa6M5kqCP2GX1cdoJtpHBsxLwpxvnxPgaTY+Njz27URhkkCnun1jaZMR0DnjOpZTeZGWx
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2d4186f-beee-4089-8480-08d797f4313b
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2020 06:45:34.9193 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VDW2P+WcDxt0tuD/d82bvnw9DX8ZJHoHFIDO8rlCsjlFKK4/YzdbtUXB+w5ilGNrCFEepvnCWIK+6W/0lR0GZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4498
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_224539_607549_AFDBFD9B 
X-CRM114-Status: GOOD (  20.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.82 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sudeep,

> Subject: Re: [PATCH] firmware: arm_scmi: Make scmi core independent of
> transport type
> 
> On Thu, Jan 09, 2020 at 03:04:42PM +0530, Viresh Kumar wrote:
> > On 09-01-20, 09:18, Arnd Bergmann wrote:
> > > On Fri, Nov 29, 2019 at 10:32 AM Viresh Kumar <viresh.kumar@linaro.org>
> wrote:
> > > >
> > > > The SCMI specification is fairly independent of the transport
> > > > protocol, which can be a simple mailbox (already implemented) or
> anything else.
> > > > The current Linux implementation however is very much dependent of
> > > > the mailbox transport layer.
> > > >
> > > > This patch makes the SCMI core code (driver.c) independent of the
> > > > mailbox transport layer and moves all mailbox related code to a
> > > > new
> > > > file: mailbox.c.
> > > >
> > > > We can now implement more transport protocols to transport SCMI
> > > > messages.
> > > >
> > > > The transport protocols just need to provide struct
> > > > scmi_transport_ops, with its version of the callbacks to enable exchange
> of SCMI messages.
> > > >
> > > > Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> > >
> > > Conceptually I think this is fine, but as others have said, it would
> > > be better to have another transport implementation posted along with
> > > this to see if the interfaces actually work out.
> >
> > @Sudeep/Vincent: Do you think we can add another transport
> > implementation something right away for it ?
> >
> 
> Even if we don't add new transport right away, I would like to see if the
> requirements are met. I will take a look at you v2 with that in mind anyways.
> We need not wait, we I want to see people think it meets their requirement. I
> will also add couple of guys working on virtio transport for SCMI when I
> respond to your v2. Thanks for posting it.
> 
> > @Peng ?
> >
> Peng, Did you get a chance to try this with SMC ? If SCMI was the only
> usecase, you can try this approach instead of mailbox, now that no one has
> any objects to this approach conceptually. Please use v2 as base and update
> us.

I will try that, but might be a bit later.

Thanks,
Peng.

> 
> --
> Regards,
> Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
