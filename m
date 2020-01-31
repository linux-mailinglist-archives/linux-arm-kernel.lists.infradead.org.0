Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E5D14F21B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 19:23:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qfU3zARoPs2S1KQOoDmwaqJ0HOLzJ3YK6zA5luoyF0E=; b=c9BDBvbzyCQ6G+
	9oM8SgSWpH05L4Amt6ipK2/FHcJlgWLbjAqdsd6at8MbLrxZZ1fNW21bbIqAXzd1mOyhe8ybBOEG3
	DE/UFW86pOz2LMNYmKLa8Km4kt0ZU/q4SOhJpMGC0IsyiyGnTUhndhIhObAXE3bz6I2ITxTV79RK4
	FjdG03nr8Qd6aVeT5J3dm/lYT0hr7fFtSDu0Qxt9hCEzjEYFHfGhl+DxT5va9MVkDy9c9RnChUv9x
	DByIoT+mwKYDPgX3ttYxyRII2hvV+dIG9sOlavolxIJQAGjCUR4+hzUQ3Ki++UNrgedAOjoEYBcfG
	p14mvHu4TvTl3l5vBgsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixawn-0002XI-9Q; Fri, 31 Jan 2020 18:23:17 +0000
Received: from mx0a-00082601.pphosted.com ([67.231.145.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixawR-0002SA-No
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 18:22:57 +0000
Received: from pps.filterd (m0109334.ppops.net [127.0.0.1])
 by mx0a-00082601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00VIMkCE027561; Fri, 31 Jan 2020 10:22:49 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=facebook;
 bh=Xiaz9/LlFg3C06Ys+0TRMc4V7B558jix6tavvkbw840=;
 b=lhEzQqYW3necwpN5aNVv0LZ85DPZ6Y2/0QUs2UxAihD8XG0g0zH+sYLu+nI89IqvhBiP
 uEWZqf7Hm3JEbVJKRnQoztjiN55uA2hSl891wgS3aDUgNJAEgSeDBXxHto9sVU2FLBm/
 MdO9cfPP7F4UaA88D4dZxp4aoowtZrtC29U= 
Received: from maileast.thefacebook.com ([163.114.130.16])
 by mx0a-00082601.pphosted.com with ESMTP id 2xvrt1870q-5
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Fri, 31 Jan 2020 10:22:49 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.36.101) with Microsoft SMTP
 Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Fri, 31 Jan 2020 10:22:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NYSokK9V3U/Fl6RCKgLNDdEgPbrGDjl0Yo42DATf1HUSm2BDt5McWN6jAmrqcWlzh/7AOgqZSJospPxCk9K7rLheO4BuiRbs6cv9ptm6JH6txXqLyZ4MIF2UErqosYTAJt0Ev2Uct65dSBuLmv/KTgFqFcQuXAy+ESzquI5iT+7AKo9yKX66HzbRmFJ66Zp7LHWWRJ7xD5i2vW3oNjhMggKyaTh2cwxOona3kYEzBOrKvefA+GbrEV5ElqAV9/Zf23UeOCdgTAs9DF1mNQD10vbcm+WK1g3W6dQse2smW/PZ3z5FNreFs0ZeJZ0R2zM6/3CFLc3mK76ZMYbesF0IBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xiaz9/LlFg3C06Ys+0TRMc4V7B558jix6tavvkbw840=;
 b=KPWsDT59fj33a0kMskUYnMBS01ogEGiNkUZMKkJrCHfGkeO13JmKj4LtQnj1ZekSkto8LOMsFuyhb/rygF+XskirYjzAZEy0HnKsQZRANh7x4S14pVGwY3XKDL9HBwrvBuHgWgiwskRArbAFRtvGP3kVFM5IJ6a4gGdgr7kfNr12V7dic9j8EkIh5F6jnocwmMZMA3lhTQn/VQmVtH4j5qgzncNSu1u2QK3xoZ/vDILz6ZBMFND8T3AvvJSmBovjR1YjNX6yLdTb0qvLtkmSp7d92/xnTAnVOAMlSUmQTyEkmZt8y727ngJLQFsBuTRg5G0Gw5Cj/cNPY0bkkEGL1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.onmicrosoft.com;
 s=selector2-fb-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xiaz9/LlFg3C06Ys+0TRMc4V7B558jix6tavvkbw840=;
 b=CSOVluFqU3XW6rE/zS+C7VHEdMycgdNWF5s7mlOtuXYky0fxWqeOkbAjM23Uq8DkbKa2uU+MXRjThHimkXfgDCaTzFScsACn7X0wAiFSLX2DDzEYEVfuSxqmbgSXEHzsvI3Ix9TcQVwc+PZYdIrFgfFGu3ADSIvo7HO5iXVka+w=
Received: from MWHPR15MB1597.namprd15.prod.outlook.com (10.173.234.137) by
 MWHPR15MB1790.namprd15.prod.outlook.com (10.174.97.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.22; Fri, 31 Jan 2020 18:22:47 +0000
Received: from MWHPR15MB1597.namprd15.prod.outlook.com
 ([fe80::cdbf:b63c:437:4dd2]) by MWHPR15MB1597.namprd15.prod.outlook.com
 ([fe80::cdbf:b63c:437:4dd2%8]) with mapi id 15.20.2665.027; Fri, 31 Jan 2020
 18:22:47 +0000
From: Vijay Khemka <vijaykhemka@fb.com>
To: Joel Stanley <joel@jms.id.au>
Subject: Re: [PATCH] ARM: dts: aspeed: tiogapass: Add IPMB device
Thread-Topic: [PATCH] ARM: dts: aspeed: tiogapass: Add IPMB device
Thread-Index: AQHV1XjWQiejjW2+wkaLhJtkMVfWlqgEKdkAgABr9wA=
Date: Fri, 31 Jan 2020 18:22:47 +0000
Message-ID: <65448810-933F-4954-A24E-645A32A85E96@fb.com>
References: <20200128011728.4092945-1-vijaykhemka@fb.com>
 <CACPK8Xc6TbHLgWO3p7YXJf+jfzNhiGzGsdDwQsQ56ix8sUQGzg@mail.gmail.com>
In-Reply-To: <CACPK8Xc6TbHLgWO3p7YXJf+jfzNhiGzGsdDwQsQ56ix8sUQGzg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [2620:10d:c090:200::3:652d]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e2cb094c-44c2-4802-cfbc-08d7a67a92ce
x-ms-traffictypediagnostic: MWHPR15MB1790:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR15MB1790BCCDB15A23F7E9B0040FDD070@MWHPR15MB1790.namprd15.prod.outlook.com>
x-fb-source: Internal
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 029976C540
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(366004)(136003)(396003)(346002)(376002)(199004)(189003)(71200400001)(86362001)(2906002)(2616005)(6512007)(5660300002)(186003)(6916009)(36756003)(54906003)(316002)(6506007)(66556008)(8676002)(76116006)(66946007)(66476007)(66446008)(64756008)(8936002)(81166006)(81156014)(33656002)(478600001)(6486002)(4326008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR15MB1790;
 H:MWHPR15MB1597.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZKBtpzhSqg6LGwM9FGwZ6TouwOQZ8vHZKonHFX6/LwMUpucOqAGz3ky9wvaMVVwrhDRSpn/ItQFG+3RCIOiTIimO0rn5KO3uaECi4BxZnRVbQAng9nBRJyQgCWk1LhbRENjWU0fl2xlP/3d5b7TZMbY89vVdqc/iNXrpH/sFrGX5NxzIa5zeL3bqSs4SBSuo11xL9evZJvv4wgy/zmd3jfnu1U4nTFNQl9ZQ0VetG5Ktxv0RROQZsIeLK8Q0YtKSL76TR8yR89Wl+dLucoCxMX8xmqAv5lQQJH8QMKAOESHOvZzlA8tCQhQ/NzdDCc/VBWCoJXQ7eDLJZYB1YpDSR67WVEcNH4qYi6VDCT7fQeXgSX3j1AvRM1SK6s/OuAnZqYQ+r9ETWodn6wMYKM8M9l/d70CRX6ireUJ01esJ6Ee755xqF0VB/lLPBg4k31io
x-ms-exchange-antispam-messagedata: h+lVsTaG640vFQmM2QHP8xvyU2y/S6yjhsyrm5e2RigVm0S58tlETs349EcZWI040Vhn1Wewu/KWFk7SxEkfSN3zUl3TBw3YcbjNDQ0iw0Fgyuj2L+vZS+gLdtMmGKenbTyRMd7a/wcX5jNywJSnkp2aAtCohNcqN4WB3rRooik6AuWoDvesGaTw8AmkEBm+
Content-ID: <2978FF1FEE44D94C8106BB5351E2AF81@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e2cb094c-44c2-4802-cfbc-08d7a67a92ce
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2020 18:22:47.4533 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 41RIDzLvOokwBa55VryXy94IoQpPW4jGF3RrzAqqooJHIw7EM7ovaueBU4PGCUvyp0yBYP23Jq1kqGzPjWCtVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR15MB1790
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-31_05:2020-01-31,
 2020-01-31 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 bulkscore=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 malwarescore=0 clxscore=1015 mlxscore=0 phishscore=0 mlxlogscore=999
 spamscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1911200001 definitions=main-2001310151
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_102255_881221_371C866B 
X-CRM114-Status: GOOD (  17.44  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.145.42 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [67.231.145.42 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Sai Dasari <sdasari@fb.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Andrew Jeffery <andrew@aj.id.au>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCu+7v09uIDEvMzAvMjAsIDc6NTYgUE0sICJKb2VsIFN0YW5sZXkiIDxqb2VsQGptcy5pZC5h
dT4gd3JvdGU6DQoNCiAgICBPbiBUdWUsIDI4IEphbiAyMDIwIGF0IDAxOjE3LCBWaWpheSBLaGVt
a2EgPHZpamF5a2hlbWthQGZiLmNvbT4gd3JvdGU6DQogICAgPg0KICAgID4gQWRkaW5nIElQTUIg
ZGV2aWNlcyBmb3IgZmFjZWJvb2sgdGlvZ2FwYXNzIHBsYXRmb3JtLg0KICAgID4NCiAgICA+IFNp
Z25lZC1vZmYtYnk6IFZpamF5IEtoZW1rYSA8dmlqYXlraGVta2FAZmIuY29tPg0KICAgIA0KICAg
IFJldmlld2VkLWJ5OiBKb2VsIFN0YW5sZXkgPGpvZWxAam1zLmlkLmF1Pg0KICAgIA0KICAgIEkg
d2lsbCBtZXJnZSB0aGlzIHRocm91Z2ggdGhlIGFzcGVlZCB0cmVlIGZvciA1LjcuDQoNClRoYW5r
cyBKb2VsLg0KICAgIA0KICAgIENoZWVycywNCiAgICANCiAgICBKb2VsDQogICAgDQogICAgPiAt
LS0NCiAgICA+ICBhcmNoL2FybS9ib290L2R0cy9hc3BlZWQtYm1jLWZhY2Vib29rLXRpb2dhcGFz
cy5kdHMgfCAxMSArKysrKysrKysrKw0KICAgID4gIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRp
b25zKCspDQogICAgPg0KICAgID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2FzcGVl
ZC1ibWMtZmFjZWJvb2stdGlvZ2FwYXNzLmR0cyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2FzcGVlZC1i
bWMtZmFjZWJvb2stdGlvZ2FwYXNzLmR0cw0KICAgID4gaW5kZXggZmI3ZjAzNGQ1ZGIyLi43MTlj
MTMwYTE5OGMgMTAwNjQ0DQogICAgPiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9hc3BlZWQtYm1j
LWZhY2Vib29rLXRpb2dhcGFzcy5kdHMNCiAgICA+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2Fz
cGVlZC1ibWMtZmFjZWJvb2stdGlvZ2FwYXNzLmR0cw0KICAgID4gQEAgLTUsNiArNSw3IEBADQog
ICAgPg0KICAgID4gICNpbmNsdWRlICJhc3BlZWQtZzUuZHRzaSINCiAgICA+ICAjaW5jbHVkZSA8
ZHQtYmluZGluZ3MvZ3Bpby9hc3BlZWQtZ3Bpby5oPg0KICAgID4gKyNpbmNsdWRlIDxkdC1iaW5k
aW5ncy9pMmMvaTJjLmg+DQogICAgPg0KICAgID4gIC8gew0KICAgID4gICAgICAgICBtb2RlbCA9
ICJGYWNlYm9vayBUaW9nYVBhc3MgQk1DIjsNCiAgICA+IEBAIC00MjgsNiArNDI5LDExIEBADQog
ICAgPiAgJmkyYzQgew0KICAgID4gICAgICAgICBzdGF0dXMgPSAib2theSI7DQogICAgPiAgICAg
ICAgIC8vIEJNQyBEZWJ1ZyBIZWFkZXINCiAgICA+ICsgICAgICAgaXBtYjBAMTAgew0KICAgID4g
KyAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiaXBtYi1kZXYiOw0KICAgID4gKyAgICAgICAg
ICAgICAgIHJlZyA9IDwoMHgxMCB8IEkyQ19PV05fU0xBVkVfQUREUkVTUyk+Ow0KICAgID4gKyAg
ICAgICAgICAgICAgIGkyYy1wcm90b2NvbDsNCiAgICA+ICsgICAgICAgfTsNCiAgICA+ICB9Ow0K
ICAgID4NCiAgICA+ICAmaTJjNSB7DQogICAgPiBAQCAtNTA5LDYgKzUxNSwxMSBAQA0KICAgID4g
ICZpMmM5IHsNCiAgICA+ICAgICAgICAgc3RhdHVzID0gIm9rYXkiOw0KICAgID4gICAgICAgICAv
L1VTQiBEZWJ1ZyBDb25uZWN0b3INCiAgICA+ICsgICAgICAgaXBtYjBAMTAgew0KICAgID4gKyAg
ICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiaXBtYi1kZXYiOw0KICAgID4gKyAgICAgICAgICAg
ICAgIHJlZyA9IDwoMHgxMCB8IEkyQ19PV05fU0xBVkVfQUREUkVTUyk+Ow0KICAgID4gKyAgICAg
ICAgICAgICAgIGkyYy1wcm90b2NvbDsNCiAgICA+ICsgICAgICAgfTsNCiAgICA+ICB9Ow0KICAg
ID4NCiAgICA+ICAmcHdtX3RhY2hvIHsNCiAgICA+IC0tDQogICAgPiAyLjE3LjENCiAgICA+DQog
ICAgDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
