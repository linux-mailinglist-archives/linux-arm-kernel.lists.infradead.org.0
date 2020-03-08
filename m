Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C6217D11A
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 04:44:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+mQCRZ/ug/rH+YacXenHSa4TuvvytBigQIgAd486DTM=; b=mtfWfOC5nB6xZx
	bSSYNM0hglhgVkdrZo6Zz7Pp9krbHW196ncGqOXeE+ufLsTZtZD009lrQr96//AaOSDiX4T6nMpmJ
	W4G7jt8QFxU4OfEBTfxAq1Z5SFB66TFyVP8pKG8y2oXQT9yBpIbbnqfT26NFs35h1SSL8MxLtMurp
	4bh+LM5aNNvmI5bOh2Kn87ymKeO/qbW18VcxZt5K1SxmhEu5JFCfggWnHEkz26naaocJai8XGseGP
	S4oH9tiNMjKIgRkrH6ETwDzAN7/0IINILH3DRj3IcbQVuana0AmbzJIhZEGkWWQmzzv4DEquTRh7r
	EUSQ2wH2rCtrRL/YQ1mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAmrC-00049j-Eg; Sun, 08 Mar 2020 03:44:02 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAmr4-000494-Bk
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 03:43:57 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0283fYCH011829; Sat, 7 Mar 2020 19:42:57 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=FHiiO+ZKgQCoLsP5+I5EzI9zmBNeKAaw5lxaRpwJjsk=;
 b=ihg0RSz3mk7KOs/27wkaC0ZqGx6ViuFv8Z+58Ohagn2usariI16fhy0XQBu+QJNfxNNh
 EtRJbDzS7LCtkRNws1IbbUFhsJ7+nrobh5TsUdYvQY9TpHLmIRQmBnwGuGgZpZAXMk2V
 esQr2ZtXcEeBtfdxwzhkKKAc/dkXEv25lcV7CPfmZWybQ8pjPYqYe0qDxk/b5LVlaYWq
 NXW1Lyn2bdIHvwCUmU/hmNET3q6kbkkIrTOMGxzVwEkO7D7RkpKzzA+tOYH2E2NiFC6c
 CImDiWRTyiv0JoV/WEIfhb4+U+gbRBuGS2KBu7p76LOzNwcUwXOfus1eOaT/eLML1Xp4 FQ== 
Received: from sc-exch04.marvell.com ([199.233.58.184])
 by mx0b-0016f401.pphosted.com with ESMTP id 2ymc0sj1c0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Sat, 07 Mar 2020 19:42:57 -0800
Received: from SC-EXCH04.marvell.com (10.93.176.84) by SC-EXCH04.marvell.com
 (10.93.176.84) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Sat, 7 Mar
 2020 19:42:55 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by SC-EXCH04.marvell.com (10.93.176.84) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Sat, 7 Mar 2020 19:42:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=De1pPRcvUZmWja8cuVVecWqyRFu/BrxkYR8SPVFREupzSckMGuN4UkyFwimV6MOvgYYvTSxI32UZjmC9i15EBqtmc6cfRZRmRaYQ80mJaQYDSNEOOAj95yTdQB6us/TvaSAkMloeOP8Pnd32L3EYrb6PSzuglEGnmlAo8Q+rn4a4GyLrhIouOforbXNfZdAA0Tebk/uDf6k6Zgq3JLSpdazCmqSo3I6NuLVpHFKDW4ap1uCuibEUhJyhvTjoDQWnXoG/5WggKlb4+J59qJl9qw80Dr4UWuQEQ2vBw0Kl8SlbZhYQE/n3YQJcHE6t7PY14TdSRuiZJKFSkeQN7TIIxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FHiiO+ZKgQCoLsP5+I5EzI9zmBNeKAaw5lxaRpwJjsk=;
 b=ZKkAmbuBZOHUMNJz5oGaCmkHegkgkprX5LLYLiaKBfvnOiC0aIWkXVLSlqpXpkZHbaHiX2Vhx181lZ4FC5KDgUbZMIo5Ao5197x94UtkV84GK8VUKuY1VYl1Z08yv5ssNilLtA9jDrhsIgZgicwW/jLgsvwoWk7+MO0jz3n8A8hnuWAU7G45+kyNdcg0qmIeYdtWmtrHn5DwQjf6iUEDxQPBWNkrmUR8SGKTkRiZuKbeIYVPWAG0L/X8oYIR7uGRDxUuJxLqffM8qNjVzYwIBGoeE8eoZ4+pJBDMkvCB1bH+Yx8rBKRIrs411Mty9EjJ4fVERT4P92hjY7ZhT7Dc7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FHiiO+ZKgQCoLsP5+I5EzI9zmBNeKAaw5lxaRpwJjsk=;
 b=uUZbw6qrouCs40rXK98st1/wdQcNNPS5HO088hbCHH4YtKGGZ3YHrF61mycUcnHiBry8MB52Fglhpp8T+p3eMXYlQJjxe/L9opWi5foArWtzPyzodekjjYzOErcY3xModHAedwDINBJ1CvFEOuJIWKgltZK+KXwUknUEddwRZZg=
Received: from BYAPR18MB2535.namprd18.prod.outlook.com (2603:10b6:a03:137::17)
 by BYAPR18MB2920.namprd18.prod.outlook.com (2603:10b6:a03:10b::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.14; Sun, 8 Mar
 2020 03:42:52 +0000
Received: from BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::8cd1:1741:8d2d:1c23]) by BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::8cd1:1741:8d2d:1c23%7]) with mapi id 15.20.2793.013; Sun, 8 Mar 2020
 03:42:52 +0000
From: Alex Belits <abelits@marvell.com>
To: "frederic@kernel.org" <frederic@kernel.org>, "rostedt@goodmis.org"
 <rostedt@goodmis.org>
Subject: [PATCH v2 00/12] "Task_isolation" mode
Thread-Topic: [PATCH v2 00/12] "Task_isolation" mode
Thread-Index: AQHV9PukP2RDgHZcrEOg6J4fp5SMZg==
Date: Sun, 8 Mar 2020 03:42:51 +0000
Message-ID: <aed12dd15ea2981bc9554cfa8b5e273c1342c756.camel@marvell.com>
References: <4473787e1b6bc3cc226067e8d122092a678b63de.camel@marvell.com>
In-Reply-To: <4473787e1b6bc3cc226067e8d122092a678b63de.camel@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [199.233.58.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a33bf6bf-9a05-47b4-b7b1-08d7c312c7a9
x-ms-traffictypediagnostic: BYAPR18MB2920:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR18MB2920ED0D078993635FD4C2B0BCE10@BYAPR18MB2920.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1303;
x-forefront-prvs: 03361FCC43
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(39840400004)(376002)(346002)(366004)(199004)(189003)(316002)(66946007)(5660300002)(6512007)(478600001)(8936002)(71200400001)(2906002)(6486002)(4744005)(66556008)(66476007)(76116006)(6506007)(91956017)(64756008)(66446008)(36756003)(54906003)(4326008)(2616005)(186003)(110136005)(8676002)(26005)(81166006)(81156014)(86362001)(7416002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR18MB2920;
 H:BYAPR18MB2535.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: m6KiucSSjsuR9c1gFZsLkXoNQaM3Dx63GJqdsr0tvJhIhwwT7HzaD6ZifUYsK+DLIUBen78t8zaPmOjpqCy1qevGLrrKefNfHfz+EjhMifQvcfJviAd3cbr9OgTmzxLv6B/0PFzYSM/GYlwaUyO7ooxEHQyiWiYZ3l/oNKH4vDmGgNktPXOLU3wXQI4T15UfzlNgq5C+dV4WvRtTAouShpsDFFldhSfrvUMX+aDzUBoIm/79sLNBB4rv/h1vVqrkIVT5HWX7p3FOVFzpJuU+k6FP5ezbl5CXUOBd+yqdimWTJvbppHC0m7N374eUreMwxz/vmV4MJJLPe/LKHTd7fQhRoeb96LY7JGhxVpJlbt8UTszsl4o7xWQX4yMA1qPj5mvMJN+/dJnD1eJLS2KSb/KElRSogqSiGkeSXOSbBfDFy//OeVsBva8ysxgLKBMP
x-ms-exchange-antispam-messagedata: lVT9wxB5k6dtnA0H6kz0rmhuEUjDL2M1drNyuLQyM7QeceAWB5XJLWJeiESM5jY6EvCBhKsYGOZapQZQx8p51SCQDrLjX3ZG3waRpndMLuOMt/cDYgoRTAa52l9/TgfJ3ltccScUL98ESo/+NJbsaw==
Content-ID: <ACC41A63E97F9F4C9AB5136C731F89B3@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a33bf6bf-9a05-47b4-b7b1-08d7c312c7a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2020 03:42:51.9112 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PfHeIwg1DGGoc6u6tl2Lk6rWZew92DR4g7rz+78HFo7IOn0TKrzyasy7GeCESbiFWs7qN5aL0Aq3kenKobEeSg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR18MB2920
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-07_09:2020-03-06,
 2020-03-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_194354_809708_6152AF56 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "peterz@infradead.org" <peterz@infradead.org>,
 Prasun Kapoor <pkapoor@marvell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-api@vger.kernel.org" <linux-api@vger.kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "will@kernel.org" <will@kernel.org>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is the updated version of task isolation patchset.

1. Commit messages updated to match changes.
2. Sign-off lines restored from original patches, changes listed wherever applicable.
3. arm platform -- added missing calls to syscall check and cleanup procedure after leaving isolation.
4. x86 platform -- added missing calls to cleanup procedure after leaving isolation.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
