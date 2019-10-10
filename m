Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F5AD1E00
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 03:28:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rd2KuAQZckIir/zcmhd4VA7F2XKKhKZG+tkSotuykhI=; b=IDpDjjMh35eY/J
	HSv8GaslS+qcw5Q95+VxOyyfLhbEpFdS14CKDn6Fn+kgMZwpfWZV9wdvHtlc+so2hVa5lDC3Inksn
	MY2303qs0mtD8kuZ6moC9wufgGEJazoN7fM4usRkjJKDnL+A8jONEh/ZOwJWDl6lrwJXkykqm1cRF
	UEO0Hc4PhwWhuMAuQQYNBL8WbhZ6oyQlL26inWl8OaLLx0aJQDeKmR15ln6Tlbtl5NUnVPcD7GEDu
	ZEK1kgm/wwzlHWWFL03GFCIT3aKZeR77IlagVEPuRdYz6HI71qGBRhzg1pVWS1XfB7gDgWnWoI7OG
	rR6FEG1DQ9cmTLJDZEOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iINFl-000213-KF; Thu, 10 Oct 2019 01:28:29 +0000
Received: from mx0a-00082601.pphosted.com ([67.231.145.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iINFb-000209-Ju
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 01:28:21 +0000
Received: from pps.filterd (m0109334.ppops.net [127.0.0.1])
 by mx0a-00082601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9A1IJE4011219; Wed, 9 Oct 2019 18:26:54 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=facebook;
 bh=zd3aZvwzJYk15BUYctpAmmc/25qqoMu0W19HM5Xbm3g=;
 b=flC9cBshTcwUJs9/sFTcv78BMG1ZJ4XMUTZFyahcGgckoN3100+jyEjD5vqZhTT7XTJ5
 onsqWd2Lg7F9U20/Z4AmsMWIbFeDnF3/7A1ZHtQp8QYRQGIJUjuFuLcgLAELVemM/4Fz
 Sg9Z4mBXHekmMuC/df/xHTGt3C0cdYH18sA= 
Received: from maileast.thefacebook.com ([163.114.130.16])
 by mx0a-00082601.pphosted.com with ESMTP id 2vgpq9tgm8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Wed, 09 Oct 2019 18:26:53 -0700
Received: from ash-exhub202.TheFacebook.com (2620:10d:c0a8:83::6) by
 ash-exhub102.TheFacebook.com (2620:10d:c0a8:82::f) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 9 Oct 2019 18:26:52 -0700
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.36.103) with Microsoft SMTP
 Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 9 Oct 2019 18:26:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NfEld6QuwLdkFO1edUxMMvEAFjCFAoKjvoUeGlljLclr7jCatlZUOiQ66dqTcv8YCaJNu7RkMcS/UrTsxooiUDzr6vdsJuOtjyouZsFvSjDO9AZO9SDjTDky9eFJbwx1i6ROmBFq6I2eEij0gahbQFVfyUzG7BYfPymHpQMWy0wbs8U7Nl01vdBjZdj6GswXt7ojWF9GiepkHqLtHEZGfkSnhduRr2Sf3ho9Ejsm60vd/SP8NeoLK7YzXZlspeuaHkpUaeMcj9Y0S/Qfxrn8d2sB/KHfFpoWNZfCz4AhGCdFfotv70CGG/aU6wW8fsbA2CvlQtzQrp95/qf1QD7u9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zd3aZvwzJYk15BUYctpAmmc/25qqoMu0W19HM5Xbm3g=;
 b=OVw1XNduZGdfy13c8lzT/IQEZSXgpfnHcf9RbxWst/zFicHp8uzEHf8xSPtvLjFui9J34w2up76zozSdb2wPvIReXAXUS8SZw6/TnCuNjemnVGNGQ9zuc0SsuC/ifCLRd6T6FOZxtgvh0/wkBaQNm+4PdGu+Jet2qBT4abAQMI7BdigAUCxWaKoyFZfSBwylOzYYOB/adbzkJdGmLNp6GGzNbSyCFlhMihcXwAPy+LTbU1zTilzXY6yhydiamMFH70iR9eEfwRywKVWalB6qSwTIBVdGlH3zIZ88jNCZoc3GobXPkbh3oKTnHR+R0V7lWFqkXho6oWzoTM2AD2vuxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.onmicrosoft.com;
 s=selector2-fb-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zd3aZvwzJYk15BUYctpAmmc/25qqoMu0W19HM5Xbm3g=;
 b=al6ceIMGbwpGZetnkvf7EEro3QSPqoEZ/bV08/F6ktBYRayg1KnBhaIWI7U1OTNGjt1tAXkeobkPCNNn+eQECuoZY/SJbkrvw/ymrgrLFUdrrqk03U/EUpg6RY+WPfUddp7Q1e4e93euXlv1RtLtZVVJVckluk2rDaRfxX6qKKU=
Received: from MWHPR15MB1216.namprd15.prod.outlook.com (10.175.2.17) by
 MWHPR15MB1375.namprd15.prod.outlook.com (10.173.233.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Thu, 10 Oct 2019 01:26:50 +0000
Received: from MWHPR15MB1216.namprd15.prod.outlook.com
 ([fe80::24c9:a1ce:eeeb:9246]) by MWHPR15MB1216.namprd15.prod.outlook.com
 ([fe80::24c9:a1ce:eeeb:9246%10]) with mapi id 15.20.2347.016; Thu, 10 Oct
 2019 01:26:49 +0000
From: Tao Ren <taoren@fb.com>
To: Brendan Higgins <brendanhiggins@google.com>, Jae Hyun Yoo
 <jae.hyun.yoo@linux.intel.com>
Subject: Re: [PATCH] i2c: aspeed: fix master pending state handling
Thread-Topic: [PATCH] i2c: aspeed: fix master pending state handling
Thread-Index: AQHVfud35WuTlVbA0UqacW6NAtrttKdTBpsAgAAPJoA=
Date: Thu, 10 Oct 2019 01:26:49 +0000
Message-ID: <43ab0316-78dd-b7b0-c04e-e039d38c3d45@fb.com>
References: <20191009212034.20325-1-jae.hyun.yoo@linux.intel.com>
 <20191010003234.GA12710@google.com>
In-Reply-To: <20191010003234.GA12710@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: CO1PR15CA0045.namprd15.prod.outlook.com
 (2603:10b6:101:1f::13) To MWHPR15MB1216.namprd15.prod.outlook.com
 (2603:10b6:320:22::17)
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2620:10d:c090:200::2:8309]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b2305e0f-9df1-4636-1ec6-08d74d20ec26
x-ms-traffictypediagnostic: MWHPR15MB1375:
x-microsoft-antispam-prvs: <MWHPR15MB1375A85B19041D02320E947DB2940@MWHPR15MB1375.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 018632C080
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(376002)(39860400002)(396003)(136003)(346002)(189003)(199004)(229853002)(54906003)(81166006)(65806001)(65956001)(81156014)(7736002)(7416002)(6486002)(102836004)(110136005)(36756003)(58126008)(14444005)(256004)(8936002)(305945005)(71200400001)(71190400001)(8676002)(5660300002)(316002)(11346002)(46003)(14454004)(478600001)(52116002)(99286004)(66946007)(486006)(76176011)(446003)(476003)(86362001)(6246003)(2906002)(6512007)(186003)(386003)(6436002)(6506007)(2616005)(31686004)(53546011)(31696002)(25786009)(6116002)(66556008)(64756008)(66446008)(66476007)(4326008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR15MB1375;
 H:MWHPR15MB1216.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rT2XYrovIIpFfK/FOI3M/V27xRgRs1mXhiR5PctkgC3y3VmsvQ6K/qGIRUY2D94uesFvIRwPJGS8UMc5Z40+45E9P8Gev+XJf65U1sDZ1MzlrFLvxKu1X/4hdyIhldxzh+6y533KZprDVw+Mq5+bQ96ALYCMQePQlVdNGPZsZ6+GPWNYaANTDH4t3RmLZhOgLWy3f87QdQVByw3yuQRAtAtedgx/KWByBufF24cyGFwv6N+Wi+DmKPGS7f/ue0/SXvL3KZQwFhcFUlz6n5d7T1iUWicSTz3dkn+lqta2qkD5WMTfxRlX2R6TKw0a/g/cHXfJ650sI2yltAe1Jf1SkGjh3gM6aTZpgtL/VFkPinj4/5eCCsrvjwMw8ifAeMUJNRTKEbeDc2NSjMTL7yfyEeoYYw8DSH99UjLPEp0hoIQ=
x-ms-exchange-transport-forked: True
Content-ID: <3DC2428602E08C4F8C65A1DA359F1D88@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b2305e0f-9df1-4636-1ec6-08d74d20ec26
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2019 01:26:49.7065 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yu1Cy0BajlyJG7nG6o1JHgDSvsESl++VzcYTjSofT5W9+T3u7uvFx9C/B7ogeHTA
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR15MB1375
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-09_11:2019-10-08,2019-10-09 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 mlxlogscore=999
 bulkscore=0 impostorscore=0 lowpriorityscore=0 spamscore=0
 priorityscore=1501 malwarescore=0 phishscore=0 clxscore=1011 adultscore=0
 mlxscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1910100010
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_182819_812820_50D5B13A 
X-CRM114-Status: GOOD (  17.84  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.145.42 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [67.231.145.42 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 Wolfram Sang <wsa@the-dreams.de>, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 "openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Cedric Le Goater <clg@kaod.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/9/19 5:32 PM, Brendan Higgins wrote:
> On Wed, Oct 09, 2019 at 02:20:34PM -0700, Jae Hyun Yoo wrote:
>> In case of master pending state, it should not trigger a master
>> command, otherwise data could be corrupted because this H/W shares
>> the same data buffer for slave and master operations. It also means
>> that H/W command queue handling is unreliable because of the buffer
>> sharing issue. To fix this issue, it clears command queue if a
>> master command is queued in pending state to use S/W solution
>> instead of H/W command queue handling. Also, it refines restarting
>> mechanism of the pending master command.
>>
>> Fixes: 2e57b7cebb98 ("i2c: aspeed: Add multi-master use case support")
>> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> 
> Reviewed-by: Brendan Higgins <brendanhiggins@google.com>
> 
> We don't have any multi-master setups, can we get a Tested-by?

I've applied the patch to my tree and I'm looking for a minipack BMC
(milti-master) to test the patch. Will come back with results tomorrow.


Cheers,

Tao

> Wolfram, since this is a bugfix, can we get this in 5.4?
> 
> Thanks!
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
