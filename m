Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA207128385
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 22:02:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nFux4uY7fPf2Cm7Mi4N7ZPACOhkyBdbHV17dDX+JRx8=; b=GuAUzKPU3RC6i4
	fCYXihPDfYcgWxeRoKvFlyF8vEelvWzr5UH+GXjeZ/Dq2PsOHZlL65Cwj3z+glqbs+OBfC2ZjW351
	1AYYDS9q+uhsz5qDQMLxq9PI5s7UhUqFNY5y2LDK6JLx7mKBPHm6UWtn5tK+EiFU2DolzKLA+f7YF
	gRW9vomqf/X/XqcwZtxFm6q6n4pBF5GyAR8gfc5BJLDZoqffcb6wc0L6jOj4mqP5/0Ga0DLq0Oi7J
	iOFntb5PRnFNIVhgrw9n0Gg0wjb0WlGs4pIuhwfY9RvUN1R4R1t83l4ROSQPUUkhywdTTfwLfhjaz
	9ZDhyrLn8jFYQEBvfABg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiPQ7-00029q-Iz; Fri, 20 Dec 2019 21:02:47 +0000
Received: from sv2-smtprelay2.synopsys.com ([149.117.73.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiPQ0-00028X-2n; Fri, 20 Dec 2019 21:02:41 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 15DAA404D4;
 Fri, 20 Dec 2019 21:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1576875756; bh=hjLp/bbAdVryhNoD/fCkZRDPTRsAYixvZNxQckngNeg=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=ccsF/+CFcpHPP8+XoH6J+CMlLgOTAv9GG1AC0H1Z+gvYA9ooOfdrPID86oJNIcyku
 IyE5c4GYV8TmCxz+1AIGnhkWRpBAgTJhmaKCgZ5ITz1ve2DKvjrtsqoGJCidQFq03y
 6DZGkZnKIMCy8EJ0IZwR3h6CsrxCeA6y7vsa77XhYOzHytdcyrrtqgChr55Jw1Psky
 P4TZsn+UxjUGduXWTtTUwn4+awqkXGTtq7l1I2li1J+WhaKLncT7FZt3AX2y+DYTfi
 TqbICdBIASn2xFCX+kK0WpKjCFMpeOAjtu3QyFsYX+jJjXVRcaFB5ILFUhr8uLT4X+
 Vf40AD1n0EzlQ==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 60C99A0090;
 Fri, 20 Dec 2019 21:02:33 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 20 Dec 2019 13:02:26 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Fri, 20 Dec 2019 13:02:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hhZ2ZBf8YXoKx2rJ7CTS/rOVh4aPt4KeebVF81Va2EVwr+gquCvrIvPTg4fSiXrNsJoS42edZhbfgTmSwvgF6SqcnBY4UZU8F3XrxWC3wtXpoZb0EapqkQ8XO4iSMDwM7dwmCSLtgEnyP8BuYMKBuGmy2t4dWyJTRTs/XG58uyR3+uxudPgoBiRMkWyDuR36NH85qcDiQ1j1HehRegkLuYcfaFslDZ6n2SMLcjnyIbZyX5gPUFSep3xdGJ6k8E7fHy57fa5amw0sCouxPBtSL05udDo5WrCzQRnZZDRL8zhDqoKPzMJJpJTvYXrjC7ZZlfsi06lIDCPDcVB8XxaDwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hjLp/bbAdVryhNoD/fCkZRDPTRsAYixvZNxQckngNeg=;
 b=b41d1r57VcnSDxVUuXISjYa+DKEONlRqqGd//06D3oKZ/IcRBhN99NPEODEP9QQHOLpKIfbxBMBxRMR/BAdybW5sHxBrxeFOsj1BuYDDrssyGTuKiWkGwHJX1IErrmPuVnPeMLFyn3nS4ol997XRpjbg5NwR3ZqQNuUAuWZFBr1R0ttb8rL/hfp5f3mZrD2rcHgp+A2btNXwl1EvuB0F00lWWokq/3nUhQu6rdyhtCwZ9omhg6MBYn2iMzqRI6EA4K3pfVkMD16LqnqwN28XltIpQ/d30Ua6keSBpzgEzS1Nwtdun44OnjJCLqrIuIgj7ECRtd1pDTdAoy+vn8dIdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hjLp/bbAdVryhNoD/fCkZRDPTRsAYixvZNxQckngNeg=;
 b=NhWY1Ch/I0YxIJpnCQaneaf67A4BmFfnR0BPLboBi54RH3kYLgT0BD9oOsrVzHoLRfXGqGqZ9e9T30PfswbhyjwN1BWrVuXyG/b36qSVuTZdqRQAhan7/fW73ICIR11ry/VEzDR3aIbwxdg8nQkRsXwGHiS0xULmFIRjQdnFejg=
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com (10.172.78.14) by
 CY4PR1201MB0261.namprd12.prod.outlook.com (10.172.78.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14; Fri, 20 Dec 2019 21:02:24 +0000
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::3977:e2ba:ce57:f79a]) by CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::3977:e2ba:ce57:f79a%5]) with mapi id 15.20.2538.019; Fri, 20 Dec 2019
 21:02:24 +0000
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: Peter Zijlstra <peterz@infradead.org>
Subject: RE: [RFC PATCH v1] devres: align devres.data strictly only for
 devm_kmalloc()
Thread-Topic: [RFC PATCH v1] devres: align devres.data strictly only for
 devm_kmalloc()
Thread-Index: AQHVtO8W17bjcgXck0Krmyf4Y6chj6fC1AyAgAA/joCAAA8ggIAASORAgAARRgCAAAVEAA==
Date: Fri, 20 Dec 2019 21:02:24 +0000
Message-ID: <CY4PR1201MB0120C3727E907005D24F5A03A12D0@CY4PR1201MB0120.namprd12.prod.outlook.com>
References: <74ae22cd-08c1-d846-3e1d-cbc38db87442@free.fr>
 <bf020a68-00fd-2bb7-c3b6-00f5befa293a@free.fr>
 <20191220140655.GN2827@hirez.programming.kicks-ass.net>
 <9be1d523-e92c-836b-b79d-37e880d092a0@arm.com>
 <CY4PR1201MB012011E554FC69F7B074B7E2A12D0@CY4PR1201MB0120.namprd12.prod.outlook.com>
 <20191220202346.GT2827@hirez.programming.kicks-ass.net>
In-Reply-To: <20191220202346.GT2827@hirez.programming.kicks-ass.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: =?us-ascii?Q?PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcYWJyb2RraW5c?=
 =?us-ascii?Q?YXBwZGF0YVxyb2FtaW5nXDA5ZDg0OWI2LTMyZDMtNGE0MC04NWVlLTZiODRi?=
 =?us-ascii?Q?YTI5ZTM1Ylxtc2dzXG1zZy0wMzg2NTAxNi0yMzZjLTExZWEtYmZmYS04OGIx?=
 =?us-ascii?Q?MTFjZGUyMTdcYW1lLXRlc3RcMDM4NjUwMTctMjM2Yy0xMWVhLWJmZmEtODhi?=
 =?us-ascii?Q?MTExY2RlMjE3Ym9keS50eHQiIHN6PSIyMDY1IiB0PSIxMzIyMTM0OTM0MjM0?=
 =?us-ascii?Q?OTA0NzQiIGg9IkdpaS9obThTRUJvWUVvRlFhSDltd2swQ2Uwdz0iIGlkPSIi?=
 =?us-ascii?Q?IGJsPSIwIiBibz0iMSIgY2k9ImNBQUFBRVJIVTFSU1JVRk5DZ1VBQUJRSkFB?=
 =?us-ascii?Q?Q3FSUVhHZUxmVkFlM2JucXZFT0FUSzdkdWVxOFE0Qk1vT0FBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFIQUFBQUNrQ0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFFQUFRQUJBQUFBUlgyazFBQUFBQUFBQUFBQUFBQUFBSjRBQUFCbUFHa0Fi?=
 =?us-ascii?Q?Z0JoQUc0QVl3QmxBRjhBY0FCc0FHRUFiZ0J1QUdrQWJnQm5BRjhBZHdCaEFI?=
 =?us-ascii?Q?UUFaUUJ5QUcwQVlRQnlBR3NBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUVBQUFBQUFBQUFBZ0FBQUFBQW5nQUFBR1lBYndCMUFHNEFaQUJ5QUhrQVh3?=
 =?us-ascii?Q?QndBR0VBY2dCMEFHNEFaUUJ5QUhNQVh3Qm5BR1lBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFRQUFBQUFBQUFBQ0FB?=
 =?us-ascii?Q?QUFBQUNlQUFBQVpnQnZBSFVBYmdCa0FISUFlUUJmQUhBQVlRQnlBSFFBYmdC?=
 =?us-ascii?Q?bEFISUFjd0JmQUhNQVlRQnRBSE1BZFFCdUFHY0FYd0JqQUc4QWJnQm1BQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFCQUFBQUFBQUFBQUlBQUFBQUFKNEFBQUJtQUc4?=
 =?us-ascii?Q?QWRRQnVBR1FBY2dCNUFGOEFjQUJoQUhJQWRBQnVBR1VBY2dCekFGOEFjd0Jo?=
 =?us-ascii?Q?QUcwQWN3QjFBRzRBWndCZkFISUFaUUJ6QUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBRUFBQUFBQUFBQUFnQUFBQUFBbmdBQUFHWUFid0IxQUc0QVpBQnlBSGtB?=
 =?us-ascii?Q?WHdCd0FHRUFjZ0IwQUc0QVpRQnlBSE1BWHdCekFHMEFhUUJqQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQVFBQUFBQUFBQUFD?=
 =?us-ascii?Q?QUFBQUFBQ2VBQUFBWmdCdkFIVUFiZ0JrQUhJQWVRQmZBSEFBWVFCeUFIUUFi?=
 =?us-ascii?Q?Z0JsQUhJQWN3QmZBSE1BZEFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUJBQUFBQUFBQUFBSUFBQUFBQUo0QUFBQm1B?=
 =?us-ascii?Q?RzhBZFFCdUFHUUFjZ0I1QUY4QWNBQmhBSElBZEFCdUFHVUFjZ0J6QUY4QWRB?=
 =?us-ascii?Q?QnpBRzBBWXdBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFFQUFBQUFBQUFBQWdBQUFBQUFuZ0FBQUdZQWJ3QjFBRzRBWkFCeUFI?=
 =?us-ascii?Q?a0FYd0J3QUdFQWNnQjBBRzRBWlFCeUFITUFYd0IxQUcwQVl3QUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBUUFBQUFBQUFB?=
 =?us-ascii?Q?QUNBQUFBQUFDZUFBQUFad0IwQUhNQVh3QndBSElBYndCa0FIVUFZd0IwQUY4?=
 =?us-ascii?Q?QWRBQnlBR0VBYVFCdUFHa0FiZ0JuQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQkFBQUFBQUFBQUFJQUFBQUFBSjRBQUFC?=
 =?us-ascii?Q?ekFHRUFiQUJsQUhNQVh3QmhBR01BWXdCdkFIVUFiZ0IwQUY4QWNBQnNBR0VB?=
 =?us-ascii?Q?YmdBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUVBQUFBQUFBQUFBZ0FBQUFBQW5nQUFBSE1BWVFCc0FHVUFjd0Jm?=
 =?us-ascii?Q?QUhFQWRRQnZBSFFBWlFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFRQUFBQUFB?=
 =?us-ascii?Q?QUFBQ0FBQUFBQUNlQUFBQWN3QnVBSEFBY3dCZkFHd0FhUUJqQUdVQWJnQnpB?=
 =?us-ascii?Q?R1VBWHdCMEFHVUFjZ0J0QUY4QU1RQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFCQUFBQUFBQUFBQUlBQUFBQUFKNEFB?=
 =?us-ascii?Q?QUJ6QUc0QWNBQnpBRjhBYkFCcEFHTUFaUUJ1QUhNQVpRQmZBSFFBWlFCeUFH?=
 =?us-ascii?Q?MEFYd0J6QUhRQWRRQmtBR1VBYmdCMEFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBRUFBQUFBQUFBQUFnQUFBQUFBbmdBQUFIWUFad0JmQUdzQVpR?=
 =?us-ascii?Q?QjVBSGNBYndCeUFHUUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQVFBQUFB?=
 =?us-ascii?Q?QUFBQUFDQUFBQUFBQT0iLz48L21ldGE+?=
x-dg-rorf: true
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abrodkin@synopsys.com; 
x-originating-ip: [188.243.7.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 822e6a30-0df0-48f3-954d-08d7858fe9d7
x-ms-traffictypediagnostic: CY4PR1201MB0261:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR1201MB0261CAEE1BE4EB086728D7D7A12D0@CY4PR1201MB0261.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 025796F161
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(396003)(136003)(346002)(39860400002)(376002)(199004)(189003)(52536014)(81156014)(66476007)(66446008)(33656002)(76116006)(64756008)(66556008)(7696005)(2906002)(26005)(186003)(66946007)(7416002)(6506007)(8936002)(316002)(5660300002)(55016002)(4326008)(54906003)(71200400001)(8676002)(81166006)(9686003)(478600001)(86362001)(6916009);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR1201MB0261;
 H:CY4PR1201MB0120.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tbv+yU/sDjhVxUHKJ4y1C/zMndFjV413LMOWAWhN/iLO27w7gdaF44DiJSGbK3dTJObqBcTUwt9JTXRNCVj8kPuk6oFAAO33vr1CST0oEQme/IdjbC5L8h4hZTMbfnF/Lb+I14Z822gUCdU1aaANVhsbHAg2cxUycuXTGognth7lopeW1gOQl8g8Ox3gaqVuTuLSBFwdf0hqvUr6hWZE64QLCHin4B5yetu6NlvtH0cnqEUT65lo3vaOh/NFLXUflduSqZ6LvkoA1wZeqN3aqoHzkeN/a5A1PKZmg/RKjzc3mcMJcAQPCYSMMivFE6cZa17vEadme+H6trryqg/2CRac0isV5Zpdl9k6atmRzI/6MP9bOLdApVYrFrIh3pFimC6SWhgSYnuBGiky4pIQER1cet3TCNIyamUJ1cSDSqDRaGM67HZ7Kd/OzTgsYpw0
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 822e6a30-0df0-48f3-954d-08d7858fe9d7
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2019 21:02:24.4432 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: prtBQysDdxVKdG+b+/REhfP2PPGH3zPZ9c2oQfietzeObJc9oUTgz1Pmd2/YQtoS6wyi1Rd9Mrs2gv1b9SX2Cg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB0261
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_130240_175409_D9F3FDAD 
X-CRM114-Status: GOOD (  17.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Marc Gonzalez <marc.w.gonzalez@free.fr>, Will Deacon <will@kernel.org>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 Dmitry  Torokhov <dmitry.torokhov@gmail.com>,
 Rafael Wysocki <rjw@rjwysocki.net>, LKML <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Tejun Heo <tj@kernel.org>,
 arcml <linux-snps-arc@lists.infradead.org>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peter,

> > Well it somehow used to work for quite some time now with the data-buffer
> > being allocated with 4 words offset (which is 16 bytes for 32-bit platform
> 
> 3 words, devres_node is 3 words.

Correct, but 4th word was implicitly there due to the fact
on most of 32-bit arches "long long" is aligned by 2 words.
 
> Which is exactly why we had to change it, the odd alignment caused ARC
> to explode.

I know that better than anybody else as it was my pain & grief :)
 
> > and 32 for 64-bit which is still much less than mentioned 128 bytes).
> > Or we just never managed to identify those rare cases when data corruption
> > really happened?
> 
> The races are rather rare methinks, you'd have to get a list-op
> concurrently with a DMA.
> 
> If you get the list corrupted, I'm thinking the crash is fairly likely,
> albeit really difficuly to debug.

So that alone IMHO is a good reason to not allow that thing to happen even
in theory.

> > > No matter which way round you allocate devres and data, by necessity
> > > they're always going to consume the same total amount of memory.
> >
> > So then the next option I guess is to separate meta-data from data buffers
> > completely. Are there any reasons to not do that
> 
> Dunno, should work just fine I think.
> 
> > other than the hack we're
> > discussing here (meta-data in the beginning of the buffer) used to work OK-ish?
> 
> If meta-data at the beginngin used to work, I don't see why meta-data at
> the end wouldn't work equally well. They'd be equally broken.

Agree. But if we imagine devm allocations are not used for DMA
(which is yet another case of interface usage which was never designed for
but alas this happens left and right) then move of the meta-data to the end of
the buffers solves [mostly my] problem... but given that DMA case we discuss
exists I'm not sure if this move actually worth spending time on.

-Alexey

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
