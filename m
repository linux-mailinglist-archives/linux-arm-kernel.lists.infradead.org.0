Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C263519F185
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 10:25:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yo0OWSmLaUUwNPgH8DRGLtP0lMURYeMK06g6V0sfCXc=; b=iGP9+bAmG/K8iB
	aYbpZb660958LUuQ0VO1hsNu2f7Woe8RJroCgno6rLEuIVSbHsfgpLOs6zfEGMxryAOIqstqNDkpa
	J+XBKzzSN44EBHfn7WaJN1gC0QAgYhA1Wo0parS9zxoAw+9V9lkmZDz76hkkpdqKBPqm1zv5DBN70
	8RtnKALuDUl3bqWfZuOZD+AQ3OAot9P94b9It0uTGbuMCO6EddiS2i3iQFmbwPFYVa8iVnuNn3OQW
	1RDY+q6a62A4tinpbvpMFbJchUaStBr2c3GtQEmHxxirqQKcnfSBo0p6UuE6JhhmprWCZBuLMCr4A
	eGr68nJNXw07/3vM2EWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLN4j-0002cf-KO; Mon, 06 Apr 2020 08:25:45 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLN4c-0002bo-4N
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 08:25:40 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 3F2CA403FF;
 Mon,  6 Apr 2020 08:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1586161536; bh=ddEe3aaCvdgA664azO9OpWxSMy1ghocZi0TaFLin8bw=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=CyaGUAu/1r2ezz0Kvbk7HRozPK5H4jrhG3OJ7Xfn5sHlhgIRWimIa2hAzPOr1D4Ex
 zcaD/e4NmFY4XqGMaXTsvaLFfSPyK+pwYfR4lGkaGOgx9jDGNfLdbcIOKLzsNwmdWD
 PujB8k+7IYck/mKUon2XRRQVLrCuQZa+u6qdyMz0bWu6HTWaH4tvHXOjxaclNiox3L
 UYBWrnMlZxT5erH3kg+uvl+xmkb2h7NG5yDPkiV0RN18kBa7o0GdlpOviXRSnZgFOu
 VL15y0j4B9jy0HVikH1dMajyUUyN/FIdNd+xhdaf/EpPcgre553dYBxRBkz7TwfZG5
 8xWdiyiDQqd3Q==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 6D25DA008A;
 Mon,  6 Apr 2020 08:25:31 +0000 (UTC)
Received: from us01hybrid1.internal.synopsys.com (10.200.27.51) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 6 Apr 2020 01:25:31 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.200.27.51) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 6 Apr 2020 01:25:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PnlkdC5BcsM6N10Rliy5LIMO19rBA3MVK7uwmDlWxPMaVMOvF6nzE/W2KBBmMNEr5V5+rxn884YKYMcN4qOb8qBkiZKGeRNDbYP9zJdXchf1M+CqGBga5+gQ0OSZi748EPwgiDE2xvxujkA7JpsBKnfTHi1vnUAIoSEn0XmZNhKa1G2fpj6pP/ieia6wdZ6DNRM7/OuFWHBArzJlxKY2a3o7Fb9pXgBp7gaJ65rfHWwmlwRlWZRq1kPa7c3jtVwiKk6fblOjIbEk2KYYQBEwZMhJE5WcU2l0zMHfO82Hp5zG1Hrj9b/xZJb4UM5RMuhInthf82Dlk9YGdsQkx6aJYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ddEe3aaCvdgA664azO9OpWxSMy1ghocZi0TaFLin8bw=;
 b=kxP2or0x+EL79KDNLI0/GLufb5l8biHTOe4+Us9bHMzUV24kvjZpgxDm74i23Ka9s79traCF81uc1azHgtnBAXI+v87xP99hNuh/5exmbuXMD6CmOdLftf9QNbY7GIudBq0dRJuqIJjiCXZjZKbyHziVVVsZx0ZNLFv10mNRlgXKgQ4auBc5Q5prcvb1dp6jso+8SSNHlp9J7/XotQ9jH2kOTj8piFbuNFGnKUV1iwMvY902p9jdBpQ+UvOl9gRgDFgD1kyFHqGimsmBYeUqJaIDHHZ6gMJ1eAfYZfBIBC66fTTvSvMMIywwjMP4D6drjYLW5nkEDz7K3C00DYhySA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ddEe3aaCvdgA664azO9OpWxSMy1ghocZi0TaFLin8bw=;
 b=fy8zHCjWBfZnAvLH66eRCqn+HB3VF4gJVcuUG71HaO2FZlIlavZPG/WDxrgUmO1+XoWRico2+HKChowA8aCkVgrnBOgN84yq8QtvnSTUZWIpAM7UkTwnBe78sj+tkcGa8XmgstRkdQiUfKF/lAA45+2aZMYLaSS7d5dwn27GotE=
Received: from CH2PR12MB3782.namprd12.prod.outlook.com (2603:10b6:610:23::28)
 by CH2PR12MB3943.namprd12.prod.outlook.com (2603:10b6:610:2d::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.20; Mon, 6 Apr
 2020 08:25:28 +0000
Received: from CH2PR12MB3782.namprd12.prod.outlook.com
 ([fe80::98c8:5bfd:ae23:37cf]) by CH2PR12MB3782.namprd12.prod.outlook.com
 ([fe80::98c8:5bfd:ae23:37cf%7]) with mapi id 15.20.2878.016; Mon, 6 Apr 2020
 08:25:28 +0000
From: Angelo Ribeiro <Angelo.Ribeiro@synopsys.com>
To: Adrian Pop <pop.adrian61@gmail.com>
Subject: RE: [PATCH] drm/bridge: dw-mipi-dsi.c: Add VPG runtime config through
 debugfs
Thread-Topic: [PATCH] drm/bridge: dw-mipi-dsi.c: Add VPG runtime config
 through debugfs
Thread-Index: AQHWCc3U9HVwcgPZWk2D5VzXMUo+l6hoy7GAgAL6SKA=
Date: Mon, 6 Apr 2020 08:25:28 +0000
Message-ID: <CH2PR12MB37825CF27A64D88C78C7E5B1CBC20@CH2PR12MB3782.namprd12.prod.outlook.com>
References: <a5aa527c2cd66b55b4246b9c122c702a279b37f0.1585928032.git.angelo.ribeiro@synopsys.com>
 <CAP-HsdSKR8SB2UY2W33Xn8157Via30cD8wntXrvV0LEVmxgpRg@mail.gmail.com>
In-Reply-To: <CAP-HsdSKR8SB2UY2W33Xn8157Via30cD8wntXrvV0LEVmxgpRg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: =?utf-8?B?UEcxbGRHRStQR0YwSUc1dFBTSmliMlI1TG5SNGRDSWdjRDBpWXpwY2RYTmxj?=
 =?utf-8?B?bk5jWVc1blpXeHZjbHhoY0hCa1lYUmhYSEp2WVcxcGJtZGNNRGxrT0RRNVlq?=
 =?utf-8?B?WXRNekprTXkwMFlUUXdMVGcxWldVdE5tSTROR0poTWpsbE16VmlYRzF6WjNO?=
 =?utf-8?B?Y2JYTm5MVEppTnpGbVpqazNMVGMzWlRBdE1URmxZUzA1WkRjd0xXWmpOemMz?=
 =?utf-8?B?TkdWbFpHTXlaVnhoYldVdGRHVnpkRnd5WWpjeFptWTVPUzAzTjJVd0xURXha?=
 =?utf-8?B?V0V0T1dRM01DMW1ZemMzTnpSbFpXUmpNbVZpYjJSNUxuUjRkQ0lnYzNvOUlq?=
 =?utf-8?B?WTJORFVpSUhROUlqRXpNak13TmpNMU1USTRNelkzTVRnNU5DSWdhRDBpU1ZO?=
 =?utf-8?B?RVRtNXpaRU4yUlZGSU1TOVVlREUyYjNwTE4wdDFiMHB6UFNJZ2FXUTlJaUln?=
 =?utf-8?B?WW13OUlqQWlJR0p2UFNJeElpQmphVDBpWTBGQlFVRkZVa2hWTVZKVFVsVkdU?=
 =?utf-8?B?a05uVlVGQlFsRktRVUZDVjJzNGNuUTNRWFpYUVdOSldHNTZiMVZ0WWtNemQy?=
 =?utf-8?B?aGxaazlvVTFwelRHTlBRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVaEJRVUZCUTJ0RFFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVWQlFWRkJRa0ZCUVVGdmVXNXVObEZCUVVGQlFVRkJRVUZCUVVGQlFVRktO?=
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
 smtp.mailfrom=angelor@synopsys.com; 
x-originating-ip: [95.136.124.74]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 41197cba-2efb-4069-5261-08d7da041087
x-ms-traffictypediagnostic: CH2PR12MB3943:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR12MB3943B99CE43005008C5570F0CBC20@CH2PR12MB3943.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 0365C0E14B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR12MB3782.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(136003)(366004)(39850400004)(396003)(376002)(346002)(81156014)(7696005)(81166006)(64756008)(52536014)(66476007)(71200400001)(5660300002)(76116006)(66446008)(6506007)(66556008)(8936002)(6916009)(53546011)(7416002)(66946007)(26005)(478600001)(966005)(8676002)(55016002)(33656002)(4326008)(2906002)(316002)(86362001)(186003)(107886003)(9686003)(54906003);
 DIR:OUT; SFP:1102; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CXQaYB5cf98ZW2TEnrGeimKyJIPixTHtEtgH/zdjltLXO0Ee7JLdiNeThrc07gorwHUSAf2M1H8qtEFKy327ihSDVwWqJcUwjnFxDf7PCoUZahRqHuom7a5wmvLdkRNcbQh5zuTNNgrdevvif4+VSl23Ut9/CqmIzCcaB6VwOtgl7IEGl8e2abW/4nM9PZHh1/kFiKG/LwFPypB3WGvMMcy9wlH3EfOMS70MCo3L/ZUjrYsJWF59SkENo5YVnF25ZbK4eYhaN/ON1/inpLXl+im7xG/UEVE50xot7mmxApCtMwwLDlwPgaubbRID9nA7XO0iRrro5RGTlFbxC5+dRq+Sr6rgfTZxISkNibSldhv6NXlKmjz3imnZTsqJrPB+iRaiA/Usr18ezB3JBoE3dn5rApkKP7983UleHhOybsanZAiyv72LUHK+/v3ZqICuobK9x4GfzigRArIV39qNb7cfGH3RTnvo+VUZet/xUepEZ1BYOdexQGlc8POtfaoa5SknDZTkMc+yyZtkJCmGJA==
x-ms-exchange-antispam-messagedata: Th/Bu8qQE2/jGFlAzl6LgEyj5Nun8rP43oJbG4xBZMHgU93n5b1f03TTvaHwI2lLKN0YPdWgbpodXnYjRimmzmjNm98JifVZ5QNg2D7kaiQZasEkvuf/GAPvs81h5uvyprtwOt+Qy0NFI+DgPhhhNw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 41197cba-2efb-4069-5261-08d7da041087
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2020 08:25:28.6373 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Hucg7vzmsbCOWQjUoVO9l/22YsPAy0SOaIvLP9WnbX16Pv2YyY9j6vO3qlDRLSC3bducyNmUZnNDNpoVpdcKtg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB3943
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_012539_139175_4697BEA8 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao Pinto <Joao.Pinto@synopsys.com>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>, "airlied@linux.ie" <airlied@linux.ie>,
 Gustavo  Pimentel <Gustavo.Pimentel@synopsys.com>,
 "philippe.cornu@st.com" <philippe.cornu@st.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "yannick.fertre@st.com" <yannick.fertre@st.com>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "benjamin.gaignard@st.com" <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQWRyaWFuLA0KDQpZb3UgYXJlIHJpZ2h0IQ0KDQpUaGFua3MgZm9yIHRoZSBoZWxwLA0KQW5n
ZWxvIFJpYmVpcm8NCg0KRnJvbTogQWRyaWFuIFBvcCA8cG9wLmFkcmlhbjYxQGdtYWlsLmNvbT4N
CkRhdGU6IFNhdCwgQXByIDA0LCAyMDIwIGF0IDExOjU2OjExDQoNCj4gSGVsbG8gQW5nZWxvLA0K
PiANCj4gSSBnZXQgYSBjb21waWxlIGVycm9yOiBlcnJvcjog4oCYVklEX01PREVfVlBHX01PREXi
gJkgdW5kZWNsYXJlZC4gSSBhbQ0KPiBxdWl0ZSBuZXcgdG8gdGhlIG1haWxpbmcgbGlzdCwgbWF5
YmUgSSBtaXNhcHBsaWVkIHRoZSBwYXRjaC4NCj4gDQo+IFJlZ2FyZHMsDQo+IEFkcmlhbg0KPiAN
Cj4gDQo+IE9uIEZyaSwgQXByIDMsIDIwMjAgYXQgNjozNyBQTSBBbmdlbG8gUmliZWlybw0KPiA8
QW5nZWxvLlJpYmVpcm9Ac3lub3BzeXMuY29tPiB3cm90ZToNCj4gPg0KPiA+IEFkZCBzdXBwb3J0
IGZvciB0aGUgdmlkZW8gcGF0dGVybiBnZW5lcmF0b3IgKFZQRykgQkVSIHBhdHRlcm4gbW9kZSBh
bmQNCj4gPiBjb25maWd1cmF0aW9uIGluIHJ1bnRpbWUuDQo+ID4NCj4gPiBUaGlzIGVuYWJsZXMg
dXNpbmcgdGhlIGRlYnVnZnMgaW50ZXJmYWNlIHRvIG1hbmlwdWxhdGUgdGhlIFZQRyBhZnRlcg0K
PiA+IHRoZSBwaXBlbGluZSBpcyBzZXQuDQo+ID4gQWxzbywgZW5hYmxlcyB0aGUgdXNhZ2Ugb2Yg
dGhlIFZQRyBCRVIgcGF0dGVybi4NCj4gPg0KPiA+IENjOiBHdXN0YXZvIFBpbWVudGVsIDxndXN0
YXZvLnBpbWVudGVsQHN5bm9wc3lzLmNvbT4NCj4gPiBDYzogSm9hbyBQaW50byA8anBpbnRvQHN5
bm9wc3lzLmNvbT4NCj4gPiBDYzogSm9zZSBBYnJldSA8am9zZS5hYnJldUBzeW5vcHN5cy5jb20+
DQo+ID4gU2lnbmVkLW9mZi1ieTogQW5nZWxvIFJpYmVpcm8gPGFuZ2Vsby5yaWJlaXJvQHN5bm9w
c3lzLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9k
dy1taXBpLWRzaS5jIHwgOTcgKysrKysrKysrKysrKysrKysrKysrKysrLS0tDQo+ID4gIDEgZmls
ZSBjaGFuZ2VkLCA4OSBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0KPiA+DQo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctbWlwaS1kc2kuYyBi
L2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctbWlwaS1kc2kuYw0KPiA+IGluZGV4
IGIxODM1MWIuLjUxMmM5MjIgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2JyaWRn
ZS9zeW5vcHN5cy9kdy1taXBpLWRzaS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRn
ZS9zeW5vcHN5cy9kdy1taXBpLWRzaS5jDQo+ID4gQEAgLTIyMSw2ICsyMjEsMjEgQEANCj4gPiAg
I2RlZmluZSBQSFlfU1RBVFVTX1RJTUVPVVRfVVMgICAgICAgICAgMTAwMDANCj4gPiAgI2RlZmlu
ZSBDTURfUEtUX1NUQVRVU19USU1FT1VUX1VTICAgICAgMjAwMDANCj4gPg0KPiA+ICsjaWZkZWYg
Q09ORklHX0RFQlVHX0ZTDQo+ID4gKyNkZWZpbmUgVlBHX0RFRlMobmFtZSwgZHNpKSBcDQo+ID4g
KyAgICAgICAoKHZvaWQgX19mb3JjZSAqKSYoKCpkc2kpLnZwZ19kZWZzLm5hbWUpKQ0KPiA+ICsN
Cj4gPiArI2RlZmluZSBSRUdJU1RFUihuYW1lLCBtYXNrLCBkc2kpIFwNCj4gPiArICAgICAgIHsg
I25hbWUsIFZQR19ERUZTKG5hbWUsIGRzaSksIG1hc2ssIGRzaSB9DQo+ID4gKw0KPiA+ICtzdHJ1
Y3QgZGVidWdmc19lbnRyaWVzIHsNCj4gPiArICAgICAgIGNvbnN0IGNoYXIgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAqbmFtZTsNCj4gPiArICAgICAgIGJvb2wgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAqcmVnOw0KPiA+ICsgICAgICAgdTMyICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIG1hc2s7DQo+ID4gKyAgICAgICBzdHJ1Y3QgZHdfbWlwaV9k
c2kgICAgICAgICAgICAgICAgICAgICAgKmRzaTsNCj4gPiArfTsNCj4gPiArI2VuZGlmIC8qIENP
TkZJR19ERUJVR19GUyAqLw0KPiA+ICsNCj4gPiAgc3RydWN0IGR3X21pcGlfZHNpIHsNCj4gPiAg
ICAgICAgIHN0cnVjdCBkcm1fYnJpZGdlIGJyaWRnZTsNCj4gPiAgICAgICAgIHN0cnVjdCBtaXBp
X2RzaV9ob3N0IGRzaV9ob3N0Ow0KPiA+IEBAIC0yMzgsOSArMjUzLDEyIEBAIHN0cnVjdCBkd19t
aXBpX2RzaSB7DQo+ID4NCj4gPiAgI2lmZGVmIENPTkZJR19ERUJVR19GUw0KPiA+ICAgICAgICAg
c3RydWN0IGRlbnRyeSAqZGVidWdmczsNCj4gPiAtDQo+ID4gLSAgICAgICBib29sIHZwZzsNCj4g
PiAtICAgICAgIGJvb2wgdnBnX2hvcml6b250YWw7DQo+ID4gKyAgICAgICBzdHJ1Y3QgZGVidWdm
c19lbnRyaWVzICpkZWJ1Z2ZzX3ZwZzsNCj4gPiArICAgICAgIHN0cnVjdCB7DQo+ID4gKyAgICAg
ICAgICAgICAgIGJvb2wgdnBnOw0KPiA+ICsgICAgICAgICAgICAgICBib29sIHZwZ19ob3Jpem9u
dGFsOw0KPiA+ICsgICAgICAgICAgICAgICBib29sIHZwZ19iZXJfcGF0dGVybjsNCj4gPiArICAg
ICAgIH0gdnBnX2RlZnM7DQo+ID4gICNlbmRpZiAvKiBDT05GSUdfREVCVUdfRlMgKi8NCj4gPg0K
PiA+ICAgICAgICAgc3RydWN0IGR3X21pcGlfZHNpICptYXN0ZXI7IC8qIGR1YWwtZHNpIG1hc3Rl
ciBwdHIgKi8NCj4gPiBAQCAtNTMwLDkgKzU0OCwxMSBAQCBzdGF0aWMgdm9pZCBkd19taXBpX2Rz
aV92aWRlb19tb2RlX2NvbmZpZyhzdHJ1Y3QgZHdfbWlwaV9kc2kgKmRzaSkNCj4gPiAgICAgICAg
ICAgICAgICAgdmFsIHw9IFZJRF9NT0RFX1RZUEVfTk9OX0JVUlNUX1NZTkNfRVZFTlRTOw0KPiA+
DQo+ID4gICNpZmRlZiBDT05GSUdfREVCVUdfRlMNCj4gPiAtICAgICAgIGlmIChkc2ktPnZwZykg
ew0KPiA+ICsgICAgICAgaWYgKGRzaS0+dnBnX2RlZnMudnBnKSB7DQo+ID4gICAgICAgICAgICAg
ICAgIHZhbCB8PSBWSURfTU9ERV9WUEdfRU5BQkxFOw0KPiA+IC0gICAgICAgICAgICAgICB2YWwg
fD0gZHNpLT52cGdfaG9yaXpvbnRhbCA/IFZJRF9NT0RFX1ZQR19IT1JJWk9OVEFMIDogMDsNCj4g
PiArICAgICAgICAgICAgICAgdmFsIHw9IGRzaS0+dnBnX2RlZnMudnBnX2hvcml6b250YWwgPw0K
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgVklEX01PREVfVlBHX0hPUklaT05UQUwgOiAwOw0K
PiA+ICsgICAgICAgICAgICAgICB2YWwgfD0gZHNpLT52cGdfZGVmcy52cGdfYmVyX3BhdHRlcm4g
PyBWSURfTU9ERV9WUEdfTU9ERSA6IDA7DQo+ID4gICAgICAgICB9DQo+ID4gICNlbmRpZiAvKiBD
T05GSUdfREVCVUdfRlMgKi8NCj4gPg0KPiA+IEBAIC05NjEsNiArOTgxLDY4IEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgZHJtX2JyaWRnZV9mdW5jcyBkd19taXBpX2RzaV9icmlkZ2VfZnVuY3MgPSB7
DQo+ID4NCj4gPiAgI2lmZGVmIENPTkZJR19ERUJVR19GUw0KPiA+DQo+ID4gK3NzaXplX3QgZHdf
bWlwaV9kc2lfZGVidWdmc193cml0ZSh2b2lkICpkYXRhLCB1NjQgdmFsKQ0KPiA+ICt7DQo+ID4g
KyAgICAgICBzdHJ1Y3QgZGVidWdmc19lbnRyaWVzICp2cGcgPSBkYXRhOw0KPiA+ICsgICAgICAg
c3RydWN0IGR3X21pcGlfZHNpICpkc2k7DQo+ID4gKyAgICAgICB1MzIgbW9kZV9jZmc7DQo+ID4g
Kw0KPiA+ICsgICAgICAgaWYgKCF2cGcpDQo+ID4gKyAgICAgICAgICAgICAgIHJldHVybiAtRU5P
REVWOw0KPiA+ICsNCj4gPiArICAgICAgIGRzaSA9IHZwZy0+ZHNpOw0KPiA+ICsNCj4gPiArICAg
ICAgICp2cGctPnJlZyA9IChib29sKXZhbDsNCj4gPiArDQo+ID4gKyAgICAgICBtb2RlX2NmZyA9
IGRzaV9yZWFkKGRzaSwgRFNJX1ZJRF9NT0RFX0NGRyk7DQo+ID4gKw0KPiA+ICsgICAgICAgaWYg
KCp2cGctPnJlZykNCj4gPiArICAgICAgICAgICAgICAgbW9kZV9jZmcgfD0gdnBnLT5tYXNrOw0K
PiA+ICsgICAgICAgZWxzZQ0KPiA+ICsgICAgICAgICAgICAgICBtb2RlX2NmZyAmPSB+dnBnLT5t
YXNrOw0KPiA+ICsNCj4gPiArICAgICAgIGRzaV93cml0ZShkc2ksIERTSV9WSURfTU9ERV9DRkcs
IG1vZGVfY2ZnKTsNCj4gPiArDQo+ID4gKyAgICAgICByZXR1cm4gMDsNCj4gPiArfQ0KPiA+ICsN
Cj4gPiArc3NpemVfdCBkd19taXBpX2RzaV9kZWJ1Z2ZzX3Nob3codm9pZCAqZGF0YSwgdTY0ICp2
YWwpDQo+ID4gK3sNCj4gPiArICAgICAgIHN0cnVjdCBkZWJ1Z2ZzX2VudHJpZXMgKnZwZyA9IGRh
dGE7DQo+ID4gKw0KPiA+ICsgICAgICAgaWYgKCF2cGcpDQo+ID4gKyAgICAgICAgICAgICAgIHJl
dHVybiAtRU5PREVWOw0KPiA+ICsNCj4gPiArICAgICAgICp2YWwgPSAqdnBnLT5yZWc7DQo+ID4g
Kw0KPiA+ICsgICAgICAgcmV0dXJuIDA7DQo+ID4gK30NCj4gPiArDQo+ID4gK0RFRklORV9ERUJV
R0ZTX0FUVFJJQlVURShmb3BzX3gzMiwgZHdfbWlwaV9kc2lfZGVidWdmc19zaG93LA0KPiA+ICsg
ICAgICAgICAgICAgICAgICAgICAgICBkd19taXBpX2RzaV9kZWJ1Z2ZzX3dyaXRlLCAiJWxsdVxu
Iik7DQo+ID4gKw0KPiA+ICtzdGF0aWMgdm9pZCBkZWJ1Z2ZzX2NyZWF0ZV9maWxlcyh2b2lkICpk
YXRhKQ0KPiA+ICt7DQo+ID4gKyAgICAgICBzdHJ1Y3QgZHdfbWlwaV9kc2kgKmRzaSA9IGRhdGE7
DQo+ID4gKyAgICAgICBzdHJ1Y3QgZGVidWdmc19lbnRyaWVzIGRlYnVnZnNbXSA9IHsNCj4gPiAr
ICAgICAgICAgICAgICAgUkVHSVNURVIodnBnLCBWSURfTU9ERV9WUEdfRU5BQkxFLCBkc2kpLA0K
PiA+ICsgICAgICAgICAgICAgICBSRUdJU1RFUih2cGdfaG9yaXpvbnRhbCwgVklEX01PREVfVlBH
X0hPUklaT05UQUwsIGRzaSksDQo+ID4gKyAgICAgICAgICAgICAgIFJFR0lTVEVSKHZwZ19iZXJf
cGF0dGVybiwgVklEX01PREVfVlBHX01PREUsIGRzaSksDQo+ID4gKyAgICAgICB9Ow0KPiA+ICsg
ICAgICAgaW50IGk7DQo+ID4gKw0KPiA+ICsgICAgICAgZHNpLT5kZWJ1Z2ZzX3ZwZyA9IGttYWxs
b2Moc2l6ZW9mKGRlYnVnZnMpLCBHRlBfS0VSTkVMKTsNCj4gPiArICAgICAgIGlmICghZHNpLT5k
ZWJ1Z2ZzX3ZwZykNCj4gPiArICAgICAgICAgICAgICAgcmV0dXJuOw0KPiA+ICsNCj4gPiArICAg
ICAgIG1lbWNweShkc2ktPmRlYnVnZnNfdnBnLCBkZWJ1Z2ZzLCBzaXplb2YoZGVidWdmcykpOw0K
PiA+ICsNCj4gPiArICAgICAgIGZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKGRlYnVnZnMpOyBp
KyspDQo+ID4gKyAgICAgICAgICAgICAgIGRlYnVnZnNfY3JlYXRlX2ZpbGUoZHNpLT5kZWJ1Z2Zz
X3ZwZ1tpXS5uYW1lLCAwNjQ0LA0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGRzaS0+ZGVidWdmcywgJmRzaS0+ZGVidWdmc192cGdbaV0sDQo+ID4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgJmZvcHNfeDMyKTsNCj4gPiArfQ0KPiA+ICsNCj4gPiAg
c3RhdGljIHZvaWQgZHdfbWlwaV9kc2lfZGVidWdmc19pbml0KHN0cnVjdCBkd19taXBpX2RzaSAq
ZHNpKQ0KPiA+ICB7DQo+ID4gICAgICAgICBkc2ktPmRlYnVnZnMgPSBkZWJ1Z2ZzX2NyZWF0ZV9k
aXIoZGV2X25hbWUoZHNpLT5kZXYpLCBOVUxMKTsNCj4gPiBAQCAtOTY5LDE0ICsxMDUxLDEzIEBA
IHN0YXRpYyB2b2lkIGR3X21pcGlfZHNpX2RlYnVnZnNfaW5pdChzdHJ1Y3QgZHdfbWlwaV9kc2kg
KmRzaSkNCj4gPiAgICAgICAgICAgICAgICAgcmV0dXJuOw0KPiA+ICAgICAgICAgfQ0KPiA+DQo+
ID4gLSAgICAgICBkZWJ1Z2ZzX2NyZWF0ZV9ib29sKCJ2cGciLCAwNjYwLCBkc2ktPmRlYnVnZnMs
ICZkc2ktPnZwZyk7DQo+ID4gLSAgICAgICBkZWJ1Z2ZzX2NyZWF0ZV9ib29sKCJ2cGdfaG9yaXpv
bnRhbCIsIDA2NjAsIGRzaS0+ZGVidWdmcywNCj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAg
ICAgJmRzaS0+dnBnX2hvcml6b250YWwpOw0KPiA+ICsgICAgICAgZGVidWdmc19jcmVhdGVfZmls
ZXMoZHNpKTsNCj4gPiAgfQ0KPiA+DQo+ID4gIHN0YXRpYyB2b2lkIGR3X21pcGlfZHNpX2RlYnVn
ZnNfcmVtb3ZlKHN0cnVjdCBkd19taXBpX2RzaSAqZHNpKQ0KPiA+ICB7DQo+ID4gICAgICAgICBk
ZWJ1Z2ZzX3JlbW92ZV9yZWN1cnNpdmUoZHNpLT5kZWJ1Z2ZzKTsNCj4gPiArICAgICAgIGtmcmVl
KGRzaS0+ZGVidWdmc192cGcpOw0KPiA+ICB9DQo+ID4NCj4gPiAgI2Vsc2UNCj4gPiAtLQ0KPiA+
IDIuNy40DQo+ID4NCj4gPg0KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fDQo+ID4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QNCj4gPiBsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcNCj4gPiBodHRwczovL3VybGRlZmVuc2Uu
cHJvb2Zwb2ludC5jb20vdjIvdXJsP3U9aHR0cC0zQV9fbGlzdHMuaW5mcmFkZWFkLm9yZ19tYWls
bWFuX2xpc3RpbmZvX2xpbnV4LTJEYXJtLTJEa2VybmVsJmQ9RHdJRmFRJmM9RFBMNl9YXzZKa1hG
eDdBWFdxQjB0ZyZyPS0xbEprTWkyajhJRThqcHNOV085OW85ekpGd3l2MU1iamozdkpCUl9faTAm
bT1SVmt6ZXVVOVlicjRzRGF2SkRRbERRUU5JU1ZVN09BRHdhNEg1c3ZkTVFJJnM9VHowVzRpbFgw
c3NwLVJXTHduRGpLX0owVWpqcWo5VHlqVzRjVldLOFRFTSZlPSANCg0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
