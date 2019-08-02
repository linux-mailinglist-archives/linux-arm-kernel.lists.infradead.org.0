Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 874CF7EC22
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 07:31:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MHtyul5G/hGm+ZG67P8U2OJiAy2+BILpQ8DtM/4daTM=; b=fCK+dwlRR0R/ux
	RVQ+AmrvNHzJUqhin5nnTKOLhI0cKW7zV050VNU44HL+veC7raTrGVc64/0hoJMA6tt+s2dvcVWxp
	EGbuF8AdD2qB7DY8UzSv2afGbPZ25ORBkiyy6Td1tcSWRXLzaGRwT4DM/pV7qfDLos8vtColn4uMW
	4vimluoYZLTQRaMfpsYHpfAXMeTSYgQktg52UZfIKWWfh1eJi/CYNNjeOAY9+YTVY8bz7QlLhFMxA
	QlYVJwzKaR7Uy+RbbLxw4i/STSlwTOg90r3RglAhF6pBpsIWvPu8k08mW2hwk8RPRyYogS3G1H7qG
	VttZIi4W50X5fdHimyUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htQAK-0000S1-Az; Fri, 02 Aug 2019 05:31:44 +0000
Received: from mx0b-00082601.pphosted.com ([67.231.153.30])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htQA9-0000Re-7S
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 05:31:34 +0000
Received: from pps.filterd (m0109332.ppops.net [127.0.0.1])
 by mx0a-00082601.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x725TL1C013898; Thu, 1 Aug 2019 22:31:22 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=facebook;
 bh=sWIQ1SpFfTmZzfQT7m1mBmfrN+GCM589kfix2Gg7IJE=;
 b=lRLdnFaO+peEzvPzSehL3BaPNDU9T3BvyPdMmO9sXJu47+0pRp2Kpl7p62/+izDu1Xsb
 U2TnNnFpmkNXZz4irdKr1Hne3iGnTzcZfThYosu3MXa4UxRB4WPzAM4XHjJEmBr4fpoW
 bjr5KFT++W/qEcXevIStV1Fj8Jm00aNVWkY= 
Received: from maileast.thefacebook.com ([163.114.130.16])
 by mx0a-00082601.pphosted.com with ESMTP id 2u4dfr087j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Thu, 01 Aug 2019 22:31:22 -0700
Received: from ash-exhub203.TheFacebook.com (2620:10d:c0a8:83::5) by
 ash-exhub104.TheFacebook.com (2620:10d:c0a8:82::d) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 1 Aug 2019 22:31:22 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.36.102) with Microsoft SMTP
 Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 1 Aug 2019 22:31:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XdzbfjLqzBvG9ijYXKzQXAPbylhC+WKvJDIlBWAYKra2Ol8JoFihsQf/dS4vdZEepzjPa7Ev1MXZgQ1D/X1FzaSrrL8Rv9lEgmGZ7KqU7EiNA5pMXaV+nU/yAlGMco6eKi312s9Jwe8oAIlwxWQYqOz7IEdewkh7thXMztPcadA7fS0ljFDlZSPMi2G30x1JNPydsKriIoB8RDkK0nmFu7RIKylp63UowUd8sO77aOTwlFp520ggQDhGiSKvIRR4rJTUqsIxn5fZsHcOuAmuY8cdL37/hziXSx3flEwqUpzyiZiUn/lCpzbO9EwMUFzWlUDLJmKHo6igmApXl+qBXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sWIQ1SpFfTmZzfQT7m1mBmfrN+GCM589kfix2Gg7IJE=;
 b=PDAqlmi/ROBVrVFl21s4ptiaWjiac8C/8Co6pD8MBjOAJfVPXsPxlOwPYurl/+Zda40vViZAu5GX2mBrmmgrzoH7gejVplj9/sjNcszcpSntYdTAgDCBTruR8DMjkENtaFLevWO2ypYf7860LHt1cwS17WTSBytkvM2eSlM56+iYHqqhgYtgvnnl3AbnGYfo4qzmODI/JWl8wPEPEd5+h927ya/ODHYRhtMpcJ2rpcVIcze0avuE9JYrqVJUGPuHZQmgX3WHX+8a/lM3thak0o0M6DftKswP2+0zTfcyTLOx2Cb7QHTgj1J3SyWB1YJjvjolVgsMaEqJwLdO2FvueA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=fb.com;dmarc=pass action=none header.from=fb.com;dkim=pass
 header.d=fb.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.onmicrosoft.com;
 s=selector2-fb-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sWIQ1SpFfTmZzfQT7m1mBmfrN+GCM589kfix2Gg7IJE=;
 b=R/YeC1qJ3fnev+u+TER1aymiocj9R8/qu+ZMntgeR7h4AgiaKZcOR9WDlgXhrr+cSZ1WKu9DNeNspnL8l2cCcYg2zne2EGdWaQZrmc1EoNRS0ExLRr31fLQQjeE4yymymX8yvU5NUDs4z6PKqeqtJXB4qL1gRDP1BtwLnUokJiE=
Received: from MWHPR15MB1216.namprd15.prod.outlook.com (10.175.2.17) by
 MWHPR15MB1360.namprd15.prod.outlook.com (10.173.228.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Fri, 2 Aug 2019 05:31:21 +0000
Received: from MWHPR15MB1216.namprd15.prod.outlook.com
 ([fe80::c66:6d60:f6e5:773c]) by MWHPR15MB1216.namprd15.prod.outlook.com
 ([fe80::c66:6d60:f6e5:773c%8]) with mapi id 15.20.2136.010; Fri, 2 Aug 2019
 05:31:21 +0000
From: Tao Ren <taoren@fb.com>
To: Joel Stanley <joel@jms.id.au>
Subject: Re: [PATCH v2] ARM: dts: aspeed: Add Facebook Wedge100 BMC
Thread-Topic: [PATCH v2] ARM: dts: aspeed: Add Facebook Wedge100 BMC
Thread-Index: AQHVSOg2lZoVHrZ29U2XlvDXnsufaKbnQZOA//+bUYCAAHbBgP//jDkA
Date: Fri, 2 Aug 2019 05:31:20 +0000
Message-ID: <46BFAFC9-4E4B-4974-9381-8A442497529F@fb.com>
References: <20190802041010.1234178-1-taoren@fb.com>
 <CACPK8XcuwNE3aBrsgn-paTZt-EtF6pc6WwYBQef5xc7157bk2g@mail.gmail.com>
 <606273F4-E021-4AAF-9F59-F363E4FFF92A@fb.com>
 <CACPK8Xc-vjJJ_kbe_KGss+RDMdhRVw-YDj9Cdux8iERSvE0_GQ@mail.gmail.com>
In-Reply-To: <CACPK8Xc-vjJJ_kbe_KGss+RDMdhRVw-YDj9Cdux8iERSvE0_GQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/10.1a.0.190609
x-originating-ip: [2620:10d:c090:180::1:94d1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 37fa3f33-d4b8-4fff-c7d4-08d7170aa6d3
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR15MB1360; 
x-ms-traffictypediagnostic: MWHPR15MB1360:
x-microsoft-antispam-prvs: <MWHPR15MB13606F9365264D308B1EE53EB2D90@MWHPR15MB1360.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 011787B9DD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(396003)(39860400002)(376002)(366004)(136003)(47680400002)(199004)(189003)(99286004)(7736002)(305945005)(5660300002)(54906003)(316002)(66446008)(558084003)(6506007)(186003)(64756008)(66556008)(66476007)(53546011)(86362001)(446003)(11346002)(46003)(8936002)(2616005)(476003)(486006)(58126008)(76176011)(66946007)(81156014)(102836004)(81166006)(8676002)(33656002)(256004)(6246003)(68736007)(4326008)(53936002)(71190400001)(71200400001)(6916009)(6512007)(36756003)(6116002)(6486002)(6436002)(76116006)(14454004)(229853002)(478600001)(25786009)(2906002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR15MB1360;
 H:MWHPR15MB1216.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ALrAZf0IUbVF9MsTR6U8ckx7OR55iz6N1bz/8kBq0rqpksauY52oBCNYxzNMdzPFU0zPX2LvLy+bfutKKSmTKUhmm8l2WOfdSRhrBdYlIwJNVcgQChh5WG7DU48bxps0wc9wwHG1d0+7CK/OVKaxSqNZrk2NUl3OPcDxBfkb0fipDmDp1iE3BmQ9gEbK79/UM/Ckmtn3uF8mUf57YIjRCSSz+0WzvGM4KG2lVOdSzpf+IdP1pNTrujOB3JX/z6TVIY/sJ3i+mIt8/pIz+28f3HOZc6O8R5Y2ecTCgRP1YBZ0yYdVEjPgvHIdaO3wwXq09/tVgZDiaWr87tYyEzLTn2XJ93Oet+SPIW1mmNBAhVhFdWnx7SFs32Ub1hHPD+9qvIRdSMCTc3V5iDQIWxv/cSWQcXq21vctjv4n44y+9/0=
Content-ID: <F20E613B6D68AE4BBE4A8AA585868813@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 37fa3f33-d4b8-4fff-c7d4-08d7170aa6d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2019 05:31:20.9561 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: taoren@fb.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR15MB1360
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-02_03:, , signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=765 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908020058
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_223133_396288_95786F91 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.153.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 Andrew Jeffery <andrew@aj.id.au>, OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/1/19, 10:26 PM, "Joel Stanley" <joel@jms.id.au> wrote:

>  I've applied both of these to the aspeed tree for 5.4.

Thank you Joel.

Cheers,

Tao

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
