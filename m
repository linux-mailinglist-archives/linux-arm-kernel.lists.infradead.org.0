Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FBA6124940
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 15:17:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=It8SCvP27No39j86GiZDNjn+FilOEgZ5BiuIKWG8xvE=; b=rr4Ll/L7hbFYhc
	gsOj6AbUGeIL4QGm5ksevZjOwTJGdVd+VBiKBhHziAU3JW+WzRaH3CvRcV0NN6N9Xuz9jSUfJrA9u
	CCd2YWGiq7Lwgjsjrdrqv+ETCs7Ymkh0O3wg+Qkph04zKbp/Y8YSTtNsUQERkr/qmJOm6kUSNj2CQ
	fwW/H4Tt2vRoZ1NZn5crBM5HUtZa9PpVpvdf9OAUsIXU8Ce7MDfGFJewNajY0tNXq88w5c2pSVvh1
	JwzP2DpmhJkZDPA0yOf1TvlTW3vr7VpvIIA0v2YFuxJPNOTf9W/4e7QqJMMh53tD5SScwZX9qzB4w
	C9TsI8peTQYrxQAl50GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iha8W-0006a2-VC; Wed, 18 Dec 2019 14:17:12 +0000
Received: from mail-mw2nam10on2063.outbound.protection.outlook.com
 ([40.107.94.63] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iha8M-0006ZR-TG
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 14:17:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZY4OITuZk+IXEUhpFNnXYKzZI/eVpxljsJERIpLvRumlEWtrPwZs78OpzeT38bPhbwt8cRLnXpPAy8rScYCqj4RmcwLHb60tGR4+c9yvg0mjnSB17g8A5aw7LFBmh1ZR/uIGBubZUSO322L6hUirhxaE9zn8nerS2Y6ex+5GpIx/fK3mhzSNiSLNJ14rjzgw8L8W6cqlI/2PUQdNSTTEkUeHcPdEFWGSgNgpXtddo8TW9/jYKEJGDmnKNpMTIi/3Z6A/fjuBTXD9zUQLNl12lcc3m/miI1Q7eRHp8eP3NRMDgvaf4a/GNDy08pRcmYPL2WowV7Xho96xlqOhn9/Clw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EMBmGi4LAVqz/aqVHy78Gl6OXVQxOSRVUkrMiiFA3ec=;
 b=e9OmUS9ftYm4w7Pgo6wADUnTHYYDlbWZ5ezZ2lvSx354k4LgrFrSZ6EF30FbPB04GgYtL3MItl6xFu5OP0GgkKRhKEHujqvgQU+ET7Db2OJDS74F1yChvTT0jqo6NV9+Fev8Ns0kc7gJ0NoVdcZJfJeObUeAPjB7RQtdKgGAp59CA/t94mGzqYMCLTwBk3VVVP8mlB30nzCGjsjwUwZE9j72wc3fg8sBRpEorvPByVcP6dFVFMK0z/tu3By3hfwQP5AdnAOYQEyD4u18wKgz2FmcaMXCVV6h4wEBQ2EMIzN1TweiRQTwrdjmURwIAxcQybrcjEpvXLePVcUOC9N7rA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linaro.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EMBmGi4LAVqz/aqVHy78Gl6OXVQxOSRVUkrMiiFA3ec=;
 b=hTdiT8eFuxpGNqw2PCt94++v4vaeV0f+UpsTVoAKgafPQuBTMpF0sl0FEC/hmI/Hzsoi0dvWHV3fLCZ2eQpaueuTfDaphmcgjSZxFurzUO9Rc9D2KSL/aMxVgWkdpUOTsz4gt/GTswIdUbdYjDJThCMnfdrhSUUFLQpyVl3imqA=
Received: from DM6PR17CA0019.namprd17.prod.outlook.com (2603:10b6:5:1b3::32)
 by MWHPR02MB2190.namprd02.prod.outlook.com (2603:10b6:300:68::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2559.14; Wed, 18 Dec
 2019 14:16:57 +0000
Received: from CY1NAM02FT047.eop-nam02.prod.protection.outlook.com
 (2603:10b6:5:1b3:cafe::b3) by DM6PR17CA0019.outlook.office365.com
 (2603:10b6:5:1b3::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2538.18 via Frontend
 Transport; Wed, 18 Dec 2019 14:16:57 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT047.mail.protection.outlook.com (10.152.74.177) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2559.14
 via Frontend Transport; Wed, 18 Dec 2019 14:16:57 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1iha8G-0001CC-Q7; Wed, 18 Dec 2019 06:16:56 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1iha8B-0004A9-AC; Wed, 18 Dec 2019 06:16:51 -0800
Received: from xsj-pvapsmtp01 (mailman.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xBIEGf5b011010; 
 Wed, 18 Dec 2019 06:16:41 -0800
Received: from [172.30.17.107] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1iha80-000497-Ur; Wed, 18 Dec 2019 06:16:41 -0800
Subject: Re: [PATCH 1/5] firmware: xilinx: Adds new eemi call for reg access
To: Michal Simek <michal.simek@xilinx.com>, Jolly Shah
 <jolly.shah@xilinx.com>, ard.biesheuvel@linaro.org,
 mingo@kernel.org, gregkh@linuxfoundation.org, matt@codeblueprint.co.uk,
 sudeep.holla@arm.com, hkallweit1@gmail.com, keescook@chromium.org,
 dmitry.torokhov@gmail.com
References: <1575502159-11327-1-git-send-email-jolly.shah@xilinx.com>
 <1575502159-11327-2-git-send-email-jolly.shah@xilinx.com>
 <a75310be-da16-8b8e-90a8-3a15ef8b735d@xilinx.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <123fd714-f395-1b1f-7781-a07dc4cf223c@xilinx.com>
Date: Wed, 18 Dec 2019 15:16:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <a75310be-da16-8b8e-90a8-3a15ef8b735d@xilinx.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(376002)(136003)(396003)(199004)(189003)(316002)(70206006)(9786002)(107886003)(426003)(70586007)(356004)(8676002)(8936002)(26005)(2616005)(336012)(2906002)(81156014)(81166006)(5660300002)(31696002)(478600001)(186003)(31686004)(7416002)(6666004)(4326008)(110136005)(44832011)(36756003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR02MB2190; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ff4a597f-1fe8-4953-45b5-08d783c4f0ea
X-MS-TrafficTypeDiagnostic: MWHPR02MB2190:
X-Microsoft-Antispam-PRVS: <MWHPR02MB21908F43513E887CD3718B80C6530@MWHPR02MB2190.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4125;
X-Forefront-PRVS: 0255DF69B9
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jpMHw1gizO2NwvJgvJSNo9X1yypVX3cIZgWPEfUue+Qrfcu1lnLHGpa6X344Dk8yyG9Eq9Wy1Z7JwNM1nOUSE1ra06FZSNomlOpeWFyy8vddbGDzC+9iVuqn0VFgYjF7gWlfeWLAseDKvLGfIV/6Ll83M1Pynez9Nv5UsaMZTHUk+1h6YrnbDcSe3oe6BF4E+SU5y+3f3D1fpBXMjnjf9LR1wnwZ2LYUYGuHeTwO+9jiMOqzo7m6FYJ+2CgVNvcGBxrhee1InKdeYsaUhYSohRnes3fIelOwE386xrIXaVNJQoPlhzPhXEYXBrnL/4gUtLYkyLyjBSp3/a4i0lt22A3Fw3tbKRa6YJcYUXBABUElPeQy3fW9s6UiFhcXfsHxx8ZlReSm56DzPBbXmUmxheBixUx51sUSkOdAYJBxPaEMtQ4j0YhHaqzHS/8JRfOy9VrkHEWr1J5HwHkpOOQopY0hTAyWsbATMtGUC79uYaos2jzCy/NwCvai+y6RpjVh
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Dec 2019 14:16:57.2786 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ff4a597f-1fe8-4953-45b5-08d783c4f0ea
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR02MB2190
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_061702_975109_CD673096 
X-CRM114-Status: GOOD (  21.14  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.63 listed in list.dnswl.org]
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18. 12. 19 15:10, Michal Simek wrote:
> On 05. 12. 19 0:29, Jolly Shah wrote:
>> From: Rajan Vaja <rajan.vaja@xilinx.com>
>>
>> This patch adds new EEMI call which is used for CSU/PMU register
>> access from linux.
>>
>> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
>> Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
>> Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
>> ---
>>  drivers/firmware/xilinx/zynqmp.c     | 183 +++++++++++++++++++++++++++++++++++
>>  include/linux/firmware/xlnx-zynqmp.h |   9 ++
>>  2 files changed, 192 insertions(+)
>>
>> diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
>> index fd3d837..56431ad 100644
>> --- a/drivers/firmware/xilinx/zynqmp.c
>> +++ b/drivers/firmware/xilinx/zynqmp.c
>> @@ -24,6 +24,8 @@
>>  #include <linux/firmware/xlnx-zynqmp.h>
>>  #include "zynqmp-debug.h"
>>  
>> +static unsigned long register_address;
>> +
>>  static const struct zynqmp_eemi_ops *eemi_ops_tbl;
>>  
>>  static const struct mfd_cell firmware_devs[] = {
>> @@ -664,6 +666,26 @@ static int zynqmp_pm_set_requirement(const u32 node, const u32 capabilities,
>>  				   qos, ack, NULL);
>>  }
>>  
>> +/**
>> + * zynqmp_pm_config_reg_access - PM Config API for Config register access
>> + * @register_access_id:	ID of the requested REGISTER_ACCESS
>> + * @address:		Address of the register to be accessed
>> + * @mask:		Mask to be written to the register
>> + * @value:		Value to be written to the register
>> + * @out:		Returned output value
>> + *
>> + * This function calls REGISTER_ACCESS to configure CSU/PMU registers.
>> + *
>> + * Return:	Returns status, either success or error+reason
>> + */
>> +
>> +static int zynqmp_pm_config_reg_access(u32 register_access_id, u32 address,
>> +				       u32 mask, u32 value, u32 *out)
>> +{
>> +	return zynqmp_pm_invoke_fn(PM_REGISTER_ACCESS, register_access_id,
>> +				   address, mask, value, out);
>> +}
>> +
>>  static const struct zynqmp_eemi_ops eemi_ops = {
>>  	.get_api_version = zynqmp_pm_get_api_version,
>>  	.get_chipid = zynqmp_pm_get_chipid,
>> @@ -687,6 +709,7 @@ static const struct zynqmp_eemi_ops eemi_ops = {
>>  	.set_requirement = zynqmp_pm_set_requirement,
>>  	.fpga_load = zynqmp_pm_fpga_load,
>>  	.fpga_get_status = zynqmp_pm_fpga_get_status,
>> +	.register_access = zynqmp_pm_config_reg_access,
>>  };
>>  
>>  /**
>> @@ -704,6 +727,160 @@ const struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
>>  }
>>  EXPORT_SYMBOL_GPL(zynqmp_pm_get_eemi_ops);
>>  
>> +/**
>> + * config_reg_store - Write config_reg sysfs attribute
>> + * @kobj:	Kobject structure
>> + * @attr:	Kobject attribute structure
>> + * @buf:	User entered health_status attribute string
>> + * @count:	Buffer size
>> + *
>> + * User-space interface for setting the config register.
>> + *
>> + * To write any CSU/PMU register
>> + * echo <address> <mask> <values> > /sys/firmware/zynqmp/config_reg
>> + * Usage:
>> + * echo 0x345AB234 0xFFFFFFFF 0x1234ABCD > /sys/firmware/zynqmp/config_reg
>> + *
>> + * To Read any CSU/PMU register, write address to the variable like below
>> + * echo <address> > /sys/firmware/zynqmp/config_reg
>> + *
>> + * Return:	count argument if request succeeds, the corresponding error
>> + *		code otherwise
>> + */
>> +static ssize_t config_reg_store(struct kobject *kobj,
>> +				struct kobj_attribute *attr,
>> +				const char *buf, size_t count)
>> +{
>> +	char *kern_buff, *inbuf, *tok;
>> +	unsigned long address, value, mask;
>> +	int ret;
>> +
>> +	kern_buff = kzalloc(count, GFP_KERNEL);
>> +	if (!kern_buff)
>> +		return -ENOMEM;
>> +
>> +	ret = strlcpy(kern_buff, buf, count);
>> +	if (ret < 0) {
>> +		ret = -EFAULT;
>> +		goto err;
>> +	}
> 
> Greg: What's the recommended way how to parse parameters via sysfs?
> I see that kstrndup is used for cloning buffer instead of kzalloc
> followed by strchr and sscanf.
> 
> 
>> +
>> +	inbuf = kern_buff;
>> +
>> +	/* Read the addess */
> 
> typo here.
> 
>> +	tok = strsep(&inbuf, " ");
>> +	if (!tok) {
>> +		ret = -EFAULT;
>> +		goto err;
>> +	}
>> +	ret = kstrtol(tok, 16, &address);
>> +	if (ret) {
>> +		ret = -EFAULT;
>> +		goto err;
>> +	}
>> +	/* Read the write value */
>> +	tok = strsep(&inbuf, " ");
>> +	/*
>> +	 * If parameter provided is only address, then its a read operation.
>> +	 * Store the address in a global variable and retrieve whenever
>> +	 * required.
>> +	 */
>> +	if (!tok) {
>> +		register_address = address;
>> +		goto err;
>> +	}
>> +	register_address = address;
>> +
>> +	ret = kstrtol(tok, 16, &mask);
>> +	if (ret) {
>> +		ret = -EFAULT;
>> +		goto err;
>> +	}
>> +	tok = strsep(&inbuf, " ");
>> +	if (!tok) {
>> +		ret = -EFAULT;
>> +		goto err;
>> +	}
>> +	ret = kstrtol(tok, 16, &value);
>> +	if (!tok) {
>> +		ret = -EFAULT;
>> +		goto err;
>> +	}
>> +	ret = zynqmp_pm_config_reg_access(CONFIG_REG_WRITE, address,
>> +					  mask, value, NULL);
>> +	if (ret)
>> +		pr_err("unable to write value to %lx\n", value);
>> +err:
>> +	kfree(kern_buff);
>> +	if (ret)
>> +		return ret;
>> +	return count;
>> +}
>> +
>> +/**
>> + * config_reg_show - Read config_reg sysfs attribute
>> + * @kobj:	Kobject structure
>> + * @attr:	Kobject attribute structure
>> + * @buf:	User entered health_status attribute string
>> + *
>> + * User-space interface for getting the config register.
>> + *
>> + * To Read any CSU/PMU register, write address to the variable like below
>> + * echo <address> > /sys/firmware/zynqmp/config_reg
>> + *
>> + * Then Read the address using below command
>> + * cat /sys/firmware/zynqmp/config_reg
>> + *
>> + * Return: number of chars written to buf.
>> + */
>> +static ssize_t config_reg_show(struct kobject *kobj,
>> +			       struct kobj_attribute *attr,
>> +			       char *buf)
>> +{
>> +	int ret;
>> +	u32 ret_payload[PAYLOAD_ARG_CNT];
>> +
>> +	ret = zynqmp_pm_config_reg_access(CONFIG_REG_READ, register_address,
>> +					  0, 0, ret_payload);
>> +	if (ret)
>> +		return ret;
>> +
>> +	return sprintf(buf, "0x%x\n", ret_payload[1]);
>> +}
>> +
>> +static struct kobj_attribute zynqmp_attr_config_reg =
>> +					__ATTR_RW(config_reg);
> 
> 
> use DEVICE_ATTR_RW() instead
> 
>> +
>> +static struct attribute *attrs[] = {
>> +	&zynqmp_attr_config_reg.attr,
>> +	NULL,
>> +};
> 
>> +
>> +static const struct attribute_group attr_group = {
>> +	.attrs = attrs,
>> +	NULL,
>> +};
> 
> ATTRIBUTE_GROUPS instead.
> 
>> +
>> +static int zynqmp_pm_sysfs_init(void)
>> +{
>> +	struct kobject *zynqmp_kobj;
>> +	int ret;
>> +
>> +	zynqmp_kobj = kobject_create_and_add("zynqmp", firmware_kobj);
>> +	if (!zynqmp_kobj) {
>> +		pr_err("zynqmp: Firmware kobj add failed.\n");
>> +		return -ENOMEM;
>> +	}
>> +
>> +	ret = sysfs_create_group(zynqmp_kobj, &attr_group);
>> +	if (ret) {
>> +		pr_err("%s() sysfs creation fail with error %d\n",
>> +		       __func__, ret);
> 
> if you fail here you should free kobject_put(zynqmp_kobj);
> 
> 
>> +	}
>> +
>> +	return ret;
>> +}
>> +
>>  static int zynqmp_firmware_probe(struct platform_device *pdev)
>>  {
>>  	struct device *dev = &pdev->dev;
>> @@ -748,6 +925,12 @@ static int zynqmp_firmware_probe(struct platform_device *pdev)
>>  	/* Assign eemi_ops_table */
>>  	eemi_ops_tbl = &eemi_ops;
>>  
>> +	ret = zynqmp_pm_sysfs_init();
>> +	if (ret) {
>> +		pr_err("%s() sysfs init fail with error %d\n", __func__, ret);
>> +		return ret;
>> +	}
>> +
>>  	zynqmp_pm_api_debugfs_init();
>>  
>>  	ret = mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE, firmware_devs,
>> diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
>> index df366f1..55561d0 100644
>> --- a/include/linux/firmware/xlnx-zynqmp.h
>> +++ b/include/linux/firmware/xlnx-zynqmp.h
>> @@ -77,6 +77,8 @@ enum pm_api_id {
>>  	PM_CLOCK_GETRATE,
>>  	PM_CLOCK_SETPARENT,
>>  	PM_CLOCK_GETPARENT,
>> +	/* PM_REGISTER_ACCESS API */
>> +	PM_REGISTER_ACCESS = 52,
>>  };
>>  
>>  /* PMU-FW return status codes */
>> @@ -261,6 +263,11 @@ enum tap_delay_type {
>>  	PM_TAPDELAY_OUTPUT,
>>  };
>>  
>> +enum pm_register_access_id {
>> +	CONFIG_REG_WRITE,
>> +	CONFIG_REG_READ,
>> +};
>> +
>>  /**
>>   * struct zynqmp_pm_query_data - PM query data
>>   * @qid:	query ID
>> @@ -305,6 +312,8 @@ struct zynqmp_eemi_ops {
>>  			       const u32 capabilities,
>>  			       const u32 qos,
>>  			       const enum zynqmp_pm_request_ack ack);
>> +	int (*register_access)(u32 register_access_id, u32 address,
>> +			       u32 mask, u32 value, u32 *out);
>>  };
>>  
>>  int zynqmp_pm_invoke_fn(u32 pm_api_id, u32 arg0, u32 arg1,
>>
> 

One more thing. I am missing sysfs description for these entries.
You are creating this file in 2/5 but files introduced here are not
cover there.

Thanks,
Michal


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
