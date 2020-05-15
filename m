Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94ABF1D4EC4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 15:16:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZsF/nYL2WWjckDRlrIXfKscO1QdUpGLfzFDvyVtiMKg=; b=LFYVdLwwMF7DM/
	V/9OiIuaB2mKPp/4X26woq4o5CvGx8W1I3A+NRjOd+mPr4AU7PRfdqqC06xWju7MUdsIpfc5foQzV
	TE2mlc10ygg9w+QBOwwBemHz8omjyLyDTPOEla6w4F6rcQhbVzCuhAgFehLIaiuVtO1xz6b+BcYto
	pX8oQ9SuILxkkmtQ7cZl4vACJ93kX6bIrcNrdBOW6OZbqGarUwZRngAIuPferlvLlVwg3nG4id3BB
	vPEN5PpTCbZpXMCNNOrFGULEX8kmukJ2HqJHn8TkmhOeUSKTz4/JmXXn6ndtyfXQM/FJ9ib8g5cP3
	LPxtoeywZgySynYWz+9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZaCj-00035f-Fh; Fri, 15 May 2020 13:16:45 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZaCE-0002uI-Jy
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 13:16:19 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 2A80DC0F05;
 Fri, 15 May 2020 13:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1589548571; bh=E5B/Hjd0Wfl2fo18NcKm/Tyn8hJ//rjPNaJrpvoF0kk=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=Ogl5r1ioBEbE9akG6T+V1lqAALRtuvcBxbGoPsFWS+UfCFMccibDl8N6qiEBt30rO
 Z+RtnWubz6ViEUqD8DEnF5i46enj01KrjrLygd0s72Gv95YVLJhTQhhERzZEI0qhwE
 L2MU5kQjm9judMZDZ9chwZ8ZGVZpBod6IPJmxxV8ybc8lgoSYdKMc3YArlq2I/XmR0
 /QomvWRkqPlyYWIl4yYYWY4EPn0unK14T4EPTdbizzYw/jP9MlSM7TJ5aEBZXWg4PF
 mDotDpE+XFW//+yKEMQCz1MN2d8s6/Hu8Q764j43XjBMmD8DSL2I8h5dyxmgzqEAYG
 jbBV0kVAIsuvg==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 49B39A0067;
 Fri, 15 May 2020 13:16:07 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 15 May 2020 06:16:07 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.487.0; Fri, 15 May 2020 06:16:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZC7ghQTKgC25Zh8qMtsSWkB5I1IPSf4kId0zFYAw4rbZqcBatZVQD/+BGePN0Nh5g7PGl3ZvpxLHSdB2MW29q5Xr+cyB/q31nRoKq4PkLpiTmQsSm07zeFIXQacVVhG9dXfopl4ZMfXuTNwhuTcmCaF5hlFvIm4y36bhBDo+vXci5Rk1itBj34HtkhhZe9Y2/59fruTI+nG6GMNVzgdEeP5rQYbCX/KPjw05Fyjfi5bZ7/psOwtJN6bj/MEPwwksGPe0oOfKFXAT/+JnUYmuvzLuelZyweLSpnIgK2zxiQ/HANNq4wkisZzjhHCDFZy6FR/bF8Erj1cFj5zaeLb5uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oyDEd0lkiQ48R0BTMONCcyPTNzETStrhhhGXKbOViSc=;
 b=aZSgFE99Kb4lJuT0k/C22QF9VtkeJh2ZKLR2ycShiiPTlqxFlWQXZ4uXNEWHDjjUfevAlmGOqrXOomdVQjNeAXoYfsonh4K9dgWFwjc29PmZx5YwIYOqz4PO4CQfsdAd5e7kt5UqYdyXOg+A8k/LPZTzAS4rG8IbKNG6BYHFmqjy7LggrDi1wvUmAkWDcuw8STHlbejMGw4Hhe21SJaRwB/Z+NiAtvt6BFpexbGL0WkVeEN3sZg0x2EGPYYsaKfCoQP2Muz0WfY1nLT6yVghkVMlrjX/tSbYmYKEpFCFrhORFIrXlJPKdkFI0XneR4Z1BhyfAx3gXp8s/how1S4gLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oyDEd0lkiQ48R0BTMONCcyPTNzETStrhhhGXKbOViSc=;
 b=ZNsRWgUlFjpY7f5c00NcOJ16Tlg3qImnP1KfRLQl9uQfAvcKFxymkrnzKe+cz0NoXOF9cJ38mBlriQOdYSbfCffXOBhpL14pUFh0HDM5hZ1Rhri+Xww5ahKEW5/Adme37gU27UJeOEOqnrKHEipFJHPngpPRy6Y6wvGx5fFXT40=
Received: from DM5PR12MB1276.namprd12.prod.outlook.com (2603:10b6:3:79::18) by
 DM5PR12MB2485.namprd12.prod.outlook.com (2603:10b6:4:bb::29) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.26; Fri, 15 May 2020 13:16:06 +0000
Received: from DM5PR12MB1276.namprd12.prod.outlook.com
 ([fe80::2062:f350:1cd1:1023]) by DM5PR12MB1276.namprd12.prod.outlook.com
 ([fe80::2062:f350:1cd1:1023%12]) with mapi id 15.20.3000.022; Fri, 15 May
 2020 13:16:05 +0000
From: Gustavo Pimentel <Gustavo.Pimentel@synopsys.com>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, Bjorn Helgaas
 <bhelgaas@google.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Jingoo
 Han <jingoohan1@gmail.com>, Rob Herring <robh+dt@kernel.org>, Masahiro Yamada
 <yamada.masahiro@socionext.com>
Subject: RE: [PATCH v2 4/5] PCI: uniphier: Add iATU register support
Thread-Topic: [PATCH v2 4/5] PCI: uniphier: Add iATU register support
Thread-Index: AQHWKp+kFW83idsHTk6HHKNP3W7eiKipIG3w
Date: Fri, 15 May 2020 13:16:05 +0000
Message-ID: <DM5PR12MB1276D6181D86C8DF0F98427ADABD0@DM5PR12MB1276.namprd12.prod.outlook.com>
References: <1589536743-6684-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1589536743-6684-5-git-send-email-hayashi.kunihiko@socionext.com>
In-Reply-To: <1589536743-6684-5-git-send-email-hayashi.kunihiko@socionext.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: =?us-ascii?Q?PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcZ3VzdGF2b1xh?=
 =?us-ascii?Q?cHBkYXRhXHJvYW1pbmdcMDlkODQ5YjYtMzJkMy00YTQwLTg1ZWUtNmI4NGJh?=
 =?us-ascii?Q?MjllMzViXG1zZ3NcbXNnLTM5YzhkOGE1LTk2YWUtMTFlYS05OGI0LWY4OTRj?=
 =?us-ascii?Q?MjczODA0MlxhbWUtdGVzdFwzOWM4ZDhhNy05NmFlLTExZWEtOThiNC1mODk0?=
 =?us-ascii?Q?YzI3MzgwNDJib2R5LnR4dCIgc3o9IjE0NDYiIHQ9IjEzMjM0MDIyMTYzNjMz?=
 =?us-ascii?Q?MDg3NyIgaD0ibkYvUFo1Z0o5K25YWnhqQkMrVkVVTkdkS3ZvPSIgaWQ9IiIg?=
 =?us-ascii?Q?Ymw9IjAiIGJvPSIxIiBjaT0iY0FBQUFFUkhVMVJTUlVGTkNnVUFBQlFKQUFC?=
 =?us-ascii?Q?OVJTSDh1aXJXQVhQanluTXdIc1J5YytQS2N6QWV4SElPQUFBQUFBQUFBQUFB?=
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
x-ms-office365-filtering-correlation-id: 2f0a1279-5d1f-4e3a-091f-08d7f8d21fe3
x-ms-traffictypediagnostic: DM5PR12MB2485:
x-microsoft-antispam-prvs: <DM5PR12MB248547C077E8EEADB6816D94DABD0@DM5PR12MB2485.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2089;
x-forefront-prvs: 04041A2886
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hU3FD6OtGbixT+eX+bkkCyOVlmsbXa8ukNZ7+c8ZrvDiw68eLpN5nS5G5gt7prcJMKpwsbnWtjTi4X6heP04Y3aIHMGTrEL90ZIc/trEQHj+LrRaq3HGhf4K5piFrriQ6pA3psMuWvQauuZG9WVP5j8sdVbn+mpye7Lb87eWCMo5+StJ403LZ5zFvygNymIL9c5L6JaAm/SauGyOi8w3D1b9u2YzJ1i1M8jhgslHIhuZOMkbvmEbqvHegCHx3VxOXVoOuzEiqDbxy+BvuihdtzXMRNWc3+h2mFVbn8LRuQ/PagCPvP77fDZ4GfPbiNTsymwdrydWzA93Qe3xpwZpfi4ckXNvWPAKW3XUxFiLI4OjBcXuIx+tqoQ6gDAakP40v0Td3rt7m7HMjqA5pLx2lb7xwP78i+pZdTIR8KxFE+f3cTuI7ho6aHeD2yrq36g8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR12MB1276.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(396003)(376002)(39860400002)(366004)(136003)(8676002)(66476007)(52536014)(26005)(66556008)(66446008)(64756008)(66946007)(76116006)(55016002)(4326008)(9686003)(316002)(110136005)(2906002)(54906003)(478600001)(7416002)(8936002)(5660300002)(33656002)(86362001)(186003)(71200400001)(6506007)(7696005)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: Fw1vCSJX02RRD9SBcEXl3En4U23ReHKJ8WZJ5gPgStnEjXa36mWLRqM/lPmJSjrASQuuhZn1RN+Yvt8CkDLbre/C8YQwekOLtxsxln0L5ltCwJlwxDrO9rkD8UMy/NfToRVkgQte3AwGVrvfDCUkhqHXmdNKqCSl3/1g5wPgWC4K8nn4Kw8ySLBT38wejXEbqvS56S3ZpKpStXgyK3vn9FJpA7jvIpkjRN87VfzO98XnvROhWrLCxfIit+6l4aSlpkdYWcSGBc8dLP/JxQz2Rn5bbEg0B0IgF43fhN2KR1OqJfsK2qZNP/S+yViTJOm+oGc00/WyQwgnde2BoL+sE7IzNQAZJn32QjMCVFvHy5/yodXuP/CXlIhlsUMv5DYylU3VnTGASMES+/dJa0DuP+Vtl/HI+LubwK/qs8ucOhKjJ1wrhxA1dXqYCfKRMUhxjTfwcEqcUs0BfBItlrsvWj1TEENiN0b3SIOC5gca7g8=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f0a1279-5d1f-4e3a-091f-08d7f8d21fe3
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2020 13:16:05.5728 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ypP3BuGbP4qzlzz/1nFAvBoEIzfcoH/QE25+Ow8ajTzUO2NvLB3+EalxxJ3OWq6Nh59kk5cO24bRj/mCrHCqJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB2485
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_061614_769662_E205DFD8 
X-CRM114-Status: GOOD (  17.08  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi Kunihiko,

On Fri, May 15, 2020 at 10:59:2, Kunihiko Hayashi 
<hayashi.kunihiko@socionext.com> wrote:

> This gets iATU register area from reg property. In Synopsis DWC version

s/Synopsis/Synopsys
in all patches

> 4.80 or later, since iATU register area is separated from core register
> area, this area is necessary to get from DT independently.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  drivers/pci/controller/dwc/pcie-uniphier.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-uniphier.c b/drivers/pci/controller/dwc/pcie-uniphier.c
> index a8dda39..493f105 100644
> --- a/drivers/pci/controller/dwc/pcie-uniphier.c
> +++ b/drivers/pci/controller/dwc/pcie-uniphier.c
> @@ -447,6 +447,13 @@ static int uniphier_pcie_probe(struct platform_device *pdev)
>  	if (IS_ERR(priv->pci.dbi_base))
>  		return PTR_ERR(priv->pci.dbi_base);
>  
> +	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "atu");
> +	if (res) {
> +		priv->pci.atu_base = devm_pci_remap_cfg_resource(dev, res);
> +		if (IS_ERR(priv->pci.atu_base))
> +			priv->pci.atu_base = NULL;
> +	}
> +
>  	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "link");
>  	priv->base = devm_ioremap_resource(dev, res);
>  	if (IS_ERR(priv->base))
> -- 
> 2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
