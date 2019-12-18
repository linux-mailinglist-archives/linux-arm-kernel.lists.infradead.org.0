Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE854124987
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 15:26:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wUYjVpUvICcz9c6Xx4biCK8siH4L+CSVdNqzh6JOPUk=; b=qvCMB5xBD6hPD+
	W5qmfrLZMmRnvW+HDs6gGAJvF8fZaV8Q3aHbHcEl/hu1gNj/1Cd6IJgeRB12XyGU77MK1Wzk15auY
	lp4sv9sfwtWw5YCc64HisVBJyEoaPxpC6CS6JuKBJJzPknXPPgNJ0KbqqHVZv/av/IBL/18mXXLDT
	pCeOdk6wY3oN99PZjuuZKAwPXIIlaqMaevh2nVtyW9YinGxvLDv0cbJe4pPfACp+aRXJBgBfM/esU
	6u3XQ3G/uyILkx8WoH0XMOy6MnhKfTZZHcfG3TNHprSEDbjJ1grckyNiNCGJFE6Vpf2eamoF82vPh
	StTOrJpEA36KIQUOOoEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihaHS-00032w-M8; Wed, 18 Dec 2019 14:26:26 +0000
Received: from mail-mw2nam12on2061.outbound.protection.outlook.com
 ([40.107.244.61] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihaHE-00032W-Ku
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 14:26:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ReATDQbb3dcMGueSjKtysiPmHrsrFhiyB9sCZYuH8X+yqK0bfUvw9ysf2NPQUAvvtXwlIKR7o+AIH4OB/hBcW/VZTILVaiaFwlV9y/3Xn19N3R5KxkiW+nQRQz0JvYcUepCXCmXUVCJNvlbGHHWB/SJrMQ6cttsj+mOQVyGw7FS514gNQUFSqyJmXF609Fa/NiYVy2//1GVJmHZBdZabQeCEYdbnWoc+nt2pSVTxj11bXGUs1zzKgiKEuNj8vcHyrzU2YyFFKXTDTdWfJeGjHphsMdH5RiTwYMBG6YE0r1/4xi2RNd78xltpX+5g7k5uHQLy0FRNGmo7mVw3iqxQ5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uMC91GFCICarbzHRwh7ASMsKCP7yNkiUKt8WxiafnY0=;
 b=k40jVfB8FCZqsVUc3hnx1UgVo/gsNJQo+c+ERizWgfaZ6FhqqMc16oViVpemQTX5iQRtrkSx/sp4Ff2XtyYSuCW7dv5GhNDToTMG8Thq0mIR6lsfe18NCih+w5+iKtiUb/NnbJ4zxNuxbVh9ZgjkoQtQ78ARVF9hutAphMh1bbjJN6wT0uBVCB06Y9nN4aFKhZLc3gi5itbTd1gTbKMws/MXpZjebLHs4Lqapc5uJmJlj95JrSW8g9XhA2E5pIhSBR1f2ph2KkyHIPbw0M0hFylgZNI9ib3fk3K8R1zzTNFfQuPXVy2KQ4xKni2bFVNuoy5bzOYtDLEMl3+yMZU7Jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linaro.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uMC91GFCICarbzHRwh7ASMsKCP7yNkiUKt8WxiafnY0=;
 b=WQG+mJqLyCvVr6Bo7NRpGmDgshI/Djj99bTT/w+B54vp6a/fsJUt/y0+QNZ+X1ym7cdj+mn1xeyvFaUWyUXfbyAnYnlR8rG9vczkvq9jRkZF6L8wpGEQqwy8bOpzgWSVSJQxGjL5yoxOXNNjujtM2/4LaTjLrVStRx7dyMG+Hhc=
Received: from DM6PR14CA0057.namprd14.prod.outlook.com (2603:10b6:5:18f::34)
 by BN7PR02MB4196.namprd02.prod.outlook.com (2603:10b6:406:fc::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2538.15; Wed, 18 Dec
 2019 14:26:09 +0000
Received: from CY1NAM02FT041.eop-nam02.prod.protection.outlook.com
 (2603:10b6:5:18f:cafe::59) by DM6PR14CA0057.outlook.office365.com
 (2603:10b6:5:18f::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2559.14 via Frontend
 Transport; Wed, 18 Dec 2019 14:26:09 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT041.mail.protection.outlook.com (10.152.74.156) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2559.14
 via Frontend Transport; Wed, 18 Dec 2019 14:26:09 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1ihaHA-0001Du-I4; Wed, 18 Dec 2019 06:26:08 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1ihaH5-0006Og-2T; Wed, 18 Dec 2019 06:26:03 -0800
Received: from xsj-pvapsmtp01 (smtp2.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xBIEPxxj020038; 
 Wed, 18 Dec 2019 06:25:59 -0800
Received: from [172.30.17.107] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1ihaH0-0006ND-Ix; Wed, 18 Dec 2019 06:25:59 -0800
Subject: Re: [PATCH 4/5] firmware: xilinx: Add sysfs to set shutdown scope
To: Jolly Shah <jolly.shah@xilinx.com>, ard.biesheuvel@linaro.org,
 mingo@kernel.org, gregkh@linuxfoundation.org, matt@codeblueprint.co.uk,
 sudeep.holla@arm.com, hkallweit1@gmail.com, keescook@chromium.org,
 dmitry.torokhov@gmail.com, michal.simek@xilinx.com
References: <1575502159-11327-1-git-send-email-jolly.shah@xilinx.com>
 <1575502159-11327-5-git-send-email-jolly.shah@xilinx.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <de70f52f-0029-d500-2233-6368027e4fa0@xilinx.com>
Date: Wed, 18 Dec 2019 15:25:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <1575502159-11327-5-git-send-email-jolly.shah@xilinx.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(376002)(39860400002)(396003)(189003)(199004)(31686004)(7416002)(70206006)(31696002)(4326008)(81156014)(8676002)(81166006)(8936002)(5660300002)(54906003)(426003)(2906002)(478600001)(356004)(6666004)(2616005)(70586007)(9786002)(44832011)(336012)(186003)(36756003)(316002)(26005)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR02MB4196; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2761de50-125d-41a4-7472-08d783c639c9
X-MS-TrafficTypeDiagnostic: BN7PR02MB4196:
X-Microsoft-Antispam-PRVS: <BN7PR02MB41960B9215FD418B6A1D8353C6530@BN7PR02MB4196.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 0255DF69B9
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WHCSYcn5PBR7Xd9Xn2XAxNmuQD+AEs2FZt99QB+9VOIEUqNVAYexGFyUM4JFL+cSfPV+WKcSQoiR3TMkYNFPm60oJ8vFhyMTr4KTe5hOoAgmNI4fbNUnnYp0aQSbMF4DBC6iNnG+t6giRhATuSOU41hRQrXgtCAqqmcnj2v9rUnZFkerrqqX+EnPPl/cOtPuEm/TsUf4LCb3/k0gTxMgGMXI8rlTYTO7GYMI8J3Tbye+AlrJ0JqQGRh8xLCbowzMk7/kDiZTd0Na7/ae7/IeSgbBZWCjkQYJ3ebxMYqoEptoMntQ0WNVYgUUw+iT5R5aeg9SulcKdlcBSXhxEADcpDVQrsRN6P+9/0cEsIpc/E/6BbAISdSn/LDi4RRMY04pJHaxuBLOQTd7K6pHcEHd1m1e2OyDXMmvFws4C8Aq31YzjmLciEbE0CsQTUb+4fWnb9TYjbjFUh6GoWkPM4x8hK/czrdtK85JgvAlFGE2p1wpqhkym9nKYWaJoruvg8G/
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Dec 2019 14:26:09.0349 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2761de50-125d-41a4-7472-08d783c639c9
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR02MB4196
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_062612_713746_5510E183 
X-CRM114-Status: GOOD (  29.71  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.61 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rajan Vaja <rajan.vaja@xilinx.com>, rajanv@xilinx.com,
 Stefan Krsmanovic <stefan.krsmanovic@aggios.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05. 12. 19 0:29, Jolly Shah wrote:
> From: Rajan Vaja <rajan.vaja@xilinx.com>
> 
> The Linux shutdown functionality implemented via PSCI system_off does
> not include an option to set a scope, i.e. which parts of the system to
> shut down.
> 
> This patch creates sysfs that allows to set the shutdown scope for the
> next shutdown request. When the next shutdown is performed, the platform
> specific portion of PSCI-system_off can use the chosen shutdown scope.
> 
> Signed-off-by: Stefan Krsmanovic <stefan.krsmanovic@aggios.com>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
> Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
> ---
>  Documentation/ABI/stable/sysfs-firmware-zynqmp |  32 ++++++
>  drivers/firmware/xilinx/zynqmp.c               | 141 +++++++++++++++++++++++++
>  include/linux/firmware/xlnx-zynqmp.h           |  12 +++
>  3 files changed, 185 insertions(+)
> 
> diff --git a/Documentation/ABI/stable/sysfs-firmware-zynqmp b/Documentation/ABI/stable/sysfs-firmware-zynqmp
> index 0a75812..13e4fd2 100644
> --- a/Documentation/ABI/stable/sysfs-firmware-zynqmp
> +++ b/Documentation/ABI/stable/sysfs-firmware-zynqmp
> @@ -48,3 +48,35 @@ Description:
>  		# echo 0xFFFFFFFF 0x1234ABCD > /sys/firmware/zynqmp/pggs0
>  
>  Users:		Xilinx
> +
> +What:		/sys/firmware/zynqmp/shutdown_scope
> +Date:		February 2018
> +KernelVersion:	4.15.6

ditto.

> +Contact:	"Jolly Shah" <jollys@xilinx.com>
> +Description:
> +		This sysfs interface allows to set the shutdown scope for the
> +		next shutdown request. When the next shutdown is performed, the
> +		platform specific portion of PSCI-system_off can use the chosen
> +		shutdown scope.
> +
> +		Following are available shutdown scopes(subtypes):
> +
> +		subsystem:	Only the APU along with all of its peripherals
> +				not used by other processing units will be
> +				shut down. This may result in the FPD power
> +				domain being shut down provided that no other
> +				processing unit uses FPD peripherals or DRAM.
> +		ps_only:	The complete PS will be shut down, including the
> +				RPU, PMU, etc.  Only the PL domain (FPGA)
> +				remains untouched.
> +		system:		The complete system/device is shut down.
> +
> +		Usage:
> +		# cat /sys/firmware/zynqmp/shutdown_scope
> +		# echo <scope> > /sys/firmware/zynqmp/shutdown_scope
> +
> +		Example:
> +		# cat /sys/firmware/zynqmp/shutdown_scope
> +		# echo "subsystem" > /sys/firmware/zynqmp/shutdown_scope
> +
> +Users:		Xilinx
> diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
> index 8dcf5a4..b23bda4 100644
> --- a/drivers/firmware/xilinx/zynqmp.c
> +++ b/drivers/firmware/xilinx/zynqmp.c
> @@ -746,6 +746,146 @@ const struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
>  EXPORT_SYMBOL_GPL(zynqmp_pm_get_eemi_ops);
>  
>  /**
> + * struct zynqmp_pm_shutdown_scope - Struct for shutdown scope
> + * @subtype:	Shutdown subtype
> + * @name:	Matching string for scope argument
> + *
> + * This struct encapsulates mapping between shutdown scope ID and string.
> + */
> +struct zynqmp_pm_shutdown_scope {
> +	const enum zynqmp_pm_shutdown_subtype subtype;
> +	const char *name;
> +};
> +
> +static struct zynqmp_pm_shutdown_scope shutdown_scopes[] = {
> +	[ZYNQMP_PM_SHUTDOWN_SUBTYPE_SUBSYSTEM] = {
> +		.subtype = ZYNQMP_PM_SHUTDOWN_SUBTYPE_SUBSYSTEM,
> +		.name = "subsystem",
> +	},
> +	[ZYNQMP_PM_SHUTDOWN_SUBTYPE_PS_ONLY] = {
> +		.subtype = ZYNQMP_PM_SHUTDOWN_SUBTYPE_PS_ONLY,
> +		.name = "ps_only",
> +	},
> +	[ZYNQMP_PM_SHUTDOWN_SUBTYPE_SYSTEM] = {
> +		.subtype = ZYNQMP_PM_SHUTDOWN_SUBTYPE_SYSTEM,
> +		.name = "system",
> +	},
> +};
> +
> +static struct zynqmp_pm_shutdown_scope *selected_scope =
> +		&shutdown_scopes[ZYNQMP_PM_SHUTDOWN_SUBTYPE_SYSTEM];
> +
> +/**
> + * zynqmp_pm_is_shutdown_scope_valid - Check if shutdown scope string is valid
> + * @scope_string:	Shutdown scope string
> + *
> + * Return:		Return pointer to matching shutdown scope struct from
> + *			array of available options in system if string is valid,
> + *			otherwise returns NULL.
> + */
> +static struct zynqmp_pm_shutdown_scope*
> +		zynqmp_pm_is_shutdown_scope_valid(const char *scope_string)
> +{
> +	int count;
> +
> +	for (count = 0; count < ARRAY_SIZE(shutdown_scopes); count++)
> +		if (sysfs_streq(scope_string, shutdown_scopes[count].name))
> +			return &shutdown_scopes[count];
> +
> +	return NULL;
> +}
> +
> +/**
> + * shutdown_scope_show - Show shutdown_scope sysfs attribute
> + * @kobj:	Kobject structure
> + * @attr:	Kobject attribute structure
> + * @buf:	Requested available shutdown_scope attributes string
> + *
> + * User-space interface for viewing the available scope options for system
> + * shutdown. Scope option for next shutdown call is marked with [].
> + *
> + * Usage: cat /sys/firmware/zynqmp/shutdown_scope
> + *
> + * Return:	Number of bytes printed into the buffer.
> + */
> +static ssize_t shutdown_scope_show(struct kobject *kobj,
> +				   struct kobj_attribute *attr,
> +				   char *buf)
> +{
> +	int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(shutdown_scopes); i++) {
> +		if (&shutdown_scopes[i] == selected_scope) {
> +			strcat(buf, "[");
> +			strcat(buf, shutdown_scopes[i].name);
> +			strcat(buf, "]");
> +		} else {
> +			strcat(buf, shutdown_scopes[i].name);
> +		}
> +		strcat(buf, " ");
> +	}
> +	strcat(buf, "\n");
> +
> +	return strlen(buf);
> +}
> +
> +/**
> + * shutdown_scope_store - Store shutdown_scope sysfs attribute
> + * @kobj:	Kobject structure
> + * @attr:	Kobject attribute structure
> + * @buf:	User entered shutdown_scope attribute string
> + * @count:	Buffer size
> + *
> + * User-space interface for setting the scope for the next system shutdown.
> + * Usage: echo <scope> > /sys/firmware/zynqmp/shutdown_scope
> + *
> + * The Linux shutdown functionality implemented via PSCI system_off does not
> + * include an option to set a scope, i.e. which parts of the system to shut
> + * down.
> + *
> + * This API function allows to set the shutdown scope for the next shutdown
> + * request by passing it to the ATF running in EL3. When the next shutdown
> + * is performed, the platform specific portion of PSCI-system_off can use
> + * the chosen shutdown scope.
> + *
> + * subsystem:	Only the APU along with all of its peripherals not used by other
> + *		processing units will be shut down. This may result in the FPD
> + *		power domain being shut down provided that no other processing
> + *		unit uses FPD peripherals or DRAM.
> + * ps_only:	The complete PS will be shut down, including the RPU, PMU, etc.
> + *		Only the PL domain (FPGA) remains untouched.
> + * system:	The complete system/device is shut down.
> + *
> + * Return:	count argument if request succeeds, the corresponding error
> + *		code otherwise
> + */
> +static ssize_t shutdown_scope_store(struct kobject *kobj,
> +				    struct kobj_attribute *attr,
> +				    const char *buf, size_t count)
> +{
> +	int ret;
> +	struct zynqmp_pm_shutdown_scope *scope;
> +
> +	scope = zynqmp_pm_is_shutdown_scope_valid(buf);
> +	if (!scope)
> +		return -EINVAL;
> +
> +	ret = zynqmp_pm_system_shutdown(ZYNQMP_PM_SHUTDOWN_TYPE_SETSCOPE_ONLY,
> +					scope->subtype);
> +	if (ret) {
> +		pr_err("unable to set shutdown scope %s\n", buf);
> +		return ret;
> +	}
> +
> +	selected_scope = scope;
> +
> +	return count;
> +}
> +
> +static struct kobj_attribute zynqmp_attr_shutdown_scope =
> +						__ATTR_RW(shutdown_scope);

the same as was in 1/5.

> +
> +/**
>   * config_reg_store - Write config_reg sysfs attribute
>   * @kobj:	Kobject structure
>   * @attr:	Kobject attribute structure
> @@ -870,6 +1010,7 @@ static struct kobj_attribute zynqmp_attr_config_reg =
>  					__ATTR_RW(config_reg);
>  
>  static struct attribute *attrs[] = {
> +	&zynqmp_attr_shutdown_scope.attr,
>  	&zynqmp_attr_config_reg.attr,
>  	NULL,
>  };
> diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
> index b96ea5d..54061de 100644
> --- a/include/linux/firmware/xlnx-zynqmp.h
> +++ b/include/linux/firmware/xlnx-zynqmp.h
> @@ -277,6 +277,18 @@ enum pm_register_access_id {
>  	CONFIG_REG_READ,
>  };
>  
> +enum zynqmp_pm_shutdown_type {
> +	ZYNQMP_PM_SHUTDOWN_TYPE_SHUTDOWN,
> +	ZYNQMP_PM_SHUTDOWN_TYPE_RESET,
> +	ZYNQMP_PM_SHUTDOWN_TYPE_SETSCOPE_ONLY,
> +};
> +
> +enum zynqmp_pm_shutdown_subtype {
> +	ZYNQMP_PM_SHUTDOWN_SUBTYPE_SUBSYSTEM,
> +	ZYNQMP_PM_SHUTDOWN_SUBTYPE_PS_ONLY,
> +	ZYNQMP_PM_SHUTDOWN_SUBTYPE_SYSTEM,
> +};
> +
>  /**
>   * struct zynqmp_pm_query_data - PM query data
>   * @qid:	query ID
> 

M

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
