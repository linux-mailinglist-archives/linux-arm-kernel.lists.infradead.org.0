Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3101356FA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 11:33:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BN8WtbHaRlmSovTHvUjiNOKV2lFJB+Xs7jcOY8SEYGw=; b=qaiDqFKjq8wm5T
	VYRhB1rJYhSmdH0zSCikfAMomcGl+/XPVNZBvocbPRLcEwsfOQZL1tksPWOVhtgVvoJQ+I+tuTACl
	d2VHwn/sNFm0AHX7YheSNo6AiOfKjH9NeC5joPh+Fgk6O5hDmXka0rr46Pp5LzVBh9Lwz16dti/lY
	mlMxg3pcuW/AQ9rLP2qkOVvPTW0HXP0zft61PVOrqAAdsqa1YVlJhGfglIgW2SBWiKFU6wLNgRCI/
	9ZnnE4AvARsF1UslKA6Ye2H1ReTzGsY5mWt0jAk+wN4F/rXjWszTMkZIHfyCcgGjU0C7fzO71A1iR
	iDpxb4MgjfHCFFbPc7nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipV8E-0008Ti-L7; Thu, 09 Jan 2020 10:33:38 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipV87-0008TA-Rk
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 10:33:33 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 6F0E2404D4;
 Thu,  9 Jan 2020 10:33:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1578566010; bh=E5BNh8f7JoVXWv2a5Ky3VL/Jtz6BygI6B0QxDDeJius=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=SQAcGQxEKhBwIpJG9RMgQRkVljTULAto6Ldjv5cXFCtW/4A0qEJxGlnaKIDGGlY0i
 SzjzGFiCiTeUFeslFHyQ4FN7NEc3pRA58TRI5oeD5t6pnTmUVvpRU8pyWz3VJRsQsG
 +YfwnPVlS2fJgFRF1i9MN4aJgjHJbfR6aUtaseS2qr/iMhAfMv31tJ75Oi8nQ4gjaq
 gPWckW0hPImKcVA/UWPNXGPH94ZA9ZHAl1jy8oGWZJZvPQ/JG3HlZwDkYeebRocYoV
 X3VNnmgNeJ/HWvGKeKN9mSN5KJWB7DtIoOnjGhX5joORp0xuI9C6JdKzryZHMYJCqq
 aOCHUMQ759USw==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 6AA9FA0067;
 Thu,  9 Jan 2020 10:33:17 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 9 Jan 2020 02:33:05 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Thu, 9 Jan 2020 02:33:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NX0nWjwdqwUidg7XLPW6s42Mi5UaE5yrT4a5sxQ1hVnKaZV97rvoiJ7VDQuL/eB7v3qoVdwI27omdhvtZz95iLogwKQveys7Oe+ID87mCL1WAkY9Ek+ZqZlxmRnqU7iaSRkdvor7GDiqIJGup/rLvt5jiohUdTGv6UeMsHSfgRBQklseiSkK68zUtIqc1FQhGXAsNP0nZgjQCWsVUxHD1ywBO+0lPHSTLpzbwcL1gs6e9MrEDQvP1HV+wvziO2tIPBMnjcoo0Kh58FvYdJgaX1JL9GWysJzKlu3srFUgQiF1Vacl4FuRpzOnve51PMqUqiY/OVnlBSjMUtDrg4vYGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E5BNh8f7JoVXWv2a5Ky3VL/Jtz6BygI6B0QxDDeJius=;
 b=b4QieYvoIhmzwEwjPwVvf/1B66lq92qboK0uff0Y7D8e9KjWvnDZBp3o0/sTOlvDq4J4Tve/F4NhtZHw6RaLa7OOUfp/o9BkA0xBHrLwveQ7B1oFuDaNEZr2hjhAesEHGdNKbzyp0kMgEmNaBBb4gq9Cq7g5K2UF+nEdxP4m9sn/x9zp79yOGdotq93dY5vgUoqC626R8nDF0bcr/31+Y0ub23mizST5De6A+tXtNEv8mx61bWnUC/yjQuECRPZbjnp6JF3nhNyJa4/EIfZE4PghvwITp2w5P9jxLkZsreHz9epq3OcLmrtzWNF+SvW0RQ91r9EJpaSoa/l/hqXZvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E5BNh8f7JoVXWv2a5Ky3VL/Jtz6BygI6B0QxDDeJius=;
 b=JTR1lhwP9eNKLGVqWNDNFd/gYB1migz3CDz8rWrljxDgW3IlZ4ffsm3auBHZZ/XdwbF9dUs+6eohJzBB1xK712KsMcjXZxbiXFcGPkfbGH3/A1ulgXp2IgGGaC/G0rku6JV/C3+sxRbxms2lhcdlr/Xj9fntxEu7b6aZLLi4A9w=
Received: from CH2PR12MB4007.namprd12.prod.outlook.com (52.132.247.78) by
 CH2PR12MB3959.namprd12.prod.outlook.com (52.132.245.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.12; Thu, 9 Jan 2020 10:33:03 +0000
Received: from CH2PR12MB4007.namprd12.prod.outlook.com
 ([fe80::f0e2:26d5:2de4:a4b7]) by CH2PR12MB4007.namprd12.prod.outlook.com
 ([fe80::f0e2:26d5:2de4:a4b7%6]) with mapi id 15.20.2602.017; Thu, 9 Jan 2020
 10:33:03 +0000
From: Gustavo Pimentel <Gustavo.Pimentel@synopsys.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Bjorn Helgaas
 <helgaas@kernel.org>, Xiaowei Bao <xiaowei.bao@nxp.com>
Subject: RE: [PATCH 0/4] Redesign MSI-X support in PCIe Endpoint Core
Thread-Topic: [PATCH 0/4] Redesign MSI-X support in PCIe Endpoint Core
Thread-Index: AQHVsCDyo+BSPS1gO0yCMCKlE1xed6e1iW0AgCzC0ID////JEA==
Date: Thu, 9 Jan 2020 10:33:02 +0000
Message-ID: <CH2PR12MB4007D88BF5BD0A3365A160ACDA390@CH2PR12MB4007.namprd12.prod.outlook.com>
References: <20191211224636.GA122332@google.com>
 <a971c0b1-ed66-fd4c-5a1d-7aef9d410866@ti.com>
In-Reply-To: <a971c0b1-ed66-fd4c-5a1d-7aef9d410866@ti.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: =?utf-8?B?UEcxbGRHRStQR0YwSUc1dFBTSmliMlI1TG5SNGRDSWdjRDBpWXpwY2RYTmxj?=
 =?utf-8?B?bk5jWjNWemRHRjJiMXhoY0hCa1lYUmhYSEp2WVcxcGJtZGNNRGxrT0RRNVlq?=
 =?utf-8?B?WXRNekprTXkwMFlUUXdMVGcxWldVdE5tSTROR0poTWpsbE16VmlYRzF6WjNO?=
 =?utf-8?B?Y2JYTm5MVFk0TURBeVlXTXdMVE15WTJJdE1URmxZUzA1T0RsbExXWTRPVFJq?=
 =?utf-8?B?TWpjek9EQTBNbHhoYldVdGRHVnpkRncyT0RBd01tRmpNUzB6TW1OaUxURXha?=
 =?utf-8?B?V0V0T1RnNVpTMW1PRGswWXpJM016Z3dOREppYjJSNUxuUjRkQ0lnYzNvOUlq?=
 =?utf-8?B?TTFNelVpSUhROUlqRXpNakl6TURNNU5UZ3hNalE1TkRjek1pSWdhRDBpY25G?=
 =?utf-8?B?bFJWVXpXbFJvTTBvck5UUmlURWxZYjFweU1uRnJUbnAzUFNJZ2FXUTlJaUln?=
 =?utf-8?B?WW13OUlqQWlJR0p2UFNJeElpQmphVDBpWTBGQlFVRkZVa2hWTVZKVFVsVkdU?=
 =?utf-8?B?a05uVlVGQlFsRktRVUZEVFhabGEzRXlUV0pXUVZWUlppc3pSbmRHYUU5dVVr?=
 =?utf-8?B?SXZOMk5ZUVZkRk5tTlBRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVaEJRVUZCUTJ0RFFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVWQlFWRkJRa0ZCUVVGRlIwbFplbEZCUVVGQlFVRkJRVUZCUVVGQlFVRktO?=
 =?utf-8?B?RUZCUVVKdFFVZHJRV0puUW1oQlJ6UkJXWGRDYkVGR09FRmpRVUp6UVVkRlFX?=
 =?utf-8?B?Sm5RblZCUjJ0QlltZENia0ZHT0VGa2QwSm9RVWhSUVZwUlFubEJSekJCV1ZG?=
 =?utf-8?B?Q2VVRkhjMEZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUlVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?blFVRkJRVUZCYm1kQlFVRkhXVUZpZDBJeFFVYzBRVnBCUW5sQlNHdEJXSGRD?=
 =?utf-8?B?ZDBGSFJVRmpaMEl3UVVjMFFWcFJRbmxCU0UxQldIZENia0ZIV1VGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFWRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkRRVUZCUVVGQlEyVkJRVUZCV21kQ2RrRklWVUZpWjBKclFV?=
 =?utf-8?B?aEpRV1ZSUW1aQlNFRkJXVkZDZVVGSVVVRmlaMEpzUVVoSlFXTjNRbVpCU0Ux?=
 =?utf-8?B?QldWRkNkRUZJVFVGa1VVSjFRVWRqUVZoM1FtcEJSemhCWW1kQ2JVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUpCUVVGQlFVRkJRVUZCU1VGQlFVRkJRVW8wUVVGQlFtMUJSemhC?=
 =?utf-8?B?WkZGQ2RVRkhVVUZqWjBJMVFVWTRRV05CUW1oQlNFbEJaRUZDZFVGSFZVRmpa?=
 =?utf-8?B?MEo2UVVZNFFXTjNRbWhCUnpCQlkzZENNVUZITkVGYWQwSm1RVWhKUVZwUlFu?=
 =?utf-8?B?cEJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGRlFVRkJRVUZCUVVGQlFXZEJRVUZCUVVGdVow?=
 =?utf-8?B?RkJRVWRaUVdKM1FqRkJSelJCV2tGQ2VVRklhMEZZZDBKM1FVZEZRV05uUWpC?=
 =?utf-8?B?QlJ6UkJXbEZDZVVGSVRVRllkMEo2UVVjd1FXRlJRbXBCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJVVUZCUVVGQlFVRkJRVU5C?=
 =?utf-8?B?UVVGQlFVRkRaVUZCUVVGYVowSjJRVWhWUVdKblFtdEJTRWxCWlZGQ1prRklR?=
 =?utf-8?B?VUZaVVVKNVFVaFJRV0puUW14QlNFbEJZM2RDWmtGSVRVRmtRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUWtGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGSlFVRkJRVUZCU2pSQlFVRkNiVUZIT0VGa1VVSjFRVWRSUVdO?=
 =?utf-8?B?blFqVkJSamhCWTBGQ2FFRklTVUZrUVVKMVFVZFZRV05uUW5wQlJqaEJaRUZD?=
 =?utf-8?B?ZWtGSE1FRlpkMEZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVVkJRVUZCUVVGQlFVRkJaMEZCUVVGQlFXNW5RVUZCUjFsQlluZENN?=
 =?utf-8?B?VUZITkVGYVFVSjVRVWhyUVZoM1FuZEJSMFZCWTJkQ01FRkhORUZhVVVKNVFV?=
 =?utf-8?B?aE5RVmgzUWpGQlJ6QkJXWGRCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZSUVVGQlFVRkJRVUZCUTBGQlFVRkJRVU5sUVVG?=
 =?utf-8?B?QlFWcDNRakJCU0UxQldIZENkMEZJU1VGaWQwSnJRVWhWUVZsM1FqQkJSamhC?=
 =?utf-8?B?WkVGQ2VVRkhSVUZoVVVKMVFVZHJRV0puUW01QlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQ1FVRkJRVUZCUVVGQlFVbEJR?=
 =?utf-8?B?VUZCUVVGS05FRkJRVUo2UVVkRlFXSkJRbXhCU0UxQldIZENhRUZIVFVGWmQw?=
 =?utf-8?B?SjJRVWhWUVdKblFqQkJSamhCWTBGQ2MwRkhSVUZpWjBGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJSVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZuUVVGQlFVRkJibWRCUVVGSVRVRlpVVUp6UVVkVlFXTjNRbVpC?=
 =?utf-8?B?U0VWQlpGRkNka0ZJVVVGYVVVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVZGQlFVRkJRVUZCUVVGRFFVRkJRVUZCUTJWQlFVRkJZM2RDZFVGSVFV?=
 =?utf-8?B?RmpkMEptUVVkM1FXRlJRbXBCUjFWQlltZENla0ZIVlVGWWQwSXdRVWRWUVdO?=
 =?utf-8?B?blFuUkJSamhCVFZGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVSkJRVUZCUVVGQlFVRkJTVUZCUVVGQlFVbzBRVUZC?=
 =?utf-8?B?UW5wQlJ6UkJZMEZDZWtGR09FRmlRVUp3UVVkTlFWcFJRblZCU0UxQldsRkNa?=
 =?utf-8?B?a0ZJVVVGYVVVSjVRVWN3UVZoM1FucEJTRkZCWkZGQ2EwRkhWVUZpWjBJd1FV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZGUVVGQlFVRkJRVUZCUVdkQlFV?=
 =?utf-8?B?RkJRVUZ1WjBGQlFVaFpRVnAzUW1aQlIzTkJXbEZDTlVGSVkwRmlkMEo1UVVk?=
 =?utf-8?B?UlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlVVRkJRVUZC?=
 =?utf-8?Q?QUFBQUNBQUFBQUFBPSIvPjwvbWV0YT4=3D?=
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=gustavo@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b6db0a42-2b1f-4f1d-01d5-08d794ef4e78
x-ms-traffictypediagnostic: CH2PR12MB3959:
x-microsoft-antispam-prvs: <CH2PR12MB3959F58BBC77538896FFE176DA390@CH2PR12MB3959.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:216;
x-forefront-prvs: 02778BF158
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(346002)(136003)(39850400004)(396003)(376002)(199004)(189003)(7416002)(66446008)(66556008)(76116006)(64756008)(316002)(2906002)(66946007)(71200400001)(478600001)(81166006)(81156014)(5660300002)(86362001)(52536014)(54906003)(110136005)(8676002)(66476007)(4326008)(33656002)(9686003)(53546011)(55016002)(6506007)(7696005)(8936002)(26005)(966005)(186003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CH2PR12MB3959;
 H:CH2PR12MB4007.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mzU8siBrFF/wCASM8TrGZLNELa2/qlX3IBleXYIeFi7Kv9guo/rruwjOJFpUbl/XojzvFHTeZ6TjgNbxQ6e/mLd6qBtzu3x824JDtpMdqNnU4/B8zg6EEmiGbN5pUkRHGVZp6K9eNCgNq7DcY6dn/D/Ig152DkGeVG2/hLwdaa3D39Rr7kRKf4ZlPoZaEpMi3qEUkTe9X2mQO26VqGwH6wuNOAmplRd4hHXNGU9Su0rezHm0rrl5ntgQLSN7iGwsdIIXAp/eXfG+kuaLaoz7IzybMbwqPBr/t4Ad31+8LC87J27PgvYXiSDU685SHJK6t+fS4hJ8SY0im5aEXN8/WrPHuz15ICoZxkYmwpve552MFfvNYvn1ctqrbcm+kS20KT8dYSl0xyve3yVphKAnlMIfjZzlB6Zcr4NI2a2cee17N6h4zkLWdP4e7AIHN+nJGqpvoXdQUyDDWlnRZ4hEuKCH5wWFhHkYscxo/S8NVzxKScoe7bWrcbegaKDcHODooEhi96FApmaRMB706LBiTA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b6db0a42-2b1f-4f1d-01d5-08d794ef4e78
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2020 10:33:02.9657 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3qnBkRmCtS9mJgfQJu/WpvovL5W1m0+Td/wDudhmyCQqKgdFzlJCPIyNENw8o2hFfRZaP7iRqBsMIhMTrJH+Hw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB3959
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_023331_968597_7FA6BA67 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Murali Karicheri <m-karicheri2@ti.com>, Jingoo Han <jingoohan1@gmail.com>,
 Andrew Murray <andrew.murray@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kishon,

On Thu, Jan 9, 2020 at 10:19:17, Kishon Vijay Abraham I <kishon@ti.com> 
wrote:

> Hi,
> 
> On 12/12/19 4:16 AM, Bjorn Helgaas wrote:
> > On Wed, Dec 11, 2019 at 06:16:04PM +0530, Kishon Vijay Abraham I wrote:
> >> Existing MSI-X support in Endpoint core has limitations:
> >>  1) MSIX table (which is mapped to a BAR) is not allocated by
> >>     anyone. Ideally this should be allocated by endpoint
> >>     function driver.
> >>  2) Endpoint controller can choose any random BARs for MSIX
> >>     table (irrespective of whether the endpoint function driver
> >>     has allocated memory for it or not)
> >>
> >> In order to avoid these limitations, pci_epc_set_msix() is
> >> modified to include BAR Indicator register (BIR) configuration
> >> and MSIX table offset as arguments. This series also fixed MSIX
> >> support in dwc driver and add MSI-X support in Cadence PCIe driver.
> >>
> >> The previous version of Cadence EP MSI-X support is @ [1].
> >> This series is created on top of [2]
> >>
> >> [1] -> https://urldefense.proofpoint.com/v2/url?u=https-3A__patchwork.ozlabs.org_patch_971160_&d=DwICaQ&c=DPL6_X_6JkXFx7AXWqB0tg&r=bkWxpLoW-f-E3EdiDCCa0_h0PicsViasSlvIpzZvPxs&m=mDuurD6XufzL6j14X2LHC1ulMbU5dbmCtVUYVtCxNFM&s=IEKU31dHkOuXDfERPV1_QZ0U_BsjgCFgLwoE2ipAhFU&e= 
> >> [2] -> https://urldefense.proofpoint.com/v2/url?u=http-3A__lore.kernel.org_r_20191209092147.22901-2D1-2Dkishon-40ti.com&d=DwICaQ&c=DPL6_X_6JkXFx7AXWqB0tg&r=bkWxpLoW-f-E3EdiDCCa0_h0PicsViasSlvIpzZvPxs&m=mDuurD6XufzL6j14X2LHC1ulMbU5dbmCtVUYVtCxNFM&s=9-DXCyz6iyuFk67BCnXeBt8HtJ-OOczk6ug_0ZZBgVE&e= 
> >>
> >> Alan Douglas (1):
> >>   PCI: cadence: Add MSI-X support to Endpoint driver
> >>
> >> Kishon Vijay Abraham I (3):
> >>   PCI: endpoint: Fix ->set_msix() to take BIR and offset as arguments
> >>   PCI: dwc: Fix dw_pcie_ep_raise_msix_irq() to get correct MSIX table
> >>     address
> >>   PCI: keystone: Add AM654 PCIe Endpoint to raise MSIX interrupt
> > 
> > Trivial nits:
> > 
> >   - There's a mix of "MSI-X" and "MSIX" in the subjects, commit logs,
> >     and comments.  I prefer "MSI-X" to match usage in the spec.
> > 
> >   - "Fixes:" tags need not include "commit".  It doesn't *hurt*
> >     anything, but it takes up space that could be used for the
> >     subject.
> > 
> >   - Commit references typically use a 12-char SHA1.  Again, doesn't
> >     hurt anything.
> 
> I'll fix all this in my next revision.
> 
> Xiaowei, Gustavo,
> 
> The issues we discussed in  [1] should be fixed with this series. Can
> you help test this in your platforms?

I didn't forget this, but unfortunately, I still don't have the HW 
prototype required to be able to test this (there are some resources and 
roadmap constraints that are blocking this).
To avoid blocking you and Xiaomi, I 'd suggest (assuming this MSI-X API 
rework is working for layerscape and keystone drivers) to continue with 
this patch series and take it to the mainline. If I get some problem with 
my setup (as soon as I get the required conditions to test) I'll deal 
with it then.

Regards
Gustavo

> 
> [1] -> https://urldefense.proofpoint.com/v2/url?u=https-3A__lkml.org_lkml_2019_11_6_678&d=DwICaQ&c=DPL6_X_6JkXFx7AXWqB0tg&r=bkWxpLoW-f-E3EdiDCCa0_h0PicsViasSlvIpzZvPxs&m=mDuurD6XufzL6j14X2LHC1ulMbU5dbmCtVUYVtCxNFM&s=CbZ63jR-UW-NMY3U39htnXhperbQxlQX6dMQ9zpvBXg&e= 
> 
> Thanks
> Kishon
> > 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
