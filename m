Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 128D086D23
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 00:24:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vtG4af6r0vvZWYYm2sQyKQiwG/OnUNNXviwPy1suGJE=; b=cmAqS0EpkDsYn5
	PmGm5+lQpUwsUFmb6DfPdTGGoHFdj7KYXO59/PMFc4KXq/j8Rbc3RBaMwPsr7eyX21ynmQtnRDNLp
	kn2XKxlPVQFiHjt9MkdOTU3nCpbYJyy6PmU/LV94O7fIH8JrktnjJcya/hY1STtwQUw+neBE1MbsG
	XLk2BYh0d87CKK85sqZ/vXDrKFndyIADllxA46EPg6ROgYxqsiLl24lwihJvfiVs6MAXOw9czx32J
	HWFCPsl2bUYbq7hL6Zqd/lUPS+po7pyqZnx8bnq7VBHG9YuosolAeW5vte+mvWADYXL0AhrDctF0Y
	wMgc0LKZCARoYSjjlidg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvqpW-0005ZP-KR; Thu, 08 Aug 2019 22:24:18 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvqpO-0005Z2-Hq
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 22:24:11 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x78MMvJm023264; Thu, 8 Aug 2019 15:24:01 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=grrw8bnsrcID77dTxVlwNaDz95lTkJCmZbOWpHWu/H0=;
 b=aiDXdm9KkeSPSFf6ySAwB2DpU1WKzSJMXPIyA3FmqzVLKz9Y5SY2PyapLUyX0zx/8ywR
 SWJpsFkq4iOgCroO/45gd2K34WCObNOQhTlAI5q9DO1MQE18k58T7v6pAbNT9zMqQ/9r
 K17o0sNUwrlHONpXaM90XZh6DjOZ/5Zs59xOtMp8fY7dK/dZDf0AJ2jjHxvVKcTQT40L
 qA/BTG4tAiFByR3UvWLdTyf6tsmKIHRnjT+irLe+N3jffVlAhplFWdB64FDacP4se06R
 Piz2v2dCTMiEAWGjsAOOShgOrrjxj9yC0LyJ2CUzNDKLeETWZdV1Sji0VHuZm6MDPqSb /A== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0b-0016f401.pphosted.com with ESMTP id 2u59sm5kgp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 08 Aug 2019 15:24:00 -0700
Received: from SC-EXCH01.marvell.com (10.93.176.81) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Thu, 8 Aug
 2019 15:23:59 -0700
Received: from NAM01-BY2-obe.outbound.protection.outlook.com (104.47.34.54) by
 SC-EXCH01.marvell.com (10.93.176.81) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Thu, 8 Aug 2019 15:23:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BXEgQ/tKE2MeTZOOP7r767LrXAthcjPYng7vjL9LMmGssMS8Xu5kapAzdaCx3YwwH66dccKt1bDO78vrmGQHFKxsFaJQ1g9Q9qE/sqABKebW/eokTG29myNaE8uYHW3tbYRbCgVCgqiBsIDScgANSxgEVKfkP2a2tO3q0qWtTzKGwJznDXN7xWcgcAXLJdfeqxWH11NP2Gz6tHwTjt7Taq9Ag+WzY2CzmIQQE8j3M8ryaw01baCHSyAYtwfn9a18vEVqhNXz6x2HWzl4cdm/zKhxRb1P5da20gKjvneMvabqKnmpDNvY1ACVUh9kO6cbEBkg34F4t4hMe7wF2I8lLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=grrw8bnsrcID77dTxVlwNaDz95lTkJCmZbOWpHWu/H0=;
 b=J1NkrjmBsMSn0ez3Kf29kqB0QjAM17I9gPs8YpurDmWUBQ5TQRLXCtk4i0iCGzcnuyHejXhzrNdTTUYFt847srwV3rvxMZEIYkAVjh0pO6UUmKyCmuTvCMlm/P/RmUGWWqXm8zE2P1UUqqbcGQ9zuXWFNheGJs0AwIw/bUhaZPD/MYXaDlcbly0hObAqOC8oE6xZiHzXR3akYS5PbB8ISlMczWntyEHeGcRwQMI4qlgifmxftLxm0tBr71sUK/Y31REiTjgss7NbisPvIJAuJLc8SyKLEymMpsF4Dvt3IG2MWEzGF6MNpYM2uFPgyUPOMNxiW+lt9u1RZuRNGMM6jQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=grrw8bnsrcID77dTxVlwNaDz95lTkJCmZbOWpHWu/H0=;
 b=ddwDS7XabtENZRqndpiCk9+jjsKRxU5qjefMOacZ6kybGDGruhu/694toN9oDM67KYZE3Ei4j5NNVe92AirPZXURHPuq6EiLNx+4Q5UBs6F7yFIxLUVTj3bHyYYwdmaxdLWJ8B/dYytAFVN0TFD8c30XWVrsnphnb5kuNbwV++E=
Received: from MN2PR18MB3408.namprd18.prod.outlook.com (10.255.238.217) by
 MN2PR18MB2448.namprd18.prod.outlook.com (20.179.82.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.16; Thu, 8 Aug 2019 22:23:57 +0000
Received: from MN2PR18MB3408.namprd18.prod.outlook.com
 ([fe80::1b3:8b34:63fe:aad2]) by MN2PR18MB3408.namprd18.prod.outlook.com
 ([fe80::1b3:8b34:63fe:aad2%6]) with mapi id 15.20.2157.015; Thu, 8 Aug 2019
 22:23:57 +0000
From: Robert Richter <rrichter@marvell.com>
To: Jeremy Linton <jeremy.linton@arm.com>
Subject: Re: [PATCH v4 2/2] arm64: topology: Use PPTT to determine if PE is a
 thread
Thread-Topic: [PATCH v4 2/2] arm64: topology: Use PPTT to determine if PE is a
 thread
Thread-Index: AQHVTjf4QlqP0supcUO7xQkaih6j1w==
Date: Thu, 8 Aug 2019 22:23:57 +0000
Message-ID: <20190808222325.nfcjhwtnjgmd4jqs@rric.localdomain>
References: <20190808204007.30110-1-jeremy.linton@arm.com>
 <20190808204007.30110-3-jeremy.linton@arm.com>
In-Reply-To: <20190808204007.30110-3-jeremy.linton@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR06CA0127.eurprd06.prod.outlook.com
 (2603:10a6:7:16::14) To MN2PR18MB3408.namprd18.prod.outlook.com
 (2603:10b6:208:16c::25)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [31.208.96.227]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 021883cd-37bc-4e92-4dbc-08d71c4f1a97
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR18MB2448; 
x-ms-traffictypediagnostic: MN2PR18MB2448:
x-microsoft-antispam-prvs: <MN2PR18MB2448C5AD10778A6040EE0EEDD9D70@MN2PR18MB2448.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 012349AD1C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(136003)(346002)(366004)(39860400002)(189003)(199004)(2906002)(53936002)(14454004)(66066001)(53546011)(102836004)(81166006)(81156014)(6506007)(386003)(316002)(9686003)(5660300002)(26005)(6512007)(305945005)(11346002)(478600001)(7736002)(486006)(3846002)(52116002)(446003)(6916009)(25786009)(6436002)(6246003)(476003)(71200400001)(256004)(76176011)(71190400001)(99286004)(6116002)(1076003)(229853002)(186003)(4326008)(6486002)(8676002)(64756008)(66556008)(66446008)(86362001)(54906003)(66476007)(8936002)(7416002)(66946007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR18MB2448;
 H:MN2PR18MB3408.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: RqBwGsggOh6NJjz1lEy/1Lhg3K9LACmumo3gdBE+fP68wpc30q8bAv+eVu2cSyEjFr+vcpSNuhtoYmfGDPrg2nhLS4IUZ065qSgxU9uJWcA8Czvyu7DBBOx8tRkJNxczLA/TbAJ8aT1pQlwGVBq1pdfnk9+Xt650W5CjPYbX8SYcfhXyrgCfOLhIvJW2QFZygf8Ffdq9BDn0HbNXNatb/r7S3ejcDXV/5wLMhDgFjV0yl25/hDzAhI1I0s2gPJma8DZQ5cNgUMnBoZmzoh1Mic+I1XNFSkvA1Adwok8gqeP2Avbn8HL/lJNh7y1qoaPbd6C3fwOUyOUZIqCLrlsY0PzbbqO/BK1lTF7XMi0d0r937J82GaL9eGekNnGgirvWJGmtX5Tebnro3i/RYcBwao6J10R6f6D4KquLZBqUkEM=
x-ms-exchange-transport-forked: True
Content-ID: <E2EB1DF541A4F9469D852892C0BD11E4@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 021883cd-37bc-4e92-4dbc-08d71c4f1a97
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2019 22:23:57.2650 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gr2Y1LRkicTqLouXeUPibXwQdF60gQXEKrO1nOfI4CIn7Er3zJdgnMJ6q8OvuaWD1/mwTzL9zFhFSu8ItmhL8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR18MB2448
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-08-08_09:2019-08-07,2019-08-08 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_152410_779840_4D771AE8 
X-CRM114-Status: GOOD (  20.05  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "rric@kernel.org" <rric@kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "lenb@kernel.org" <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08.08.19 15:40:07, Jeremy Linton wrote:
> ACPI 6.3 adds a thread flag to represent if a CPU/PE is
> actually a thread. Given that the MPIDR_MT bit may not
> represent this information consistently on homogeneous machines
> we should prefer the PPTT flag if its available.
> 
> Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
> Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  arch/arm64/kernel/topology.c | 19 +++++++++++++++----
>  1 file changed, 15 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/kernel/topology.c b/arch/arm64/kernel/topology.c
> index 0825c4a856e3..bad9c42ea825 100644
> --- a/arch/arm64/kernel/topology.c
> +++ b/arch/arm64/kernel/topology.c
> @@ -340,17 +340,28 @@ void remove_cpu_topology(unsigned int cpu)
>  }
>  
>  #ifdef CONFIG_ACPI
> +static int __init acpi_cpu_is_threaded(int cpu)
> +{
> +	int is_threaded = acpi_pptt_cpu_is_thread(cpu);
> +
> +	/*
> +	 * if the PPTT doesn't have thread information, assume a homogeneous
> +	 * machine and return the current CPU's thread state.
> +	 */
> +	if (is_threaded < 0)
> +		is_threaded = read_cpuid_mpidr() & MPIDR_MT_BITMASK;

Since this is no longer bool now, better have a !!(...) or (...) != 0
here.

> +
> +	return is_threaded;
> +}
> +
>  /*
>   * Propagate the topology information of the processor_topology_node tree to the
>   * cpu_topology array.
>   */
>  static int __init parse_acpi_topology(void)
>  {
> -	bool is_threaded;
>  	int cpu, topology_id;
>  
> -	is_threaded = read_cpuid_mpidr() & MPIDR_MT_BITMASK;
> -
>  	for_each_possible_cpu(cpu) {
>  		int i, cache_id;
>  
> @@ -358,7 +369,7 @@ static int __init parse_acpi_topology(void)
>  		if (topology_id < 0)
>  			return topology_id;
>  
> -		if (is_threaded) {
> +		if (acpi_cpu_is_threaded(cpu)) {
>  			cpu_topology[cpu].thread_id = topology_id;
>  			topology_id = find_acpi_cpu_topology(cpu, 1);
>  			cpu_topology[cpu].core_id   = topology_id;

Looks otherwise ok.

Reviewed-by: Robert Richter <rrichter@marvell.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
