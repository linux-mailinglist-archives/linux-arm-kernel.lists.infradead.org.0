Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35952200750
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 12:52:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j1FZFuNJHKo905SQzP//vioDqVaBZQVFrIQvu2UhAHo=; b=VupLNLCeq+Nwls
	Ud5oiZ+Cd0f5G4j+qeG5a42vUCqeydbuZ8j2rmBgish/d31hbUym3ANYct9tR7Mdty0tXz9KeQpdV
	k5zdP4wL1hRTP4gP81bgpkOhuAbRbwrbTR3W72jYreA9KRaEvbs/Lio5EPPXBxEbM/uUTRGwvvVlO
	cKVrWvxgAzol0meZkdV67evxOBiv+4n54BJnNWDHh6Czq7OHlnqUyn/nAdnS5v67Yk5clIStUCFIE
	M7su16FlyVW+Bh2fmk8XxaYlcs1redN9i7xAWoy8g4f4vXPYAW0ILb88IQwBNlXgQScOOxW0i6oeG
	gGf5Z7i5Zsy+fjHvzqTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmEd6-0008MP-RR; Fri, 19 Jun 2020 10:52:16 +0000
Received: from mail-mw2nam10on2074.outbound.protection.outlook.com
 ([40.107.94.74] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmEYC-0001tB-FR
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 10:47:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UFPh0EJgO9UETCYNBeKKVpl0f+I74ScXYDWzTEPl5yVVAYMFaIYRqM7h2MIKpC301Y60P5/f5bcYMSeuNSD+hwsrChdRoDzUuNvmZK5qIqjGoKon9hSLGosqDnXvSQE5x8MyhB1xdZgDYEZ7owwaUK8LLKS7xoOlegfiCTwHB8bRnWqJFryZIr4XHzRyQqPQTcaVo/DQQ+OATvrn81TwSmRYUDLxDsCzyn86uqq5lVil86YbI6ZzRrWDgNhJNXB1HUM6iQnalUYB3kY4/fqZ7Ki2wAsl2zH4/TrtlRnku6CQ+oXldEfuXZa4ZzqNLinRCN7YW3AlgtjOpX8MO+6bJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AnTOMGwBRcg3XeWGhSay8kwfSx66Jlpjos2FQHxXp1E=;
 b=OCDIW/mPEClgQEYGHSwUvP5C1/zVmFsWCTSree0/N9fEp3Ff9j1HkL1zNLbyO5Pr0Mkp4/vWes0k0LZ1e1iEhFc6x6R56tAmAKv1ThpvZTtDc4a8Yjvg7Wu0L08SvztW6EM5bvn1LvLAXJSOkQP4hDE5Qzz7FGa359/OgAl5fZAvJfEPQrHVSf0hk79dlNqlUQUyL2bowUmxVm9N5cNq2jtuD8VKEA1TD3/zWOo6nEcQCeHEBKATSX8+H6zdw+nBi3+JRRHM75F26mSkyi46K4A0zDYvYd5LuJY6HWpmrS1SxYnLy0y9uYyJ4VXjiPj/mRZXhPz+knuUAn10FHbVZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AnTOMGwBRcg3XeWGhSay8kwfSx66Jlpjos2FQHxXp1E=;
 b=MXzcP/iUUnrOIB6I6bLGWPkplmW17vrFvhFIyehn5LmmnOKqUB7Pg4gDUAaLCwrSazbJyc7XekCVWU7i+KRpKzMBxnTVDEdxXnSxhlsltxOufh9V2BoN75waHNO7laNYA+t0KhAQyp272LsrvJe152m1n0eOI0cozbFVCvwarc4=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=synaptics.com;
Received: from DM6PR03MB3580.namprd03.prod.outlook.com (2603:10b6:5:b2::14) by
 DM6PR03MB3481.namprd03.prod.outlook.com (2603:10b6:5:af::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3109.21; Fri, 19 Jun 2020 10:47:10 +0000
Received: from DM6PR03MB3580.namprd03.prod.outlook.com
 ([fe80::3122:b605:87fd:339e]) by DM6PR03MB3580.namprd03.prod.outlook.com
 ([fe80::3122:b605:87fd:339e%6]) with mapi id 15.20.3109.023; Fri, 19 Jun 2020
 10:47:10 +0000
Date: Fri, 19 Jun 2020 18:45:59 +0800
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Mark
 Rutland <mark.rutland@arm.com>, Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH 3/3] arm64: perf: add support for Cortex-A76
Message-ID: <20200619184559.0a8716ec@xhacker.debian>
In-Reply-To: <20200619184423.5e61a838@xhacker.debian>
References: <20200619184423.5e61a838@xhacker.debian>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
X-ClientProxiedBy: TYBP286CA0040.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:404:10a::28) To DM6PR03MB3580.namprd03.prod.outlook.com
 (2603:10b6:5:b2::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from xhacker.debian (124.74.246.114) by
 TYBP286CA0040.JPNP286.PROD.OUTLOOK.COM (2603:1096:404:10a::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3109.22 via Frontend Transport; Fri, 19 Jun 2020 10:47:07 +0000
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
X-Originating-IP: [124.74.246.114]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 438e7a7e-c41f-4242-5cdc-08d8143e1e69
X-MS-TrafficTypeDiagnostic: DM6PR03MB3481:
X-Microsoft-Antispam-PRVS: <DM6PR03MB34811C27DA2FEEA6DB308EB0ED980@DM6PR03MB3481.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:612;
X-Forefront-PRVS: 0439571D1D
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YP6JhsqSE+q8ExlEqkqYKpMtEcm1PX8WTLwZv1J3YQ9yclfoJm5mkEQtgiRqL7DXNwLvwruK30rPh9v5yocxKVoEx8sRKgTUeJaRIFtuGNyKhL/S4YL322katzKmFxCamuEYOaApRKLfVa/oPJVYS4ImRco9jdUGyce3+JTK2kHuqC1ToGYqreCql9eGdlobIyP+LkJuB47vfclM1gCKDWkct/BjxhJeQsFaUhtqtdoiGHUiXfVy4c0qMecN9xMOxHjzqbYQjFUk+v9rAextyWthUgvATP1LW7v8LfTtn9vkq2QW3zub8RHpw+mWn8WB
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR03MB3580.namprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(396003)(136003)(376002)(346002)(366004)(66476007)(6666004)(66946007)(66556008)(5660300002)(86362001)(52116002)(16526019)(7696005)(186003)(55016002)(9686003)(4744005)(956004)(8676002)(2906002)(6506007)(1076003)(26005)(83380400001)(110136005)(316002)(8936002)(4326008)(478600001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: j3dFSseKrBJbZl3dwNYHbdsPcYwn0/mUL3aR1eC8QvR5tM/acAHFxqcACwerQUQ2zWjbgfm2jgnU4DgT+VYqPdQPnMekpwSvomGAKnBq/vBOtzopznW5QzNr0HV0zKh8iUbsOL1Gg/TftQOXABIRpX/NVBXWdGQCha5Lgq/XLTgEMXNSrzVNFSb+b4ZqKMTDgZTx+V5HaOhD712kzWoxfPwfTQieaR3A5zeUbjzTqr9npwkHDR85ykqf7L3C7j/CkUsxfDKlNLcf2eXL9wGYPXdrJfTOEcplVRHPYeEPAgfq2MT0Nzm4FlcvLRX/96k2EPwMSvNvJyhRiMorpB+klr3AV2G6G5KZrnIM2242ajVS5qqIcidYRlKfD4L4kNQkg9cbfSyhsfeS/tEf9irLHRP4yf8KZr4qfe5vMcbGiyZVzHG3AwS+J9q5k9WBYJPZjTrWhHCu052JjNWaQTv/ZlpGd9ukzhx1eT3qD+yp35M4rtdgu983UImRQCmfbpEh
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 438e7a7e-c41f-4242-5cdc-08d8143e1e69
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jun 2020 10:47:10.6632 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I6szFAOk9hnsCha/FJAJ/f5n/vuia3NeaP7t4bxJWA7NSlLHjWO2hi8NYshBS/zpkIFIzpnX6/JO8G6n761qmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR03MB3481
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_034712_547265_B3B796DF 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.74 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.94.74 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Cortex-A76 uses some implementation defined perf events. Per
Cortex-A76 TRM r4p0, section C2.3 PMU Events (pages C2-386 to C2-394),
we can reuse Cortex-A57's perf events mapping currently.

Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
---
 arch/arm64/kernel/perf_event.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
index 55e1d75af708..4fb13fbdc2df 100644
--- a/arch/arm64/kernel/perf_event.c
+++ b/arch/arm64/kernel/perf_event.c
@@ -1127,7 +1127,7 @@ static int armv8_a75_pmu_init(struct arm_pmu *cpu_pmu)
 static int armv8_a76_pmu_init(struct arm_pmu *cpu_pmu)
 {
 	return armv8_pmu_init(cpu_pmu, "armv8_cortex_a76",
-			      armv8_pmuv3_map_event, NULL, NULL);
+			      armv8_a57_map_event, NULL, NULL);
 }
 
 static int armv8_a77_pmu_init(struct arm_pmu *cpu_pmu)
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
