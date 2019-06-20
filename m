Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 788AB4C761
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 08:18:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8/7dMlcV8xvuedqKS0wrqfwuuH7pvnjKG2UJ4Gx52j4=; b=UkgE7XYbkQ82b2
	AsQP/KGfu46RJKoOBa2oHAWafx1vnjBq1PUM/GG+CYQAL+d5e+METFSlVNFngFSyHpRTbqmYNu5f6
	AZmbKukYbEtcIFaf30o5DDG24VmkbI7JClGoZQ66doi9lT2kBCAmxwq7Sv0hZlbmT39RtHsZXTpWk
	hlZs5QpxaWZABY29eA31eGnUZUMV8nQeAKzoJN2JyF2kA35PgdnhBW+AS20x6Y+wHHz4ogQhf+AQg
	dS+yCfpPeiS1NWGUakev+odFhRorhnAKTx/1gIcfduigslJ2Hffp/6PQUFgOQ33CuInM7wH6RTEYU
	Db6tfX7U8CIzDrsLLe5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdqPF-0006el-1o; Thu, 20 Jun 2019 06:18:45 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdqOv-0006e7-Mu
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 06:18:28 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5K6Ae80010769; Wed, 19 Jun 2019 23:17:47 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=DNDE2b0eL93akCFyuUaWONlJ7EeQuE9aof39+9NsxYI=;
 b=Vyv6vwGvTNuP/5WWJaXtH7cvnKt1j3aLBtSQXblnG09fA5kRdvLAL8tt/zVeMPxBjrS8
 G1nI/jClqnrP5Iq1cqhrNjJqbvtECg2M3Npb32qKE33nw260fVjsMLx3wi9HyPQ0pgId
 H2WJBSoryztpdmI54ycBMPKF/MG9Wkuq4Q6hmhPi06BpHghPnTSAqCnHTSyOL/9PKzu1
 3pKRm3iJj4YuKB0N5loXSvHocyxGzA9KF/JUNhTD5s/UuLBmcjRQ6zPYVM5QU0eW+kYB
 yEeEDyGqA1XGALjhOhTm9BGFR6NvkGXwtcU5dmuKbkpOm+1+FnCEVjIPNSuDUZD1BKjj Ag== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0b-0016f401.pphosted.com with ESMTP id 2t7vrk1hv8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Wed, 19 Jun 2019 23:17:47 -0700
Received: from SC-EXCH01.marvell.com (10.93.176.81) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Wed, 19 Jun
 2019 23:17:45 -0700
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (104.47.48.59) by
 SC-EXCH01.marvell.com (10.93.176.81) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Wed, 19 Jun 2019 23:17:45 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DNDE2b0eL93akCFyuUaWONlJ7EeQuE9aof39+9NsxYI=;
 b=d5xLmmZS8roLWQ6MT7xJ963ZCXYGrUDDT626Vy5ukYIzg936GIQnule5zOjlpSNEPWTAKKdYF/DnjxK2ZpOYzAV3nbkLOLBeUZ617xr/Yx6eTybwad5aQvXEexcMp/THfdPIfylwPhhXvPv8QmiWCDT/llZInWdiLjS0YeuRxHo=
Received: from MN2PR18MB3055.namprd18.prod.outlook.com (20.178.255.209) by
 MN2PR18MB2592.namprd18.prod.outlook.com (20.179.83.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.12; Thu, 20 Jun 2019 06:17:43 +0000
Received: from MN2PR18MB3055.namprd18.prod.outlook.com
 ([fe80::1983:66df:6251:d016]) by MN2PR18MB3055.namprd18.prod.outlook.com
 ([fe80::1983:66df:6251:d016%7]) with mapi id 15.20.1987.014; Thu, 20 Jun 2019
 06:17:43 +0000
From: Shijith Thotton <sthotton@marvell.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-mips@vger.kernel.org"
 <linux-mips@vger.kernel.org>, "linux-kselftest@vger.kernel.org"
 <linux-kselftest@vger.kernel.org>
Subject: Re: [PATCH v6 00/19] Unify vDSOs across more architectures
Thread-Topic: [PATCH v6 00/19] Unify vDSOs across more architectures
Thread-Index: AQHVFvIxG6EkciUt/0et/EJgOo0LkKakMdAA
Date: Thu, 20 Jun 2019 06:17:42 +0000
Message-ID: <7baf295a-0cc6-1a0a-7e4e-ed33598a2242@marvell.com>
References: <20190530141531.43462-1-vincenzo.frascino@arm.com>
In-Reply-To: <20190530141531.43462-1-vincenzo.frascino@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR01CA0057.prod.exchangelabs.com (2603:10b6:a03:94::34)
 To MN2PR18MB3055.namprd18.prod.outlook.com
 (2603:10b6:208:ff::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: db6d028e-c3d0-419f-300e-08d6f54700d0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR18MB2592; 
x-ms-traffictypediagnostic: MN2PR18MB2592:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <MN2PR18MB2592685E084EC53622AA2B3FD9E40@MN2PR18MB2592.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 0074BBE012
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(396003)(346002)(39850400004)(366004)(199004)(189003)(54906003)(76176011)(86362001)(476003)(316002)(186003)(6306002)(73956011)(66476007)(25786009)(14444005)(966005)(31686004)(110136005)(26005)(6246003)(66066001)(66946007)(8676002)(8936002)(66556008)(68736007)(71200400001)(256004)(81156014)(81166006)(30864003)(6486002)(71190400001)(4326008)(5660300002)(36756003)(7736002)(6506007)(53936002)(486006)(478600001)(6436002)(6512007)(2616005)(229853002)(446003)(53946003)(2501003)(31696002)(66446008)(102836004)(2906002)(99286004)(305945005)(11346002)(6116002)(52116002)(386003)(14454004)(53546011)(3846002)(64756008)(7416002)(2201001)(579004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR18MB2592;
 H:MN2PR18MB3055.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: bTyA51ftVZ/TX4igmAaQTV76MvW6CgRk5ASq6PsDXWDmKEkz3L6PdKfAVB48YXXUWOxrVpds98SX7Al2JnWB+CjYp9fmBgJUvWjRNfrNPzND0V141XwWkJO/jAoKIXWCEgKpjZF7yFfCBEX4h3HRj4OIwacY9DQbzBkZzvfeYzK5zvE3lgzIOMxuLwLr/tH+/ltZxEpNCZauWTbXgXiT8EEdyVLZBxb/31IwiONspqDtjC7G7DKaF7UnV8QxsSURdiPAO21+KiXJR6AatdHF2prnrR1UAKq6K6Qxuuela1Lb6FSYkoc8y6Rw+TXx9vXupDG3zaHU/fuj8QiYE+8Lxl6Fxnmi9B6yjqY4XVcOtTFOmnwj5x4T03FcVVpC/RH5CL1yOipf9qzmziQ27RRL+0k3PHeITJnDrVrFvJkaHqU=
Content-ID: <4AC7BE9EF7650647B1041D81568A14AC@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: db6d028e-c3d0-419f-300e-08d6f54700d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2019 06:17:42.9308 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sthotton@marvell.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR18MB2592
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-20_05:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_231825_979282_93A96DD1 
X-CRM114-Status: GOOD (  31.90  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Shuah Khan <shuah@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Huw Davies <huw@codeweavers.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Russell King <linux@armlinux.org.uk>, Ralf Baechle <ralf@linux-mips.org>,
 Mark Salyzyn <salyzyn@android.com>, Paul Burton <paul.burton@mips.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, Thomas
 Gleixner <tglx@linutronix.de>, Peter Collingbourne <pcc@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vincenzo,

On 5/30/19 7:15 AM, Vincenzo Frascino wrote:
> vDSO (virtual dynamic shared object) is a mechanism that the Linux
> kernel provides as an alternative to system calls to reduce where
> possible the costs in terms of cycles.
> This is possible because certain syscalls like gettimeofday() do
> not write any data and return one or more values that are stored
> in the kernel, which makes relatively safe calling them directly
> as a library function.
> 
> Even if the mechanism is pretty much standard, every architecture
> in the last few years ended up implementing their own vDSO library
> in the architectural code.
> 
> The purpose of this patch-set is to identify the commonalities in
> between the architectures and try to consolidate the common code
> paths, starting with gettimeofday().
> 
> This implementation contains the following design choices:
>   * Every architecture defines the arch specific code in an header in
>     "asm/vdso/".
>   * The generic implementation includes the arch specific one and lives
>     in "lib/vdso".
>   * The arch specific code for gettimeofday lives in
>     "<arch path>/vdso/gettimeofday.c" and includes the generic code only.
>   * The generic implementation of update_vsyscall and update_vsyscall_tz
>     lives in kernel/vdso and provide the bindings that can be implemented
>     by each architecture.
>   * Each architecture provides its implementation of the bindings in
>     "asm/vdso/vsyscall.h".
>   * This approach allows to consolidate the common code in a single place
>     with the benefit of avoiding code duplication.
> 
> This implementation contains the portings to the common library for: arm64,
> compat mode for arm64, arm, mips, x86_64, x32, compat mode for x86_64 and
> i386.
> 
> The mips porting has been tested on qemu for mips32el. A configuration to
> repeat the tests can be found at [4].
> 
> The x86_64 porting has been tested on an Intel Xeon 5120T based machine
> running Ubuntu 18.04 and using the Ubuntu provided defconfig.
> 
> The i386 porting has been tested on qemu using the i386_defconfig
> configuration.
> 
> Last but not least from this porting arm64, compat arm64, arm and mips gain
> the support for:
>   * CLOCK_BOOTTIME that can be useful in certain scenarios since it keeps
>     track of the time during sleep as well.
>   * CLOCK_TAI that is like CLOCK_REALTIME, but uses the International
>     Atomic Time (TAI) reference instead of UTC to avoid jumping on leap
>     second updates.
> for both clock_gettime and clock_getres.
> 
> The porting has been validated using the vdsotest test-suite [1] extended
> to cover all the clock ids [2].
> 
> A new test has been added to the linux kselftest in order to validate the
> newly added library.
> 
> The porting has been benchmarked and the performance results are
> provided as part of this cover letter.
> 
> To simplify the testing, a copy of the patchset on top of a recent linux
> tree can be found at [3] and [4].
> 
> [1] https://github.com/nathanlynch/vdsotest
> [2] https://github.com/fvincenzo/vdsotest
> [3] git://linux-arm.org/linux-vf.git vdso/v6
> [4] git://linux-arm.org/linux-vf.git vdso-mips/v6
> 
> Changes:
> --------
> v6:
>    - Rebased on 5.2-rc2.
>    - Added performance numbers.
>    - Removed vdso_types.h.
>    - Unified update_vsyscall and update_vsyscall_tz.
>    - Reworked the kselftest included in this patchset.
>    - Addressed review comments.
> v5:
>    - Rebased on 5.0-rc7.
>    - Added x86_64, compat mode for x86_64 and i386 portings.
>    - Extended vDSO kselftest.
>    - Addressed review comments.
> v4:
>    - Rebased on 5.0-rc2.
>    - Addressed review comments.
>    - Disabled compat vdso on arm64 when the kernel is compiled with
>      clang.
> v3:
>    - Ported the latest fixes and optimizations done on the x86
>      architecture to the generic library.
>    - Addressed review comments.
>    - Improved the documentation of the interfaces.
>    - Changed the HAVE_ARCH_TIMER config option to a more generic
>      HAVE_HW_COUNTER.
> v2:
>    - Added -ffixed-x18 to arm64
>    - Repleced occurrences of timeval and timespec
>    - Modified datapage.h to be compliant with y2038 on all the architectures
>    - Removed __u_vdso type
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: Ralf Baechle <ralf@linux-mips.org>
> Cc: Paul Burton <paul.burton@mips.com>
> Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Mark Salyzyn <salyzyn@android.com>
> Cc: Peter Collingbourne <pcc@google.com>
> Cc: Shuah Khan <shuah@kernel.org>
> Cc: Dmitry Safonov <0x7f454c46@gmail.com>
> Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> Cc: Huw Davies <huw@codeweavers.com>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> 
> Performance Numbers: Linux 5.2.0-rc2 - Xeon Gold 5120T
> ======================================================
> 
> Unified vDSO:
> -------------
> 
> clock-gettime-monotonic: syscall: 342 nsec/call
> clock-gettime-monotonic:    libc: 25 nsec/call
> clock-gettime-monotonic:    vdso: 24 nsec/call
> clock-getres-monotonic: syscall: 296 nsec/call
> clock-getres-monotonic:    libc: 296 nsec/call
> clock-getres-monotonic:    vdso: 3 nsec/call
> clock-gettime-monotonic-coarse: syscall: 294 nsec/call
> clock-gettime-monotonic-coarse:    libc: 5 nsec/call
> clock-gettime-monotonic-coarse:    vdso: 5 nsec/call
> clock-getres-monotonic-coarse: syscall: 295 nsec/call
> clock-getres-monotonic-coarse:    libc: 292 nsec/call
> clock-getres-monotonic-coarse:    vdso: 5 nsec/call
> clock-gettime-monotonic-raw: syscall: 343 nsec/call
> clock-gettime-monotonic-raw:    libc: 25 nsec/call
> clock-gettime-monotonic-raw:    vdso: 23 nsec/call
> clock-getres-monotonic-raw: syscall: 290 nsec/call
> clock-getres-monotonic-raw:    libc: 290 nsec/call
> clock-getres-monotonic-raw:    vdso: 4 nsec/call
> clock-gettime-tai: syscall: 332 nsec/call
> clock-gettime-tai:    libc: 24 nsec/call
> clock-gettime-tai:    vdso: 23 nsec/call
> clock-getres-tai: syscall: 288 nsec/call
> clock-getres-tai:    libc: 288 nsec/call
> clock-getres-tai:    vdso: 3 nsec/call
> clock-gettime-boottime: syscall: 342 nsec/call
> clock-gettime-boottime:    libc: 24 nsec/call
> clock-gettime-boottime:    vdso: 23 nsec/call
> clock-getres-boottime: syscall: 284 nsec/call
> clock-getres-boottime:    libc: 291 nsec/call
> clock-getres-boottime:    vdso: 3 nsec/call
> clock-gettime-realtime: syscall: 337 nsec/call
> clock-gettime-realtime:    libc: 24 nsec/call
> clock-gettime-realtime:    vdso: 23 nsec/call
> clock-getres-realtime: syscall: 287 nsec/call
> clock-getres-realtime:    libc: 284 nsec/call
> clock-getres-realtime:    vdso: 3 nsec/call
> clock-gettime-realtime-coarse: syscall: 307 nsec/call
> clock-gettime-realtime-coarse:    libc: 4 nsec/call
> clock-gettime-realtime-coarse:    vdso: 4 nsec/call
> clock-getres-realtime-coarse: syscall: 294 nsec/call
> clock-getres-realtime-coarse:    libc: 291 nsec/call
> clock-getres-realtime-coarse:    vdso: 4 nsec/call
> getcpu: syscall: 246 nsec/call
> getcpu:    libc: 14 nsec/call
> getcpu:    vdso: 11 nsec/call
> gettimeofday: syscall: 293 nsec/call
> gettimeofday:    libc: 26 nsec/call
> gettimeofday:    vdso: 25 nsec/call
> 
> Stock Kernel:
> -------------
> 
> clock-gettime-monotonic: syscall: 338 nsec/call
> clock-gettime-monotonic:    libc: 24 nsec/call
> clock-gettime-monotonic:    vdso: 23 nsec/call
> clock-getres-monotonic: syscall: 291 nsec/call
> clock-getres-monotonic:    libc: 304 nsec/call
> clock-getres-monotonic:    vdso: not tested
> Note: vDSO version of clock_getres not found
> clock-gettime-monotonic-coarse: syscall: 297 nsec/call
> clock-gettime-monotonic-coarse:    libc: 5 nsec/call
> clock-gettime-monotonic-coarse:    vdso: 4 nsec/call
> clock-getres-monotonic-coarse: syscall: 281 nsec/call
> clock-getres-monotonic-coarse:    libc: 286 nsec/call
> clock-getres-monotonic-coarse:    vdso: not tested
> Note: vDSO version of clock_getres not found
> clock-gettime-monotonic-raw: syscall: 336 nsec/call
> clock-gettime-monotonic-raw:    libc: 340 nsec/call
> clock-gettime-monotonic-raw:    vdso: 346 nsec/call
> clock-getres-monotonic-raw: syscall: 297 nsec/call
> clock-getres-monotonic-raw:    libc: 301 nsec/call
> clock-getres-monotonic-raw:    vdso: not tested
> Note: vDSO version of clock_getres not found
> clock-gettime-tai: syscall: 351 nsec/call
> clock-gettime-tai:    libc: 24 nsec/call
> clock-gettime-tai:    vdso: 23 nsec/call
> clock-getres-tai: syscall: 298 nsec/call
> clock-getres-tai:    libc: 290 nsec/call
> clock-getres-tai:    vdso: not tested
> Note: vDSO version of clock_getres not found
> clock-gettime-boottime: syscall: 342 nsec/call
> clock-gettime-boottime:    libc: 347 nsec/call
> clock-gettime-boottime:    vdso: 355 nsec/call
> clock-getres-boottime: syscall: 296 nsec/call
> clock-getres-boottime:    libc: 295 nsec/call
> clock-getres-boottime:    vdso: not tested
> Note: vDSO version of clock_getres not found
> clock-gettime-realtime: syscall: 346 nsec/call
> clock-gettime-realtime:    libc: 24 nsec/call
> clock-gettime-realtime:    vdso: 22 nsec/call
> clock-getres-realtime: syscall: 295 nsec/call
> clock-getres-realtime:    libc: 291 nsec/call
> clock-getres-realtime:    vdso: not tested
> Note: vDSO version of clock_getres not found
> clock-gettime-realtime-coarse: syscall: 292 nsec/call
> clock-gettime-realtime-coarse:    libc: 5 nsec/call
> clock-gettime-realtime-coarse:    vdso: 4 nsec/call
> clock-getres-realtime-coarse: syscall: 300 nsec/call
> clock-getres-realtime-coarse:    libc: 301 nsec/call
> clock-getres-realtime-coarse:    vdso: not tested
> Note: vDSO version of clock_getres not found
> getcpu: syscall: 252 nsec/call
> getcpu:    libc: 14 nsec/call
> getcpu:    vdso: 11 nsec/call
> gettimeofday: syscall: 293 nsec/call
> gettimeofday:    libc: 24 nsec/call
> gettimeofday:    vdso: 25 nsec/call
> 
> 
> Peter Collingbourne (1):
>    arm64: Build vDSO with -ffixed-x18
> 
> Vincenzo Frascino (18):
>    kernel: Standardize vdso_datapage
>    kernel: Define gettimeofday vdso common code
>    kernel: Unify update_vsyscall implementation
>    arm64: Substitute gettimeofday with C implementation
>    arm64: compat: Add missing syscall numbers
>    arm64: compat: Expose signal related structures
>    arm64: compat: Generate asm offsets for signals
>    lib: vdso: Add compat support
>    arm64: compat: Add vDSO
>    arm64: Refactor vDSO code
>    arm64: compat: vDSO setup for compat layer
>    arm64: elf: vDSO code page discovery
>    arm64: compat: Get sigreturn trampolines from vDSO
>    arm64: Add vDSO compat support
>    arm: Add support for generic vDSO
>    mips: Add support for generic vDSO
>    x86: Add support for generic vDSO
>    kselftest: Extend vDSO selftest
> 
>   arch/arm/Kconfig                              |   3 +
>   arch/arm/include/asm/vdso/gettimeofday.h      |  96 +++++
>   arch/arm/include/asm/vdso/vsyscall.h          |  71 ++++
>   arch/arm/include/asm/vdso_datapage.h          |  29 +-
>   arch/arm/kernel/vdso.c                        |  87 +----
>   arch/arm/vdso/Makefile                        |  13 +-
>   arch/arm/vdso/note.c                          |  15 +
>   arch/arm/vdso/vdso.lds.S                      |   2 +
>   arch/arm/vdso/vgettimeofday.c                 | 268 +------------
>   arch/arm64/Kconfig                            |   3 +
>   arch/arm64/Makefile                           |  23 +-
>   arch/arm64/include/asm/elf.h                  |  14 +
>   arch/arm64/include/asm/signal32.h             |  46 +++
>   arch/arm64/include/asm/unistd.h               |   5 +
>   arch/arm64/include/asm/vdso.h                 |   3 +
>   arch/arm64/include/asm/vdso/compat_barrier.h  |  51 +++
>   .../include/asm/vdso/compat_gettimeofday.h    | 108 ++++++
>   arch/arm64/include/asm/vdso/gettimeofday.h    |  84 +++++
>   arch/arm64/include/asm/vdso/vsyscall.h        |  53 +++
>   arch/arm64/include/asm/vdso_datapage.h        |  48 ---
>   arch/arm64/kernel/Makefile                    |   6 +-
>   arch/arm64/kernel/asm-offsets.c               |  39 +-
>   arch/arm64/kernel/signal32.c                  |  72 ++--
>   arch/arm64/kernel/vdso.c                      | 356 ++++++++++++------
>   arch/arm64/kernel/vdso/Makefile               |  34 +-
>   arch/arm64/kernel/vdso/gettimeofday.S         | 334 ----------------
>   arch/arm64/kernel/vdso/vgettimeofday.c        |  28 ++
>   arch/arm64/kernel/vdso32/.gitignore           |   2 +
>   arch/arm64/kernel/vdso32/Makefile             | 184 +++++++++
>   arch/arm64/kernel/vdso32/note.c               |  15 +
>   arch/arm64/kernel/vdso32/sigreturn.S          |  62 +++
>   arch/arm64/kernel/vdso32/vdso.S               |  19 +
>   arch/arm64/kernel/vdso32/vdso.lds.S           |  82 ++++
>   arch/arm64/kernel/vdso32/vgettimeofday.c      |  59 +++
>   arch/mips/Kconfig                             |   2 +
>   arch/mips/include/asm/vdso.h                  |  78 +---
>   arch/mips/include/asm/vdso/gettimeofday.h     | 175 +++++++++
>   arch/mips/{ => include/asm}/vdso/vdso.h       |   6 +-
>   arch/mips/include/asm/vdso/vsyscall.h         |  43 +++
>   arch/mips/kernel/vdso.c                       |  37 +-
>   arch/mips/vdso/Makefile                       |  25 +-
>   arch/mips/vdso/elf.S                          |   2 +-
>   arch/mips/vdso/gettimeofday.c                 | 273 --------------
>   arch/mips/vdso/sigreturn.S                    |   2 +-
>   arch/mips/vdso/vdso.lds.S                     |   4 +
>   arch/mips/vdso/vgettimeofday.c                |  57 +++
>   arch/x86/Kconfig                              |   3 +
>   arch/x86/entry/vdso/Makefile                  |   9 +
>   arch/x86/entry/vdso/vclock_gettime.c          | 251 +++---------
>   arch/x86/entry/vdso/vdso.lds.S                |   2 +
>   arch/x86/entry/vdso/vdso32/vdso32.lds.S       |   2 +
>   arch/x86/entry/vdso/vdsox32.lds.S             |   1 +
>   arch/x86/entry/vsyscall/Makefile              |   2 -
>   arch/x86/entry/vsyscall/vsyscall_gtod.c       |  83 ----
>   arch/x86/include/asm/mshyperv-tsc.h           |  76 ++++
>   arch/x86/include/asm/mshyperv.h               |  70 +---
>   arch/x86/include/asm/pvclock.h                |   2 +-
>   arch/x86/include/asm/vdso/gettimeofday.h      | 203 ++++++++++
>   arch/x86/include/asm/vdso/vsyscall.h          |  44 +++
>   arch/x86/include/asm/vgtod.h                  |  75 +---
>   arch/x86/include/asm/vvar.h                   |   7 +-
>   arch/x86/kernel/pvclock.c                     |   1 +
>   include/asm-generic/vdso/vsyscall.h           |  56 +++
>   include/linux/hrtimer.h                       |  15 +-
>   include/linux/hrtimer_defs.h                  |  25 ++
>   include/linux/timekeeper_internal.h           |   9 +
>   include/vdso/datapage.h                       |  91 +++++
>   include/vdso/helpers.h                        |  56 +++
>   include/vdso/vsyscall.h                       |  11 +
>   kernel/Makefile                               |   1 +
>   kernel/vdso/Makefile                          |   2 +
>   kernel/vdso/vsyscall.c                        | 139 +++++++
>   lib/Kconfig                                   |   5 +
>   lib/vdso/Kconfig                              |  36 ++
>   lib/vdso/Makefile                             |  22 ++
>   lib/vdso/gettimeofday.c                       | 229 +++++++++++
>   tools/testing/selftests/vDSO/Makefile         |   2 +
>   tools/testing/selftests/vDSO/vdso_full_test.c | 261 +++++++++++++
>   78 files changed, 3042 insertions(+), 1767 deletions(-)
>   create mode 100644 arch/arm/include/asm/vdso/gettimeofday.h
>   create mode 100644 arch/arm/include/asm/vdso/vsyscall.h
>   create mode 100644 arch/arm/vdso/note.c
>   create mode 100644 arch/arm64/include/asm/vdso/compat_barrier.h
>   create mode 100644 arch/arm64/include/asm/vdso/compat_gettimeofday.h
>   create mode 100644 arch/arm64/include/asm/vdso/gettimeofday.h
>   create mode 100644 arch/arm64/include/asm/vdso/vsyscall.h
>   delete mode 100644 arch/arm64/include/asm/vdso_datapage.h
>   delete mode 100644 arch/arm64/kernel/vdso/gettimeofday.S
>   create mode 100644 arch/arm64/kernel/vdso/vgettimeofday.c
>   create mode 100644 arch/arm64/kernel/vdso32/.gitignore
>   create mode 100644 arch/arm64/kernel/vdso32/Makefile
>   create mode 100644 arch/arm64/kernel/vdso32/note.c
>   create mode 100644 arch/arm64/kernel/vdso32/sigreturn.S
>   create mode 100644 arch/arm64/kernel/vdso32/vdso.S
>   create mode 100644 arch/arm64/kernel/vdso32/vdso.lds.S
>   create mode 100644 arch/arm64/kernel/vdso32/vgettimeofday.c
>   create mode 100644 arch/mips/include/asm/vdso/gettimeofday.h
>   rename arch/mips/{ => include/asm}/vdso/vdso.h (90%)
>   create mode 100644 arch/mips/include/asm/vdso/vsyscall.h
>   delete mode 100644 arch/mips/vdso/gettimeofday.c
>   create mode 100644 arch/mips/vdso/vgettimeofday.c
>   delete mode 100644 arch/x86/entry/vsyscall/vsyscall_gtod.c
>   create mode 100644 arch/x86/include/asm/mshyperv-tsc.h
>   create mode 100644 arch/x86/include/asm/vdso/gettimeofday.h
>   create mode 100644 arch/x86/include/asm/vdso/vsyscall.h
>   create mode 100644 include/asm-generic/vdso/vsyscall.h
>   create mode 100644 include/linux/hrtimer_defs.h
>   create mode 100644 include/vdso/datapage.h
>   create mode 100644 include/vdso/helpers.h
>   create mode 100644 include/vdso/vsyscall.h
>   create mode 100644 kernel/vdso/Makefile
>   create mode 100644 kernel/vdso/vsyscall.c
>   create mode 100644 lib/vdso/Kconfig
>   create mode 100644 lib/vdso/Makefile
>   create mode 100644 lib/vdso/gettimeofday.c
>   create mode 100644 tools/testing/selftests/vDSO/vdso_full_test.c
> 

Ran vdsotest-bench on ThunderX2 (arm64) with and without unified 
patchset. The numbers are as below:

Unified vDSO:
-------------
clock-gettime-monotonic: syscall: 346 nsec/call
clock-gettime-monotonic:    libc: 38 nsec/call
clock-gettime-monotonic:    vdso: 36 nsec/call
clock-getres-monotonic: syscall: 262 nsec/call
clock-getres-monotonic:    libc: 6 nsec/call
clock-getres-monotonic:    vdso: 5 nsec/call
clock-gettime-monotonic-coarse: syscall: 296 nsec/call
clock-gettime-monotonic-coarse:    libc: 39 nsec/call
clock-gettime-monotonic-coarse:    vdso: 38 nsec/call
clock-getres-monotonic-coarse: syscall: 260 nsec/call
clock-getres-monotonic-coarse:    libc: 8 nsec/call
clock-getres-monotonic-coarse:    vdso: 5 nsec/call
clock-gettime-monotonic-raw: syscall: 345 nsec/call
clock-gettime-monotonic-raw:    libc: 35 nsec/call
clock-gettime-monotonic-raw:    vdso: 34 nsec/call
clock-getres-monotonic-raw: syscall: 261 nsec/call
clock-getres-monotonic-raw:    libc: 7 nsec/call
clock-getres-monotonic-raw:    vdso: 5 nsec/call
clock-gettime-tai: syscall: 357 nsec/call
clock-gettime-tai:    libc: 38 nsec/call
clock-gettime-tai:    vdso: 36 nsec/call
clock-getres-tai: syscall: 257 nsec/call
clock-getres-tai:    libc: 7 nsec/call
clock-getres-tai:    vdso: 5 nsec/call
clock-gettime-boottime: syscall: 356 nsec/call
clock-gettime-boottime:    libc: 38 nsec/call
clock-gettime-boottime:    vdso: 36 nsec/call
clock-getres-boottime: syscall: 257 nsec/call
clock-getres-boottime:    libc: 6 nsec/call
clock-getres-boottime:    vdso: 5 nsec/call
clock-gettime-realtime: syscall: 345 nsec/call
clock-gettime-realtime:    libc: 38 nsec/call
clock-gettime-realtime:    vdso: 36 nsec/call
clock-getres-realtime: syscall: 257 nsec/call
clock-getres-realtime:    libc: 7 nsec/call
clock-getres-realtime:    vdso: 5 nsec/call
clock-gettime-realtime-coarse: syscall: 295 nsec/call
clock-gettime-realtime-coarse:    libc: 39 nsec/call
clock-gettime-realtime-coarse:    vdso: 38 nsec/call
clock-getres-realtime-coarse: syscall: 260 nsec/call
clock-getres-realtime-coarse:    libc: 8 nsec/call
clock-getres-realtime-coarse:    vdso: 5 nsec/call
getcpu: syscall: 244 nsec/call
getcpu:    libc: 247 nsec/call
getcpu:    vdso: not tested
Note: vDSO version of getcpu not found
gettimeofday: syscall: 383 nsec/call
gettimeofday:    libc: 39 nsec/call
gettimeofday:    vdso: 35 nsec/call

Stock Kernel:
-------------
clock-gettime-monotonic: syscall: 344 nsec/call
clock-gettime-monotonic:    libc: 74 nsec/call
clock-gettime-monotonic:    vdso: 73 nsec/call
clock-getres-monotonic: syscall: 258 nsec/call
clock-getres-monotonic:    libc: 6 nsec/call
clock-getres-monotonic:    vdso: 4 nsec/call
clock-gettime-monotonic-coarse: syscall: 300 nsec/call
clock-gettime-monotonic-coarse:    libc: 36 nsec/call
clock-gettime-monotonic-coarse:    vdso: 34 nsec/call
clock-getres-monotonic-coarse: syscall: 261 nsec/call
clock-getres-monotonic-coarse:    libc: 6 nsec/call
clock-getres-monotonic-coarse:    vdso: 4 nsec/call
clock-gettime-monotonic-raw: syscall: 346 nsec/call
clock-gettime-monotonic-raw:    libc: 74 nsec/call
clock-gettime-monotonic-raw:    vdso: 72 nsec/call
clock-getres-monotonic-raw: syscall: 254 nsec/call
clock-getres-monotonic-raw:    libc: 6 nsec/call
clock-getres-monotonic-raw:    vdso: 4 nsec/call
clock-gettime-tai: syscall: 345 nsec/call
clock-gettime-tai:    libc: 361 nsec/call
clock-gettime-tai:    vdso: 359 nsec/call
clock-getres-tai: syscall: 259 nsec/call
clock-getres-tai:    libc: 262 nsec/call
clock-getres-tai:    vdso: 258 nsec/call
clock-gettime-boottime: syscall: 353 nsec/call
clock-gettime-boottime:    libc: 365 nsec/call
clock-gettime-boottime:    vdso: 362 nsec/call
clock-getres-boottime: syscall: 260 nsec/call
clock-getres-boottime:    libc: 267 nsec/call
clock-getres-boottime:    vdso: 259 nsec/call
clock-gettime-realtime: syscall: 344 nsec/call
clock-gettime-realtime:    libc: 73 nsec/call
clock-gettime-realtime:    vdso: 72 nsec/call
clock-getres-realtime: syscall: 255 nsec/call
clock-getres-realtime:    libc: 7 nsec/call
clock-getres-realtime:    vdso: 4 nsec/call
clock-gettime-realtime-coarse: syscall: 296 nsec/call
clock-gettime-realtime-coarse:    libc: 35 nsec/call
clock-gettime-realtime-coarse:    vdso: 33 nsec/call
clock-getres-realtime-coarse: syscall: 258 nsec/call
clock-getres-realtime-coarse:    libc: 6 nsec/call
clock-getres-realtime-coarse:    vdso: 4 nsec/call
getcpu: syscall: 237 nsec/call
getcpu:    libc: 242 nsec/call
getcpu:    vdso: not tested
Note: vDSO version of getcpu not found
gettimeofday: syscall: 378 nsec/call
gettimeofday:    libc: 73 nsec/call
gettimeofday:    vdso: 70 nsec/call

Observed good improvement for some APIs with the patch.

Tested-by: Shijith Thotton <sthotton@marvell.com>

Thanks,
Shijith
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
