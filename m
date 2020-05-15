Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3790A1D4F29
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 15:21:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f8irTPC/fXvOQcDWvXbfv5oaLscskMGuGki7VZMbnE0=; b=mqTBNoP+nVtQfC
	ckgBc41dKvC5tsxNWPAJcZL49+fhgZZOhq022AQPH76My947/7IK7Jcfzjp6reWMytqCSjj9w7m3q
	FKkHDd19fjeJ5V8U5zqrGcJF/suncnhqNgtTYuN0GD8D/tu15ZYKHkVYMAlNh2Tnvz5arMSdbNRkB
	Q4SE7BWiUkXd/IN2Rr5gvjoSlaf49RHdTcMDcEe5aTKmkZkKQqBu4f2hXPB6tgttqC/YBIfZTbU4N
	Qvy5tiWrcSROWjog8zUMtXnCL+HQ+SnHMa9iGXv8cmMykH4zDD7m63B3lyff2IvrBdNyomFas+I5+
	WN0d5U0OfaYpq094lH+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZaGp-0000k6-BZ; Fri, 15 May 2020 13:20:59 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZaGc-0000iz-10
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 13:20:49 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id BA913404E1;
 Fri, 15 May 2020 13:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1589548845; bh=LOhdRnPVp7QXgqYrjn9MYfUTSs8PRwgQrPcpWlmHzAU=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=ZY4DyYp/JM0AtrWXaBp2G/cBVCsG+zjd9y7FnJs1YWrjqP6O5KAI5aIFxvZgWIIf/
 7p7krHfj6twYK5VjzucLMuL7t2/0Z/cch0rHzxdNwH9BNo6+e3ED90H71MGqmYbfaC
 HcNZVHAOQXRpzZ2KQnA0xvRSAmMQUm0FmqmNSREaYGJz5BC7lGfk8OgrXt2G/WjDlD
 dUZVNVe8cpwT7sYs7FasaXdpxEus2K4jq3OrY6BWfz8HwqwTdMGLs2e9SDW5X90Wgq
 IlNfPUwmyYKwlimIkgqjwOD2uiPQeBuKcF0NFwzrLqDzkttzzSYTxK4rMhJuIBbLDj
 STfCMRejCNPEw==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id AF0ECA008A;
 Fri, 15 May 2020 13:20:41 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 15 May 2020 06:20:41 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.487.0; Fri, 15 May 2020 06:20:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=frlCkqZ5IZn4E1dDq/Rz+RmK8ta/OehWqU8DF8CRo4+pdKGmkgBpoDzjnVLOtWnZxiqBZOLT7PclmU7pkwc6t5CKvmOvIiT883vRSTETUmszaEeeERfUrVlmGDJDNQKZNKcfq7d+xuTtMb6zGxYSitYN7jYId3o7qYRTtDzaCZOC517C3gqCGZM3fjViE7iliUKXG6HmrQOW5n+lnobfFUbh1yf6yOMtjSB5bprK94LJeulpFveSbRPhHASJjATIwJ+RvhoMB9BPdVYWvgIA6o2qxMR3H8yOR/K7mLpj7hDGb2AjXGIeih98WIHgEaz0jDqQ/5Gm99OcP2OORWu+Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ni8Bt3x5TM22oIjzv4QSu3S+B2KfPwPo0B1TMdr2xzg=;
 b=doCnyV33pAQWwx9nTmVP2MVaceqjmWxiNigegrJiJ7OZkgUQg2l4dhdWVwuAItBoRWHSvAOyDhEuiRTSIiogZfEK0f5K+1TLS4Vyt7Mi7/itPFcf7uzdaMEQLePF3IZs08M1k643IgfVUFvVSfjSHnoL7CSulcouJPjPUfbBIPO9Q7Op6KfSqWyksQM0AQMMEVaYwmTdquWMTyJt+0GD+T8I5n/MYhfIHxcqe1ou3n59nnJWM4LcygbFPFpcglGELVp4DDl5XC2FA4CM9/TXkmXvyHSEkBEG2gkjOf8BajpGIjsclplv0/qXb/7gwmlcxBR1hyP7Zw0WcbmKebbkFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ni8Bt3x5TM22oIjzv4QSu3S+B2KfPwPo0B1TMdr2xzg=;
 b=ixQWfGL/eap/u1COoQXJMFx8nLdIJsy6bxObVN2b42R+6W3sJQPwdYrtOd+mkwS3evj8DrXe7oIViujXdXyh+rVM/MyGjIyiGdx+ryadvRSH6nk3naDd4cg1IUs9b65tt6RSrS/hBM+ctAf8LCXmJbwoKdMjrOmqP2/HXB5ZL6Q=
Received: from DM5PR12MB1276.namprd12.prod.outlook.com (2603:10b6:3:79::18) by
 DM5PR12MB2485.namprd12.prod.outlook.com (2603:10b6:4:bb::29) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.26; Fri, 15 May 2020 13:20:40 +0000
Received: from DM5PR12MB1276.namprd12.prod.outlook.com
 ([fe80::2062:f350:1cd1:1023]) by DM5PR12MB1276.namprd12.prod.outlook.com
 ([fe80::2062:f350:1cd1:1023%12]) with mapi id 15.20.3000.022; Fri, 15 May
 2020 13:20:40 +0000
From: Gustavo Pimentel <Gustavo.Pimentel@synopsys.com>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, Bjorn Helgaas
 <bhelgaas@google.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Jingoo
 Han <jingoohan1@gmail.com>, Rob Herring <robh+dt@kernel.org>, Masahiro Yamada
 <yamada.masahiro@socionext.com>, Marc Zyngier <marc.zyngier@arm.com>
Subject: RE: [PATCH v2 1/5] PCI: dwc: Add msi_host_isr() callback
Thread-Topic: [PATCH v2 1/5] PCI: dwc: Add msi_host_isr() callback
Thread-Index: AQHWKp+jPXijgs6HH0ehNU1ifxQhe6ipIV1g
Date: Fri, 15 May 2020 13:20:40 +0000
Message-ID: <DM5PR12MB12768F1777C7302708DAB3A7DABD0@DM5PR12MB1276.namprd12.prod.outlook.com>
References: <1589536743-6684-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1589536743-6684-2-git-send-email-hayashi.kunihiko@socionext.com>
In-Reply-To: <1589536743-6684-2-git-send-email-hayashi.kunihiko@socionext.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: =?us-ascii?Q?PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcZ3VzdGF2b1xh?=
 =?us-ascii?Q?cHBkYXRhXHJvYW1pbmdcMDlkODQ5YjYtMzJkMy00YTQwLTg1ZWUtNmI4NGJh?=
 =?us-ascii?Q?MjllMzViXG1zZ3NcbXNnLWRkOTBkNTk3LTk2YWUtMTFlYS05OGI0LWY4OTRj?=
 =?us-ascii?Q?MjczODA0MlxhbWUtdGVzdFxkZDkwZDU5OS05NmFlLTExZWEtOThiNC1mODk0?=
 =?us-ascii?Q?YzI3MzgwNDJib2R5LnR4dCIgc3o9IjIxOTIiIHQ9IjEzMjM0MDIyNDM4NDA2?=
 =?us-ascii?Q?MzgzMyIgaD0iRjM5TzQ5WEYwZnF2Z2YrWE5tbVgzbGJRR0VBPSIgaWQ9IiIg?=
 =?us-ascii?Q?Ymw9IjAiIGJvPSIxIiBjaT0iY0FBQUFFUkhVMVJTUlVGTkNnVUFBQlFKQUFC?=
 =?us-ascii?Q?WldlaWZ1eXJXQWJNMjRBK3VKNzVuc3piZ0Q2NG52bWNPQUFBQUFBQUFBQUFB?=
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
x-ms-office365-filtering-correlation-id: e673abd8-7663-4fbf-d7eb-08d7f8d2c397
x-ms-traffictypediagnostic: DM5PR12MB2485:
x-microsoft-antispam-prvs: <DM5PR12MB2485C702BB508DA3ABAAD59CDABD0@DM5PR12MB2485.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 04041A2886
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: taIav6ev8G72C5q7OVKUgZXw7/04NOnGTAnFY1abjePm8zNmifEgC2cfnyD+ezkuC0uqCecmVWXJOFBUnOAiHTU65vw4j1pQ7+sloJLnWc2fnnzfcLArbSpevQn76cKdAx72C+SrZcZ8qpepD2aH/FY8G5O0/pqCGo9ebbhgPzfiY1RdxiCvfCyDEogPG8HHIAx6KXYhNrCAUe0O4JQRneGfGfwgadA2ppFPFwJjEBFAMkuL28c0/EKZXab8oBdYWQiqdrc2I/1hpqEi9CjwkWg5JnsnwuClEiNeO+QQGN9FcDErFInLHkoTbPAR4PVI1J3+1dCR7NuoEL3UxTLANo1DosyFJc9McWMWBVcvxRX0y0yFDGm1BSWJVUgkKRMpVsgKa76ZGaEjaMwWBItinHGAPCZaoBfBhyZwoPYTguzmtBE1KTCFnHHW3a8p5SDQ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR12MB1276.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(396003)(376002)(39860400002)(366004)(136003)(8676002)(66476007)(52536014)(26005)(66556008)(66446008)(64756008)(66946007)(76116006)(55016002)(4326008)(9686003)(316002)(110136005)(2906002)(54906003)(478600001)(7416002)(8936002)(5660300002)(33656002)(86362001)(186003)(71200400001)(6506007)(7696005)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 943KKJ1E/yJjgckw3AA3TOlxgo71GIKjUuWmPYuOrggE3MqyNfjSfFouEMtKFNghHQwe1HsXpIyQTsUdTibh/4Db+/deKw9nGV0BZ3lGWcrINA/PblHHxwcEe6I0ITUHKTyZ08KqrhsSYGIguYAAPXu6wHveADm+JxPVGcb35DYefPsxaPfVr1Xs5BEb5qMsnSnSp97zCM7MylG819rK817nOCpHAGV/NCuC76N9SkxUacRw0mwAtlDy7aj8MZhUGUx2UhnvOWnxMNhvwjMDpuOfxr0aJAFWey9C30Et1RA28MuVx4Avi5lk1rXHjcMs+AptqEMMAtRa4xyRPNFYc+RxFKGQKgllDsatCIAJcuxMOGBZOdfVTB8L8W9LPJCamqgOQ50UshwCFRxlTg5BRLwlcNncKdUlIm9f7WuoJz/BTf616FNJPZoHTdN/qb/JHOO1ENrqyJu1frjktcAAtTD3pauSkjZLgL0+Ln0OUm0=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e673abd8-7663-4fbf-d7eb-08d7f8d2c397
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2020 13:20:40.3453 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mGXqrkpYCgoHBPzWB7tjmT9/E2Q4cDSDwjxLrG2HYSc/3OYp0Xf1ViHzCqaip/IVM8PRZWxJK2OHjVpmeKpEHw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB2485
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_062046_077096_178378B2 
X-CRM114-Status: GOOD (  17.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [149.117.73.133 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

[+cc Marc; IRQ DOMAINS (IRQ NUMBER MAPPING LIBRARY) maintainer]

On Fri, May 15, 2020 at 10:58:59, Kunihiko Hayashi 
<hayashi.kunihiko@socionext.com> wrote:

> This adds msi_host_isr() callback function support to describe
> SoC-dependent service triggered by MSI.
> 
> For example, when AER interrupt is triggered by MSI, the callback function
> reads SoC-dependent registers and detects that the interrupt is from AER,
> and invoke AER interrupts related to MSI.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  drivers/pci/controller/dwc/pcie-designware-host.c | 8 ++++----
>  drivers/pci/controller/dwc/pcie-designware.h      | 1 +
>  2 files changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
> index 42fbfe2..7dd1021 100644
> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> @@ -112,13 +112,13 @@ irqreturn_t dw_handle_msi_irq(struct pcie_port *pp)
>  static void dw_chained_msi_isr(struct irq_desc *desc)
>  {
>  	struct irq_chip *chip = irq_desc_get_chip(desc);
> -	struct pcie_port *pp;
> +	struct pcie_port *pp = irq_desc_get_handler_data(desc);
>  
> -	chained_irq_enter(chip, desc);
> +	if (pp->ops->msi_host_isr)
> +		pp->ops->msi_host_isr(pp);
>  
> -	pp = irq_desc_get_handler_data(desc);
> +	chained_irq_enter(chip, desc);
>  	dw_handle_msi_irq(pp);
> -
>  	chained_irq_exit(chip, desc);
>  }
>  
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



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
