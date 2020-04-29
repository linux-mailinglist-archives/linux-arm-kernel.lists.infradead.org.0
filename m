Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B831BE5C9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 20:01:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:To:References:Message-Id:
	Date:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xiUVghi+js5aC9sLb+mCWJky51IekgxdOlKR0MLm+iQ=; b=a157B2AuK6cZxa
	Egld18R9l3058W3nt0Oo0WkZcFr7JIWdpN+DBMuu7EBWgvsanVU7uH4kA7gu1DxdqCl1xGN4iZfPU
	4sm6lUuIolOewv+aRiNyuJZWGKcj58CMtDB4Rw/BaFWetj18CS1+R08QrNrgBvouxKga7dMYnBwSF
	4Fn6UI15pk15Pn4GRNq8pX5Cd8L1T6KdF/JLnGp4iItZCrLZgnRC/RFS4U8U1hJFBzr5EH29IyKC+
	8ebWm1kusBPkX+9t6gXTlX4Zykcu+huqr3OUfjSrM5DSeR6QfoyLDSZacaT04b1SHqKe0dJrvHB0J
	Zhl8aDg6NGCcSlMR9Yjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTr1T-0005CM-Rk; Wed, 29 Apr 2020 18:01:27 +0000
Received: from mail-mw2nam12on2126.outbound.protection.outlook.com
 ([40.107.244.126] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTr1I-0005AO-Dv
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 18:01:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dIgZtajfAt2hHTaes1i2+HyFqS6FCpuqgXJ/0KJgsKsyj2aCs9S0WD4+b5NMA/GKJXpNaqO6AV9ifTwB3/buHMBByTwFohNCa6fHEnPYLbMiTTNMgb6IwUOTW5VeG7M2426isfFZ9U+WU+2kWF71t+dHR/1oDtd7FS8QSZsz5/EnEVED7I7y1oigf6qAZ/4SqJZLaKU/DKnYEyEq5RTlk+p4/T1X4At/SDJCSk4w6JDcVU4pWPte0He9RT+0tAamelCZrIlpmeyDZAIsZ1GuZJiJCGgFJMV8h19Ff20dAdmahNUEjUMFlPdJ8G7m0u+09ZSvYKLMATv5DyitGAjesw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Pdt44Km1QZkL1UTIrf2ohHsRvp+jgNYQBPmSk46F0Nk=;
 b=GtXh272mljn8/QRiTaexagnSk1Ff+hBvW4PuyC8vmu8D9r4QPrcXuUuxEuyhbiSzYtIa7nSOfnrU+dnIepsiNVAE1RgyGQ01ETfw2ELzqKynbv8EYnd9aAjgs6xtnXTYaZgOir+uwqeFTjp8RzJZAupnQ2Ox79JauKv64JJmnXd7z+X/z0IPZEhpZ1HsTAbk/MMmbrSHYyVQOq3DeoB3j+WPucwpVA5nEv7WQADp/AcsMBbb6sfnBaPxN4HPBziJlyvDWe7nn7S2B8rZQz4nysym0u71jPvFFhCifvnXH7OU0J3LdwSYh74AMGdzhHaTpUqY3py8D/9RPqoecZ83xQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=amperemail.onmicrosoft.com; dkim=pass
 header.d=amperemail.onmicrosoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Pdt44Km1QZkL1UTIrf2ohHsRvp+jgNYQBPmSk46F0Nk=;
 b=gdj0TbiCOA2RoiHzpWcBoCamUaqyjub3x5gZzxS815zb17xdVlQUWo61OKlMyLJei23ShNBKPo3sqYxK7xSKTMi6m4xxft6Ay6igP9Pv8iXB72AYvSAQ9OKTzlkvE3DTSHLtp7vwxyOQjZt3rwru4wQ+3V5p1vOpNWgQY3XkWSs=
Authentication-Results: linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=none action=none
 header.from=amperemail.onmicrosoft.com;
Received: from BYAPR01MB4598.prod.exchangelabs.com (2603:10b6:a03:8a::18) by
 BYAPR01MB4021.prod.exchangelabs.com (2603:10b6:a03:15::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.22; Wed, 29 Apr 2020 18:01:08 +0000
Received: from BYAPR01MB4598.prod.exchangelabs.com
 ([fe80::296c:b848:8bf0:6f2c]) by BYAPR01MB4598.prod.exchangelabs.com
 ([fe80::296c:b848:8bf0:6f2c%5]) with mapi id 15.20.2958.019; Wed, 29 Apr 2020
 18:01:08 +0000
Subject: Re: [PATCH] perf/smmuv3: Allow sharing MMIO registers with the SMMU
 driver
From: Tuan Phan <tuanphan@amperemail.onmicrosoft.com>
In-Reply-To: <20200429072104.GA817954@myrica>
Date: Wed, 29 Apr 2020 11:01:05 -0700
Message-Id: <D4FCF21C-D514-44F0-82CF-4932C704117B@amperemail.onmicrosoft.com>
References: <20200421155745.19815-1-jean-philippe@linaro.org>
 <F8C2FB7F-2D21-44AA-B41D-0D4555A63660@amperemail.onmicrosoft.com>
 <20200429072104.GA817954@myrica>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-ClientProxiedBy: CY4PR18CA0040.namprd18.prod.outlook.com
 (2603:10b6:903:9a::26) To BYAPR01MB4598.prod.exchangelabs.com
 (2603:10b6:a03:8a::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.173] (73.151.56.145) by
 CY4PR18CA0040.namprd18.prod.outlook.com (2603:10b6:903:9a::26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.19 via Frontend Transport; Wed, 29 Apr 2020 18:01:07 +0000
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Originating-IP: [73.151.56.145]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: aee5010f-38c1-4e15-f223-08d7ec674ae7
X-MS-TrafficTypeDiagnostic: BYAPR01MB4021:
X-Microsoft-Antispam-PRVS: <BYAPR01MB4021F0A696175151771B60EDE0AD0@BYAPR01MB4021.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 03883BD916
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR01MB4598.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39840400004)(136003)(396003)(366004)(346002)(376002)(33656002)(4326008)(66556008)(66946007)(8936002)(186003)(26005)(6486002)(316002)(8676002)(53546011)(42882007)(66476007)(52116002)(83170400001)(16576012)(16526019)(478600001)(2616005)(956004)(966005)(54906003)(2906002)(6916009)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Wfl4GSCGp6/+5SrkeK2vjCmpDWrzeLtOoXtMt82c9Sb5KgGPcWGIjrvSS0VzbrnOQVd8BAhrX79QmW2ZqqrCejYVF47jWDIqVXJQyY2WVToU1uHw07PvqWRn9G4pG1SkhhWjknXwJLNaXf5NpTTkINwNkP8cCDV6PJMXkrpWfg4nOcFd3LysZuqgNEtw5lQawY35pfJ1HuCm/9nkFl8Ph39eMjNNxXR786M3zbVErSsFiYqSMVl+byd3OkYfAaVUWf+X4AAarAU/L5rdITPPiRMfylrzRvHqwt5dHjlHdNbEQNwS/IwaEYO48Fjh4LbR2jqc2kOn9op3FejTVSKU9nOmkrEVyBxVhQ5k/hnHAi/P8Oz5EFw/iMgY6J68vvWQufzhb0l3AAtGSo7fVMDW8Rx1DEEv0sELd2jR0sUDYQ1jZ95IWaq9T2o6n5oTSajTarCv2ZiDstwv/dS4KLr+atldA0EQdpteD8AyDDoa4VzOyWpOAGYHAKQHMB6WaTEPT/JbwZQqIVMOTkIPhHCpOw==
X-MS-Exchange-AntiSpam-MessageData: m2WAZ1oCHv4i0ZjOZENd+OZMbkXDFxedIZxQRM4mlLRvsoOcfgvMnhubBV+v0VCOKCB3vzAAHL5wSsQneqXVRYfuCisHH6oJKX4VCjO7yCFG/JKWl8KsTRw/u+MthT6MBykQOAWRiOcT3cRWGrJZUa30zINNJzdeJbUJcBz7dWpza8OMr6rHWq/fYBeUbNYAW9w2dg58xK2bs8QqpN1gDO/Xl33m5hHu5IPMR/eTHG6St89aMtHVNq61BTvS8rLQ4RMEnWUGtllxSZHpAnS3qBldwqVY4oqO55Gl+NkMnQ/bWhb/kIL/A0FZnxX5tKsU3i3EqfvragLpyjVfpxQpUaDOmTLJVCiQNmdkAKZSDx8xuaxDCe4zBojnwsEGiMBIEnkfR5prVJZMoQdwsucaPANmgb8FwEz6NnkK/mpzd+9gckNn1hKrBw36rWwBMnlR7A+nld0Rin0gIcxODvcQTIMapL7lN+ImyLDxsdKk4uXnxwQF3FXJTOK4SgcJrer2sdXt2Qsom7SBJyBec7mdqVhvXdbp90ef3iqTOL8hi5nGxX/EKoVxO61DUe1DFtn452NCU5emwOKwpHNWre2HM8FQflAR1h3YYjQy0oFV+8J+0wV78M37mqLe0qeavI9rKYB8bFZEHsFzOWev3LtrJthn+mbpxwPVnx+XELbGhU86zXO6tpYYf+BiLa44MKTXyrk0GkyTKoEDEx/wDFHAXjjt+lYuJUwp5puRwr00CNSpCFwevtRjziAft8A8yLBXSdbxSn2wPPqLQMapVtS9j/45KKp7uMFue68Qg38dZR4=
X-OriginatorOrg: amperemail.onmicrosoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aee5010f-38c1-4e15-f223-08d7ec674ae7
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2020 18:01:08.1524 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p2pw0RFZF3OdeV4NftWYK/mBvQfNDzt/KdmcN0aV+Ey7FKfnDRo41ZskmMT7NgDBJB1fUiZoY4Qod0TZVzxtEsIjV8hIfxQI3SEiGJaxs7Plmk0+PSVztthI80yNBkml
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR01MB4021
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_110116_537268_5E63FC68 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.126 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.244.126 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tuanphan[at]amperemail.onmicrosoft.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Mark Rutland <mark.rutland@arm.com>, lorenzo.pieralisi@arm.com,
 Will Deacon <will@kernel.org>, iommu@lists.linux-foundation.org,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IE9uIEFwciAyOSwgMjAyMCwgYXQgMTI6MjEgQU0sIEplYW4tUGhpbGlwcGUgQnJ1Y2tlciA8
amVhbi1waGlsaXBwZUBsaW5hcm8ub3JnPiB3cm90ZToKPiAKPiBPbiBUdWUsIEFwciAyOCwgMjAy
MCBhdCAxMToxMDowOUFNIC0wNzAwLCBUdWFuIFBoYW4gd3JvdGU6Cj4+IEkgdGVzdGVkIHRoaXMg
cGF0Y2ggb24gSFcsIGhvd2V2ZXIgSSBuZWVkIHRvIGFkZCBvbmUgbW9yZSBmb2xsb3dpbmcgY2hh
bmdlIHRvIG1ha2UgaXQgd29ya3MKPiAKPiBUaGFua3MgZm9yIHRlc3RpbmcuIEkgZG9uJ3QgdW5k
ZXJzdGFuZCB3aHkgeW91IG5lZWQgdGhlIGNoYW5nZSBiZWxvdwo+IHRob3VnaCwgZG8geW91IGtu
b3cgd2hpY2ggb3RoZXIgcmVnaW9uIGlzIGNvbmZsaWN0aW5nIHdpdGggdGhlIFNNTVU/Cj4gSXQg
c2hvdWxkIGJlIGRpc3BsYXllZCBpbiB0aGUgZXJyb3IgbWVzc2FnZSBhbmQgL3Byb2MvaW9tZW0u
Cj4gCj4gVGhhbmtzLAo+IEplYW4KClRoZSBlcnJvciBpZiBJIGRvbuKAmXQgYXBwbHkgdGhhdCBw
YXRjaDoKWyAgICA0Ljk0MzY1NV0gYXJtLXNtbXUtdjMgYXJtLXNtbXUtdjMuMC5hdXRvOiBjYW4n
dCByZXF1ZXN0IHJlZ2lvbiBmb3IgcmVzb3VyY2UgW21lbSAweDNiZmZlMDAwMDAwMC0weDNiZmZl
MDAxZmZmZl0KClRoZSBvdXRwdXQgb2YgL3Byb2MvaW9tZW0gZm9yIHRoYXQgcmVnaW9uOgozYmZm
ZTAwMDAwMDAtM2JmZmUwMDFmZmZmIDogYXJtLXNtbXUtdjMuMC5hdXRvICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogIDNiZmZlMDAwMjAwMC0z
YmZmZTAwMDJmZmYgOiBhcm0tc21tdS12My1wbWNnLjE3LmF1dG8gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogIDNiZmZlMDAxMjAwMC0zYmZmZTAwMTJmZmYg
OiBhcm0tc21tdS12My1wbWNnLjE3LmF1dG8gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIAozYmZmZTAwNDIwMDAtM2JmZmUwMDQyZmZmIDogYXJtLXNtbXUtdjMt
cG1jZy4xMS5hdXRvICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIAozYmZmZTAwNTIwMDAtM2JmZmUwMDUyZmZmIDogYXJtLXNtbXUtdjMtcG1jZy4xMS5hdXRv
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAozYmZmZTAw
NjIwMDAtM2JmZmUwMDYyZmZmIDogYXJtLXNtbXUtdjMtcG1jZy4xMi5hdXRvICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAozYmZmZTAwNzIwMDAtM2JmZmUw
MDcyZmZmIDogYXJtLXNtbXUtdjMtcG1jZy4xMi5hdXRvICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIAozYmZmZTAwYTIwMDAtM2JmZmUwMGEyZmZmIDogYXJt
LXNtbXUtdjMtcG1jZy4xMy5hdXRvICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIAozYmZmZTAwYjIwMDAtM2JmZmUwMGIyZmZmIDogYXJtLXNtbXUtdjMtcG1j
Zy4xMy5hdXRvICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IAozYmZmZTAwZTIwMDAtM2JmZmUwMGUyZmZmIDogYXJtLXNtbXUtdjMtcG1jZy4xNC5hdXRvICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAozYmZmZTAwZjIw
MDAtM2JmZmUwMGYyZmZmIDogYXJtLXNtbXUtdjMtcG1jZy4xNC5hdXRvICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAozYmZmZTAxMDIwMDAtM2JmZmUwMTAy
ZmZmIDogYXJtLXNtbXUtdjMtcG1jZy4xNS5hdXRvICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIAozYmZmZTAxMTIwMDAtM2JmZmUwMTEyZmZmIDogYXJtLXNt
bXUtdjMtcG1jZy4xNS5hdXRvICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIAozYmZmZTAxNDIwMDAtM2JmZmUwMTQyZmZmIDogYXJtLXNtbXUtdjMtcG1jZy4x
Ni5hdXRvICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAoz
YmZmZTAxNTIwMDAtM2JmZmUwMTUyZmZmIDogYXJtLXNtbXUtdjMtcG1jZy4xNi5hdXRvCgo+IAo+
PiBAQCAtMjg1NCw3ICsyODU0LDcgQEAgc3RhdGljIGludCBhcm1fc21tdV9kZXZpY2VfcHJvYmUo
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4gICAgICAgIH0KPj4gICAgICAgIGlvYWRk
ciA9IHJlcy0+c3RhcnQ7Cj4+IAo+PiAtICAgICAgIHNtbXUtPmJhc2UgPSBkZXZtX2lvcmVtYXBf
cmVzb3VyY2UoZGV2LCByZXMpOwo+PiArICAgICAgIHNtbXUtPmJhc2UgPSBkZXZtX2lvcmVtYXAo
ZGV2LCByZXMtPnN0YXJ0LCByZXNvdXJjZV9zaXplKHJlcykpOwo+PiAgICAgICAgaWYgKElTX0VS
UihzbW11LT5iYXNlKSkKPj4gICAgICAgICAgICAgICAgcmV0dXJuIFBUUl9FUlIoc21tdS0+YmFz
ZSk7Cj4+IAo+PiAKPj4+IAl9IGVsc2Ugewo+Pj4gCQlzbW11X3BtdS0+cmVsb2NfYmFzZSA9IHNt
bXVfcG11LT5yZWdfYmFzZTsKPj4+IAl9Cj4+PiAtLSAKPj4+IDIuMjYuMAo+Pj4gCj4+PiAKPj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAo+Pj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCj4+PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwKPj4+IAo+PiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
