Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5471F3E12
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 16:25:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+oMrXDasa979vB2NROadxLPQj41Du5N7E+89ujccJrg=; b=D6pX9ahcEK3Z7a
	s3DuXKDeBS41WJ1EucwnKXV4VzDMO6eaoIakmOyzW2PC4C0900yevMxGp0oMWhYcD7Z8vSLH9/VMb
	KGLlRB1Pfd2cGrq1PyXq2uma9Wp4De5hRCrIejM/rH3dSzZP/MClZSqDL7D4rmzCIlyHfCufjyk6u
	47MCTAycgVLEKiFszRQYjVsr+YYIJAWLHj65TohVp2Bak1cA2qUaLgLKBjgDVhcGCBERSNEFMejv+
	nR53/sLz9/CW1FKmizhVkq4II7cOU3jB8sUy0TK/LB4p16llUo7JdB6SGZIR6JHcQyNxXpKoDwlQb
	0u/cFCJuiRvd/7h3HmTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jifBu-0001jx-2r; Tue, 09 Jun 2020 14:25:26 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jifBh-0000jv-LO
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 14:25:15 +0000
Received: from mailhost.synopsys.com (badc-mailhost3.synopsys.com
 [10.192.0.81])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id B490540346;
 Tue,  9 Jun 2020 14:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1591712712; bh=Y6TGekkXu8cCpq0b7ufEKTf/sDsJ1NVBV0bNvnvOpnY=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=MM+v+0AE/MTn5ZKpuM95sg+ysUN7iMglhpazJRA3WqZ8t/z8ErVK4lEjT0yQUTl4r
 pN00sgCGDnKqrkExIuw/ZQ1VJW+Y2H1BOFK3pu2MKTiowjcz4U1KGldlgshJLttMhu
 cz7jT8qxVOg8nCGnRPsQSFV5DUSYKZrQWxnasVTeDR5kb9pZfRPECavIjg0MIZ1ybl
 Ab0yRnDY/BwDi6IhCCqKiuw/umuWvGYThYwSfC7j7v2zFy1YoIhDGV5i2a3g03uZOC
 TivUVyOwgHUvTg4pNeU8/lV0XqfiV1uKb+RsG3gMpqs3USH2WmQ86ifCHLhwDG1Kui
 QQ07x3rdi88WA==
Received: from o365relay-in.synopsys.com (us03-o365relay1.synopsys.com
 [10.4.161.137])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 7931AA0255;
 Tue,  9 Jun 2020 14:25:02 +0000 (UTC)
Authentication-Results: o365relay-in.synopsys.com;
 spf=pass (mailfrom) smtp.mailfrom=synopsys.com
 (client-ip=104.47.58.171; helo=nam11-bn8-obe.outbound.protection.outlook.com;
 envelope-from=joabreu@synopsys.com; receiver=<UNKNOWN>)
Authentication-Results: o365relay-in.synopsys.com;
 dmarc=pass (p=reject dis=none) header.from=synopsys.com
Authentication-Results: o365relay-in.synopsys.com; dkim=pass (1024-bit key;
 unprotected) header.d=synopsys.com header.i=@synopsys.com header.b="COW5fHOA";
 dkim-atps=neutral
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2171.outbound.protection.outlook.com [104.47.58.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client CN "mail.protection.outlook.com",
 Issuer "GlobalSign Organization Validation CA - SHA256 - G3" (verified OK))
 by o365relay-in.synopsys.com (Postfix) with ESMTPS id 4603E8000B;
 Tue,  9 Jun 2020 14:24:59 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MnDNq39Iu0Eq0swsKpn89tR3y9mid+29XXh2zYL1/f6Jp3w0VtiM1YP6U3fD5j6gPy7DZTjxtw829U847n/aa060OymF8O+fxScZ70AjpR5pJR00PlticsIgS3XwF/NkI6ggGSSSMchd3eN0eYk6r6rFMxEhHMuZzA1gFKwTwnOpvscCWpTxRiUpkIYF3jbriEiyd+D+utwTlCfSffL/7C76N3RLL2QmSAj5mHrkTecBVzPNzy90BtoHKVSNrrKv8XXa3NGBwy98JXUAXhBRs9/5BF89d+s/Wm9NUGqD8Twg4ce/pzMr5zu6+iyA758VnzQen4n9XMRkx6Q/bkYd8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y6TGekkXu8cCpq0b7ufEKTf/sDsJ1NVBV0bNvnvOpnY=;
 b=KUDdXv4F7EDVWbAw+Z68Oq1zMhcX3SQUKUscZm1qFnolWy06MnSHn3DhLcBXaLYQ0ra/Lf7KX08evqQ1LmJzZfqXYFFfINRYGpCGWskibc+iiAWXOl6r2oM6Rxs5tAurKmXTzmmLUFbZagNqzFXt0l8JFcXJaZSAtI91e8afmcA6W3HTd8SbLuznyBg5Ka1hBbEQmnRop2+9xsRwNg4z0NemI2Ig5i1RUTlV0Q+4tPm/0oAHroZRUTTcYMhhK2wNtD+QUnVup5XH10e5nOzPhf9OXLfMgNAYPcLJgXKQfbXn9ocdqi1OXaakTaAC0pbu8h744vLst2bEYBfhBn9KnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y6TGekkXu8cCpq0b7ufEKTf/sDsJ1NVBV0bNvnvOpnY=;
 b=COW5fHOAwGgpXmtjX8zbI8XAxX5wkjKJla8hKaxjftDDIQex5tSKFwZ+aERR4WAE1jr5QscBuYc5QxDU/wvs0oT7SIc90+kYhFHnUSb73Vz1r4f0Ouhq3iv7eAh5Tb+yAkwbHEJm0cO9XBqxpuXYAN+mXS2N/Ah/55/gzt+4ZSU=
Received: from BN6PR12MB1779.namprd12.prod.outlook.com (2603:10b6:404:108::21)
 by BN6PR12MB1315.namprd12.prod.outlook.com (2603:10b6:404:1f::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18; Tue, 9 Jun
 2020 14:24:57 +0000
Received: from BN6PR12MB1779.namprd12.prod.outlook.com
 ([fe80::f0ab:1cc3:95dc:caa4]) by BN6PR12MB1779.namprd12.prod.outlook.com
 ([fe80::f0ab:1cc3:95dc:caa4%8]) with mapi id 15.20.3088.018; Tue, 9 Jun 2020
 14:24:57 +0000
X-SNPS-Relay: synopsys.com
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: RE: [PATCH net-next 7/8] net: phy: Add Synopsys DesignWare XPCS MDIO
 module
Thread-Topic: [PATCH net-next 7/8] net: phy: Add Synopsys DesignWare XPCS MDIO
 module
Thread-Index: AQHV9e38Uev4r206Bkmtkv7N/VawxajKzJYAgAYapjA=
Date: Tue, 9 Jun 2020 14:24:57 +0000
Message-ID: <BN6PR12MB1779621FA2CDC208E38196FDD3820@BN6PR12MB1779.namprd12.prod.outlook.com>
References: <cover.1583742615.git.Jose.Abreu@synopsys.com>
 <7d9880643585e4347027538df2a722dde54156cf.1583742616.git.Jose.Abreu@synopsys.com>
 <20200605171034.GF1605@shell.armlinux.org.uk>
In-Reply-To: <20200605171034.GF1605@shell.armlinux.org.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: =?us-ascii?Q?PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcam9hYnJldVxh?=
 =?us-ascii?Q?cHBkYXRhXHJvYW1pbmdcMDlkODQ5YjYtMzJkMy00YTQwLTg1ZWUtNmI4NGJh?=
 =?us-ascii?Q?MjllMzViXG1zZ3NcbXNnLWZkMTM5YTllLWFhNWMtMTFlYS1iNjRkLWY0ZDEw?=
 =?us-ascii?Q?OGU2NmE0NFxhbWUtdGVzdFxmZDEzOWFhMC1hYTVjLTExZWEtYjY0ZC1mNGQx?=
 =?us-ascii?Q?MDhlNjZhNDRib2R5LnR4dCIgc3o9Ijk2MyIgdD0iMTMyMzYxODYyOTU4MDEx?=
 =?us-ascii?Q?MTc2IiBoPSJEY3NzaU1FWlhxWnFiRGwvTkVpdjd5VU1SVTQ9IiBpZD0iIiBi?=
 =?us-ascii?Q?bD0iMCIgYm89IjEiIGNpPSJjQUFBQUVSSFUxUlNSVUZOQ2dVQUFCUUpBQUFv?=
 =?us-ascii?Q?MDJ1L2FUN1dBUWtEMXZCL1hvNElDUVBXOEg5ZWpnZ09BQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBSEFBQUFDa0NBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?RUFBUUFCQUFBQW9aN0NDQUFBQUFBQUFBQUFBQUFBQUo0QUFBQm1BR2tBYmdC?=
 =?us-ascii?Q?aEFHNEFZd0JsQUY4QWNBQnNBR0VBYmdCdUFHa0FiZ0JuQUY4QWR3QmhBSFFB?=
 =?us-ascii?Q?WlFCeUFHMEFZUUJ5QUdzQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFF?=
 =?us-ascii?Q?QUFBQUFBQUFBQWdBQUFBQUFuZ0FBQUdZQWJ3QjFBRzRBWkFCeUFIa0FYd0J3?=
 =?us-ascii?Q?QUdFQWNnQjBBRzRBWlFCeUFITUFYd0JuQUdZQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBUUFBQUFBQUFBQUNBQUFB?=
 =?us-ascii?Q?QUFDZUFBQUFaZ0J2QUhVQWJnQmtBSElBZVFCZkFIQUFZUUJ5QUhRQWJnQmxB?=
 =?us-ascii?Q?SElBY3dCZkFITUFZUUJ0QUhNQWRRQnVBR2NBWHdCakFHOEFiZ0JtQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQkFBQUFBQUFBQUFJQUFBQUFBSjRBQUFCbUFHOEFk?=
 =?us-ascii?Q?UUJ1QUdRQWNnQjVBRjhBY0FCaEFISUFkQUJ1QUdVQWNnQnpBRjhBY3dCaEFH?=
 =?us-ascii?Q?MEFjd0IxQUc0QVp3QmZBSElBWlFCekFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUVBQUFBQUFBQUFBZ0FBQUFBQW5nQUFBR1lBYndCMUFHNEFaQUJ5QUhrQVh3?=
 =?us-ascii?Q?QndBR0VBY2dCMEFHNEFaUUJ5QUhNQVh3QnpBRzBBYVFCakFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFRQUFBQUFBQUFBQ0FB?=
 =?us-ascii?Q?QUFBQUNlQUFBQVpnQnZBSFVBYmdCa0FISUFlUUJmQUhBQVlRQnlBSFFBYmdC?=
 =?us-ascii?Q?bEFISUFjd0JmQUhNQWRBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFCQUFBQUFBQUFBQUlBQUFBQUFKNEFBQUJtQUc4?=
 =?us-ascii?Q?QWRRQnVBR1FBY2dCNUFGOEFjQUJoQUhJQWRBQnVBR1VBY2dCekFGOEFkQUJ6?=
 =?us-ascii?Q?QUcwQVl3QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBRUFBQUFBQUFBQUFnQUFBQUFBbmdBQUFHWUFid0IxQUc0QVpBQnlBSGtB?=
 =?us-ascii?Q?WHdCd0FHRUFjZ0IwQUc0QVpRQnlBSE1BWHdCMUFHMEFZd0FBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQVFBQUFBQUFBQUFD?=
 =?us-ascii?Q?QUFBQUFBQ2VBQUFBWndCMEFITUFYd0J3QUhJQWJ3QmtBSFVBWXdCMEFGOEFk?=
 =?us-ascii?Q?QUJ5QUdFQWFRQnVBR2tBYmdCbkFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUJBQUFBQUFBQUFBSUFBQUFBQUo0QUFBQnpB?=
 =?us-ascii?Q?R0VBYkFCbEFITUFYd0JoQUdNQVl3QnZBSFVBYmdCMEFGOEFjQUJzQUdFQWJn?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFFQUFBQUFBQUFBQWdBQUFBQUFuZ0FBQUhNQVlRQnNBR1VBY3dCZkFI?=
 =?us-ascii?Q?RUFkUUJ2QUhRQVpRQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBUUFBQUFBQUFB?=
 =?us-ascii?Q?QUNBQUFBQUFDZUFBQUFjd0J1QUhBQWN3QmZBR3dBYVFCakFHVUFiZ0J6QUdV?=
 =?us-ascii?Q?QVh3QjBBR1VBY2dCdEFGOEFNUUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQkFBQUFBQUFBQUFJQUFBQUFBSjRBQUFC?=
 =?us-ascii?Q?ekFHNEFjQUJ6QUY4QWJBQnBBR01BWlFCdUFITUFaUUJmQUhRQVpRQnlBRzBB?=
 =?us-ascii?Q?WHdCekFIUUFkUUJrQUdVQWJnQjBBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUVBQUFBQUFBQUFBZ0FBQUFBQW5nQUFBSFlBWndCZkFHc0FaUUI1?=
 =?us-ascii?Q?QUhjQWJ3QnlBR1FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFRQUFBQUFB?=
 =?us-ascii?Q?QUFBQ0FBQUFBQUE9Ii8+PC9tZXRhPg=3D=3D?=
authentication-results: armlinux.org.uk; dkim=none (message not signed)
 header.d=none;armlinux.org.uk; dmarc=none action=none
 header.from=synopsys.com;
x-originating-ip: [198.182.37.200]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9934821f-e58e-4caa-fd41-08d80c80e31e
x-ms-traffictypediagnostic: BN6PR12MB1315:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR12MB131534A7A92AAAAD6BDABC76D3820@BN6PR12MB1315.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 042957ACD7
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vKfg7k0og2LqegueEMqpEpPoPs2ezkurkhTc/q0XFZ/U4oGwZIrOpmoe1Au+92sipJaK+jWoSW8B/PKm2oNyB+pA4GLzH/bNo2YI7UfTpumBz7Xlbu+baUbffohzR3goKS4wI2FxPV+GzB8ZwcqPLiVJbLbbgdCUVpChzeKfKAlSgkAIr/yCXYWX2DJzkHe8mGxDCmPMK6Uq3ufHeb3y0azF+wkcOMNby/mnU7wBFh6AAXZNmHj5hwk5NxhoIv2lFWTNObxjd5uX8VnNBDziRTQAjhYmITBjPXa5RTCWJ6b7zqgjZMAUBlZItl4TRYHK8QRhLMb77DNE2BaHX2h5aQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR12MB1779.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(346002)(136003)(39860400002)(366004)(396003)(7696005)(86362001)(5660300002)(6506007)(26005)(66476007)(66556008)(83380400001)(76116006)(64756008)(66446008)(66946007)(52536014)(4744005)(33656002)(71200400001)(478600001)(316002)(55016002)(8676002)(8936002)(2906002)(6916009)(54906003)(4326008)(107886003)(9686003)(186003)(7416002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: NMYgvB/JJCLcs0jOj0cOMJzvhUMV4bPSGlktejtuL4F1T3kEjOqEAlny3EJyyQNZQ1g7gEmf4vkuOq2NFAYTjctleBciKeGhSq+a2QX447WvexNSivLD4EsFMlTGZhqMGTdnzr4VEZZltCMQ9IFlhqPJLw/miuxLUAEFT4crEjOfe6pAFFas3XoG3qGGVUuJ7cwB7H6gpPnoU4qiAKQoZGShWR/S8KaG3sdKvAxWlMWs0GF+DtSifExF5HBXtF5IeMyh3dROBZZVwgX+lVadSAwo/r4mDEJY0xlSRmqD3zhA9COBePIYdLyQJsi6utv6QordcdyYbtgQX5DaOmv9G0ruXCrCuk2dWMDbhdfTNAecHldJ7AEhtDtaHtSChoric/4TM9LqUig8fIi9zeb2BaLQUQitKeOgcWucnYz9jsX5paB6QyBH/a0bK2co/Cg6SkJ5fFgIrorANH0MFnh77Ux3EigPhu6nWsPHrUoexqntU+MnWEx0Ckj0lHTpxnzE
MIME-Version: 1.0
X-OriginatorOrg: synopsys.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9934821f-e58e-4caa-fd41-08d80c80e31e
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2020 14:24:57.7711 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BJaWNDFXJfZ8ExKg7udrXUp6lwApQjxA1Nd9wEm4qzoX6argd4UAxgUEMuqp5J+66RRE2FHXFcfQ2it1rhR10Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR12MB1315
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_072513_717641_DCC02651 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [149.117.73.133 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Andrew Lunn <andrew@lunn.ch>,
 Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Date: Jun/05/2020, 18:10:34 (UTC+00:00)

> This is incorrect - you should not mask the link partner's advertisement
> with our advertisement like this; consider the table in 802.3 for
> resolving the pause modes, where simply doing a bitwise-and operation
> between the two advertisements would severely restrict the resulting
> resolution to either symmetric pause or nothing at all.
> 
> You want to do this when you resolve the speed, but only _temporarily_
> in order to resolve the speed - you do not want to write back the
> result to state->lp_advertising.

Thanks for bringing this up. Indeed I believe I did this in order to 
resolve the speed, as you said.
 
> You may wish to fix that.

Added to the list of my pending fixes. Thanks!

---
Thanks,
Jose Miguel Abreu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
