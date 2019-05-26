Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5AF2AA3E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 May 2019 16:30:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iE4WYMuFkpNuEsRdoM8tBufG5B/Fyt1duO7fzbptEpA=; b=GERsFO4s1T/F9d
	SNfXwmrvU/ybbHysXjq5FI/YQOK1y746VkgJzM9+xXQQaPvhI5l28IbtB82h5fQubnBYnJoVZtdkx
	GVfERtaTSI0zhQjedBMecdv5dlTbQBhj5BeLM6T5y4N7V9wH1QRf2+Sz/tEQ1gUXSCTf0xWQn6vgW
	SWFKy8fPbfNO92vZqAKY43v5QMVeUzN6VefR5oo73VbHL4Ep99apbYdudH8lU4gCYWc7Fj2fWoA+D
	v4VmFbmcJg2uvQpaxjc7FUrapPo1A+bgy0xvpTxehv2sFnzlgzVatNqPkpFNDaaF/V8asku8/ffsk
	pM778xtu9roOCuMAcQoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUuAI-0004OD-UC; Sun, 26 May 2019 14:30:22 +0000
Received: from mail-eopbgr770058.outbound.protection.outlook.com
 ([40.107.77.58] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUuA9-0004BR-GK
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 14:30:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cambiumnetworks.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zaWoGX/I5lXru0wCxtBjWhsuLL7kwCRWKX4CQrNvifY=;
 b=XVssLL0uw4YibDwYoF9NoiQ8NuO5lDjKRlelFpQ1PDY/e2lHZrdI2O+89mWdPW1kLRHcdi3EFzkIiO6wqZwRX7lLHrJMXeTQjNu1BmvJf5iqe7dOSiuySCCD8Qv4tSMZ5j1nHqrBJwivdVNAy1V3siDf2f9FGb4aY/dDAtKpUpw=
Received: from BYAPR06MB4583.namprd06.prod.outlook.com (52.135.233.217) by
 BYAPR06MB5654.namprd06.prod.outlook.com (20.178.196.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.16; Sun, 26 May 2019 14:30:04 +0000
Received: from BYAPR06MB4583.namprd06.prod.outlook.com
 ([fe80::34cc:f9e8:7adc:7bbc]) by BYAPR06MB4583.namprd06.prod.outlook.com
 ([fe80::34cc:f9e8:7adc:7bbc%7]) with mapi id 15.20.1922.021; Sun, 26 May 2019
 14:30:04 +0000
From: Andrii Veres <andrii.veres@cambiumnetworks.com>
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: [QUESTION] arm: perf_events: HW breakpoint continually triggers
 handler callback
Thread-Topic: [QUESTION] arm: perf_events: HW breakpoint continually triggers
 handler callback
Thread-Index: AQHVE89dDBFh3NTC90ir7dYdpwkbKA==
Date: Sun, 26 May 2019 14:30:04 +0000
Message-ID: <BYAPR06MB45830BDEC9F8FA11A4D95E43841C0@BYAPR06MB4583.namprd06.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=andrii.veres@cambiumnetworks.com; 
x-originating-ip: [212.90.61.157]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8eb35004-9d70-45d4-e910-08d6e1e6a521
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR06MB5654; 
x-ms-traffictypediagnostic: BYAPR06MB5654:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BYAPR06MB565425DC910EFCD6DD3695EE841C0@BYAPR06MB5654.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2089;
x-forefront-prvs: 0049B3F387
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39840400004)(366004)(346002)(376002)(396003)(136003)(199004)(189003)(53936002)(478600001)(55016002)(7736002)(71200400001)(71190400001)(8936002)(76116006)(316002)(6916009)(81166006)(81156014)(8676002)(14454004)(2501003)(102836004)(6506007)(55236004)(6306002)(91956017)(25786009)(33656002)(5640700003)(52536014)(305945005)(14444005)(99286004)(44832011)(86362001)(186003)(256004)(9686003)(6116002)(476003)(2351001)(66066001)(7696005)(68736007)(74316002)(66446008)(66476007)(66946007)(26005)(64756008)(66556008)(73956011)(6436002)(3846002)(486006)(2906002)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR06MB5654;
 H:BYAPR06MB4583.namprd06.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: cambiumnetworks.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: zoIo/l5YWg9kSl4q4PRb8uMOz/zGcgmyGYcPNzzPzx4qGAY6CgAI95DjESXPaNgBj3iAzaz53e4sY/LRBcWN7ZEvtiTQu3b5T2ZmymlOaAtLFh5rossyIGTNngjoBlNzJSGX3SEkaaPoSvaBImDBy5NJLwFDsh73cdwfT8sZvEToXhCVorhqYEMN0VZT7ty+NkjjUaXZ8T4dB11Swb8ZkTwQNrM26kxyfcR5nZROQahjGYPzqDSuhx47tSoS1zyzgSh4YY3XLATknf9VxwOZ1ddBiTgzCNgjnDSTQ5vwn6niPnVm7k1GfAN98g0qYpfSixBzIJWfno/CHc0PjMukLb0wZpf0c1qdyDH58TNhjLFwCfxJRWABUtony4qA3uQerhpmMfF9T42jGSkbWWdW1IeiNGggU9lveEZNn4j8IQg=
MIME-Version: 1.0
X-OriginatorOrg: cambiumnetworks.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8eb35004-9d70-45d4-e910-08d6e1e6a521
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2019 14:30:04.5336 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0e263e36-3409-4622-8ac8-18d993e76eb6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ave200@cambiumnetworks.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR06MB5654
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_073013_613701_1BA2A2C2 
X-CRM114-Status: UNSURE (   6.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.58 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello.

I observed difference in HW breakpoint, behaviour (CPU watch registers)
for x86_64 and ARM architectures:

ARM (QUEMU): HW breakpoint handler continuing calls in infinite loop
after first access to monitored memory after HW breakpoint registartion.

x86_64 (VirtualBox): HW breakpoint handler calls once each time, when
required access to monitored memory, till HW breakpoint unregistration.

Verivied in: v5.0

Example of usage: /samples/hw_breakpoint/data_breakpoint.c

NOTE: according to some info, described in: 
(https://stackoverflow.com/questions/28280813/register-wide-hw-breakpoint-continually-triggers-handler-callback)
ARM core have specific instruction execution, so as workaround proposed
to do HW breakpoint unregistration in HW breakpoint handler for preventing
infinite loop of calls.

QUESTION: so workaround is the final solution for comfortable usage of
HW breakpoint, for example in debug cases when need to track
access for memory from undefined source? But between HW breakpoint
unregistration and re-registration possibly access to memory can`t
be tracked? Or NOTE is not fully correct, and possible there is
some way, that makes possible change behaviour of ARM HW breakpoint
as well, as for x86_64 (i.e. call HW breakpoint handler once each
time, when required access ti monitored memory)?


Best regards, Andrii Veres.

APPENDIX A: EXAMPLE, THAT I USED FOR TESTS ON x86_64 AND ARM

/*
 * hello_watchpoint.c - Kernel module, that register watchpoint
 * on test val (test_val) and trigger it usage by postincrement usage
 * BUG:  infinite loop of calls of sample_hbp_handler() can be fixed only by call
 *       unregister_wide_hw_breakpoint() inside it.
 */

#include <linux/init.h>
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/perf_event.h>
#include <linux/hw_breakpoint.h>

MODULE_LICENSE    ("GPL");
MODULE_DESCRIPTION("Hello Watchpoint, simple module for work with CPU watch register");

/* Module parameters */

int test_val = 0;
struct perf_event * __percpu *sample_hbp;

static void sample_hbp_handler(struct perf_event *bp, struct perf_sample_data *data, struct pt_regs *regs)
{
    printk("WATCHPOINT value is changed\n");
    //dump_stack();
    printk("WATCHPOINT Dump stack from sample_hbp_handler\n");
    //unregister_wide_hw_breakpoint(sample_hbp); /* CAN BREAK INFINITE LOOP */
}

static int __init hello_init(void)
{
    struct perf_event_attr attr;

    hw_breakpoint_init(&attr);
    attr.bp_addr = (unsigned long)((void *)&(test_val));
    attr.bp_len  = HW_BREAKPOINT_LEN_4;
    attr.bp_type = HW_BREAKPOINT_RW;

    sample_hbp = register_wide_hw_breakpoint(&attr, sample_hbp_handler, NULL);
    if (IS_ERR((void __force *)sample_hbp)) {
        printk("WATCHPOINT: %s %d failed to register HW BREAKPOINT \n",__func__,__LINE__);
    } else {
        printk("WATCHPOINT: %s %d successfully registered HW BREAKPOINT \n",__func__,__LINE__);
    }

    test_val++;
    return 0;
}

static void __exit hello_exit(void)
{
    printk("WATCHPOINT: module de-initialization success");
    
    unregister_wide_hw_breakpoint(sample_hbp);
}

module_init(hello_init);
module_exit(hello_exit);


APPENDIX B: x86_64 LOG

[ 1195.324243] hello_watchpoint: loading out-of-tree module taints kernel.
[ 1195.324315] hello_watchpoint: module verification failed: signature and/or required key missing - tainting kernel
[ 1195.325593] WATCHPOINT: hello_init 44 successfully registered HW BREAKPOINT 
[ 1195.325603] WATCHPOINT value is changed
[ 1195.325604] WATCHPOINT Dump stack from sample_hbp_handler
[ 1222.021365] WATCHPOINT: module de-initialization success

APPENDIX C: ARM LOG

[   96.212220] hello_watchpoint: loading out-of-tree module taints kernel.
[   96.212321] hello_watchpoint: module verification failed: signature and/or required key missing - tainting kernel
[   96.212425] WATCHPOINT: hello_init 44 successfully registered HW BREAKPOINT 
[   96.212536] WATCHPOINT value is changed
[   96.212688] WATCHPOINT Dump stack from sample_hbp_handler
[   96.212711] WATCHPOINT: module de-initialization success
[   96.212890] WATCHPOINT: hello_init 44 successfully registered HW BREAKPOINT 
[   96.213113] WATCHPOINT value is changed
[   96.212320] WATCHPOINT Dump stack from sample_hbp_handler
[   96.213601] WATCHPOINT value is changed
[   96.213884] WATCHPOINT Dump stack from sample_hbp_handler
[   96.214326] WATCHPOINT value is changed
[   96.214618] WATCHPOINT Dump stack from sample_hbp_handler
[   96.215048] WATCHPOINT value is changed
[   96.215335] WATCHPOINT Dump stack from sample_hbp_handler
[   96.215756] WATCHPOINT value is changed
[   96.216031] WATCHPOINT Dump stack from sample_hbp_handler
[   96.216419] WATCHPOINT value is changed
[   96.216691] WATCHPOINT Dump stack from sample_hbp_handler
[   96.217413] WATCHPOINT value is changed
[   96.217743] WATCHPOINT Dump stack from sample_hbp_handler
[   96.218217] WATCHPOINT value is changed
[   96.218524] WATCHPOINT Dump stack from sample_hbp_handler
[   96.218967] WATCHPOINT value is changed
[   96.219255] WATCHPOINT Dump stack from sample_hbp_handler
[   96.219673] WATCHPOINT value is changed
[   96.219947] WATCHPOINT Dump stack from sample_hbp_handler
[   96.220360] WATCHPOINT value is changed
[   96.220639] WATCHPOINT Dump stack from sample_hbp_handler
[   96.221028] WATCHPOINT value is changed
[   96.221296] WATCHPOINT Dump stack from sample_hbp_handler
[   96.221688] WATCHPOINT value is changed
[   96.221977] WATCHPOINT Dump stack from sample_hbp_handler
[   96.222355] WATCHPOINT value is changed
[   96.222660] WATCHPOINT Dump stack from sample_hbp_handler
QEMU: Terminated
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
