Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47503D349C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 01:50:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CBLBXB6vCLeox9pOCcu8mYoNPh35zTP9UKLL9wohpdA=; b=FVpRbf75vfAN98
	h9jzHSSB+c4oj4dA1pxbIm84U7K9F4U8yxaaBtlS1ELdSAcuQXFihiGfKieHuEyXD6Bgr17KbSDUn
	YpyxL/uPqanZkrmCn2tpYmyXab7BgmD89CGkwkSoh98qUgVZoLr2kB13/vvRs0u/w3LJvfUEOO2lE
	81t63Ygy4LAOg2/tWTNIKDHel3usAWTHhGT8sUBepJskV9fFfpO+i+Q32faviqA+NTWqV/RYq0la5
	lCoQw1SyCTRSj/NN2nkw7/exFIBn1vW+wPg4xltgrrBTQFIGoITKAMhj6y4atExvUOGTGffpe9VNT
	/C34/vbz1Zb1cpGtZcXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIiCM-000333-2n; Thu, 10 Oct 2019 23:50:22 +0000
Received: from mx0b-00082601.pphosted.com ([67.231.153.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIiC7-0002Wl-Rv
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 23:50:10 +0000
Received: from pps.filterd (m0109331.ppops.net [127.0.0.1])
 by mx0a-00082601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9ANmggV006589; Thu, 10 Oct 2019 16:49:45 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=facebook;
 bh=iFAHsVfn3pUeDUQPqNvFrqJImlpOxx1bkt5LLzdbhjM=;
 b=K12C3ZqTRx6olDBEYGm6tNOhgORDhHn+ffKWh5Yk0gyDzmB0d7K69tgnqxbGmCpO5D/g
 Uvl986s6HGzQiu+5S+KYWDCKMhDD5T/XMnEvmHWqXnNHW0KcG4ZJQUsqbPWTWR1KXiFw
 uws8rbAL8xegKhf9BRzZiYj4wHv99mdUVNI= 
Received: from mail.thefacebook.com (mailout.thefacebook.com [199.201.64.23])
 by mx0a-00082601.pphosted.com with ESMTP id 2vhm0uf3mj-6
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 10 Oct 2019 16:49:44 -0700
Received: from prn-hub04.TheFacebook.com (2620:10d:c081:35::128) by
 prn-hub04.TheFacebook.com (2620:10d:c081:35::128) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.1.1713.5; Thu, 10 Oct 2019 16:29:05 -0700
Received: from NAM01-BY2-obe.outbound.protection.outlook.com (192.168.54.28)
 by o365-in.thefacebook.com (192.168.16.28) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.1.1713.5
 via Frontend Transport; Thu, 10 Oct 2019 16:29:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jhHGkY5Wt4aaYJS3jxoe22DeTAmFfMcyeXYZF22JSA/dCY/7p+GiTwL8o5pGJNm9w5tn4X8fS928Iov44inM5T0ywnMXjyYHJ+Zpa6+vhSSBaPViuOYZFb/pvmBNCEjXkotaW4WrA1Wj7DOBoAsBLn3Z5dYAOH1HREgFZGLKhBwXjjGUADCDIbMHuia8v6Xc6tz2o6wYukvXwg4P9IfT1uI8muaKaXZv0K3QLleAiuUsYnlayPiIW82UXkZDZpblz0QlN5D3mFU9XZ8F5dVnIUD4G7xrBeHJ0kZLRzLmNFjhUNWTnd2WCME644XB6LRqw2r5iIcDdJnotwmwLR35tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iFAHsVfn3pUeDUQPqNvFrqJImlpOxx1bkt5LLzdbhjM=;
 b=hxjFyIFHVpvlq98QqPfzte8FF4/xWDkU0BsRq8qCzDpsY3zI6VLJMlgfuyieC807IEd5pw4kNc4kl/hKKLXudJRq2ziUP9WBNJJTWZ5S3LNeKo66UK7uYUsPH+6DSo55qQT6afoQFzAxhgKE1aUAbRm/wLA7R779Uyv2i7WZw43AbBiAVIpfgtr6PkT2piXj74WYvOKeLMPUJrxEHJWjUN+an1xunsRJd83Olp6AIR/QHMMF6F8qCJCTrlWgE0dx2g8qjD8mZ0shnNztNcnkLJSRdz8VAReLtJCfUfusGhq+SG14X4d5kiMEi6gNzKTYcXZxA858Rvb2mV1tSpYljw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.onmicrosoft.com;
 s=selector2-fb-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iFAHsVfn3pUeDUQPqNvFrqJImlpOxx1bkt5LLzdbhjM=;
 b=DilQiDbCak4E2vB+PRC/ZFOS+rJ7GzadiqsAliwcpBrWp9Q7yNRSgxT7yE6y/hUsFAfQJtv+WsHXJ1PUsgeP9x4vyx4hs3pXrctvbnWmvp4rPgMd5wi3qPi3O5BkKaQ0m1HnFx/9ZvrwSZVh9XvoCL2k54kBNZallcU7KJrKUYY=
Received: from MWHPR15MB1216.namprd15.prod.outlook.com (10.175.2.17) by
 MWHPR15MB1534.namprd15.prod.outlook.com (10.173.235.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.18; Thu, 10 Oct 2019 23:29:04 +0000
Received: from MWHPR15MB1216.namprd15.prod.outlook.com
 ([fe80::24c9:a1ce:eeeb:9246]) by MWHPR15MB1216.namprd15.prod.outlook.com
 ([fe80::24c9:a1ce:eeeb:9246%10]) with mapi id 15.20.2347.016; Thu, 10 Oct
 2019 23:29:04 +0000
From: Tao Ren <taoren@fb.com>
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>, Brendan Higgins
 <brendanhiggins@google.com>, Wolfram Sang <wsa@the-dreams.de>, "Benjamin
 Herrenschmidt" <benh@kernel.crashing.org>,
 Joel Stanley <joel@jms.id.au>, "Rob Herring" <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 "Andrew Jeffery" <andrew@aj.id.au>, Cedric Le Goater <clg@kaod.org>
Subject: Re: [PATCH] i2c: aspeed: fix master pending state handling
Thread-Topic: [PATCH] i2c: aspeed: fix master pending state handling
Thread-Index: AQHVfud35WuTlVbA0UqacW6NAtrttKdUhy+A
Date: Thu, 10 Oct 2019 23:29:04 +0000
Message-ID: <49244d71-cbc3-f2ae-97ac-74b5f68a4816@fb.com>
References: <20191009212034.20325-1-jae.hyun.yoo@linux.intel.com>
In-Reply-To: <20191009212034.20325-1-jae.hyun.yoo@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MW2PR16CA0035.namprd16.prod.outlook.com (2603:10b6:907::48)
 To MWHPR15MB1216.namprd15.prod.outlook.com
 (2603:10b6:320:22::17)
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2620:10d:c090:200::1:a83d]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f0395ed9-026b-473f-6209-08d74dd9a346
x-ms-traffictypediagnostic: MWHPR15MB1534:
x-microsoft-antispam-prvs: <MWHPR15MB15343EA3E2DDAF6F1E5DBBF9B2940@MWHPR15MB1534.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 018632C080
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(136003)(346002)(376002)(366004)(396003)(199004)(189003)(71190400001)(305945005)(7736002)(71200400001)(478600001)(58126008)(6116002)(8676002)(54906003)(110136005)(316002)(6246003)(2906002)(7416002)(25786009)(4744005)(64756008)(66446008)(186003)(66946007)(66476007)(66556008)(6436002)(229853002)(86362001)(52116002)(5660300002)(6506007)(53546011)(386003)(11346002)(102836004)(8936002)(2616005)(486006)(446003)(76176011)(6486002)(4326008)(476003)(31696002)(6512007)(99286004)(36756003)(256004)(14444005)(14454004)(31686004)(81156014)(81166006)(65806001)(46003)(65956001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR15MB1534;
 H:MWHPR15MB1216.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jY8KYe3q0A3gQPdrrLbuIwTEJykHlpUie1bIwbAv4qe2zLmjW3xag+mcrfHf+JtXr4wkyadGoWtycgj2VIGkL6eXSX5GRYqtk6xZuiCL34IJOuCmv4255fJc3aU1Q9Vje0yA+6XVFlUbu2XP4YnuhNSTm/kjd/gDRAyfXRdEoqKypsJmtuoRMfHhmbIhEDlmSE4H5rpIcPMh5l8qsum5nqMXPz96ekxdDOCfIbF+Qabqtpm0NCuS9+6fviE/leUOftEpC8i28m9zVqrlrv8b6625F4sYHh1aCYUNVngk+Y5T7QZIBlldK5e4p6ol1qGXijfS7QT/m5VPeTWI4cNpqE0XvxVxZtu02efYZdFG4PvxQ0lpEfFGez3iCMuhhmaQTzJzUulik5hLJ7tgKyWZoXAQA8BARnbq9hfHPJykUnM=
x-ms-exchange-transport-forked: True
Content-ID: <E79784B537921D40A3923439E52E2764@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f0395ed9-026b-473f-6209-08d74dd9a346
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2019 23:29:04.2453 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pU+wJUFfFWbGgcBeQe9YNVr50DCi4SnTGo2WSeWh8RI7O0+vzO16f15U9UDcaJVz
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR15MB1534
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-10_09:2019-10-10,2019-10-10 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 malwarescore=0
 phishscore=0 clxscore=1015 bulkscore=0 impostorscore=0 mlxscore=0
 suspectscore=0 mlxlogscore=999 lowpriorityscore=0 adultscore=0 spamscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1910100209
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_165008_123288_56F5F7FB 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.153.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [67.231.153.30 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/9/19 2:20 PM, Jae Hyun Yoo wrote:
> In case of master pending state, it should not trigger a master
> command, otherwise data could be corrupted because this H/W shares
> the same data buffer for slave and master operations. It also means
> that H/W command queue handling is unreliable because of the buffer
> sharing issue. To fix this issue, it clears command queue if a
> master command is queued in pending state to use S/W solution
> instead of H/W command queue handling. Also, it refines restarting
> mechanism of the pending master command.
> 
> Fixes: 2e57b7cebb98 ("i2c: aspeed: Add multi-master use case support")
> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>

Tested-by: Tao Ren <taoren@fb.com>

Tested the patch on Facebook Minipack BMC (multi-master i2c-0 environment) and
everything looks good to me.


Cheers,

Tao
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
