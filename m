Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 491C37BBB7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 10:32:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ixDZSGcNpK2CerPj9Sdl7GzHhePbzKp0hBaO6eHIh60=; b=G9kIcNy6ucLboASnkIQx7wIcCL
	oyQ4qlsQJOS8oSc4YNWC0re5Ua0Za19Mw8o2UjnzJZEklBbHpbY/EFCNTXflpc/GzqGUqx0Gfj7sv
	A9YVCW14qQzWnkb10ErT8e3vZodz/fDhy83+RCXIzibOSIv0BhceiETUp1b9av8lrVy1i7vscA/3n
	7rUmCxvfAQS9MbcksHtTK0nPuQvbiNj3sVCbOo7sX9n8ykrrr31ShOWysUwWrkMIrM+truHSlyzAa
	AemOKAmJeAtVeUfGX7wXlt0hBeN285cVXqFe1+cdLvfkyx281I94RH7B6i8HcHWT2ZFpO6/kMwrgO
	aFCYBwJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsk23-0001ns-R7; Wed, 31 Jul 2019 08:32:24 +0000
Received: from mail-eopbgr740133.outbound.protection.outlook.com
 ([40.107.74.133] helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsk1l-0001hF-Nn
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 08:32:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=akZUoaeD55sykwhXFVF8MDrAqNurcT2xU4jgb8+03NQLb8m5ndUwt8dZINYOjByBXxLrPgMwlC0qfeH0UVZ8qgYe+SY7DhMLf5fxM+QjaEvy6PIZR16sHFx4lMFOCBAY6cXKpW/h6jcz3/qeae7Fp5wDdgyWSgo4BrL2wAxI3++AgK6AdqXH0e3WbQANig9oOq3LIKeDGbksO086a6b9+iKL4/woWAdNySynVkavlWayaZ5PrcxOoX8eslCUcYjWkYAZPiKe0XrYBkgW5om48tRX9C5i/yzk1RsYhs0o2q+IwBKpON4JqyIocYKkDZWnTgC6YhaFMZEhS5P+UJ+ykA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Zekd39eQr2pi3ucUXZFD/9EGlz/9JLqNmFHI62TiDIc=;
 b=nykaZW3kgGaH1rQ8TO3iZXBenl665Hudjwj0f7ScW3uz6IqA1tanA66YJJuZYT1GNt5dXmWgtUoJoi1hPAYUCz/IRPpcf163RAwZDrS8PvPXvRCMzIz0Dz+xRKimcJik9/itUJ3HBr4Qw6GpvlM3kXwgM6aJEIhTXHcqeCd2K4brRmA0qa5ggL2cOZV8UO2Dz+jgXFyvB0ZIJOqXwwN6O+sgPVWs3wApkmZWANpKS0yrNbikolmHy2GuKS0z2/4d+7WitmyYLnTIis163paKj48fKKXq1piJih4peIuAgjPIJ/fPELMrJ+hQGGcXgwgCBAylHYuLpmpghcM1+IwVsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=xilinx.com;dmarc=bestguesspass action=none
 header.from=xilinx.com;dkim=none (message not signed);arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Zekd39eQr2pi3ucUXZFD/9EGlz/9JLqNmFHI62TiDIc=;
 b=aIij8mqfFiQU4CIlQFfwFkJaEVzFYMvEk4Zl8tHpKOEXgB30WsfQ7aKOB6++4HyYm8vFnqZR9ueI9jH1TEg3JwgZOuUhmavDjRmwpCpXjoQ8EPAavy6aKyrRCdbQ2yQFRn7tt+tyBrPQqhg1OENBqHByINqAWMciq8vnLlJW7ao=
Received: from SN4PR0201CA0055.namprd02.prod.outlook.com
 (2603:10b6:803:20::17) by SN6PR02MB5120.namprd02.prod.outlook.com
 (2603:10b6:805:68::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2136.15; Wed, 31 Jul
 2019 08:32:01 +0000
Received: from SN1NAM02FT033.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::209) by SN4PR0201CA0055.outlook.office365.com
 (2603:10b6:803:20::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2136.12 via Frontend
 Transport; Wed, 31 Jul 2019 08:32:01 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT033.mail.protection.outlook.com (10.152.72.133) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2115.10
 via Frontend Transport; Wed, 31 Jul 2019 08:32:00 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1hsk1g-0006ld-9F; Wed, 31 Jul 2019 01:32:00 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1hsk1b-0002Rh-4j; Wed, 31 Jul 2019 01:31:55 -0700
Received: from [172.30.17.116] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1hsk1X-0002RS-MH; Wed, 31 Jul 2019 01:31:51 -0700
Subject: Re: [PATCH] mailbox: zynqmp-ipi-mailbox: Add of_node_put() before goto
To: Nishka Dasgupta <nishkadg.linux@gmail.com>, jassisinghbrar@gmail.com,
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20190709172841.13769-1-nishkadg.linux@gmail.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <eaf1fcbe-615e-0fec-d330-ae94e8f3c102@xilinx.com>
Date: Wed, 31 Jul 2019 10:31:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190709172841.13769-1-nishkadg.linux@gmail.com>
Content-Language: en-US
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10019001)(6009001)(438001)(164054003)(51704005)(24454002)(199002)(189002)(20776003)(69226001)(63696002)(47776003)(74876001)(63266003)(74706001)(36756003)(23676002)(76786001)(76796001)(81542001)(54356001)(31686003)(93136001)(92566001)(46102001)(64706001)(81342001)(92726001)(77982001)(59766001)(56816005)(33646001)(80022001)(65956001)(76482001)(90146001)(65806001)(65816001)(87936001)(56776001)(54316002)(74366001)(44376005)(87266001)(4396001)(47976001)(50986001)(95666003)(49866001)(47736001)(51856001)(50466002)(85306002)(79102001)(85852003)(83072002)(83506001)(21056001)(97336001)(94946001)(93516002)(95416001)(94316002)(97186001)(80976001)(31696002)(64126003)(81686001)(83322001)(19580405001)(81816001)(31966008)(74662001)(19580395003)(53806001)(74502001)(47446002)(65826005)(36386003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR02MB5120; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 684c5fb2-6f08-4547-ce62-08d715918f01
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:SN6PR02MB5120; 
X-MS-TrafficTypeDiagnostic: SN6PR02MB5120:
X-Microsoft-Antispam-PRVS: <SN6PR02MB51203F498F8438AD8BA8073EC6DF0@SN6PR02MB5120.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 011579F31F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: /1kQKUl1EGLi70K4VNaZ8qsvOA5XC6HnZLqJWr4VQXwt2oXqkr2vfZ4auFaWepEBOWcZ3fzWNvZQJv2JKEY6bVgZylL+GJz0CNQ6Pw+uwUX69PI4J/rNwo9HMjZQvK/t+lSP6sIuaxPdNk3D6kxo2z5/gL0bqxcRr+00A0bTCuGsg18jv+HCslhK40S+gGdAYaodaLeK9rPp39dGL8v2LQ0TRzRlFPGHbB0koWwmLszOjXvT3pkPQfM8CWo359FKmrhgDiI4KPQeJpzfS5zmCcf7kJ3cshUJO4JLvnaLxOF50TydotKGQ+/v5peKpL6V9ynS/SEA5zhciKoyHnLHQSBp1cBeNDW/aEMirVERLYc3snxenonvEKBMpvZgKtEWF9wnRMScqRHH9ezdottzmG91mBAeSwpHFw1agaGTGQ4=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2019 08:32:00.8094 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 684c5fb2-6f08-4547-ce62-08d715918f01
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB5120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_013205_782129_65DAB226 
X-CRM114-Status: GOOD (  16.54  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.74.133 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09. 07. 19 19:28, Nishka Dasgupta wrote:
> Each iteration of for_each_available_child_of_node puts the previous
> node, but in the case of a goto from the middle of the loop, there is
> no put, thus causing a memory leak. Hence add an of_node_put before the
> goto.
> Issue found with Coccinelle.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
>  drivers/mailbox/zynqmp-ipi-mailbox.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/mailbox/zynqmp-ipi-mailbox.c b/drivers/mailbox/zynqmp-ipi-mailbox.c
> index 86887c9a349a..bd80d4c10ec2 100644
> --- a/drivers/mailbox/zynqmp-ipi-mailbox.c
> +++ b/drivers/mailbox/zynqmp-ipi-mailbox.c
> @@ -661,6 +661,7 @@ static int zynqmp_ipi_probe(struct platform_device *pdev)
>  		if (ret) {
>  			dev_err(dev, "failed to probe subdev.\n");
>  			ret = -EINVAL;
> +			of_node_put(nc);
>  			goto free_mbox_dev;
>  		}
>  		mbox++;
> 

Patch is good but when you are saying that this was found by Coccinelle
then it should be added as script to kernel to detect it.

Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
