Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7B5732A34
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 10:00:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	Date:From:References:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fkl+rOYrmH1tLM6dLVLlRRu5zlJ7WZ4xz0YEVnrycPk=; b=CFdJ24qt1v607o
	XS4bRXQo3BgeLDWmqvsZjEYSb5MLz110eF2qVdmDaA8iYe2Q4guN+T1kNsU3X8C+Uahw+ksaH+FWi
	zSypPDyhmv9DIfI+KWHLBIhphnqFrPFu4pGslXVX9vd40Td3ooIQ9XcKjFVkU2tUkXdw6l080yTsS
	QTxlZKa/j4CHSTMM2qlI9dJ1WVfepa67FN5hOt+EXGDA08yIvKFXfwOMP7a2oE2gwsTpAz9F/+azF
	QgQPlsFRkzgw5QfpAe/wngTO+9DMcZ9gIZyylSoRgb3J1p33ViJH90tljZSg0TJyZ/u0hTzBBHMD1
	IQ4VRtpkHTz9HXPvKbyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXht6-0005Vd-8R; Mon, 03 Jun 2019 08:00:12 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXhsy-0004Uk-6G
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 08:00:05 +0000
Received: from pps.filterd (m0098413.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x537vSk7000745
 for <linux-arm-kernel@lists.infradead.org>; Mon, 3 Jun 2019 04:00:01 -0400
Received: from e06smtp04.uk.ibm.com (e06smtp04.uk.ibm.com [195.75.94.100])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2svw0gp4w5-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Mon, 03 Jun 2019 04:00:01 -0400
Received: from localhost
 by e06smtp04.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <freude@linux.ibm.com>;
 Mon, 3 Jun 2019 08:59:59 +0100
Received: from b06cxnps4074.portsmouth.uk.ibm.com (9.149.109.196)
 by e06smtp04.uk.ibm.com (192.168.101.134) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Mon, 3 Jun 2019 08:59:55 +0100
Received: from d06av24.portsmouth.uk.ibm.com (mk.ibm.com [9.149.105.60])
 by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x537xsA146989420
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 3 Jun 2019 07:59:54 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 0CEC342045;
 Mon,  3 Jun 2019 07:59:54 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 870E642042;
 Mon,  3 Jun 2019 07:59:53 +0000 (GMT)
Received: from [10.0.2.15] (unknown [9.152.224.114])
 by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Mon,  3 Jun 2019 07:59:53 +0000 (GMT)
Subject: Re: [RFC PATCH 1/2] crypto: Allow working with key references
To: Richard Weinberger <richard@nod.at>,
 Herbert Xu <herbert@gondor.apana.org.au>
References: <20190529224844.25203-1-richard@nod.at>
 <20190530023357.2mrjtslnka4i6dbl@gondor.apana.org.au>
 <2084969721.73871.1559201016164.JavaMail.zimbra@nod.at>
From: Harald Freudenberger <freude@linux.ibm.com>
Date: Mon, 3 Jun 2019 09:59:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <2084969721.73871.1559201016164.JavaMail.zimbra@nod.at>
Content-Language: en-US
X-TM-AS-GCONF: 00
x-cbid: 19060307-0016-0000-0000-000002830744
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19060307-0017-0000-0000-000032E00F2A
Message-Id: <14ffcdf2-ed9f-be07-fde5-62dfb1fce4f9@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-03_06:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906030059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_010004_369969_78A3BFAC 
X-CRM114-Status: GOOD (  23.66  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: david <david@sigma-star.at>, shawnguo@kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, linux-imx@nxp.com,
 kernel <kernel@pengutronix.de>, festevam@gmail.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMzAuMDUuMTkgMDk6MjMsIFJpY2hhcmQgV2VpbmJlcmdlciB3cm90ZToKPiAtLS0tLSBVcnNw
csO8bmdsaWNoZSBNYWlsIC0tLS0tCj4+IFZvbjogIkhlcmJlcnQgWHUiIDxoZXJiZXJ0QGdvbmRv
ci5hcGFuYS5vcmcuYXU+Cj4+IEFuOiAicmljaGFyZCIgPHJpY2hhcmRAbm9kLmF0Pgo+PiBDQzog
IkxpbnV4IENyeXB0byBNYWlsaW5nIExpc3QiIDxsaW51eC1jcnlwdG9Admdlci5rZXJuZWwub3Jn
PiwgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnLCAibGludXgta2VybmVsIgo+
PiA8bGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZz4sIGxpbnV4LWlteEBueHAuY29tLCBmZXN0
ZXZhbUBnbWFpbC5jb20sICJrZXJuZWwiIDxrZXJuZWxAcGVuZ3V0cm9uaXguZGU+LCAiU2FzY2hh
IEhhdWVyIgo+PiA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4sIHNoYXduZ3VvQGtlcm5lbC5vcmcs
IGRhdmVtQGRhdmVtbG9mdC5uZXQsICJkYXZpZCIgPGRhdmlkQHNpZ21hLXN0YXIuYXQ+Cj4+IEdl
c2VuZGV0OiBEb25uZXJzdGFnLCAzMC4gTWFpIDIwMTkgMDQ6MzM6NTcKPj4gQmV0cmVmZjogUmU6
IFtSRkMgUEFUQ0ggMS8yXSBjcnlwdG86IEFsbG93IHdvcmtpbmcgd2l0aCBrZXkgcmVmZXJlbmNl
cwo+PiBPbiBUaHUsIE1heSAzMCwgMjAxOSBhdCAxMjo0ODo0M0FNICswMjAwLCBSaWNoYXJkIFdl
aW5iZXJnZXIgd3JvdGU6Cj4+PiBTb21lIGNyeXB0byBhY2NlbGVyYXRvcnMgYWxsb3cgd29ya2lu
ZyB3aXRoIHNlY3VyZSBvciBoaWRkZW4ga2V5cy4KPj4+IFRoaXMga2V5cyBhcmUgbm90IGV4cG9z
ZWQgdG8gTGludXggbm9yIG1haW4gbWVtb3J5LiBUbyB1c2UgdGhlbQo+Pj4gZm9yIGEgY3J5cHRv
IG9wZXJhdGlvbiB0aGV5IGFyZSByZWZlcmVuY2VkIHdpdGggYSBkZXZpY2Ugc3BlY2lmaWMgaWQu
Cj4+Pgo+Pj4gVGhpcyBwYXRjaCBhZGRzIGEgbmV3IGZsYWcsIENSWVBUT19URk1fUkVRX1JFRl9L
RVkuCj4+PiBJZiB0aGlzIGZsYWcgaXMgc2V0LCBjcnlwdG8gZHJpdmVycyBzaG91bGQgdHJlYWQg
dGhlIGtleSBhcwo+Pj4gc3BlY2lmaWVkIHZpYSBzZXRrZXkgYXMgcmVmZXJlbmNlIGFuZCBub3Qg
YXMgcmVndWxhciBrZXkuCj4+PiBTaW5jZSB3ZSByZXVzZSB0aGUga2V5IGRhdGEgc3RydWN0dXJl
IHN1Y2ggYSByZWZlcmVuY2UgaXMgbGltaXRlZAo+Pj4gYnkgdGhlIGtleSBzaXplIG9mIHRoZSBj
aGlwZXIgYW5kIGlzIGNoaXAgc3BlY2lmaWMuCj4+Pgo+Pj4gVE9ETzogSWYgdGhlIGNpcGhlciBp
bXBsZW1lbnRhdGlvbiBvciB0aGUgZHJpdmVyIGRvZXMgbm90Cj4+PiBzdXBwb3J0IHJlZmVyZW5j
ZSBrZXlzLCB3ZSBuZWVkIGEgd2F5IHRvIGRldGVjdCB0aGlzIGFuIGZhaWwKPj4+IHVwb24gc2V0
a2V5Lgo+Pj4gSG93IHNob3VsZCB0aGUgZHJpdmVyIGluZGljYXRlIHRoYXQgaXQgc3VwcG9ydHMg
dGhpcyBmZWF0dXJlPwo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IFJpY2hhcmQgV2VpbmJlcmdlciA8
cmljaGFyZEBub2QuYXQ+Cj4+IFdlIGFscmVhZHkgaGF2ZSBleGlzdGluZyBkcml2ZXJzIGRvaW5n
IHRoaXMuICBQbGVhc2UgaGF2ZSBhIGxvb2sKPj4gYXQgaG93IHRoZXkncmUgZG9pbmcgaXQgYW5k
IHVzZSB0aGUgc2FtZSBwYXJhZGlnbS4gIFlvdSBjYW4gZ3JlcAo+PiBmb3IgcGFlcyB1bmRlciBk
cml2ZXJzL2NyeXB0by4KPiBUaGFua3MgZm9yIHRoZSBwb2ludGVyLgo+IFNvIHRoZSBwcmVmZXJy
ZWQgd2F5IGlzIGRlZmluaW5nIGEgbmV3IGNyeXB0byBhbGdvcml0aG0gcHJlZml4ZWQgd2l0aAo+
ICJwIiBhbmQgcmV1c2luZyBzZXRrZXkgdG8gcHJvdmlkZSB0aGUga2V5IHJlZmVyZW5jZS4KVGhl
ICJwIiBpbiBwYWVzIGlzIGJlY2F1c2Ugd2UgY2FsbCBpdCAicHJvdGVjdGVkIGtleSBhZXMiLiBJ
IHRoaW5rIHlvdSBhcmUgbm90IGxpbWl0ZWQKdG8gdGhlICJwIi4gV2hhdCBIZXJiZXJ0IHRyaWVz
IHRvIHBvaW50IG91dCBpcyB0aGF0IHlvdSBtYXkgZGVmaW5lIHlvdXIgb3duCmNpcGhlciB3aXRo
IGFuIHVuaXF1ZSBuYW1lIGFuZCB0aGVyZSB5b3UgY2FuIGhhbmRsZSB5b3VyIHNlY3VyZSBrZXkg
cmVmZXJlbmNlcwphcyB5b3UgbGlrZS4gWW91IG1heSB1c2UgdGhlIHMzOTAgcGFlcyBpbXBsZW1l
bnRhdGlvbiBhcyBhIHN0YXJ0aW5nIHBvaW50LgoKcmVnYXJkcyBIYXJhbGQgRnJldWRlbmJlcmdl
ciA8ZnJldWRlQGxpbnV4LmlibS5jb20+Cgo+Cj4gVGhhbmtzLAo+IC8vcmljaGFyZAo+CgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
