Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E162D1A3714
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 17:28:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kKJDvwWO3cPBEdqGpJZ7shvTWueF57uIIIYg69whtXM=; b=M26vU+Bk8Mi9bM
	zaoWLtEK3OttQdBp3JLXwIXX42bS1bYqbxlaBOWs0qD9jH7ZwH8Rn5Z1EAPOb2Zk7ZPUthGF+92e/
	WeLR154YAbVbhAwPk7hI3WPK0l/mWsOzpShLC47/GfBnJ4JuMo7k4OmSSjaA7oMRGDFXs8tZuBYFV
	S71VL9t228825J/ATrqRMYxaXdiBgO7m/vCJy6wboX8Vt91FZAiR7ZMPEn/EZYJSS+BZKLnA/iSCu
	sTKZJQEkOMAqbOYi327mPE9ulFtKUskE38aCUyUvZ2Wt80Xb+6vJW/54H5AKwu5YB9//dKrwPp0Wh
	sip5UdvgfoEADjB0wfMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMZ5v-00063G-Tx; Thu, 09 Apr 2020 15:27:55 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMZ5m-00062R-4w
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 15:27:50 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 039FOjeH028177; Thu, 9 Apr 2020 08:27:12 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=brVcye4g04z58XKP8Hd8aUsDk8ICA4yESbMdJf0mZFE=;
 b=mcdLy69a6xzyd7ZvUooO4izwoUjjUp0y9Nb0vnaUpsScF29LhRbn2sGY0O6dDlCSRFXd
 i+2M0OOEDh6hVAyqthz8eKSrXqBgk+KbDem7xyOSUWJky13Rlq3098NWn0z8djqTq2az
 YjIxAX3aQmiA5vKHc09fC4zEqhGXa1dcII6Y+Z52+/0fvhTP2tggE34bubToULI6CMb4
 n0qVZq9laJeIWMnbta5U6n00H/3uFFlx93D2SGjbPOxfS9poTXD7mzvrfRLDFo7mzjmC
 XO78lT3IZup7NU3Dk/ZJNaIyaYAQ695WS6lSEM4/xs2faHT7+1T3fSIRKDZ/Hy4kTsp3 iQ== 
Received: from sc-exch03.marvell.com ([199.233.58.183])
 by mx0b-0016f401.pphosted.com with ESMTP id 3091me90bj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 09 Apr 2020 08:27:12 -0700
Received: from DC5-EXCH02.marvell.com (10.69.176.39) by SC-EXCH03.marvell.com
 (10.93.176.83) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Thu, 9 Apr 2020 08:27:10 -0700
Received: from SC-EXCH01.marvell.com (10.93.176.81) by DC5-EXCH02.marvell.com
 (10.69.176.39) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Thu, 9 Apr 2020 08:27:09 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by SC-EXCH01.marvell.com (10.93.176.81) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Thu, 9 Apr 2020 08:27:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aQsBpe1CkqBQduYIR7oQhBLQvkL+1D+6NWZOI9lLcTx0AVCEx6KatkgDM7mJy+l7EsZ0VvpmBsE1nU5W9gK8IbVj9e6d2yYsjlKPuhUMwfrvGRqfGE6Ci93KoW2fEnVHlOLN+nBxYDTNalfmQ88mNbjevJYbzPLoy6BTxhFxNPYTF9EGg27zTRXUlxUD4/x7E6lxlIoFx/+PdkTmq52Tc594nK3Xgg1hFHKXPwFm6TTwLy/e+5pAf+bk3j2a1VOaJwZBm7aKQF6Ji0Tu0hE67dtNV4MCMO+QRwQ1ohI/eyaJw4YOMrRGbP1fN7ciwwqgJUTvY/7840bzmqwBs2+PxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=brVcye4g04z58XKP8Hd8aUsDk8ICA4yESbMdJf0mZFE=;
 b=DmTsiEEoh5QokBuA+NEXOydGMbRXBdfJVMTTiZDYz4OcQWx0p9Qimzx5ig5WtisyXseLv4LzKv3zF79diTtw0K/GpdDoY+GTA4354lzYBkxPOM6UCOAeRiualeQYUNeAmyvLLzELyLmyU08wTd7Q0wvu1qfcCjrFNOqnijbxGw4+MuU9pRAbpjWVzhAONXTA2B2qBcfldKqwNoJW9rTmlPQj1tse90n1lj0rxtVpwVFR9Nteqjm8IXKpUNZPu12UasfT1L3itZWyBiFNnSiFRCwRtjUloSO2oQSM62Pfedt3Mh7HvBiXrnbTVNMyezs6xVC1dRQFz4Czu9qKITJgXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=brVcye4g04z58XKP8Hd8aUsDk8ICA4yESbMdJf0mZFE=;
 b=Rg4YjOjaRacrl7tM9z9ja0uYGN4gc/yGscvS5O3ShXHJlUed/sA7oZg5gD3jJZbKc8rhY5bekQM9Wfq47EXC+kM0h3CseGoCQXelCLgkOC8+N6sRHXrNocj/wjUkbevmla/rsly3fk+uhucIRoxkDZ+x5dJcN44pUEInDuZABp4=
Received: from BYAPR18MB2535.namprd18.prod.outlook.com (2603:10b6:a03:137::17)
 by BYAPR18MB2423.namprd18.prod.outlook.com (2603:10b6:a03:132::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.17; Thu, 9 Apr
 2020 15:27:07 +0000
Received: from BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::65f8:9bfe:5fa5:1280]) by BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::65f8:9bfe:5fa5:1280%3]) with mapi id 15.20.2878.022; Thu, 9 Apr 2020
 15:27:07 +0000
From: Alex Belits <abelits@marvell.com>
To: "frederic@kernel.org" <frederic@kernel.org>, "rostedt@goodmis.org"
 <rostedt@goodmis.org>
Subject: [PATCH v3 11/13] task_isolation: ringbuffer: don't interrupt CPUs
 running isolated tasks on buffer resize
Thread-Topic: [PATCH v3 11/13] task_isolation: ringbuffer: don't interrupt
 CPUs running isolated tasks on buffer resize
Thread-Index: AQHWDoNUNKRaaRYWTk+1Q1LXrvxHOg==
Date: Thu, 9 Apr 2020 15:27:07 +0000
Message-ID: <8f4a0e780c7443d44d7af29fd29ed541ca506bad.camel@marvell.com>
References: <4473787e1b6bc3cc226067e8d122092a678b63de.camel@marvell.com>
 <aed12dd15ea2981bc9554cfa8b5e273c1342c756.camel@marvell.com>
 <07c25c246c55012981ec0296eee23e68c719333a.camel@marvell.com>
In-Reply-To: <07c25c246c55012981ec0296eee23e68c719333a.camel@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [173.228.7.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5b16547a-afd6-4c36-0692-08d7dc9a772d
x-ms-traffictypediagnostic: BYAPR18MB2423:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR18MB24233DCEFD0207293DFA6C4ABCC10@BYAPR18MB2423.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0368E78B5B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR18MB2535.namprd18.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(366004)(376002)(39860400002)(346002)(396003)(136003)(86362001)(26005)(186003)(5660300002)(316002)(2616005)(81166007)(36756003)(7416002)(71200400001)(2906002)(76116006)(6486002)(478600001)(6506007)(6512007)(66556008)(64756008)(66446008)(8676002)(81156014)(66476007)(8936002)(66946007)(54906003)(4326008)(110136005);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OyJOQlB2lAIYNGF/ofoKa2QH1PRjXAq/vrfgcvPpq6vhbWUT60ddktpgMADmlGhhB9ZgCRzWTfIiwQyt/H+S70cQvvhKylsOHYjevMaWXTjPOpGqKr12ROP0u8E65WKG+iFnlHg9qUEi1SsDEm20vSR1pYHFj1Wqp58CUVTJW/QHet3l1GAL3lQGVLyPbxwqFl/V1c0oKfnQPijEtjMlJs/IdSDBqRAPT4kw7poQ2LlHelQvEt44x8hNYU7AcALyKEHfT4tDKCrTmfMEq1wa5Cbe4SvhJWkLyWPnLN5aJYYEEq3741ZjnRH+NoY8P+8B6umMl0GvPavnWBcOJu3Kh39UHGq3XGZoe9ryBQTOIMS4Qen6W6YFEsDHaCSkTNwOSLwq8uyD0WrWBbvMY6lEzkkKsuuJs45aoKfPLV5Yy/y2QbYLBIiUd+B+XcnW3ON0
x-ms-exchange-antispam-messagedata: MIbUoW2IddncEajEN6GeWc6RN3IicNYtum/iOASTjlRuPhSu3j3yYKuETI4u0WCzEWDkfKjN7CIbTaYMxU96AxoMM2etUwO+CoyO3CW1+awZX7f3Mo1XEQBEyeZwbSY05zxBhiyeUqwkFe/66dxvXQ==
Content-ID: <50242532F44D2745B5D6A9FFCD5D8962@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b16547a-afd6-4c36-0692-08d7dc9a772d
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2020 15:27:07.6559 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9Jjm02+PxVACCzcuZO0yWAK6tKoXjCaSZ5j3VOPxs2Vsch40ht1swEPIDzWQH2lOcw9IaL2YxXTDFY130ZoGjg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR18MB2423
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-09_05:2020-04-07,
 2020-04-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_082748_829426_9B531BDD 
X-CRM114-Status: GOOD (  18.73  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "peterz@infradead.org" <peterz@infradead.org>,
 Prasun Kapoor <pkapoor@marvell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-api@vger.kernel.org" <linux-api@vger.kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "will@kernel.org" <will@kernel.org>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Yuri Norov <ynorov@marvell.com>

CPUs running isolated tasks are in userspace, so they don't have to
perform ring buffer updates immediately. If ring_buffer_resize()
schedules the update on those CPUs, isolation is broken. To prevent
that, updates for CPUs running isolated tasks are performed locally,
like for offline CPUs.

A race condition between this update and isolation breaking is avoided
at the cost of disabling per_cpu buffer writing for the time of update
when it coincides with isolation breaking.

Signed-off-by: Yuri Norov <ynorov@marvell.com>
[abelits@marvell.com: updated to prevent race with isolation breaking]
Signed-off-by: Alex Belits <abelits@marvell.com>
---
 kernel/trace/ring_buffer.c | 63 ++++++++++++++++++++++++++++++++++----
 1 file changed, 57 insertions(+), 6 deletions(-)

diff --git a/kernel/trace/ring_buffer.c b/kernel/trace/ring_buffer.c
index 61f0e92ace99..972f26fc3540 100644
--- a/kernel/trace/ring_buffer.c
+++ b/kernel/trace/ring_buffer.c
@@ -21,6 +21,7 @@
 #include <linux/delay.h>
 #include <linux/slab.h>
 #include <linux/init.h>
+#include <linux/isolation.h>
 #include <linux/hash.h>
 #include <linux/list.h>
 #include <linux/cpu.h>
@@ -1701,6 +1702,38 @@ static void update_pages_handler(struct work_struct *work)
 	complete(&cpu_buffer->update_done);
 }
 
+static bool update_if_isolated(struct ring_buffer_per_cpu *cpu_buffer,
+			       int cpu)
+{
+	bool rv = false;
+
+	smp_rmb();
+	if (task_isolation_on_cpu(cpu)) {
+		/*
+		 * CPU is running isolated task. Since it may lose
+		 * isolation and re-enter kernel simultaneously with
+		 * this update, disable recording until it's done.
+		 */
+		atomic_inc(&cpu_buffer->record_disabled);
+		/* Make sure, update is done, and isolation state is current */
+		smp_mb();
+		if (task_isolation_on_cpu(cpu)) {
+			/*
+			 * If CPU is still running isolated task, we
+			 * can be sure that breaking isolation will
+			 * happen while recording is disabled, and CPU
+			 * will not touch this buffer until the update
+			 * is done.
+			 */
+			rb_update_pages(cpu_buffer);
+			cpu_buffer->nr_pages_to_update = 0;
+			rv = true;
+		}
+		atomic_dec(&cpu_buffer->record_disabled);
+	}
+	return rv;
+}
+
 /**
  * ring_buffer_resize - resize the ring buffer
  * @buffer: the buffer to resize.
@@ -1784,13 +1817,22 @@ int ring_buffer_resize(struct trace_buffer *buffer, unsigned long size,
 			if (!cpu_buffer->nr_pages_to_update)
 				continue;
 
-			/* Can't run something on an offline CPU. */
+			/*
+			 * Can't run something on an offline CPU.
+			 *
+			 * CPUs running isolated tasks don't have to
+			 * update ring buffers until they exit
+			 * isolation because they are in
+			 * userspace. Use the procedure that prevents
+			 * race condition with isolation breaking.
+			 */
 			if (!cpu_online(cpu)) {
 				rb_update_pages(cpu_buffer);
 				cpu_buffer->nr_pages_to_update = 0;
 			} else {
-				schedule_work_on(cpu,
-						&cpu_buffer->update_pages_work);
+				if (!update_if_isolated(cpu_buffer, cpu))
+					schedule_work_on(cpu,
+					&cpu_buffer->update_pages_work);
 			}
 		}
 
@@ -1829,13 +1871,22 @@ int ring_buffer_resize(struct trace_buffer *buffer, unsigned long size,
 
 		get_online_cpus();
 
-		/* Can't run something on an offline CPU. */
+		/*
+		 * Can't run something on an offline CPU.
+		 *
+		 * CPUs running isolated tasks don't have to update
+		 * ring buffers until they exit isolation because they
+		 * are in userspace. Use the procedure that prevents
+		 * race condition with isolation breaking.
+		 */
 		if (!cpu_online(cpu_id))
 			rb_update_pages(cpu_buffer);
 		else {
-			schedule_work_on(cpu_id,
+			if (!update_if_isolated(cpu_buffer, cpu_id))
+				schedule_work_on(cpu_id,
 					 &cpu_buffer->update_pages_work);
-			wait_for_completion(&cpu_buffer->update_done);
+				wait_for_completion(&cpu_buffer->update_done);
+			}
 		}
 
 		cpu_buffer->nr_pages_to_update = 0;
-- 
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
