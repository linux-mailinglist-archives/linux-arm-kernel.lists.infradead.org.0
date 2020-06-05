Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C451EF6A7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 13:45:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hlI0zLxOQo/WY8HeuGz1WJSnwRjasK0DJX1etfVcJ9w=; b=KUiFJ16OPkrRF9
	FBvqdyPBF7LdCJrAePwOz6YLdOPtZTac+lYGMGnHOOtH2FHncH3Tvse2nZJ3ln17ofYTw1VGmRJVH
	KJv8Wj21/Wu33wbQRIakfv3IUwQEHtMf8POz7Du1nriA6u9fDhNP+xDg77QbWcVWFOG1GG8yWoB/K
	o1EAD9R15b/BSU1XH2gZNeGpW0HCIPHHozTPWpHWhxgCLMWnOM6N3raioSR6ZPypz5tctLpr5eptd
	+eF+cGIM0BvFa+Jgpwdu9sHo/bdqmQ9r/Ab/aC3aQD9Inz8ITTtMkvsRkNBrcAsvCoNFmw1Tg6uE+
	VdRjG3w3NEiEn+wLvxdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhAmS-0003hb-Fk; Fri, 05 Jun 2020 11:45:00 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhAmK-0003gA-NF
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 11:44:54 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 2533BC00F6;
 Fri,  5 Jun 2020 11:44:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1591357489; bh=EqmiL1TxsyHleZ7xVM/LUMz5VEKgzPz0h84k9ItYDng=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=QgLHTFjrHaW4W/jna6jwDF13KiAXREEhJVKfM7uyyQ/xZQu6QqrF5OpPTNVEk05Jo
 XwuMAtzK7Gaff7NqG5mDqYOo/ksMggAjQcMHe+tFW61Gmpg+JyzkBmm/7I8Enn0Ss0
 6ok5/MOxHxGESK1RQSn/kiFh/bgLzjszvOR16Ra4xahRRim+Jsay4XMQj3Nx8XcMBK
 +SzlOUa+U0I7o43eaH8Khos6Cmp7vlt9AfLyOQLnNaIa0dNSXvmaU5PgR50GN0S3VR
 5vvUQ7vagKN4QBqhQinpZEXibE2sV+6M857Gxtv0eumUXWoaRY0sDdkglwSM4c1gia
 XmymcxZ52nmrg==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 6D4AEA0083;
 Fri,  5 Jun 2020 11:44:48 +0000 (UTC)
Received: from us01hybrid1.internal.synopsys.com (10.200.27.51) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 5 Jun 2020 04:44:42 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.200.27.51) with Microsoft SMTP Server (TLS) id
 14.3.487.0; Fri, 5 Jun 2020 04:44:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D+TfbI1YUQcrOv6ODCeQTzsyj4Z1oyw0ZmWESjxNUt1wurIaLJNLRh1lMJ5zJQN7Ysmm4IUR21fxD0G6aTucr5sQ5dPx5JonwGENd6LCUWb3R9O4cEhI7V6mmjYFHKEEKTojga8kSE+gptRXcAdDwOYRSNITtn4I17KbF8ig7q2I2he65T1rekAvSKzDMizAHITBNLhWlz27j9IHqfQ96vcITu4b4ky7qYxEiDiPQ776ZiC3sMncVUe39pcBvIehL75gbh784qYF5Cks5flcZhuEslE1hXRZG3iYuuAPKypsdAikBGJ780yeFmludJMBRUX7ZpT87AP4izeQ1sDdKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fx5TIw44tXbiGcgWiaRbuxhKOlDV5YT2l6e/mHMmp9o=;
 b=GuHSN1/WtLAPEfxvDEE2SXB5kviunSsRTzfp+NnCBUg31MCDNR43hkhzLcHdvcRc70Oh4N6hDASA967KpT1pwYtT8ii1oudi1Jf0N2zAcBmGgk9l9jzjPnXRWC2jp6jYf37g9wo/F3QxQp+6BkcIMAvVqPyopCZehraiDkf7zdNv0tGgD9ELzlnDX5BPLlwpJA5tQ03B/p10fYZnPldwNicy/C5RdLX+YdJIOTJ8iWK6uT56M5G8sVn1IBMM8tn1seWf8X7WTKVWmM9D0rlYA9wXji+zn8W4EjnnkADvC2I+hM6PXoMw3m5iSI7Vya7Fcxp7hoon49OuYyygBJvFHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fx5TIw44tXbiGcgWiaRbuxhKOlDV5YT2l6e/mHMmp9o=;
 b=lgHT0kGY5H0JVEd3lT1b6yY7jiNxhGUQdzF31Ih3+XSWTfyjuCewuZROL0JoKp2vcAcWvUjVciMH82fAU02ftTgAQOadG+13SOCSldBVBGjUUVmWM2K6j1VfGchsBF60/Ot0hpwj6uEnQsx4paSe+ObxSvBbNj8hSaRXlfbFYY8=
Received: from DM5PR12MB1276.namprd12.prod.outlook.com (2603:10b6:3:79::18) by
 DM5PR12MB1337.namprd12.prod.outlook.com (2603:10b6:3:6e::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3066.22; Fri, 5 Jun 2020 11:44:40 +0000
Received: from DM5PR12MB1276.namprd12.prod.outlook.com
 ([fe80::f533:4c74:1224:cd32]) by DM5PR12MB1276.namprd12.prod.outlook.com
 ([fe80::f533:4c74:1224:cd32%5]) with mapi id 15.20.3066.019; Fri, 5 Jun 2020
 11:44:40 +0000
X-SNPS-Relay: synopsys.com
From: Gustavo Pimentel <Gustavo.Pimentel@synopsys.com>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, Bjorn Helgaas
 <bhelgaas@google.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Jingoo
 Han <jingoohan1@gmail.com>, Rob Herring <robh+dt@kernel.org>, Masahiro Yamada
 <yamada.masahiro@socionext.com>, Marc Zyngier <maz@kernel.org>
Subject: RE: [PATCH v4 1/6] PCI: dwc: Add msi_host_isr() callback
Thread-Topic: [PATCH v4 1/6] PCI: dwc: Add msi_host_isr() callback
Thread-Index: AQHWOx4AlrbiAQ9vZEe9+DWySdFhK6jJ5w+A
Date: Fri, 5 Jun 2020 11:44:40 +0000
Message-ID: <DM5PR12MB1276F04A7F5D2F58E2AD6475DA860@DM5PR12MB1276.namprd12.prod.outlook.com>
References: <1591350276-15816-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1591350276-15816-2-git-send-email-hayashi.kunihiko@socionext.com>
In-Reply-To: <1591350276-15816-2-git-send-email-hayashi.kunihiko@socionext.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: =?us-ascii?Q?PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcZ3VzdGF2b1xh?=
 =?us-ascii?Q?cHBkYXRhXHJvYW1pbmdcMDlkODQ5YjYtMzJkMy00YTQwLTg1ZWUtNmI4NGJh?=
 =?us-ascii?Q?MjllMzViXG1zZ3NcbXNnLWVmNDIzYTIwLWE3MjEtMTFlYS05OGJhLWY4OTRj?=
 =?us-ascii?Q?MjczODA0MlxhbWUtdGVzdFxlZjQyM2EyMi1hNzIxLTExZWEtOThiYS1mODk0?=
 =?us-ascii?Q?YzI3MzgwNDJib2R5LnR4dCIgc3o9IjIwNjAiIHQ9IjEzMjM1ODMxMDc4ODE5?=
 =?us-ascii?Q?NTM2OSIgaD0id2xxam82dERSTmtVQ09CL1pnc2kxenpOWlRFPSIgaWQ9IiIg?=
 =?us-ascii?Q?Ymw9IjAiIGJvPSIxIiBjaT0iY0FBQUFFUkhVMVJTUlVGTkNnVUFBQlFKQUFB?=
 =?us-ascii?Q?cDVKbXhManZXQVg4dXp1aEtqM05GZnk3TzZFcVBjMFVPQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUhBQUFBQ2tDQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUVBQVFBQkFBQUFFbU1la3dBQUFBQUFBQUFBQUFBQUFKNEFBQUJtQUdrQWJn?=
 =?us-ascii?Q?QmhBRzRBWXdCbEFGOEFjQUJzQUdFQWJnQnVBR2tBYmdCbkFGOEFkd0JoQUhR?=
 =?us-ascii?Q?QVpRQnlBRzBBWVFCeUFHc0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?RUFBQUFBQUFBQUFnQUFBQUFBbmdBQUFHWUFid0IxQUc0QVpBQnlBSGtBWHdC?=
 =?us-ascii?Q?d0FHRUFjZ0IwQUc0QVpRQnlBSE1BWHdCbkFHWUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQVFBQUFBQUFBQUFDQUFB?=
 =?us-ascii?Q?QUFBQ2VBQUFBWmdCdkFIVUFiZ0JrQUhJQWVRQmZBSEFBWVFCeUFIUUFiZ0Js?=
 =?us-ascii?Q?QUhJQWN3QmZBSE1BWVFCdEFITUFkUUJ1QUdjQVh3QmpBRzhBYmdCbUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUJBQUFBQUFBQUFBSUFBQUFBQUo0QUFBQm1BRzhB?=
 =?us-ascii?Q?ZFFCdUFHUUFjZ0I1QUY4QWNBQmhBSElBZEFCdUFHVUFjZ0J6QUY4QWN3QmhB?=
 =?us-ascii?Q?RzBBY3dCMUFHNEFad0JmQUhJQVpRQnpBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFFQUFBQUFBQUFBQWdBQUFBQUFuZ0FBQUdZQWJ3QjFBRzRBWkFCeUFIa0FY?=
 =?us-ascii?Q?d0J3QUdFQWNnQjBBRzRBWlFCeUFITUFYd0J6QUcwQWFRQmpBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBUUFBQUFBQUFBQUNB?=
 =?us-ascii?Q?QUFBQUFDZUFBQUFaZ0J2QUhVQWJnQmtBSElBZVFCZkFIQUFZUUJ5QUhRQWJn?=
 =?us-ascii?Q?QmxBSElBY3dCZkFITUFkQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQkFBQUFBQUFBQUFJQUFBQUFBSjRBQUFCbUFH?=
 =?us-ascii?Q?OEFkUUJ1QUdRQWNnQjVBRjhBY0FCaEFISUFkQUJ1QUdVQWNnQnpBRjhBZEFC?=
 =?us-ascii?Q?ekFHMEFZd0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUVBQUFBQUFBQUFBZ0FBQUFBQW5nQUFBR1lBYndCMUFHNEFaQUJ5QUhr?=
 =?us-ascii?Q?QVh3QndBR0VBY2dCMEFHNEFaUUJ5QUhNQVh3QjFBRzBBWXdBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFRQUFBQUFBQUFB?=
 =?us-ascii?Q?Q0FBQUFBQUNlQUFBQVp3QjBBSE1BWHdCd0FISUFid0JrQUhVQVl3QjBBRjhB?=
 =?us-ascii?Q?ZEFCeUFHRUFhUUJ1QUdrQWJnQm5BQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFCQUFBQUFBQUFBQUlBQUFBQUFKNEFBQUJ6?=
 =?us-ascii?Q?QUdFQWJBQmxBSE1BWHdCaEFHTUFZd0J2QUhVQWJnQjBBRjhBY0FCc0FHRUFi?=
 =?us-ascii?Q?Z0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBRUFBQUFBQUFBQUFnQUFBQUFBbmdBQUFITUFZUUJzQUdVQWN3QmZB?=
 =?us-ascii?Q?SEVBZFFCdkFIUUFaUUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQVFBQUFBQUFB?=
 =?us-ascii?Q?QUFDQUFBQUFBQ2VBQUFBY3dCdUFIQUFjd0JmQUd3QWFRQmpBR1VBYmdCekFH?=
 =?us-ascii?Q?VUFYd0IwQUdVQWNnQnRBRjhBTVFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUJBQUFBQUFBQUFBSUFBQUFBQUo0QUFB?=
 =?us-ascii?Q?QnpBRzRBY0FCekFGOEFiQUJwQUdNQVpRQnVBSE1BWlFCZkFIUUFaUUJ5QUcw?=
 =?us-ascii?Q?QVh3QnpBSFFBZFFCa0FHVUFiZ0IwQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFFQUFBQUFBQUFBQWdBQUFBQUFuZ0FBQUhZQVp3QmZBR3NBWlFC?=
 =?us-ascii?Q?NUFIY0Fid0J5QUdRQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBUUFBQUFB?=
 =?us-ascii?Q?QUFBQUNBQUFBQUFBPSIvPjwvbWV0YT4=3D?=
authentication-results: socionext.com; dkim=none (message not signed)
 header.d=none; socionext.com; dmarc=none action=none header.from=synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ebdb1470-4fcd-4ee0-045e-08d80945d548
x-ms-traffictypediagnostic: DM5PR12MB1337:
x-microsoft-antispam-prvs: <DM5PR12MB13371F7C031D0ACB62681E09DA860@DM5PR12MB1337.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 0425A67DEF
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NgtcBjnHWJ4i0YuawxJnQrs5YkB4on/QIzbKwWiFXEklvWpVmJBceBF58DirIEPztmOJgX4eJuojtdfDbxtXcSTOwQ1pKeQH0Xw8VUj13J2fUH99Srnr2UIYhoF7YOth1oKTbqQ7pzoPrdc8zIgPDJ8ZNHWL2grN1XjqdRuXaBRMTjF1EFwhD2k1i5Onp2Gdo4KGbPmE7VHL+Pa7I0EYN0POTVYyyBnnu5Nd0ed+Zny1eehSigr3he5l+16oAtnAqjj0FFVWKXknAz8n+QuCq2r2U8cy2gGg04Nf2xreHxTyV1BsqH/TMM1z0JlbjK0r
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR12MB1276.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(39860400002)(376002)(396003)(346002)(366004)(26005)(5660300002)(478600001)(76116006)(6506007)(53546011)(8936002)(8676002)(2906002)(186003)(7696005)(66476007)(66446008)(66946007)(64756008)(33656002)(71200400001)(7416002)(66556008)(86362001)(83380400001)(54906003)(4326008)(316002)(9686003)(52536014)(110136005)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: fKBaE5SODdnqNTK+aBT3IXtSuN67GynedWKO8+5F/6S6jrgNHjJVF5JDPctv5dtJgVF3e0Q8N81VqFCkxzdHVZu0YARuqRbNZD4Et84Tgm7Ze7CILeJCcH50qsDgxbM+SL0GQBNWuKppq+HmDNk5ll+vr0aVPLQoJuvy+qii+W39yE/7DzqjLLh4EdTcw67umwM0+MCOyjmpc+DQ4AGynz96VZR21U5YKedvVVj89ZqaGcU6imcL4Q1OsMZjmzjpNsoNghQpA65zXE3aTthMnTRgv/plbBbJ87Vy4JS1+DY9Q2k3m0UPKM/Cg+1M9nAweCOTdSQCq0Y+Qkojib2jpx4gRB9q3CfJvWtNu7RwmKrQ7/omjjnQ9XUFpXwd59+MQPUl01h44y90iJg3d8JDLSt4q2tYIUUmm5aNspRJrEdg2HWnQCJuWrCykUCRZt4FF2lONR9WDCiNHE2hxuqe3U3e4jEBpDifoGCwusQvSJ9vvakvdaIqEqsSX68kI2oT
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ebdb1470-4fcd-4ee0-045e-08d80945d548
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2020 11:44:40.7455 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5Pcz0vU9qiOxZOOXLb/hpd0YAdlNNhQjuQkOcsTbq1bRWSk9PUkGmGfJaU4pubLQcYpRICQC/ld7g43RmLE7Jg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1337
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_044452_835062_35023A14 
X-CRM114-Status: GOOD (  17.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [149.117.87.133 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jassi Brar <jaswinder.singh@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 5, 2020 at 10:44:31, Kunihiko Hayashi 
<hayashi.kunihiko@socionext.com> wrote:

> This adds msi_host_isr() callback function support to describe
> SoC-dependent service triggered by MSI.
> 
> For example, when AER interrupt is triggered by MSI, the callback function
> reads SoC-dependent registers and detects that the interrupt is from AER,
> and invoke AER interrupts related to MSI.
> 
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: Jingoo Han <jingoohan1@gmail.com>
> Cc: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  drivers/pci/controller/dwc/pcie-designware-host.c | 3 +++
>  drivers/pci/controller/dwc/pcie-designware.h      | 1 +
>  2 files changed, 4 insertions(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
> index 0a4a5aa..026edb1 100644
> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> @@ -83,6 +83,9 @@ irqreturn_t dw_handle_msi_irq(struct pcie_port *pp)
>  	u32 status, num_ctrls;
>  	irqreturn_t ret = IRQ_NONE;
>  
> +	if (pp->ops->msi_host_isr)
> +		pp->ops->msi_host_isr(pp);
> +
>  	num_ctrls = pp->num_vectors / MAX_MSI_IRQS_PER_CTRL;
>  
>  	for (i = 0; i < num_ctrls; i++) {
> diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
> index 656e00f..e741967 100644
> --- a/drivers/pci/controller/dwc/pcie-designware.h
> +++ b/drivers/pci/controller/dwc/pcie-designware.h
> @@ -170,6 +170,7 @@ struct dw_pcie_host_ops {
>  	void (*scan_bus)(struct pcie_port *pp);
>  	void (*set_num_vectors)(struct pcie_port *pp);
>  	int (*msi_host_init)(struct pcie_port *pp);
> +	void (*msi_host_isr)(struct pcie_port *pp);
>  };
>  
>  struct pcie_port {
> -- 
> 2.7.4


Acked-by: Gustavo Pimentel <gustavo.pimentel@synopsys.com>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
