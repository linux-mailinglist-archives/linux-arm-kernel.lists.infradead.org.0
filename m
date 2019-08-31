Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B676CA451D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 31 Aug 2019 17:46:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iP14el/4lBG5Tvsx+iHEOfZRzHNDk5SG/cLql26icSI=; b=qVR/+9PEySkNSa
	77lIyTQw3JCcpiibxxwQWN2nVTxGOUcBqK3ShUkuESwvZWeupeolW4JGUvOEp+FQCxu19dtRZHP0N
	0egpPbzsdjL4EswqXp45uLPSfa/Q0Bu3xVDnQzeHrXhyJ/vxMrYB9JK2IzXHRoehVWfML6iIC96xz
	whf0CR6MwrH7p4lq7itu9iQDgSz557JbUroOohmCygyPdJvgz/ob3JGdkqeAf5BdPmrjyzomUw+NF
	NQlj/jEndXT1xLPw1x59RfFpFTaOSx4t+sNRrPmE1d1hhZJDw/oQiDXoYVuuHcfuQRdYaWIEDK3Qy
	fqEP/xzYSfBeB2t0RUAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i45Zm-00082V-Cj; Sat, 31 Aug 2019 15:46:07 +0000
Received: from mail-eopbgr710135.outbound.protection.outlook.com
 ([40.107.71.135] helo=NAM05-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i45Zc-000827-0j
 for linux-arm-kernel@lists.infradead.org; Sat, 31 Aug 2019 15:45:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RyYs4o44TNRmVutHuH68IDY288Mk/AeqGB+1g4YP9fnr12OasmGYQll1NM5vcvEMuS7M7KpzCJNGGUAs3HG0v56qNw2HsCw2r6XW0tv+6Rb1azAU/mHBe1/rS3Ds86VSDRSB9VJ3IYDW2j/iWVv1/25COlIwtTefSNsw4luplcCcPONEvO6qlAXGVAD94uahWVGn3YJzK7ifuLfgv5O6t/4AaPQqpRxAJaVzwJJDJTpklHhq2Nr/DAWvjkneEXAM70WrCOV0Sc3h0ZShfNeKHCFsIdAjMfnWc6B+pdhWPabBy7l+7BizRZKt+Fzp6UdkvbBcgUAlVjdouTJ5HfAlPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MxjQOGRj0dXObYq4fZk6vavomkd675FEVilCfIypSyI=;
 b=WeUqGx0SdptEQtdT8Dui0sBRrkyWISufyGJrDM7YcOKaaQxI0gA4oYyiX6/6Xt9BrktrJjU1jVWhM5NbxwAJStggT1AjyJXbBogQZIfddHDa8FFrxyTmHflKGe++tQoGfNOB/cOQz2sWEsb96F93wjGkNevmQeT1zx3ACV+QhT5Saj0knyY9385Z5DHMf6z9WYuYKJyO810CBF5aryQdNjoQeJSZ8nKr3Xo1b1HXj3XCzH/KvseL6HMQlD7XUPVh6iO5iDK/iihm+dypn+JPyq2nq+A/j1Eww3XrLgQ8LC4m8ydSRD4uYBxiA2dPnhthNXrD3Xok9GdaGyhj/Tzc7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wavecomp.com; dmarc=pass action=none header.from=mips.com;
 dkim=pass header.d=mips.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wavecomp.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MxjQOGRj0dXObYq4fZk6vavomkd675FEVilCfIypSyI=;
 b=eKHn+yAWHFCQ4/nw8QCk3tuEskvjOpIsJqnJp88pwuBwpLFiPNr+WkSbuFctOHQL9rEwYetf0kdx6YUZkW04hQ08z6oHLBABvu65xiKXSO9lktApoXS1df0l65B0Tlvx+roPOeiLLn6zVrmRnVetmhMMoocaIBEzxQVt/W1CmdA=
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com (10.172.60.12) by
 MWHPR2201MB1087.namprd22.prod.outlook.com (10.174.169.149) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.20; Sat, 31 Aug 2019 15:45:53 +0000
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::f9e8:5e8c:7194:fad3]) by MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::f9e8:5e8c:7194:fad3%11]) with mapi id 15.20.2220.013; Sat, 31 Aug
 2019 15:45:53 +0000
From: Paul Burton <paul.burton@mips.com>
To: Yunsheng Lin <linyunsheng@huawei.com>
Subject: Re: [PATCH v2 8/9] mips: numa: check the node id consistently for
 mips ip27
Thread-Topic: [PATCH v2 8/9] mips: numa: check the node id consistently for
 mips ip27
Thread-Index: AQHVYBMrEGdL2TsIz0WmkCz/eLDvgg==
Date: Sat, 31 Aug 2019 15:45:52 +0000
Message-ID: <20190831154547.qzh6j4jwg5o5y4db@pburton-laptop>
References: <1567231103-13237-1-git-send-email-linyunsheng@huawei.com>
 <1567231103-13237-9-git-send-email-linyunsheng@huawei.com>
In-Reply-To: <1567231103-13237-9-git-send-email-linyunsheng@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LNXP123CA0005.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:d2::17) To MWHPR2201MB1277.namprd22.prod.outlook.com
 (2603:10b6:301:18::12)
user-agent: NeoMutt/20180716
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pburton@wavecomp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [78.144.179.23]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 257b9333-7e01-4ec4-1e4d-08d72e2a4dce
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MWHPR2201MB1087; 
x-ms-traffictypediagnostic: MWHPR2201MB1087:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <MWHPR2201MB10878CA9A9A195AD6BAA2A77C1BC0@MWHPR2201MB1087.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 014617085B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(7916004)(346002)(396003)(136003)(376002)(366004)(39840400004)(189003)(199004)(446003)(26005)(71190400001)(71200400001)(14454004)(66066001)(316002)(7406005)(6512007)(33716001)(54906003)(7736002)(58126008)(99286004)(6436002)(305945005)(256004)(6306002)(53936002)(52116002)(7416002)(9686003)(81156014)(81166006)(6916009)(478600001)(8936002)(8676002)(66476007)(386003)(6506007)(76176011)(6116002)(5660300002)(1076003)(476003)(44832011)(66946007)(3846002)(966005)(6486002)(186003)(4326008)(229853002)(64756008)(11346002)(25786009)(2906002)(6246003)(66446008)(486006)(66556008)(42882007)(102836004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR2201MB1087;
 H:MWHPR2201MB1277.namprd22.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: wavecomp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: uoAdCCSidX1K6RB1UNyf9gCDWGzGORUOdyQQ2IjDYyCD68PWWbPT4v2yiv2ufQCElAl6EdwoLAJjCtX5q43oVqKt/S23l0XEmPH3PLn7ap3rD1mgE2cIGf/tEleI3PS9vOZn4K7R+FP/uriQ8I7ITHng8VjJpM4761O1IVYo+HYFMbX1M3/fYiNqezgdo6h6fd0hOdoQK7BSYs5L2XmmCEtSuGJ/43cuMPX1du3Rez4B4udjKTaaPc5mV+nNyze7gSnYVXm1038Ia2T6rW+GJbCuIXaLv9eOHb2VBvu7krvlkgBms/2oL9O5PM/S0mg5KY97xSMcL2m+LqnUa7ZcvkgMPOG/qgCaBziCeOM8XO3YvXhEEhWGKm/Cs6ocTBsEv9rLQZ8wdIaN/ozBY4Z9jLZb0ZI8c59UODZCaXWeKo4=
x-ms-exchange-transport-forked: True
Content-ID: <8A415B3B62888046BC791500970CB9FB@namprd22.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: mips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 257b9333-7e01-4ec4-1e4d-08d72e2a4dce
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Aug 2019 15:45:52.8880 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 463607d3-1db3-40a0-8a29-970c56230104
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Vu2qChMP5+WQAI7xRGv86M09DLSXJXCRtisN/RZSULWEKMjgTyOQVh9k5znrlSacuHrejyfX1AE9arQZI6IyZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR2201MB1087
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190831_084556_131483_8E3B3AB8 
X-CRM114-Status: GOOD (  17.96  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.71.135 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.71.135 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "dalias@libc.org" <dalias@libc.org>,
 "linux-sh@vger.kernel.org" <linux-sh@vger.kernel.org>,
 "peterz@infradead.org" <peterz@infradead.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "dave.hansen@linux.intel.com" <dave.hansen@linux.intel.com>,
 "heiko.carstens@de.ibm.com" <heiko.carstens@de.ibm.com>,
 "linuxarm@huawei.com" <linuxarm@huawei.com>,
 "jiaxun.yang@flygoat.com" <jiaxun.yang@flygoat.com>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 "mwb@linux.vnet.ibm.com" <mwb@linux.vnet.ibm.com>,
 "paulus@samba.org" <paulus@samba.org>, "hpa@zytor.com" <hpa@zytor.com>,
 "sparclinux@vger.kernel.org" <sparclinux@vger.kernel.org>,
 "chenhc@lemote.com" <chenhc@lemote.com>, "will@kernel.org" <will@kernel.org>,
 "cai@lca.pw" <cai@lca.pw>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "ysato@users.sourceforge.jp" <ysato@users.sourceforge.jp>,
 "mpe@ellerman.id.au" <mpe@ellerman.id.au>, "x86@kernel.org" <x86@kernel.org>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 "borntraeger@de.ibm.com" <borntraeger@de.ibm.com>,
 "dledford@redhat.com" <dledford@redhat.com>,
 "mingo@redhat.com" <mingo@redhat.com>,
 "jeffrey.t.kirsher@intel.com" <jeffrey.t.kirsher@intel.com>,
 "benh@kernel.crashing.org" <benh@kernel.crashing.org>,
 "jhogan@kernel.org" <jhogan@kernel.org>,
 "nfont@linux.vnet.ibm.com" <nfont@linux.vnet.ibm.com>,
 "mattst88@gmail.com" <mattst88@gmail.com>,
 "len.brown@intel.com" <len.brown@intel.com>,
 "gor@linux.ibm.com" <gor@linux.ibm.com>,
 "anshuman.khandual@arm.com" <anshuman.khandual@arm.com>,
 "bp@alien8.de" <bp@alien8.de>, "luto@kernel.org" <luto@kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "naveen.n.rao@linux.vnet.ibm.com" <naveen.n.rao@linux.vnet.ibm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "rth@twiddle.net" <rth@twiddle.net>, "axboe@kernel.dk" <axboe@kernel.dk>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ralf@linux-mips.org" <ralf@linux-mips.org>,
 "tbogendoerfer@suse.de" <tbogendoerfer@suse.de>,
 "linux-alpha@vger.kernel.org" <linux-alpha@vger.kernel.org>,
 "ink@jurassic.park.msu.ru" <ink@jurassic.park.msu.ru>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Yunsheng,

On Sat, Aug 31, 2019 at 01:58:22PM +0800, Yunsheng Lin wrote:
> According to Section 6.2.14 from ACPI spec 6.3 [1], the setting
> of proximity domain is optional, as below:
> 
> This optional object is used to describe proximity domain
> associations within a machine. _PXM evaluates to an integer
> that identifies a device as belonging to a Proximity Domain
> defined in the System Resource Affinity Table (SRAT).
> 
> Since mips ip27 uses hub_data instead of node_to_cpumask_map,
> this patch checks node id with the below case before returning
> &hub_data(node)->h_cpus:
> 1. if node_id >= MAX_COMPACT_NODES, return cpu_none_mask
> 2. if node_id < 0, return cpu_online_mask
> 3. if hub_data(node) is NULL, return cpu_online_mask
> 
> [1] https://uefi.org/sites/default/files/resources/ACPI_6_3_final_Jan30.pdf

Similar to David's comment on the sparc patch, these systems don't use
ACPI so I don't see from your commit message why this change would be
relevant.

This same comment applies to patch 9 too.

Thanks,
    Paul

> 
> Signed-off-by: Yunsheng Lin <linyunsheng@huawei.com>
> ---
>  arch/mips/include/asm/mach-ip27/topology.h | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/mips/include/asm/mach-ip27/topology.h b/arch/mips/include/asm/mach-ip27/topology.h
> index 965f079..914a55a 100644
> --- a/arch/mips/include/asm/mach-ip27/topology.h
> +++ b/arch/mips/include/asm/mach-ip27/topology.h
> @@ -15,9 +15,18 @@ struct cpuinfo_ip27 {
>  extern struct cpuinfo_ip27 sn_cpu_info[NR_CPUS];
>  
>  #define cpu_to_node(cpu)	(sn_cpu_info[(cpu)].p_nodeid)
> -#define cpumask_of_node(node)	((node) == -1 ?				\
> -				 cpu_all_mask :				\
> -				 &hub_data(node)->h_cpus)
> +
> +static inline const struct cpumask *cpumask_of_node(int node)
> +{
> +	if (node >= MAX_COMPACT_NODES)
> +		return cpu_none_mask;
> +
> +	if (node < 0 || !hub_data(node))
> +		return cpu_online_mask;
> +
> +	return &hub_data(node)->h_cpus;
> +}
> +
>  struct pci_bus;
>  extern int pcibus_to_node(struct pci_bus *);
>  
> -- 
> 2.8.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
