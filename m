Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B1D696718
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 19:09:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3c1TveNK2vRaGXu7WT1+TvLt4iPBJwjf+BBeFsLM6iA=; b=MrWHzd2ahB6bXz
	BPPY6mIUqPtO6uHrGPFMbCeVG7xp25p0YqKs2Ibl/ywrWjaWK2sg7y9s6vaJb9iXd0LXOrNlwU5Nm
	zqYmtCXOtVAeJ4+Y3MPOuwinILZPniTFZTVC/NEyL85eZna2MiH+LxFemtdn4cBvSi6ncwYzOWGaX
	8m+WHJxRDiCsHXQ+gzF2liSOqfT9NwufnSNVDTSFffPmIecltdNVDI0QRv0DgUJ/uycIX83zmrPbW
	zx5NIxfR/9dNssu6FEHNptz8XjqUidocGxZjDxknLTl9UIl6t0NcGe4ioFTtwXMtXVMhUfZqSqsd8
	UuDEFU9OtS2SZ1AGYZNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i07d0-0005YP-HJ; Tue, 20 Aug 2019 17:09:02 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i07cs-0005Xy-I9
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 17:08:56 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x7KH52al006331; Tue, 20 Aug 2019 10:08:50 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pfpt0818;
 bh=v2a/kPAxHjYlIci7LOZCPu9n+gQqpxhBgSJXnQosn8Q=;
 b=s0CBvI+XpPYxphuzRwYB/juBgnJrPu7GoE8c34hj0jlH2bsO7cQhXD8nmiGYjNquOsUl
 oHnEV3azYpYTYcXnGWCr4Iwc3lLGRxuoyXshTs0PG5LzAsq+RKTFQnUZ6abR6snvCp1S
 Dm91N+F4eXPU0exgqI+flzQGnmW1jqVz575Wg6HGHR4l+dUBLRMCfJ8HoPwlKA7dkFTt
 1ppB1cPO/xGwtHDW2mIJ0NbPNU5e8ywHx+THJXxRjy9PURmvDX/7/dPp4uG8pJzmScQ8
 qJEnEmKh/FZHBKBfSeH93rCgdBxfmWbg1yi4wqJ1iDmcqZw/WDwfP8Ng1dXrfgZ4ZXzN 3g== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0b-0016f401.pphosted.com with ESMTP id 2ug8d7atq6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 20 Aug 2019 10:08:50 -0700
Received: from SC-EXCH01.marvell.com (10.93.176.81) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Tue, 20 Aug
 2019 10:08:48 -0700
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (104.47.42.58) by
 SC-EXCH01.marvell.com (10.93.176.81) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Tue, 20 Aug 2019 10:08:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dkdjomG1h2U9hjix3zRES/WydCQMx9ux+JC8q2ziYoZ0J1FlJQfav0xFcWfIIMoN4XuMvq4xWlBSZaIGkgs3eBD6gJYz0Al0yCt6SGFuy9Ay5KZ2g2OvUBqIMBCaIcP2gH4AHm9Kd3ifG+aJDNueiaEx8hnHALTKjfktLYOR4qe6ikSgoM2oIdjN0vZt5e+5vJgtluKBzpbgS/+L4X4fpBsWaFVWXlgvYVVO5BrgtD2zvPu6bS1pC3NWMEQtAUlj+T8kKS0IdleB9eZCGz6Y7UWAoA8Vwq4+F6T6zaI+xio2mJ9OYKABnSZdGekvZapc4MYcl8rTkWrh8gSwY5PDKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v2a/kPAxHjYlIci7LOZCPu9n+gQqpxhBgSJXnQosn8Q=;
 b=HrGXoOBTzNYmuEczPLGaoUsgqCHLfErLsOuFJW3vuSzDFP9W1C67m4afbQa18j8RjksRKAK4eguB5eRzAZhN7BWLJ2HpE4pH9zflA22XVuUmeSTGmzX7YUEoykTZu/AkI1ZGhq3OsUFi0PiqKEeXofNbShYeicUX2VFXgkD1muJDa3TUOs+nKE/rbdN1qYNp8JdDjeaZGjL318sVQE0C78C3lbQUcBThc21mOhDQUxT5oqAugMVXXeGYjReP5zExUhjM9BacDQoxzpljZ3Z0/L6NiZ8MxcmkPrUgGW3gytwxYGGinUi1Pzs6BW3BkgJaB9hWK9AQ9kE5qOBGw3Bf1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v2a/kPAxHjYlIci7LOZCPu9n+gQqpxhBgSJXnQosn8Q=;
 b=iOOLVajEe+lqqA1zcGls6Ntu+qQBIRw5c+kSMIk9raQB9jOu+c4BhbJ+fTJdnnLYGHKzjfBGRsVemg4n//D9PRkkRSYlIy4R9AlhHZ672/LefLsVEqKlhyf/U4QVhIcX9h/CoKsBcsSRts+LCjwJG41JRxS+x2+dFEhmodIF26I=
Received: from DM5PR18MB2184.namprd18.prod.outlook.com (52.132.143.143) by
 DM5PR18MB1545.namprd18.prod.outlook.com (10.175.219.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Tue, 20 Aug 2019 17:08:47 +0000
Received: from DM5PR18MB2184.namprd18.prod.outlook.com
 ([fe80::c1ba:ac0b:df8d:b5b2]) by DM5PR18MB2184.namprd18.prod.outlook.com
 ([fe80::c1ba:ac0b:df8d:b5b2%7]) with mapi id 15.20.2178.018; Tue, 20 Aug 2019
 17:08:47 +0000
From: Tanmay Vilas Kumar Jagdale <tanmay@marvell.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: RE: [EXT] Re: coresight: ACPI hook for funnel on ThunderX2
Thread-Topic: [EXT] Re: coresight: ACPI hook for funnel on ThunderX2
Thread-Index: AQHVU3F/vhcvmFRs5kmamy5J7HYa2qcC7FcAgAFdhBA=
Date: Tue, 20 Aug 2019 17:08:47 +0000
Message-ID: <DM5PR18MB21847F6DBE98982EC529D77FD6AB0@DM5PR18MB2184.namprd18.prod.outlook.com>
References: <1565877479-1583-1-git-send-email-tanmay@marvell.com>
 <20190819200640.GA8268@xps15>
In-Reply-To: <20190819200640.GA8268@xps15>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [122.171.186.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 23168c13-f9b4-4158-5918-08d72591106c
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR18MB1545; 
x-ms-traffictypediagnostic: DM5PR18MB1545:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR18MB1545489DCB01047948F05B73D6AB0@DM5PR18MB1545.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 013568035E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(376002)(396003)(346002)(136003)(189003)(199004)(13464003)(51914003)(71200400001)(71190400001)(25786009)(52536014)(53936002)(74316002)(6436002)(6246003)(55016002)(102836004)(4326008)(7736002)(66066001)(6306002)(81156014)(76116006)(81166006)(33656002)(107886003)(6506007)(86362001)(66946007)(8936002)(2906002)(305945005)(229853002)(9686003)(54906003)(66556008)(66476007)(66446008)(64756008)(478600001)(486006)(186003)(966005)(6916009)(53546011)(256004)(26005)(14454004)(8676002)(5660300002)(7696005)(76176011)(11346002)(446003)(99286004)(476003)(316002)(6116002)(3846002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR18MB1545;
 H:DM5PR18MB2184.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /UDKE0pazOh89R6JRw5b4mIGiPyd6QaF1am5carg+wBJLvsXf29RykDPtU2LWdhRrmZb4wrwEo+K9bZPP3NYbwZhH/LZSXHIvNDi2YA3dfBeWNJLZdsboEm7y0u3q7hPoAIvEEblEWFGRUahKIDIi1koSSjihin09YxaQLdVgbu4gbdyvkt5pBhjDI9ltKDOKlfApFEeiICNXzFvBEE/xSUW6yrGu2M9vqUfZHRRxGQ6I09IelV6r7VeYfjMLSCYA6SxdT4yw96Xwv44teo5R/wkZg4Kh8gOhxQ4VuF06wb2SLcBZvIX8gjyGtkHCRVpS1wYcrF41Q1/LlyJSpxJfbDKAtMDZ4/Qj4zAiL9jtMVcVx9tnTKrjxPlrX9tkZ10d6RbbQqqToytybSmmrEjw7oieTJFEIaDvB5D3kcJbHM=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 23168c13-f9b4-4158-5918-08d72591106c
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2019 17:08:47.0737 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9fTvIpl8H1oFSqpKwgRXLx7fQI6OPxtiHaHY5+d81f9fu4LrniTqhEnCo4qxF2Z8f8NwvdQ5KaIGzzAoEu0uBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR18MB1545
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-08-20_07:2019-08-19,2019-08-20 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_100854_788353_6D8C7E8D 
X-CRM114-Status: GOOD (  21.64  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tomasz Nowicki <tnowicki@marvell.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Ganapatrao Kulkarni <gkulkarni@marvell.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "suzuki.poulose@arm.com" <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu,

Thanks for the review and the pointers. I'll keep those in mind.

Our hardware does not implement anything specific so we will use ARM's ACPI device for our static funnel.
We can drop this patch.

With Regards,
Tanmay



-----Original Message-----
From: Mathieu Poirier <mathieu.poirier@linaro.org> 
Sent: Tuesday, August 20, 2019 1:37 AM
To: Tanmay Vilas Kumar Jagdale <tanmay@marvell.com>
Cc: suzuki.poulose@arm.com; linux-arm-kernel@lists.infradead.org; Jayachandran Chandrasekharan Nair <jnair@marvell.com>; Ganapatrao Kulkarni <gkulkarni@marvell.com>; Tomasz Nowicki <tnowicki@marvell.com>
Subject: [EXT] Re: coresight: ACPI hook for funnel on ThunderX2

External Email

----------------------------------------------------------------------
Hi Tanmay,

On Thu, Aug 15, 2019 at 01:58:21PM +0000, Tanmay Vilas Kumar Jagdale wrote:
> Coresight topology on Marvell's ThunderX2 Processor is as follows:
> 
>  ETM0 _                                                   _ TPIU
>  ...   \    Static      Dynamic                          /
>  ...    --> FUNNEL0 --> FUNNEL1 --> ETF --> REPLICATOR --
> ETM127_/            |                                    \_ ETR
>                     |
>             ETM128--|
>                     /
>            Others--/
> 
> To support this topology add ACPI hook for Static Funnel0.
> 
> Signed-off-by: Tanmay Jagdale <tanmay@marvell.com>

There are a few things that aren't working with your patch.  First it doesn't clear checkpatch.pl - a lot of maintainers will not even look at a patch when it is the case.  Second it doesn't apply to my coresight next branch[1] and third there are formatting issue with the subject line.

I suggest you peruse through the Documentation/process directory with a special interest toward files submitting-patches.rst and submit-checklist.rst.  Your life (and mine) will be greatly improved in the process. 

More comments below...

> ---
>  drivers/hwtracing/coresight/coresight-funnel.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-funnel.c 
> b/drivers/hwtracing/coresight/coresight-funnel.c
> index fa97cb9ab4f9..315691fd6f4b 100644
> --- a/drivers/hwtracing/coresight/coresight-funnel.c
> +++ b/drivers/hwtracing/coresight/coresight-funnel.c
> @@ -5,6 +5,7 @@
>   * Description: CoreSight Funnel driver
>   */
>  
> +#include <linux/acpi.h>
>  #include <linux/kernel.h>
>  #include <linux/init.h>
>  #include <linux/types.h>
> @@ -297,6 +298,11 @@ static int static_funnel_probe(struct platform_device *pdev)
>  	return ret;
>  }
>  
> +static const struct acpi_device_id static_funnel_acpi_ids[] = {
> +	{ "CAV901A" },
> +	{},
> +};
> +

Is there anything different between this static funnel and ARM's static funnel?
An ACPI device for static funnels has already been added[2] - this is probably what you should be using.

Thanks,
Mathieu

[1]. https://git.linaro.org/kernel/coresight.git/log/?h=next
[2]. 991de72831b3 coresight: acpi: Static funnel support

>  static const struct of_device_id static_funnel_match[] = {
>  	{.compatible = "arm,coresight-static-funnel"},
>  	{}
> @@ -306,6 +312,7 @@ static struct platform_driver static_funnel_driver = {
>  	.probe          = static_funnel_probe,
>  	.driver         = {
>  		.name   = "coresight-static-funnel",
> +		.acpi_match_table = ACPI_PTR(static_funnel_acpi_ids),
>  		.of_match_table = static_funnel_match,
>  		.pm	= &funnel_dev_pm_ops,
>  		.suppress_bind_attrs = true,
> --
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
