Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 900D3CEBA5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 20:21:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iynFgJjDJ7uJMyKFsoZd7mT2+p8NwnZ+iEi0DImJl4s=; b=uoWsP0RkxAU53i
	gFron/xGr14fe2n65e76b1G/s9BOLgySpVji1VO6Mq5bURS8e5jgeJ5rhag93x+i+CnirUHuAeIVq
	3ZDodDDlPkhw8A7T77CKL+RIVZ9HA49M2Fq61GUDNqaY49GdnGbqAxB1ogsBUpn+t+h4HwYcSePwy
	SjfOh3986hGc7V5Ls8lmp3I7y7Ba/3r5+XdjagIUbZEJXkhBPIYxLrQeGU9ziX6yp5IL+Cip4V9hp
	qpNoDANcx1r8QtTZ6wuQO5mr50fi3oJgNJGX0/jFD1ZXkhdeu5luvus1DRY4zPTgUQivg4eZWhBsE
	H0YuN9VfuHx80mjUlJHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHXcs-0001AM-RG; Mon, 07 Oct 2019 18:20:54 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHXcl-0001A3-Ev
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 18:20:49 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x97I6IC1023358; Mon, 7 Oct 2019 11:20:44 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pfpt0818;
 bh=FMRuwt61Yb7GTe/jlxeZHQq+inFdfXY2+o9zEk5kcOA=;
 b=V6Bxxcf4TbP4GQIcb2hhTGRwRFhtsrIj0MEtPl2WlbDG5pLMFoyYGpLJi7z0Kv5QnlMp
 ZXzFG1Xe31DjPMeFJNisSX/FC1Pbi1NG/FH5mTqRVhDrM5ounzRKyuy6J4g69hHe7K/K
 qg9r09WpzWP60FzwPeTJ4fp5yc+1fLCUpnR3xjl26y0zeaylBgePBmh9wPViBb/fYPCh
 glqvlONQQHFH/S8lVHUXP3DCSR4wuz8W3Q4Osvt3q8Enm7rS14X6aIJUBe8Z6EtS5V30
 whUdlhAll+mUVMjY+WaiW8l4Mzjl3gdNcX+9LBwPqCmsSMUQptnLQUfuLoH+cLUc8MLF Bg== 
Received: from sc-exch03.marvell.com ([199.233.58.183])
 by mx0b-0016f401.pphosted.com with ESMTP id 2vetpmxy4w-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Mon, 07 Oct 2019 11:20:44 -0700
Received: from SC-EXCH02.marvell.com (10.93.176.82) by SC-EXCH03.marvell.com
 (10.93.176.83) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Mon, 7 Oct
 2019 11:20:42 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.36.50) by
 SC-EXCH02.marvell.com (10.93.176.82) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Mon, 7 Oct 2019 11:20:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AZbiCaQsN56Um2CqRf1PD9V9Jkp8oG/z9vNIt39EAQ9RvfRL1W4r8OLeuZVRmql8ub4ZoAaL8tOCJy2fQmddEHe521f55DodGm37mcVuv+rZQM/KgJBjXG26YmBKka3fTUDGcGVOrdVVk8OQn2IuwsI1A6hLs1sBzcl2nOks+30R6y19FJfmBnpHNA/PVinILO7IYM7HNz9OPFBbQIQi0zaFjn0Pz1GdVH46lL5cdJ6/hhMs+UxZXvVckvd8Wuy0hPyAVF+uMlhiCdwjtvT3zOJGwwA91C7uIQjbepkWWes53hvIY0e8RStjG4fMYqfRwQwKkLT+9aatrXLpWIewkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FMRuwt61Yb7GTe/jlxeZHQq+inFdfXY2+o9zEk5kcOA=;
 b=e8rFqZZmNnqSt5eqQWbXlvpdB9EPqmwjZWde4WrXtGKbvMDdjPR1Wf0wrVjj3Dd16A1fy9OLtZh4gCCgjt8hXPbSeEn5AxU+dRwD1eCUffOMM6v0W6dr2k0iVmX2SFcdBW5jil+FiCbhIs43BlD/4FgNvKh7RpcYXrnTHCuVQaCnmSIYFlJdn9Pu2etuZzgZ7SYM8DUeWAEvTrXEle0D0dhUILC7ZUh9hjh8y3izR7Id10cnXQ7JLE5l7SmX1SuMmCaCRxsCY4zR6h5T+GIlANQe+butnkp2tKy1T8UzFjWVu1lYRWQM7NSyt+Ve36ZZxVwE656HQHMcsPwVd+uy2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FMRuwt61Yb7GTe/jlxeZHQq+inFdfXY2+o9zEk5kcOA=;
 b=Ss6La/UKfuJbQsaIMzdTgL7XVHuLVLQZZA4CdG3KXZvuA70V6ZAdfBE6lOtnCMfh+LEDXLDnmUqRGogLaNczie6fZ5GnnUSW5uwiUQxsh7X460C4v5efd/5IDd0XrxluQB9UGDI+tSX53Vd8i3CEgeYMpQCm9hMbAMlooWkt/R4=
Received: from BYAPR18MB2438.namprd18.prod.outlook.com (20.179.91.207) by
 BYAPR18MB2504.namprd18.prod.outlook.com (20.179.92.208) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.24; Mon, 7 Oct 2019 18:20:41 +0000
Received: from BYAPR18MB2438.namprd18.prod.outlook.com
 ([fe80::fc70:ffee:bbab:36aa]) by BYAPR18MB2438.namprd18.prod.outlook.com
 ([fe80::fc70:ffee:bbab:36aa%3]) with mapi id 15.20.2327.025; Mon, 7 Oct 2019
 18:20:41 +0000
From: Sujeet Kumar Baranwal <sbaranwal@marvell.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: RE: [EXT] Re: SCMI & Devfreq
Thread-Topic: [EXT] Re: SCMI & Devfreq
Thread-Index: AdVpmcIOOnWimjPqQIW4YU3Z3/EySQAg3ggAAIw5QkAACl8sgAAPZ0vwAG91siAAIsPQAAEzMlhw
Date: Mon, 7 Oct 2019 18:20:40 +0000
Message-ID: <BYAPR18MB2438ADA20039CFF8F62DFF11AF9B0@BYAPR18MB2438.namprd18.prod.outlook.com>
References: <BYAPR18MB24387C9DDE32067F1763B6DEAFB00@BYAPR18MB2438.namprd18.prod.outlook.com>
 <20190913102304.GC2559@bogus>
 <BYAPR18MB2438723658EF1F0586170CDDAF8C0@BYAPR18MB2438.namprd18.prod.outlook.com>
 <20190916101505.GB6109@bogus>
 <BYAPR18MB2438DC4E8CA4E90455F0345BAF8C0@BYAPR18MB2438.namprd18.prod.outlook.com>
 <BYAPR18MB2438047B622951C6EFE92FABAF8E0@BYAPR18MB2438.namprd18.prod.outlook.com>
 <20190919152300.GA11801@bogus>
In-Reply-To: <20190919152300.GA11801@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [199.233.58.37]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 60553c2d-32c8-4a48-11a4-08d74b530f8f
x-ms-traffictypediagnostic: BYAPR18MB2504:
x-microsoft-antispam-prvs: <BYAPR18MB2504947718EE1EFD50698321AF9B0@BYAPR18MB2504.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01834E39B7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(136003)(366004)(376002)(396003)(13464003)(189003)(199004)(53546011)(446003)(11346002)(64756008)(66556008)(6246003)(66946007)(66476007)(54906003)(316002)(6916009)(66446008)(76116006)(81166006)(102836004)(8676002)(81156014)(6506007)(9686003)(76176011)(25786009)(4326008)(8936002)(7696005)(5660300002)(55016002)(99286004)(52536014)(33656002)(14454004)(71190400001)(71200400001)(256004)(229853002)(6436002)(26005)(86362001)(186003)(478600001)(3846002)(6116002)(2906002)(66066001)(7736002)(305945005)(486006)(74316002)(476003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR18MB2504;
 H:BYAPR18MB2438.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sFCY2CxBo5OQTH3K8dj33u8Nl6NwyWNxuR/Q670KeykI5B7Ij3HVLTDdG4Huj/NhyIZfRXUj+406+ibIDY30EqgxbB138zCpyDl9lTPEIM+hcOuiMPhh7PU2Gu1jS8Xr9cjf0L/YoshfsqtwJAlTBJE5GL15zwFk+3qCrV2pYEIF7AkDQzFfKv3aeEA9Ol96iNikvopeqYrF0A3HreMPTF29gHyIMm8LJzzNJB82BjSHwaQ6Atu4UV0l/cmwJJKh9LRjhtUZ1Ath6sN4vc4OQrkARaWcPq5CQf3L9wmHd2gtUqbIwb4ke2Pl/2BwBWEcIT68m/dVpTSkKOSQV4xr2I+9yiyIAz4EcChiCI4JmN8UL1R2CRWh8L0uGLyQjc1A1LqTjhjPsW2LBAqiYnNe2gW2PN1J/3lGH2agXbEwr7g=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 60553c2d-32c8-4a48-11a4-08d74b530f8f
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2019 18:20:40.9908 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S0iop/xtQnfdkYY/r4mqk4khkiaeOU/8qphGwBF6pjYC+x+wiJzpWWDzmAsMc7AF7HYnOFO8/y1jZDQrRUQLKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR18MB2504
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-07_03:2019-10-07,2019-10-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_112047_624231_CDFC4814 
X-CRM114-Status: GOOD (  19.97  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sudeep,

Per SCMI perf protocol, the MAX_OPPS macro which is 16, means that at max there could be only 16 OPPs.
In my platform implementation, I tried with 16 OPPs but  when OPPs info came linux perf.c file from SCP, it only showed 12 OPPs only.

Suspecting the rx buffer size, I increased the size to 256 and now the message for all 16 OPPs were reliably received. 

*****************
diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index 449f713..737d675 100644 (file)
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -612,7 +612,7 @@ int scmi_handle_put(const struct scmi_handle *handle)
 static const struct scmi_desc scmi_generic_desc = {
        .max_rx_timeout_ms = 30,        /* We may increase this if required */
        .max_msg = 20,          /* Limited by MBOX_TX_QUEUE_LEN */
-       .max_msg_size = 128,
+       .max_msg_size = 256,
 };
 
 /* Each compatible listed below must have descriptor associated with it */
*****************
Since this is a legit case of having 16 or more OPPs, we need to have a bugger buffer for rx. Let me know what you think.

Regards
Sujeet
-----Original Message-----
From: Sudeep Holla <sudeep.holla@arm.com> 
Sent: Thursday, September 19, 2019 8:23 AM
To: Sujeet Kumar Baranwal <sbaranwal@marvell.com>
Cc: linux-arm-kernel@lists.infradead.org; Sudeep Holla <sudeep.holla@arm.com>; linux-pm@vger.kernel.org
Subject: Re: [EXT] Re: SCMI & Devfreq

(Adding linux-pm list)

On Wed, Sep 18, 2019 at 10:53:07PM +0000, Sujeet Kumar Baranwal wrote:
> Sudeep, One trivial question wrt SCMI-CPUFREQ framework.
> 
> The SCMI perf protocol would tell what are different frequencies the 
> platform support in the beginning.
>
> For example, the command :
> cat  
> /sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies
> shows:
> 280000 560000 840000 1120000 1400000 1820000 1960000 2240000 2520000 
> 2800000
>
> /* Attempt to change the frequency */
> ~ # echo 2240000 > 
> /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
> It works.
>
> But in a scenario, where user tries a number which is not listed, SCP 
> applies its own logic to get a nearby value frequency for CPU and returns.
>
> My question is that could we add some print message in kernel that 
> user wish is not exactly fulfilled, an approximation has been done so 
> the user explicitly knows his command has been partially met.  If this 
> to happen, a patch might be needed in kernel. What is your opinion?
>

May be, you need to check with the maintainers ? :)

The path of execution is:
cpufreq_set(policy, freq) [cpufreq_userspace.c] __cpufreq_driver_target(policy, freq, CPUFREQ_RELATION_L) [cpufreq_userspace.c] index = cpufreq_frequency_table_target(policy, target_freq, relation) [cpufreq.c] __target_index(policy, index) [cpufreq.c]

So if you need logs, it needs to be in core file rather than individual drivers.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
