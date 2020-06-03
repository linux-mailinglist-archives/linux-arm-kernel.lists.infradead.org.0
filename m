Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 809E41ECE1A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 13:15:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7JfMcZ5Pc5xjVFLS5NK0+xgyYcovGHDaRUZwf94Gq00=; b=B5Fva3FRqJZpGO8+Z3DJxaqYR
	+uawdlOKamOAzpX/cSE8fzimGoJq32q1Khts4Id3ItV5TWKIYbd7DGiaKgE8AS3ZWw9PGhFp1NS8x
	VEH1FtsxK+olteixbgn49kL+cKv5v9G5pcboNxf30MRfLLVtOCFvvsMdA1AKnu0bgaXzMvutT5Y0+
	vazkxopT+S56Cvvn2g4JrWE/Vq2oFzEXKYkUrkGVmFRJLpGkoPZh3TQKiA2DQarDsYXzRtcUvJfSk
	gv6dPI5McczP7HLXlSt6gLLZix/DWABhs+v0IUAXeE5kKNQO092UiA8lvWeGucTnSpmRqBOt1LnYG
	H0POxuzfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgRN2-0003TK-1P; Wed, 03 Jun 2020 11:15:44 +0000
Received: from mail-eopbgr40075.outbound.protection.outlook.com ([40.107.4.75]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgRMt-0003SI-Ei
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 11:15:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c/XLgP31pnrvpAd8Po12qSWID69ffOYFCJ2bv+/7DT3pAeTAJZAV5v8/3DvuILIr26cab4XjTuHt7jJEpgXMKeod9fSauFG+oBSsfd3XHZRFgpjlgzA77Z30/Zv5BSIm9NLyV3GIHbji+yoYQUeEb4kIQRyCL7OfW+nX9gARUqihhPLUfCqRVF4FXZAYPIIjk4A2W8z7oiSgtzivpls+TeGiDd32WiJYU3I2T0L/mQ3Fg9jS52wKergA5f7uV2aq5q7aonr9jaErRGxMHHeUWDOtrmEu+1mLy+8W7daXzzCYuYUI/7KSdDkijGGZ3YtWOPhOG+RYuohitAcA6iuifQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YM/Gu350wgEhoNLHKmui6Q4BZQxWYP6WlwAu+lbgEDM=;
 b=VhvYi5D3n/9g9xTPT6/id0SD1K5aFtEykGrx+j63VoefiDTOi5VfLcl9xshy+a+4jhogJ9w0kHBAmQgG4HM/Q5FZFFzycRjJGVBrwuu1j1FfDz2ENxCvasrSsTTUiraNMfvxUDTGwesK2odsVvzlNpjJJy3Zj0XOzOdF6mKQXsM8xbDCx2lWT+eZci+IK8kmkhE44zDDYJ4Yjl70eAMmoaisdHoLFoyAmzjSk+yaaa2MskBdmhbfqApfLtNvuQBu3eHIAXqY5dBnwoncogNDK+v466PctdA9koFqx5DLMqiGndG7MdiVAeNtrEXqziZztxr60nE0Aj4XktTSCUCLMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YM/Gu350wgEhoNLHKmui6Q4BZQxWYP6WlwAu+lbgEDM=;
 b=f9TNV/yDlOG7RElJyiH87gONSuFpgio2Bj0dzhY6ZsSf2dlU5tcVgALQOF4eGHV+6hd9U8b4tC33e25UHFUp6c1zlI9UjN4hcOnedgazAY5UNL/2buaSPYlwlWN7XQOMSc6RLnlUH42LB+gKCW4X621+X2Yq9i7PpB7M7hzVkHE=
Authentication-Results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
Received: from VI1PR0401MB2287.eurprd04.prod.outlook.com
 (2603:10a6:800:2e::19) by VI1PR0401MB2576.eurprd04.prod.outlook.com
 (2603:10a6:800:56::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Wed, 3 Jun
 2020 11:15:30 +0000
Received: from VI1PR0401MB2287.eurprd04.prod.outlook.com
 ([fe80::9d5c:685e:4b51:fa60]) by VI1PR0401MB2287.eurprd04.prod.outlook.com
 ([fe80::9d5c:685e:4b51:fa60%3]) with mapi id 15.20.3066.018; Wed, 3 Jun 2020
 11:15:30 +0000
Subject: Re: [PATCH] soc: imx: scu: use devm_kasprintf
To: peng.fan@nxp.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 aisheng.dong@nxp.com
References: <1591176572-9693-1-git-send-email-peng.fan@nxp.com>
From: Daniel Baluta <daniel.baluta@nxp.com>
Message-ID: <306868c5-1491-7a18-5ba6-3b8afceaffd0@nxp.com>
Date: Wed, 3 Jun 2020 14:15:28 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
In-Reply-To: <1591176572-9693-1-git-send-email-peng.fan@nxp.com>
Content-Language: en-US
X-ClientProxiedBy: AM4PR05CA0034.eurprd05.prod.outlook.com (2603:10a6:205::47)
 To VI1PR0401MB2287.eurprd04.prod.outlook.com
 (2603:10a6:800:2e::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:2f08:5708:3700:99bd:f81e:e380:8429]
 (2a02:2f08:5708:3700:99bd:f81e:e380:8429) by
 AM4PR05CA0034.eurprd05.prod.outlook.com (2603:10a6:205::47) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3066.18 via Frontend Transport; Wed, 3 Jun 2020 11:15:29 +0000
X-Originating-IP: [2a02:2f08:5708:3700:99bd:f81e:e380:8429]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: b4855347-99d5-4bfd-9df6-08d807af6d19
X-MS-TrafficTypeDiagnostic: VI1PR0401MB2576:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0401MB257661E250572861D1D19578F9880@VI1PR0401MB2576.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:506;
X-Forefront-PRVS: 04238CD941
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CRJa3CvCp/kCyQ8kBvDw3gszGwiakutchwx+pRZ5AtuIE332YD3rwdsT1nXIX0UZilDKQbIGqu2fbG8Bk/28SfUNYM1a7/lkN0lC07J/K6CdHKYi2e9OEElQFrQlGVdQndiHoKkU7mM49S2QZ1t8ccABWxviyB7EOLOdHFsL8eBK1cK/TM3T/zWAOPSVFvLiM5B9JEas2K+ZtMkVbCML4h/gj9OVKtL0+FWXJfcgUQ5nWGbPxyC0qt/NbbJlMbLX0E/Hyc4+eMSkY4tjcCWuud6nXqcxO0oLkcQODvj+UX9LVWV9Ew4p0E5ini6WQRFeau2YeYE9jmsVHUy4dBb0/58+C2XJAMLFBcw75Ys7xbMz5B796dxVj7T8rxXAQwul
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR0401MB2287.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(39860400002)(366004)(136003)(376002)(346002)(53546011)(6636002)(558084003)(52116002)(478600001)(6486002)(4326008)(86362001)(8676002)(186003)(31686004)(16526019)(66946007)(316002)(66476007)(2906002)(66556008)(8936002)(36756003)(5660300002)(44832011)(31696002)(2616005)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: FN517/CqisqzAw7DFwE1alnYTRASbapx5BKIFChureNv/hTFybP59ERrikdHCVrt+FZJ8VKOnt86mMSJWRP7HW3ilNFZGYKlZyowmAujRkKfETDI2gTC45D4ETf9RSuVeWQ1/P7b252TUun3UgzY6Lxe1p0Px69nznW7hLw235hKhVVJSJKYspbi/6WPob+QSa99nJ7yUb+7u6ZdG7tiR8ViYaNFJNnumb40RBo93uokMVW/W5Qw9hhVO9FbY/+O2kGkcPlztvFzPDRC9HlzLWcAH/9nKv0Fsaejc0S3DePb91Ix+9m4Qq9BaTW7jhz67mb8ygFWkmu5WBZNapxQ3Jj3aHoAcrLuskMXHVb+xSL48my+9+d5QHwWB3DPRyPsbcZXN7nsvIVUrBRttaREzZib6r/8+4LPUahgRFZP68p3ALVTbEbt0FfIcITV0Yf0LsXfXW2L9yJ4fa8MqGiizYW5Uwnqsy/IvEXw9oepmQEBkSV9KUk6b7yyoPeThPyRqogm3a0/JGW84EybF1Oixkc649Fho99aaWPuodkWUsDDQto2QwRj/tiQPknTs8CF
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4855347-99d5-4bfd-9df6-08d807af6d19
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2020 11:15:30.6460 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1dZ6jobdDaKjIQAnilLK5MeT8NXGEk48KE0ZAdD47rX11RQQLTKoG9BEJbrpp1XJueYL11IOiv34fylC1vTPWA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2576
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_041535_580606_44EB998C 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.4.75 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.4.75 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 leonard.crestez@nxp.com, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 03.06.2020 12:29, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
>
> Use devm_kasprintf to simplify code
>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>


Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
