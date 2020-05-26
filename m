Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F821E19A8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 04:46:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=U8CEAAriF/VyfmMEW9hCMxpLZ8GrpnEZzpIhcYQPWPg=; b=A5Bhmpxn2joAUwmL1suUQBXGP
	Hs331LwTkcBcm8u/8tz9Zhqpcdb7NaJk/vTjsw/jNnjRRoYeM8ZVFLD9gSxTcYcm6Z2md4eQY8l4L
	At7zcYb65StVVbHuhDgE32b2mmNAueBXnzq34PJSH46Nud9el0kq+uujxI9iGCsrVvG3LNXna3nGV
	DTUNan3PU6yHGI9mxAUjNfCPT0zyhWVVsq7i7VGY8Zbac4wh37Q2Vq/DjdB9fnIO42h7YXlMM8Q7P
	ILpBZhXhHwbCoNwipHXBU4AJ5uLHZwJslLFG7VIsDvEu57WsaOE1JR6ebPLLpek/Q1/u1il0V1yG7
	WdM3xsTiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdPc2-0003Pm-M8; Tue, 26 May 2020 02:46:42 +0000
Received: from mail-bn8nam12on2081.outbound.protection.outlook.com
 ([40.107.237.81] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdPbt-0003P7-7k
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 02:46:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q3uYB53Usv0Jd2Fx6Pgek0ImaIHbBwnhq52eiCK6uqQep+GPHZGRwz3NwJCh0SBHuQ8tcvwYsz1nlStv+m1Xfo3GU+nvPgYvhPwhzokabSvnpLJq9bMi+26EWCLL0vOCjDedrmGMoJ/ok9XANsOkvL0BnJVa3vW3x6eoW8a4NETmx/jfuq0m6wSk20G+97VVTOPHA4J855t+K8ytHUOO8VJI4m6MKYtVhPjvFOIjmvcY5pSBX2y9sZF+6NIWJ2rJ/jTMNriRjisGFnXRpnn78MnyboUku3N8IcWfmH6wmUYOsIFcwWXCSI3uqGzFlMnUrLlg6wShNmUSHzSxgAMllA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hZ1ruBnRURRQUco7vr1Yy5oCQoL4jvnfHoKzjA7Ph6k=;
 b=AQSKrNwoz498XYzeT3W3jo/L+36xNb3NlILBhGjJuaXF98/W1msLkY2vxXrhmJUdOCtjeBD/zM64ugexKeZstXQlKVR1uQza2AejRZdIpOSlYskxREmIuFSTaW56ynl6NxETexRiR0+pxfDSyb+qpXbnzOPj5V8h8Y5FfhXlQbbj+J+xy6lIk9uJsAZnzsr1YkbyRD0e1VCJlvc0F/fytPQOpJO0GykuDAv7pvrelKdTVVGiICnqlNQBXosUmjA405E0085xX8fk87nLCesnOqvsEycxdCNtyz7aQjOoCIIpU+nTjKMnrC4BQ1mQH/OhNpEXDyzJ/awyFG8q2o4jRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hZ1ruBnRURRQUco7vr1Yy5oCQoL4jvnfHoKzjA7Ph6k=;
 b=fERgxbwOiESX3adcZQbeqFJsCcDs7b6C0/Z9RjMqW2aD153kcLagwP65Ub0Xc9LpNa/5Mfh25kbLgIRZkiKwzFA3DfBgR6DBufkZ/19kHKkVmdswv83fPsT0hUp0bw/cg/YCSPru2LKaIeDh6InmuIhd/6XI0a3DJc+xny7tB4Y=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB2747.namprd11.prod.outlook.com (2603:10b6:5:c6::22) by
 DM6PR11MB2859.namprd11.prod.outlook.com (2603:10b6:5:c9::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23; Tue, 26 May 2020 02:46:29 +0000
Received: from DM6PR11MB2747.namprd11.prod.outlook.com
 ([fe80::ad7f:84a9:35bd:edf8]) by DM6PR11MB2747.namprd11.prod.outlook.com
 ([fe80::ad7f:84a9:35bd:edf8%4]) with mapi id 15.20.3021.029; Tue, 26 May 2020
 02:46:29 +0000
Subject: Re: [PATCH][V3] arm64: perf: Get the wrong PC value in REGS_ABI_32
 mode
To: will.deacon@arm.com, paul.gortmaker@windriver.com, mark.rutland@arm.com,
 catalin.marinas@arm.com, bruce.ashfield@gmail.com, yue.tao@windriver.com
References: <1589165527-188401-1-git-send-email-jiping.ma2@windriver.com>
From: Jiping Ma <Jiping.Ma2@windriver.com>
Message-ID: <01c5b299-be4b-3960-d7c1-338df08a2972@windriver.com>
Date: Tue, 26 May 2020 10:46:20 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
In-Reply-To: <1589165527-188401-1-git-send-email-jiping.ma2@windriver.com>
Content-Language: en-US
X-ClientProxiedBy: HK2PR04CA0062.apcprd04.prod.outlook.com
 (2603:1096:202:14::30) To DM6PR11MB2747.namprd11.prod.outlook.com
 (2603:10b6:5:c6::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.162.195] (60.247.85.82) by
 HK2PR04CA0062.apcprd04.prod.outlook.com (2603:1096:202:14::30) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23 via Frontend Transport; Tue, 26 May 2020 02:46:26 +0000
X-Originating-IP: [60.247.85.82]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c1d1982e-87e0-4564-accc-08d8011efdff
X-MS-TrafficTypeDiagnostic: DM6PR11MB2859:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR11MB2859E7924AFB316D5E75571DD8B00@DM6PR11MB2859.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-Forefront-PRVS: 041517DFAB
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PBNoiNVPi87qvb5/2ki1oEB2ZSAoosTCQKM6bAmLuyQ9VIRTzrqFXEG3fkjk1V0EEG1XimS+u9oWeJss3AmbUEkOKHsnKSSHz62aDAiAeW3b2YEOMNl6fyyaqHiW5W7MagbeuROZa9AYd1pRc0mBLcAxx5LJ45W6MQnlUmlyIkZaha5xZPQ4VXs80WPn66aDUA1up7g1VxX3iRTuzOkMm2qQ0CPmNyrK8Rp+4eXf2vWtDEgNtMdrcakbmvw5L5jD/MwhH5I0v6WeTG9FdxAnS3IjX0NHiL3ABwvPIOU1qk+ax9fdRZ0OfRn6WZqdd03jJr7YwLMvtLoP46jCScDfpNZmxU0+Ou6HIZtxedf/pVfU71G6EmUOzctKudlsOmhJPjw5PMv0zAfv7ev12y66zeuCyTq3ctXIvSzTquS+nNNeECiLCFcqdZTkF6Q9kzU9MHdcuOGTS5rgWcyWt1RLhQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2747.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(39850400004)(346002)(366004)(376002)(136003)(2906002)(86362001)(956004)(186003)(36756003)(16526019)(5660300002)(2616005)(52116002)(26005)(31696002)(4744005)(53546011)(6666004)(8936002)(4326008)(8676002)(66946007)(107886003)(6486002)(66556008)(66476007)(478600001)(316002)(31686004)(16576012)(6636002)(6706004)(78286006)(15583001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: N5oGZ9h+cTj7yDsnoF2avfkgQ7LvN2OGJHoAb4x8jxoevVkG9wDjOICXu1WSTbNWb6DascVHXF3NDZfsYabkCiA0wTlg0Pqr+dfMezeS66MpQFk0fIkd1mb6jb8kRbwUkZEYkwYyX99RBbtoFcy1q4IuvUsLUf9fhbvSU3njj1WanWlJdj2Ir7NcW9G5VKG3EKq0nP520UJuqxADJaeLKhxVJ0PaS3FwuY16N26XERxdej4oJpUCiLnZ3QRcCiVC1XV9Za1ZIOyz8+WATS3C9XoSbgPk+hT/3rGcHvoJJWdmseMUsTa8zqKsBpgSD/wmpLsiP1LM5RJ4K/rbv6bY1GzWQ4TDmBgimH7b+zy8ePmwuL16maZqBU7ufKdqhB83PjFn668E69FkuTzVq6KogEN80M16qyhIM3UNdDX7x7EYMeA+vIpZqxRoZmvmvN/IPeRZFocYz2K71PsJnt131AimNjVSZ/15QbsxwegWDZk=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1d1982e-87e0-4564-accc-08d8011efdff
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 May 2020 02:46:29.7352 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CM2JR5v4r7NiJXjgXNbI57xx9Cvb6/I+xtX/PD2wzOOKYPNroLppB0RinxR4BlAFqxIqtueFj5RMcP8xlJ10WU5UtTKFJzzcwbQy2eEkiz4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2859
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_194633_279534_282D5163 
X-CRM114-Status: GOOD (  16.66  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.237.81 listed in wl.mailspike.net]
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
Cc: zhe.he@windriver.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Will

Please help to review the change.

Thanks,
Jiping

On 05/11/2020 10:52 AM, Jiping Ma wrote:
> Modified the patch subject and the change description.
>
> PC value is get from regs[15] in REGS_ABI_32 mode, but correct PC
> is regs->pc(regs[PERF_REG_ARM64_PC]) in arm64 kernel, which caused
> that perf can not parser the backtrace of app with dwarf mode in the
> 32bit system and 64bit kernel.
>
> Signed-off-by: Jiping Ma <jiping.ma2@windriver.com>
> ---
>   arch/arm64/kernel/perf_regs.c | 4 ++++
>   1 file changed, 4 insertions(+)
>
> diff --git a/arch/arm64/kernel/perf_regs.c b/arch/arm64/kernel/perf_regs.c
> index 0bbac61..0ef2880 100644
> --- a/arch/arm64/kernel/perf_regs.c
> +++ b/arch/arm64/kernel/perf_regs.c
> @@ -32,6 +32,10 @@ u64 perf_reg_value(struct pt_regs *regs, int idx)
>   	if ((u32)idx == PERF_REG_ARM64_PC)
>   		return regs->pc;
>   
> +	if (perf_reg_abi(current) == PERF_SAMPLE_REGS_ABI_32
> +		&& idx == 15)
> +		return regs->pc;
> +
>   	return regs->regs[idx];
>   }
>   


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
