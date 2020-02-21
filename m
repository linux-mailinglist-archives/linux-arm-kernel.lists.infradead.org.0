Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3733E167BE9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 12:23:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yc6le/ZqVIbu+T+Ss5bNKjvfv/SJiTyvjJx6JBLnWv8=; b=WBv1ZOr5q2eqv7
	l2EetY/8CQApPnNY/EJkRCzq5pC3fVBdjB2AlPAKj32qghSZ/BOYlasaVv5ib14QdrmraXPPWvHY2
	0LitTWq1Z2WgLaWtuqc16T+54B3KiXm1/bZyWqoAUxj+3mNuV9wURzPX9bv2ZESHG/dfxRgj8pRD9
	LKRVsdUCAYmuy7LDKCRc99u9EHthBgmS+wKq9wKhcK9K/eVrXj9hJIBY3C1mEVGMdexJmwA+PCJo6
	lMh7CragvlLl2CwwBN6EzRKFpFN8o+Irw3jRYS0uJYrgoGCr39umMzRL1wNU899mM9GPYyonGeT0D
	LTbXpz0fnf+KP10vTVog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j56Oy-00076L-BQ; Fri, 21 Feb 2020 11:23:24 +0000
Received: from mail-eopbgr50046.outbound.protection.outlook.com ([40.107.5.46]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j56Om-00075o-Ex
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 11:23:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KvPjV+iKJoNIC3pEkP/ZEGWR3A5j03MxdXGjvR9jxJI=;
 b=L4mPl/HmaCfskILFm7huvBQckYHZnQ8Q7eCkrs3b9rFERoXIrqqJ7Op59UgbNAe+nzEbLiGYgMkEXIhCZbaLpHiQKsJbL3MFUfTdtwKNxyjApBQwNlMY6gAmIRieEb38lbm5iqYZeZZwarLuI0lzat4ililvB+3eqWWqIP2iOgE=
Received: from HE1PR0802CA0012.eurprd08.prod.outlook.com (2603:10a6:3:bd::22)
 by VI1PR08MB4224.eurprd08.prod.outlook.com (2603:10a6:803:bc::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.18; Fri, 21 Feb
 2020 11:23:06 +0000
Received: from AM5EUR03FT019.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::205) by HE1PR0802CA0012.outlook.office365.com
 (2603:10a6:3:bd::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.18 via Frontend
 Transport; Fri, 21 Feb 2020 11:23:05 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT019.mail.protection.outlook.com (10.152.16.104) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.17 via Frontend Transport; Fri, 21 Feb 2020 11:23:05 +0000
Received: ("Tessian outbound 846b976b3941:v42");
 Fri, 21 Feb 2020 11:23:05 +0000
X-CR-MTA-TID: 64aa7808
Received: from aceb546b7696.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 A98A2A08-7399-4E63-97D6-08584DEC7D6A.1; 
 Fri, 21 Feb 2020 11:23:00 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id aceb546b7696.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Fri, 21 Feb 2020 11:23:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i4eJPO5aBhFRkn8SnRAChsETnhtMpxujEUTVAowH2g+lgEKpVGFqRR0BweMePQJT+C858iTZU4/xRIBfMdSptRxLG2UFFQe8V7YRAzpajcvTLQjym3fCpJka55+N/yvV4+uRzz6QCdjNjbQr0fLHW1r/bsScejSvixWFrDAA/jVxDLeSemvGXUDbpyV1i9q0qBNTasPiMQTR7so4BbOj8Dswy5bML4KAF/mPgg0TVsd9p6PycU/QozL+n+HlA252rxhaIck1h+9+63PaQH0F+LYEyOIWlt3bSz36vo4+nFlbIZjlVLzXkawoZKdxR5B4DIvN6h3shlCvVCsVNhBLlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KvPjV+iKJoNIC3pEkP/ZEGWR3A5j03MxdXGjvR9jxJI=;
 b=e2+u7u49IbspZIyaTVZ8yVdooNpiWKfFj0eQu0L8WhVnAlAgwhJe9d5nZGTEe7/lUQ6Uz6N1UMP0EqTs+f2vUSUx/GQScgHyjyEvWNw1DQDcowt87LLyHvX7tvONSErg03IWKAQzGNNlKT0+dE2rsMGd2qH2PU6wVtgsoUsTjcx+UR0ovXomUwmlUaWHtorr4BWSF9U16+jhnrXrc+bkMpv0spwvqfc+28MSJMVa+th1mEVjQCe+hqmxGvfalMKr5zBbS/WBic1eTknDhrNAjfQy+g5giXJwjybU6uYrvs5aNU6fZDNpmN3IRcHRzfYKiietuvOkmTTPwIq2F1J2Ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KvPjV+iKJoNIC3pEkP/ZEGWR3A5j03MxdXGjvR9jxJI=;
 b=L4mPl/HmaCfskILFm7huvBQckYHZnQ8Q7eCkrs3b9rFERoXIrqqJ7Op59UgbNAe+nzEbLiGYgMkEXIhCZbaLpHiQKsJbL3MFUfTdtwKNxyjApBQwNlMY6gAmIRieEb38lbm5iqYZeZZwarLuI0lzat4ililvB+3eqWWqIP2iOgE=
Received: from DBBPR08MB4790.eurprd08.prod.outlook.com (10.255.79.77) by
 DBBPR08MB4806.eurprd08.prod.outlook.com (20.179.47.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.18; Fri, 21 Feb 2020 11:22:58 +0000
Received: from DBBPR08MB4790.eurprd08.prod.outlook.com
 ([fe80::11a:d4c:b06f:f8d3]) by DBBPR08MB4790.eurprd08.prod.outlook.com
 ([fe80::11a:d4c:b06f:f8d3%4]) with mapi id 15.20.2729.033; Fri, 21 Feb 2020
 11:22:58 +0000
From: Souvik Chakravarty <Souvik.Chakravarty@arm.com>
To: Peter Hilber <peter.hilber@opensynergy.com>,
 "virtio-comment@lists.oasis-open.org" <virtio-comment@lists.oasis-open.org>
Subject: RE: [PATCH] Add virtio SCMI device specification
Thread-Topic: [PATCH] Add virtio SCMI device specification
Thread-Index: AQHV6CU9RSYTMjRXdEywpQYVXf00uaglZtLQ
Date: Fri, 21 Feb 2020 11:22:57 +0000
Message-ID: <DBBPR08MB47902B48AE4B6F9B446EF4BD82120@DBBPR08MB4790.eurprd08.prod.outlook.com>
References: <20200220193715.12097-1-peter.hilber@opensynergy.com>
In-Reply-To: <20200220193715.12097-1-peter.hilber@opensynergy.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 38a07ca6-cc3e-4eff-8351-23b2171c10f0.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Souvik.Chakravarty@arm.com; 
x-originating-ip: [217.140.106.55]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 2751dc91-318d-4ead-ff72-08d7b6c06bf3
X-MS-TrafficTypeDiagnostic: DBBPR08MB4806:|DBBPR08MB4806:|VI1PR08MB4224:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR08MB4224364E3A68451EBFA9661C82120@VI1PR08MB4224.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 0320B28BE1
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(366004)(136003)(376002)(39850400004)(189003)(199004)(55016002)(2906002)(66446008)(110136005)(316002)(64756008)(66476007)(5660300002)(966005)(54906003)(66556008)(76116006)(19627235002)(9686003)(478600001)(6506007)(7696005)(186003)(86362001)(81156014)(4326008)(81166006)(26005)(8936002)(52536014)(8676002)(71200400001)(66946007)(33656002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DBBPR08MB4806;
 H:DBBPR08MB4790.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: w6iFheSvFkdpqjoKlFi411DEx1tRo63ykognaE0Ilb0qRdLgEVLhQlwwoaTO9KnyRdGcdsorYIhGta9MtEj4HuvdhgeqxOYR7I3o+1Vd2kn88WUmrOL0p1T0akeVgz36D0OtayDqEDMtNYiiABpiCzxuwmcJEfAUwqWsFiOTPAHN2rbCuZrNSTOy2biNlpVVCPF97eZmxJkMUoTQHEkxSsH+I8ste7/EzKMRX9+1GGt+vGXWNbNHr70V9V/KQ66xXAny9n+G8uxZkdOnqBoxzL4r+cANf0LW1B3Av1Tll/86/+kWAu07el/M5bV0VBRB7UhMG56zbonu9Ncdv5DOeWgO92c6GlalwmVvFkB51EU4FMOwoTVuxV8WnVIVn12NXRs3zw5YTJfJMBe1ny8typfkZk0XTo3OIF3WPRBnrivGx9VsOgUp20Xjo3gXSMsVFclT/RY+zoyUh77c3nmdorX/Ux32JKP3O/xx3XcJNC9TsoXl/3oeKrexD+fz+2T8Pxaqbh0NQSq09QhJ+LIDKA==
x-ms-exchange-antispam-messagedata: xYvFuPyLnWFUNqjnce8vx0I6OfnvmIRlyRvglvYDJfSjYLPhB0UocGH4eirJDlRgl2zJIuKzPdvAvN+hb5sM2r+iPzLCZETVCOCgtuehftFBayTAl42IQJMKjvR9oUOUCbpiuuUBMkaNLU4sCgJTBQ==
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4806
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Souvik.Chakravarty@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT019.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(39850400004)(376002)(346002)(189003)(199004)(7696005)(81156014)(86362001)(4326008)(356004)(6506007)(186003)(478600001)(70206006)(70586007)(81166006)(26005)(33656002)(8676002)(26826003)(8936002)(52536014)(316002)(5660300002)(110136005)(36906005)(55016002)(2906002)(9686003)(336012)(966005)(54906003)(19627235002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB4224;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Pass; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 605bc897-7f3e-4528-70a1-08d7b6c06774
X-Forefront-PRVS: 0320B28BE1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qhml6+MZGiZuYFU3P3Ji+f6cCR0fCUuLR9bSxsq1L3klLeYlqtdWPTnGepsnL9roC4Z4YCNj+ZklOOICSQnmYwYGO9Bu16oCEJQ12JYHSAncJX0rz6plMfyezZsS7cigTiS9pHpXxwMKDh5YGmz0JXnuS+cIGYu+CvFI9W9Hvv+fqUdW4xPAW2P1WJb089rgN/dDugeq9T8u/ZR3VWJVblgJgLd1jP2A2jHhsdBwPWPyCP8TEI2YTJXvez9lDGqrk5qr0GNPZXCvduaWxcRtSN3areV5MxXXxiFXYdVXYGgPjj/7xsL0PoEmX4bl9cUkHxJfCj0kmfmR98WQFj6IDFl5bJh3iwA9ozoSfFqmWMY21Ybkx1NiVXpm4a7Zh617bJWHDd7SIi0jF520umUIeD8WHWa9hfOSMBAxF6fnHP8BSm1cxnkZZCyiMqRW1cTvL0ajZc96Emb9XvXR65cvF11InY9a8gyZStWh2gJbLMUJ8Fl5AZBdIuCtEd3Rp3QbdXFJLeBkaP2V6YplHbB0yg==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2020 11:23:05.6752 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2751dc91-318d-4ead-ff72-08d7b6c06bf3
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB4224
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_032312_728752_56F51CF1 
X-CRM114-Status: GOOD (  19.63  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.46 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Sudeep Holla <Sudeep.Holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peter,

The overall proposal is mostly in sync with the SCMI specification. A few comments below.

> -----Original Message-----
> From: Peter Hilber <peter.hilber@opensynergy.com>
> Sent: Thursday, February 20, 2020 7:37 PM
>
> This patch proposes a new virtio device for the Arm SCMI protocol.
>
> The device provides a simple transport for the Arm SCMI protocol[1]. The
> *S*ystem *C*ontroller *M*anagement *I*nterface protocol allows speaking to

Its "System Control and Management Interface" (some recurrences are there below which I haven't pointed out).

> embedded system controllers that allow orchestrating things like power

If we are using Virtio, the system controller is probably no longer "embedded".

> management, system state management and sensor access. The SCMI protocol
> is used on SoCs where multiple cores and co-processors need access to these
> resources.
>
> The virtio transport allows making use of this protocol in virtualized embedded
> systems.

Again, what stops this from being deployed beyond embedded?
There is scope for hypervisors which might implement the full SCMI device for non-embedded usages as well.

>
> OpenSynergy has a prototype implementation, and plans to upstream the Linux
> kernel driver.
>
> The PDF output (with ugly fonts, apologies) is available at [2].
>
> [1] https://developer.arm.com/docs/den0056/b
> [2]
> https://share.mailbox.org/ajax/share/0d959c190d5a1c47d18eb2fd5a1c40ad81
> e8d7897ab9ca1e/1/8/Mjk/MjkvOA
>
> Signed-off-by: Peter Hilber <peter.hilber@opensynergy.com>
> ---
>  conformance.tex  |  27 ++++-
>  content.tex      |   1 +
>  introduction.tex |   3 +
>  virtio-scmi.tex  | 269
> +++++++++++++++++++++++++++++++++++++++++++++++
>  4 files changed, 297 insertions(+), 3 deletions(-)  create mode 100644 virtio-
> scmi.tex
>

<SNIP>

> +
> +\subsubsection{cmdq Operation}\label{sec:Device Types / SCMI Device /
> +Device Operation / cmdq Operation}
> +
> +Each buffer in the cmdq holds a single SCMI command once the buffer has
> +been made available. When the buffer has been marked as used, it
> +contains the SCMI response. Conceptually, each SCMI message transmitted
> +over the cmdq uses its own short-lived SCMI A2P (agent to platform)
> +channel.

Any special significance of the "short-lived" phrase. Does it have any implications on how it will interact with the SCMI driver?

> +
> +The SCMI response is in the same virtio buffer as the corresponding
> +SCMI command. The response contains the return values which SCMI
> +specifies for each command, whether synchronous or asynchronous.
> +Delayed responses are distinct SCMI messages transmitted over the eventq.
> +
> +Buffers in the cmdq contain both the request and the response. A
> +request has the following layout:
> +
> +\begin{lstlisting}
> +struct virtio_scmi_request {
> +        le32 len;
> +        le32 hdr;
> +        u8 params[<actual parameters size>]; }; \end{lstlisting}
> +
> +The virtio_scmi_request fields are interpreted as follows:
> +
> +\begin{description}
> +\item[\field{len}] (device-readable) size of \field{hdr} and actual
> +\field{params} in bytes \item[\field{hdr}] (device-readable) contains
> +the SCMI message header \item[\field{params}] (device-readable)
> +comprises the SCMI message parameters \end{description}
> +
> +A cmdq response has the following layout:
> +
> +\begin{lstlisting}
> +struct virtio_scmi_response {
> +        le32 len;
> +        le32 hdr;
> +        u8 ret_values[<actual return values size>]; }; \end{lstlisting}
> +
> +The virtio_scmi_response fields are interpreted as follows:
> +

<SNIP>

> +\subsubsection{eventq Operation}
> +
> +Each buffer in the eventq holds (once the buffer is marked as used)
> +either a single SCMI notification, or a single SCMI delayed response.
> +Conceptually, each SCMI message transmitted over the eventq uses its
> +own short-lived SCMI P2A (platform to agent) channel. Buffers in the
> +eventq have the following layout:

Same question. Any special significance of the "short-lived" phrase?

> +
> +\begin{lstlisting}
> +struct virtio_scmi_event_msg {
> +        /* start of device-writable data */
> +        le32 len;
> +        le32 hdr;
> +        u8 payload[<actual payload size>]; }; \end{lstlisting}
> +
> +\begin{description}
> +\item[\field{len}] (device-writable) size of \field{hdr} and actual
> +\field{payload} in bytes \item[\field{hdr}] (device-writable) contains
> +the SCMI message header \item[\field{payload}] (device-writable)
> +comprises the SCMI message payload \end{description}
> +
> +\devicenormative{\paragraph}{eventq Operation}{Device Types / SCMI
> +Device / Device Operation / eventq Operation}
> +
> +If the device intends to send a notification and there are no available
> +buffers in the eventq, the device SHOULD send a corresponding
> +notification later, once enough buffers become available.

Any reason why this is mandated? It should be possible for the device to drop the notification if there is no buffer available since this provides an implicit flow control as well, since the guest in this case is clearly unable to consume the notifications at a sufficient rate.
Can we make this Recommended instead?

Regards,
Souvik

> +
> +The device MAY send the notification later if the events which cause
> +the notification take place in quick succession.
> +
> +If the device sends the notification later, the device MAY send the
> +notification with updated data, unless the specific SCMI protocol
> +disallows this.
> +
> +If the device intends to send a notification and there are available
> +buffers, but one of the buffers is too small to fit the notification,
> +the device MAY omit the notification.
> +
> +If the device intends to send a delayed response and there are no
> +available buffers in the eventq, the device MUST send the corresponding
> +delayed response once enough buffers become available.
> +
> +\subsubsection{Shared Memory Operation}
> +
> +Various SCMI protocols define statistics shared memory regions (for
> +statistics and sensor values).
> +
> +\devicenormative{\paragraph}{Shared Memory Operation}{Device Types /
> +SCMI Device / Device Operation / Shared Memory Operation}
> +
> +If VIRTIO_SCMI_F_SHARED_MEMORY was negotiated, the device MAY
> implement
> +an SCMI statistics shared memory region using a virtio shared memory
> +region.
> +
> +If the device implements a shared memory region, the device MUST assign
> +the corresponding shmid as per the following table:
> +
> +\begin{tabular}{|l|l|}
> +\hline
> +SCMI statistics shared memory region & Virtio shmid \\ \hline \hline
> +Power state statistics shared memory region & 1 \\ \hline Performance
> +domain statistics shared memory region & 2 \\ \hline Sensor Values
> +Shared Memory & 3 \\ \hline Reserved for future use & 4 to 0x7F \\
> +\hline Vendor-specific statistics shared memory regions & 0x80 to 0xFF
> +\\ \hline Reserved for future use & 0x100 and greater \\ \hline
> +\end{tabular}
> --
> 2.20.1

IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
