Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B15C61855F6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Mar 2020 16:40:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gf9eYWGxlfkcxV2cPqmb19pJcPtS+Z688333+FNRHZE=; b=IUEA5xpiNS18Ii
	kQuNmbf+bwB42vkqzubElbZa00lFUaq2SGTra2RteunbaRnD5VjssEK+r7OOI+ID/BD9q1VNhya4R
	q0FdxQHmfmPchQ0yrPF4Xv0j6pmJp3BA+kKWAVV679uzJcqdvkqqWKxG7l5LgW3eQpXnCBpVontq3
	q9xLZodmAZ4fmz7ejOdw/94OIRLRAyeKtjy8quSpVBDiIzK+ovxz/I6T47eAFjvJ6OZAvHdxdclbC
	YvRNcmrlzmShP1EvDh3w+CyBii0jOzZ/hZ4BsnE7nBnOIU7npbBMJhX6q5DGor8dxVNIjZ+FsER0V
	ur3dXXx83JIs9TWRTvCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jD8tb-0000eF-9x; Sat, 14 Mar 2020 15:40:15 +0000
Received: from mail-mw2nam10on2100.outbound.protection.outlook.com
 ([40.107.94.100] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jD8pt-0005lv-Mw
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Mar 2020 15:36:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EqgbUa4m0sRCgvojFf0Ql6UCZZt9ciOHZsw3v1VYRT6rm3xE3SLH4XAROHyo0pALcYX5dr+pbXGV2yQdOg9qXs/J+C9UtRlK327QHHq4SEf3tK8MQ9zI4lzsOrdxhqmAnOEl9HrdgRMaaNYdjRWMWs0fePGoM1N9mruAP+tjJfzLZgMwY71mZnnxWFocFAvYLwKfvo/Ljh09ebAX4mjWBs8Fx/jVTfrz7O7OotKTYJcj4rcy9xDyB8tRdtY6Ke8k+7YFU5tINh/s8gzpw22lp+QwHAEzYXvmxgVMoSe4MRWDVmMWeXWi5Vad+eivD9yyLL3FZQQYGj6j643si8f23w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ewbfHZXjxiR3o31sgRc557/LsbDk01g0KASzcHU7ci4=;
 b=PioBw2r7g3wqF3WRsje86J7JAH5LJ6YlHyZ0oNNR0fVo6NRa62r9dp4hy+hp5rijjRhPORDFyfNkhjzZQvvry/qTE7TTo479a0LdTgQ5u0zZBV5UpWVJZJCZVaaGv1R/jUqntUf+lvyvmkKehYR7I8oao3VQ7w9wpBTBAc2uW3t9RGyPapL0jhLYr1BLkZwKHwQlTg4eq5e5oPPYXjRg4LPtw7X4LwHJx9aqojprVAcM0oPpVxvrg3S36muoIGCfdAclA6H6eCQ/3M149KlXsulzUfJuf5OaiUaPauVCQnByO5ob9+eUPlqC/x2zngQ7zyroCjwGzadtqUWwnb5Fwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ewbfHZXjxiR3o31sgRc557/LsbDk01g0KASzcHU7ci4=;
 b=eFZ/Dv+Sqv0aS7QOrRkJTbBKcn1Y+iTQRY8h/rrAIXZZywyjATrvwRMlIy09YuRqMJilCDT8AFhG8c9gxRQx1/XZm140GqNcnmoxZQ201+hnqtowJFEFY5uB/efIvOWaFzvEIdtt1+ff5G5J3dEtU8tp2uDw1QKqHDv4nEDvIgA=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
Received: from SN6PR2101MB0927.namprd21.prod.outlook.com (2603:10b6:805:a::18)
 by SN6PR2101MB1632.namprd21.prod.outlook.com (2603:10b6:805:53::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.4; Sat, 14 Mar
 2020 15:36:16 +0000
Received: from SN6PR2101MB0927.namprd21.prod.outlook.com
 ([fe80::a819:6437:1733:17b3]) by SN6PR2101MB0927.namprd21.prod.outlook.com
 ([fe80::a819:6437:1733:17b3%9]) with mapi id 15.20.2835.008; Sat, 14 Mar 2020
 15:36:15 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: will@kernel.org, ardb@kernel.org, arnd@arndb.de, catalin.marinas@arm.com,
 mark.rutland@arm.com, maz@kernel.org, linux-arm-kernel@lists.infradead.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-efi@vger.kernel.org,
 linux-arch@vger.kernel.org, olaf@aepfle.de, apw@canonical.com,
 vkuznets@redhat.com, jasowang@redhat.com, marcelo.cerri@canonical.com,
 kys@microsoft.com
Subject: [PATCH v6 10/10] Drivers: hv: Enable Hyper-V code to be built on ARM64
Date: Sat, 14 Mar 2020 08:35:19 -0700
Message-Id: <1584200119-18594-11-git-send-email-mikelley@microsoft.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1584200119-18594-1-git-send-email-mikelley@microsoft.com>
References: <1584200119-18594-1-git-send-email-mikelley@microsoft.com>
X-ClientProxiedBy: MWHPR22CA0047.namprd22.prod.outlook.com
 (2603:10b6:300:69::33) To SN6PR2101MB0927.namprd21.prod.outlook.com
 (2603:10b6:805:a::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from mhkkerneltest.corp.microsoft.com (131.107.159.247) by
 MWHPR22CA0047.namprd22.prod.outlook.com (2603:10b6:300:69::33) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.18 via Frontend Transport; Sat, 14 Mar 2020 15:36:14 +0000
X-Mailer: git-send-email 1.8.3.1
X-Originating-IP: [131.107.159.247]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: c41030ce-8aee-4bb4-38ef-08d7c82d6eed
X-MS-TrafficTypeDiagnostic: SN6PR2101MB1632:|SN6PR2101MB1632:|SN6PR2101MB1632:
X-MS-Exchange-Transport-Forked: True
X-LD-Processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
X-Microsoft-Antispam-PRVS: <SN6PR2101MB16327AADEB88436A6FEF0C13D7FB0@SN6PR2101MB1632.namprd21.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1332;
X-Forefront-PRVS: 034215E98F
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(366004)(39860400002)(346002)(376002)(396003)(199004)(10290500003)(478600001)(2906002)(6486002)(36756003)(8936002)(66946007)(26005)(86362001)(2616005)(16526019)(186003)(956004)(66556008)(6636002)(66476007)(4326008)(7416002)(316002)(81166006)(8676002)(81156014)(52116002)(7696005)(5660300002)(4744005)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR2101MB1632;
 H:SN6PR2101MB0927.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DmmrIj9Pbqf3HQSltxRWgBjfKRTilXkE66NuN+XuUJJK0X6Njy7V88b3KcItA5ml3N6EOfljH/0/DPqD0dcoqbQzIp/OGSRb7hvxKyJ0xfbRcFbT8TUzOuBk/isOvqJsldn3UxsJgqC6G9eJyGv6qDtQD7oi5rDWOBWfx2ZD+Njp2fqLWgTMW08BlnI4Yz84/e1HKVHTc6yK0Yb/V4F4SrMuGTA6hs53/8EtGZqzS1crs8LNRm/TuFBKjdqW61WCA/cawKCMPIn3phF/UcHAlO9wznQiX4g3ebuXKsOT1xntUNdxVgJc4OCeAFMzyQLJjCQ+2NhWUr2MOQfheEMdnnHRwlWfBs9mSJM/rd35Y0oolL0kzKsT2dNxvul1XYWZpjcKl8a0IfiozNDxe8nG2dNVUe1qYaqSjP75WZQxIOG0LJSmURAaudt03RZiN8gtiwBbcdwUePJ2zTv7+CF0IJK3RjsGYWqDif2ItKNTJFbqogMFyH21xOYk8uoDXWCi
X-MS-Exchange-AntiSpam-MessageData: oGp78VyOM4K55cfx7H8dsJAts2bA7praWlDraerJi3nRNRXibod51b/5789RO/2z8CZ9p8hCHm/3oYe5WP5FCvCHn3Y5bcFStdY8g8ZWUy1nThrYLFdjZ5heZnv1SSHATsvFX9/zPYY4KrVAZNsZ+A==
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c41030ce-8aee-4bb4-38ef-08d7c82d6eed
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2020 15:36:15.8287 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y/Uqfhne5r354bY9UjuU+r0VrJeIkY5+Gq5vURugkh0cFYVORTrGzmovic/iEbo3mjUHADuaKethdRqLkYsTBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR2101MB1632
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_083625_789935_4A323A78 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.100 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: sunilmut@microsoft.com, boqun.feng@gmail.com, mikelley@microsoft.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update drivers/hv/Kconfig so CONFIG_HYPERV can be selected on
ARM64, causing the Hyper-V specific code to be built.

Signed-off-by: Michael Kelley <mikelley@microsoft.com>
---
 drivers/hv/Kconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/hv/Kconfig b/drivers/hv/Kconfig
index 79e5356..1113e49 100644
--- a/drivers/hv/Kconfig
+++ b/drivers/hv/Kconfig
@@ -4,7 +4,8 @@ menu "Microsoft Hyper-V guest support"
 
 config HYPERV
 	tristate "Microsoft Hyper-V client drivers"
-	depends on X86 && ACPI && X86_LOCAL_APIC && HYPERVISOR_GUEST
+	depends on ACPI && \
+			((X86 && X86_LOCAL_APIC && HYPERVISOR_GUEST) || ARM64)
 	select PARAVIRT
 	select X86_HV_CALLBACK_VECTOR
 	help
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
