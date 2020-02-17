Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1198C16153B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 15:55:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O65o3Bpx64WlU5/D0Z6PElXU5LJWs38TOt77bYU7GbI=; b=Ll0qd6aQjqAihp
	rb2C1D0zYor80M+u2xhOEjy9t0PIjX+snCaUQoMbp/SuF0Zh3ewvZgu56xm0nDD9YjIoHWtGfoPew
	wCKos+GI/i4THjWo+AO+WtYtYmnhAj8EFTip7bBypGIpW+cGR7jsN4AIbEkgjbJ/+eVF/2HqiiTAV
	IKBLBnamR/g/9GOzTXiVQJ2NsIgyyGlXo2tLf1hCS2jhZvWhULcz7GAbH6fPe5sixJlyY0V18n6Th
	Gg8Gf5YPnDF7o70BhYw7K8ZiW5fO6HT37rae9wDZRdE+3tKzxaVcfxA5gwCmlDEBHJRI0N+k4ianj
	Lc38OzUBifBreO1a61Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3hoQ-0004bp-G2; Mon, 17 Feb 2020 14:55:54 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3ho0-0004T0-JJ
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 14:55:30 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01HEjBKn001236; Mon, 17 Feb 2020 06:55:24 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : content-type :
 mime-version; s=pfpt0818; bh=5mcqY449zy3Zfkv3CBJ8BylamkNGI5puC3rFXUTvS1I=;
 b=p0HEbZG+OnlN6/T8DkgM+yeFi1xgu5lswMM++zLvl9c4VMThMPS/hhvKyYSORcUUj0W5
 YwZLH0J5jlkdMy7p0WKaceTjfiWYd9qBMqUxQL9NKklN9K0NK1Ac+z4VyLDSUBw+BOgc
 lgRjTcUmJQozGPZNwMld+8VI1WNiiEo4tdZkF9wb/eUrar5oR+Z/4zcEc6YZRw3YXfPk
 0bYmQmoZxH8S6tarrsa0IynijlVp/O9HeWHBHTMcbQkwpWD+S8ThP/9SY9A6PTcmB6hf
 36oXPmeyzHFp3fb5weoL/qFo/VG4CaPg0qX5h8dgZOIsUe5HCl9JlB16AJ6Eg8A+hhC1 fg== 
Received: from sc-exch03.marvell.com ([199.233.58.183])
 by mx0b-0016f401.pphosted.com with ESMTP id 2y6h1sychk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Mon, 17 Feb 2020 06:55:23 -0800
Received: from DC5-EXCH02.marvell.com (10.69.176.39) by SC-EXCH03.marvell.com
 (10.93.176.83) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Mon, 17 Feb 2020 06:55:21 -0800
Received: from SC-EXCH01.marvell.com (10.93.176.81) by DC5-EXCH02.marvell.com
 (10.69.176.39) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Mon, 17 Feb 2020 06:55:21 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by SC-EXCH01.marvell.com (10.93.176.81) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Mon, 17 Feb 2020 06:55:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K0hRcbAI8oCRtPNHjHrdIBxt8Ovj6/zpLAlneQUiLu7NiNJx5OnbrUDvsFh81zN0BTwmTfrWArAjjTvRrHxSz7KswrbKp9Neire1h1tL8gCVYuIy07+yD364hYQoz1ZJutxdFsgx7h5CUPSvR0th7lfzig3i5BxhMZUufjYlqoVzJQu3LFPYvqkM37gJCZQwp4YarJbm1PSAvV5ZgxEWcvVN4tJlbFXQmBqfIuqF10N/km0bbrJqLyuBwqebMIUuayQ1ndX62uCdRJSmqO8SN2IihBAoT2fq6EP9jNsvftutow3zp7CwhCuS1ImSWI0//YHgaBOd/NJ+259mwMJhwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5mcqY449zy3Zfkv3CBJ8BylamkNGI5puC3rFXUTvS1I=;
 b=Szmxw+e5y3CXVuQZ5y0S7yU3wFikS1HWXeybe4cihR6cuHOWuY3WjsGqegJ/9tovtKdp5b90oIpUK4swfNjjRzDI6mrwUwiezCygl/AVS1Y5BNCuzl6tFtO1rztq1ewCV8t8UfF6EVYz4ggvXA1VdRkpBFVXg4+mATZf4bymJmPhnDPLQCbZewg8SLm3QDNRosEGeeUm8zYP9wD2sK0N38rBi0KoWpwpKHgzLrtqKqtoqpkbrzkr6hrwEs+9/X0DYaSwzNkkCPN1HfpS9Rqy9qjDYx2yceC/Ysh1wnj5rQIwOdTr04weFjeh3mS4lPgaWuIF6WSIVoHGXpyt8EYNDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5mcqY449zy3Zfkv3CBJ8BylamkNGI5puC3rFXUTvS1I=;
 b=awuFQAkjOufsUhMVwKyl+mN+kkvVAliRHGXqtBRIk6frB9VEbxQdCEBMur8OKvxK11jCyYYI7K0P3TioBfZbtwmvv9CXkW+23wG7XjqY52zOZkaHvFDF3nT1D6Xqim97tVDPje+tOeXjwURKO6pyKRl7kj+HQSKH8SftUjtlqKY=
Received: from DM6PR18MB2969.namprd18.prod.outlook.com (20.179.52.17) by
 DM6SPR01MB0045.namprd18.prod.outlook.com (20.176.120.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.22; Mon, 17 Feb 2020 14:55:19 +0000
Received: from DM6PR18MB2969.namprd18.prod.outlook.com
 ([fe80::d890:b3b7:629e:352c]) by DM6PR18MB2969.namprd18.prod.outlook.com
 ([fe80::d890:b3b7:629e:352c%6]) with mapi id 15.20.2729.031; Mon, 17 Feb 2020
 14:55:19 +0000
From: Tomasz Nowicki <tnowicki@marvell.com>
To: <kvmarm@lists.cs.columbia.edu>, <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH 1/2] KVM: arm/arm64: Fix spurious htimer setup for emulated
 timer
Date: Mon, 17 Feb 2020 15:54:37 +0100
Message-ID: <20200217145438.23289-2-tnowicki@marvell.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200217145438.23289-1-tnowicki@marvell.com>
References: <20200217145438.23289-1-tnowicki@marvell.com>
X-ClientProxiedBy: AM6P192CA0037.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:209:82::14) To DM6PR18MB2969.namprd18.prod.outlook.com
 (2603:10b6:5:170::17)
MIME-Version: 1.0
Received: from localhost.localdomain (83.68.95.66) by
 AM6P192CA0037.EURP192.PROD.OUTLOOK.COM (2603:10a6:209:82::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.22 via Frontend Transport; Mon, 17 Feb 2020 14:55:17 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [83.68.95.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5b926705-8cd8-4822-ea1f-08d7b3b9684a
X-MS-TrafficTypeDiagnostic: DM6SPR01MB0045:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6SPR01MB00453CC949B7572373E5587FD2160@DM6SPR01MB0045.namprd18.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 0316567485
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39850400004)(366004)(376002)(346002)(396003)(189003)(199004)(69590400006)(4326008)(5660300002)(36756003)(26005)(4744005)(107886003)(478600001)(2906002)(16526019)(186003)(8936002)(52116002)(2616005)(81156014)(8676002)(81166006)(316002)(6666004)(6486002)(86362001)(956004)(66946007)(6512007)(1076003)(6506007)(66476007)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6SPR01MB0045;
 H:DM6PR18MB2969.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WsKcU1OX0ML7qdNl9OGEry8QqVRhd+SkfgQorKzjvVuovJTKpi6AAFBJYhNtdgYKdEbQ2Nxigk+tL/i009ChCo5rF5nYrB2JR393Y0Oa4H636ykoUwT/YGp2UUE4DrKEvbNeDU5udTjRC5bd5AFaFQWvVpPm3evLFn2KM5jQYjcmH7E5g0LgJtC9gNbQfbqauGgA3A/DVpRwy3DnSaTAvLifntn3WQ0MYcPhJKBhihBm/09muf0f4YH2VLwzFQyLaZ0tmbMpyq0ufy97uQgzJvwtQqb1dAVbpZd/15ebKAeYLNj/6fopIWBA72evBVOerHwlDuE++k4au9LC6z8NshpOzLrbhTTcPnw14oda3sovwTn7HyTgWvfm12qZuRE6yms70RPVNwmu17/5LCHJvAiUMV4LmCgOZalYqHYAq+dRUC4qZuP3tlqsmFAZgDxD29tMeZmIdG1kaLfav7kWBckQupDFyLl+ntcrycSG3Tx6A/s6IJws36UD4wJbeFXaJS9FaQVrOZe7K24RYEiv+Qxz+Iq2XAfcukYBEtQnVII=
X-MS-Exchange-AntiSpam-MessageData: ZdmZoE99DzZSkJSVLyzfWxltWKCeUEXZrnreFEdlrMPixPjEkVDXalGs9u3pLZliRYKHF1vHZlM/Af4GWpHCjP3MJ5cCxW5mgz4YkdeFqqkAKJlRA0MfhG1pjKz1bzSSAylB712bfsrDZLer1JpqJg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b926705-8cd8-4822-ea1f-08d7b3b9684a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2020 14:55:19.9054 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vlZ2WJ8zZ32j2FY+1v61+70NMK8g4cjpwY0AlUkJdSmX3ZN2HkcOyIMQ+8h+PIGXjt8DCWn0Gwa9fScoHRFIbw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6SPR01MB0045
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-17_08:2020-02-17,
 2020-02-17 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_065528_758406_BE3A06AB 
X-CRM114-Status: GOOD (  14.64  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: gkulkarni@marvell.com, kvm@vger.kernel.org, maz@kernel.org,
 Tomasz Nowicki <tnowicki@marvell.com>, christoffer.dall@arm.com,
 rrichter@marvell.com, james.morse@arm.com, julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The emulated timer needs no further software timer if the timer should fire
now and there is no change in irq line level: (should_fire == 1 &&
should_fire == ctx->irq.level). In that case htimer should be simply
canceled.

Fixes: bee038a674875 ("KVM: arm/arm64: Rework the timer code to use a timer_map")
Signed-off-by: Tomasz Nowicki <tnowicki@marvell.com>
---
 virt/kvm/arm/arch_timer.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/virt/kvm/arm/arch_timer.c b/virt/kvm/arm/arch_timer.c
index 0d9438e9de2a..f1814f733ef8 100644
--- a/virt/kvm/arm/arch_timer.c
+++ b/virt/kvm/arm/arch_timer.c
@@ -326,7 +326,7 @@ static void timer_emulate(struct arch_timer_context *ctx)
 	 * scheduled for the future.  If the timer cannot fire at all,
 	 * then we also don't need a soft timer.
 	 */
-	if (!kvm_timer_irq_can_fire(ctx)) {
+	if (should_fire || !kvm_timer_irq_can_fire(ctx)) {
 		soft_timer_cancel(&ctx->hrtimer);
 		return;
 	}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
