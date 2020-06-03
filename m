Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C025F1ECE27
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 13:20:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J82a/EBykuHcncz5uukdbq1b81mwNqzAuw2Tu/ZYGuE=; b=pNtykZEzHKxley
	u1tcjWRwl42ib1goGXIHSOAN7go94+cp3xs5DeXDMF26MkdE6nYccqu8CPaM+DGdIIhmSydcrDB/e
	i4Gr4atzH81JqAB3BlwsgNqVKnaTaNp3f+HuIKOFsnv6mCFK2Z0wy7wPM+Kb+BNq68E11K9054v6C
	c+5vRrVuUdpLjHbWxArOfu3TN9pLChrFck0CMPrFliq5+8zsF7JHzE9L8jHwIq9N0gP4bfsq7bSz4
	W4qYTFEH0EvRpF0BrRnnhAKOC9jrtRLiYOaIhtacxvC+/BZXPPoOwWRtUhEvoUizFHCfltB/ndqRI
	JUIeUP4JHez+Z35RzhiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgRRr-0006Zq-Jk; Wed, 03 Jun 2020 11:20:43 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgRRj-0006Z8-J9; Wed, 03 Jun 2020 11:20:37 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 053BEYfR025864; Wed, 3 Jun 2020 04:20:20 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pfpt0818;
 bh=QT8VpjgPeD7O6+2FjSXdqrSgEmxxOiD2YhsxjYNOcRU=;
 b=NdgBoPu7M4ItT3+P0wZ4szpiR9w2kbWwQ2I7NSe/WzvQ3gPMsCbcXkc2Vc9MSt9+tjtD
 CYSij24JIBfogFzcSBvFkr0BPGrsRQExtm7kmhIDSFVHKfjbn0a69FTLzcF5lRISep/1
 y6Z0c+PkEGA65oRo2uALatxLlK5QsxlFCfX3unTaAlO2TCb6CRZCgzuJEBmgiwezxNC+
 K1aszdXuZTRRdo1TDv8iOrC7d9khmUAK1lIeQEAvadhcWrjTC9ucTclI3BMpReGpVAOr
 j3ukUBDMDct125BnlWw5DiCtvFfddd8heeXMj6Ap6cRMgUO9nY4HT3Kb5VcNkJ+jQLwJ WA== 
Received: from sc-exch04.marvell.com ([199.233.58.184])
 by mx0b-0016f401.pphosted.com with ESMTP id 31bq0mxv61-2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Wed, 03 Jun 2020 04:20:19 -0700
Received: from SC-EXCH01.marvell.com (10.93.176.81) by SC-EXCH04.marvell.com
 (10.93.176.84) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Wed, 3 Jun
 2020 04:20:18 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by SC-EXCH01.marvell.com (10.93.176.81) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Wed, 3 Jun 2020 04:20:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JAoFwvzrH9JTsRGbxLL6YeDvam2moC7C6P3jz4e3KwOEjy0Lvp21bqTKoLgUVX+7XBOE3kGkYP4FGFSmpPangohEwcqdOvGiANxAZgxKBnvjFKXI1FqXfIt1907pbhvpOPdJ48IppIUjC5MR3VfrWDKBJ7M5xC6MRi3gVn2kTnK6HUTQpQdPCVnOymaDc2nKLNggLIG0UBauWH/fPcWQx3e65plGT9XSnh7RPgzPeUJO+nHA2b66W/FeOc5H4pT7wXmF48qooDoiN44VNrs8wapmV25IXEeWvUXTBMv4U2x5Hn1snq9/91kERZBHLpNaK6nlWk8PEZBJ3xOkWchj7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QT8VpjgPeD7O6+2FjSXdqrSgEmxxOiD2YhsxjYNOcRU=;
 b=Hlit8rp+HMw/fgn4W1mEBM6RImdpa40ErzyHR0QGRpmKQQe2QtfLeO/WuEzW5kGl53K8x/Sk6Xh+4gZKJCBPT054s2b2k9lg+SWrE9MtBDMyq0ZEPoOhPK+9/TbHRHZf3GL1wV3O5LT+Hgyusigz1Esp15ZYB+Z1+/bxv9wY6Irm9V6/pQNRvocBljSSWe+TNGBQ+ShAJhjkxOWmTLL7A+1jJ9iD3Uap8nEGhSzd9Ynp64rtW8HcMGsK6aYH0Fyq28IrIiRIcVK8CPJtZXaluhaRkRR9VP4qau05GiA6Bj14L3y2jq4rKA8rR7OCruRAJD41Lxr3DKvR8jlDY9wWVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QT8VpjgPeD7O6+2FjSXdqrSgEmxxOiD2YhsxjYNOcRU=;
 b=kow1cbU/s+gCShglpN4napZ5yuZ9xUaOlvpwfDEKVADMiKNWnF+khSbNgG5jGY83nuTnjdK8eTp5UNx98Qv3KJarHeUGjQ1jNLFPgFXfo0etlVATphBX6Npavq8ZmNpDNFEnICP+o8D44UsBSIZTrstc9DcsJV7EpQp+rmqIdUk=
Received: from DM6PR18MB2425.namprd18.prod.outlook.com (2603:10b6:5:180::19)
 by DM6PR18MB3604.namprd18.prod.outlook.com (2603:10b6:5:28e::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Wed, 3 Jun
 2020 11:20:16 +0000
Received: from DM6PR18MB2425.namprd18.prod.outlook.com
 ([fe80::9da1:54e3:fdf6:e746]) by DM6PR18MB2425.namprd18.prod.outlook.com
 ([fe80::9da1:54e3:fdf6:e746%6]) with mapi id 15.20.3045.024; Wed, 3 Jun 2020
 11:20:16 +0000
From: Kamlakant Patel <kamlakantp@marvell.com>
To: Bhupesh Sharma <bhsharma@redhat.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "x86@kernel.org" <x86@kernel.org>
Subject: RE: [PATCH v6 2/2] arm64/crash_core: Export TCR_EL1.T1SZ in vmcoreinfo
Thread-Topic: [PATCH v6 2/2] arm64/crash_core: Export TCR_EL1.T1SZ in
 vmcoreinfo
Thread-Index: AQHWK50dN2j16dwzSEeEnQAXi/17t6jG1pOA
Date: Wed, 3 Jun 2020 11:20:16 +0000
Message-ID: <DM6PR18MB24258C2F2B91E4BF407421CDD2880@DM6PR18MB2425.namprd18.prod.outlook.com>
References: <1589395957-24628-1-git-send-email-bhsharma@redhat.com>
 <1589395957-24628-3-git-send-email-bhsharma@redhat.com>
In-Reply-To: <1589395957-24628-3-git-send-email-bhsharma@redhat.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=marvell.com;
x-originating-ip: [157.45.168.83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f3144eb2-82c1-4d07-4150-08d807b017da
x-ms-traffictypediagnostic: DM6PR18MB3604:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR18MB36047B508D1E97503CD09D24D2880@DM6PR18MB3604.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 04238CD941
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Cu62XfU6hQt/BlEnESCqNT2GJZ5yLzNfGDB9QVcBGSxL3EFbfXV4YN+m4tEdoCkeY3hIsIn4H30ahmJnUzIriyuHlYieslYqK82DakEnSAj6Wwme2jnkvhL2MbbrDQ4/fvAttOZztP0laUARsOa1l1odInyAG9EDgggjvmG/DiJhIaXaGmi+A6Rrr6Tzbn+YTYqyQgOvMiKvZ75st29YR2LKeSdtNQ0CmuL9xik0fJPXULeuDU4q1GSWyA+zueubsqIB1/6xS46Ex5ksA/q3KyyKPJiGatAJ5xKetgRG3xI22D7/gP6LbLXSX9Ma4vtFscdO0EhN8XIVXJzSrceNeHiRhHNz/O77w+wzdxtoZjAM4RUicf8YbdHFy3wTjBAx3QiQwOKQeZe0n0hJFbho3Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR18MB2425.namprd18.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(366004)(376002)(396003)(39860400002)(136003)(7696005)(66946007)(107886003)(19627235002)(5660300002)(66476007)(7416002)(66446008)(64756008)(4326008)(2906002)(55016002)(76116006)(478600001)(6506007)(53546011)(66556008)(8676002)(966005)(83380400001)(71200400001)(52536014)(186003)(33656002)(86362001)(8936002)(316002)(26005)(9686003)(110136005)(54906003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: qe2q4cY66ujk0ubpqiINerKCNVPDnbXZOB7mPtkviMENfMa1Bq9uTo8c3SJWeDTg6RSVtVBCnAmodeWpcgtIW5+a/3zlmWhT7GLYGj7hfKHj/Sm2+9GY9gQuxpmQbGU1pzJ2ZJdMHMQWLVGVP4Y1KHGK7j8aYz12Zg9Wg8zKy3Y5M3CP15iIpMNoPi3NLUKvkFwaSe568svPCOzHHYh7uSguzCo1WV0CrPzzEEz4EkfcByW/09vw55cv756zxKmraEG0I5jssG/VF54GdanmkdNyDigkw404l8XrTrQnew3pPZy/Hrlj8cGE28CjVCMzVWGO53++ErZ+D8/L6RaP5OtyrZf5tb0uZTFYZ/hLK4rTqTSHFf4GbBRxO5kogtTG3aJlDYKzMyj3DlvYFeg5vlgL/K3WqdKVjnO4ka1fOesZHHt3ObEK/5RkEs6cfu1PdXl03dpjMi17ISaAyBOzQIkBQqDxJIpSDxEuvJ828iQ=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f3144eb2-82c1-4d07-4150-08d807b017da
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2020 11:20:16.7044 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vaqvLrTQXECV2S9t15CiXFOX1IJsc3rXXbLRH4Vnz1knl+FejX95hQwzbIdplZGzturl8EHX38VG6zaYj2ey2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR18MB3604
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-03_11:2020-06-02,
 2020-06-03 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_042035_817156_E3D66996 
X-CRM114-Status: GOOD (  28.41  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 Ganapatrao Kulkarni <gkulkarni@marvell.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Steve Capper <steve.capper@arm.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 James Morse <james.morse@arm.com>, Dave Anderson <anderson@redhat.com>,
 "bhupesh.linux@gmail.com" <bhupesh.linux@gmail.com>,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bhupesh,

> -----Original Message-----
> From: kexec <kexec-bounces@lists.infradead.org> On Behalf Of Bhupesh
> Sharma
> Sent: Thursday, May 14, 2020 12:23 AM
> To: linux-arm-kernel@lists.infradead.org; x86@kernel.org
> Cc: Mark Rutland <mark.rutland@arm.com>; Kazuhito Hagio <k-
> hagio@ab.jp.nec.com>; Steve Capper <steve.capper@arm.com>; Catalin
> Marinas <catalin.marinas@arm.com>; bhsharma@redhat.com; Ard Biesheuvel
> <ard.biesheuvel@linaro.org>; kexec@lists.infradead.org; linux-
> kernel@vger.kernel.org; James Morse <james.morse@arm.com>; Dave
> Anderson <anderson@redhat.com>; bhupesh.linux@gmail.com; Will Deacon
> <will@kernel.org>
> Subject: [PATCH v6 2/2] arm64/crash_core: Export TCR_EL1.T1SZ in vmcoreinfo
> 
> vabits_actual variable on arm64 indicates the actual VA space size, and allows a
> single binary to support both 48-bit and 52-bit VA spaces.
> 
> If the ARMv8.2-LVA optional feature is present, and we are running with a 64KB
> page size; then it is possible to use 52-bits of address space for both userspace
> and kernel addresses. However, any kernel binary that supports 52-bit must also
> be able to fall back to 48-bit at early boot time if the hardware feature is not
> present.
> 
> Since TCR_EL1.T1SZ indicates the size offset of the memory region addressed by
> TTBR1_EL1 (and hence can be used for determining the vabits_actual value) it
> makes more sense to export the same in vmcoreinfo rather than vabits_actual
> variable, as the name of the variable can change in future kernel versions, but
> the architectural constructs like TCR_EL1.T1SZ can be used better to indicate
> intended specific fields to user-space.
> 
> User-space utilities like makedumpfile and crash-utility, need to read this value
> from vmcoreinfo for determining if a virtual address lies in the linear map range.
> 
> While at it also add documentation for TCR_EL1.T1SZ variable being added to
> vmcoreinfo.
> 
> It indicates the size offset of the memory region addressed by TTBR1_EL1
> 
> Cc: James Morse <james.morse@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Steve Capper <steve.capper@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Cc: Dave Anderson <anderson@redhat.com>
> Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> Cc: kexec@lists.infradead.org
> Tested-by: John Donnelly <john.p.donnelly@oracle.com>
> Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
> ---
>  Documentation/admin-guide/kdump/vmcoreinfo.rst | 11 +++++++++++
>  arch/arm64/include/asm/pgtable-hwdef.h         |  1 +
>  arch/arm64/kernel/crash_core.c                 | 10 ++++++++++
>  3 files changed, 22 insertions(+)
> 
> diff --git a/Documentation/admin-guide/kdump/vmcoreinfo.rst
> b/Documentation/admin-guide/kdump/vmcoreinfo.rst
> index 2a632020f809..2baad0bfb09d 100644
> --- a/Documentation/admin-guide/kdump/vmcoreinfo.rst
> +++ b/Documentation/admin-guide/kdump/vmcoreinfo.rst
> @@ -404,6 +404,17 @@ KERNELPACMASK
>  The mask to extract the Pointer Authentication Code from a kernel virtual
> address.
> 
> +TCR_EL1.T1SZ
> +------------
> +
> +Indicates the size offset of the memory region addressed by TTBR1_EL1.
> +The region size is 2^(64-T1SZ) bytes.
> +
> +TTBR1_EL1 is the table base address register specified by ARMv8-A
> +architecture which is used to lookup the page-tables for the Virtual
> +addresses in the higher VA range (refer to ARMv8 ARM document for more
> +details).
> +
>  arm
>  ===
> 
> diff --git a/arch/arm64/include/asm/pgtable-hwdef.h
> b/arch/arm64/include/asm/pgtable-hwdef.h
> index 6bf5e650da78..a1861af97ac9 100644
> --- a/arch/arm64/include/asm/pgtable-hwdef.h
> +++ b/arch/arm64/include/asm/pgtable-hwdef.h
> @@ -216,6 +216,7 @@
>  #define TCR_TxSZ(x)		(TCR_T0SZ(x) | TCR_T1SZ(x))
>  #define TCR_TxSZ_WIDTH		6
>  #define TCR_T0SZ_MASK		(((UL(1) << TCR_TxSZ_WIDTH) - 1) <<
> TCR_T0SZ_OFFSET)
> +#define TCR_T1SZ_MASK		(((UL(1) << TCR_TxSZ_WIDTH) - 1) <<
> TCR_T1SZ_OFFSET)
> 
>  #define TCR_EPD0_SHIFT		7
>  #define TCR_EPD0_MASK		(UL(1) << TCR_EPD0_SHIFT)
> diff --git a/arch/arm64/kernel/crash_core.c b/arch/arm64/kernel/crash_core.c
> index 1f646b07e3e9..314391a156ee 100644
> --- a/arch/arm64/kernel/crash_core.c
> +++ b/arch/arm64/kernel/crash_core.c
> @@ -7,6 +7,14 @@
>  #include <linux/crash_core.h>
>  #include <asm/cpufeature.h>
>  #include <asm/memory.h>
> +#include <asm/pgtable-hwdef.h>
> +
> +static inline u64 get_tcr_el1_t1sz(void);
> +
> +static inline u64 get_tcr_el1_t1sz(void) {
> +	return (read_sysreg(tcr_el1) & TCR_T1SZ_MASK) >> TCR_T1SZ_OFFSET; }
> 
>  void arch_crash_save_vmcoreinfo(void)
>  {
> @@ -16,6 +24,8 @@ void arch_crash_save_vmcoreinfo(void)
>  						kimage_voffset);
>  	vmcoreinfo_append_str("NUMBER(PHYS_OFFSET)=0x%llx\n",
>  						PHYS_OFFSET);
> +	vmcoreinfo_append_str("NUMBER(TCR_EL1_T1SZ)=0x%llx\n",
> +						get_tcr_el1_t1sz());
I tested this patch on top of upstream kernel v5.7 and I am getting "crash: cannot determine VA_BITS_ACTUAL" error with crash tool.
I looked into crash-utility source and it is expecting tcr_el1_t1sz not TCR_EL1_T1SZ.
Could you please check.

Thanks,
Kamlakant Patel
>  	vmcoreinfo_append_str("KERNELOFFSET=%lx\n", kaslr_offset());
>  	vmcoreinfo_append_str("NUMBER(KERNELPACMASK)=0x%llx\n",
> 
> 	system_supports_address_auth() ?
> --
> 2.7.4
> 
> 
> _______________________________________________
> kexec mailing list
> kexec@lists.infradead.org
> https://urldefense.proofpoint.com/v2/url?u=http-
> 3A__lists.infradead.org_mailman_listinfo_kexec&d=DwICAg&c=nKjWec2b6R0m
> OyPaz7xtfQ&r=XecQZQJWhG6-
> mN8sWxffFOgUXg4irGP3Sjuy6RxdacQ&m=oeLdIVaWScimdfEc4dNhRI0tT24IgzG
> 7LkpAE5P11JQ&s=LLjHpz349DuDtORX4xywCxzbGUOagoq4JXosStycqI4&e=

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
