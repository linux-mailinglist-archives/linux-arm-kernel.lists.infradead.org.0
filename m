Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A19D0B6EC1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 23:22:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Mime-Version:References:
	In-Reply-To:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/6n4kpsCLbzbrwlfJTKoQlCZQ0H3+lwwAR2dPIzisyY=; b=BJgT6uJFafDbeH
	p1jlCdue6CKEYG0wGIRd9VVp7K9KOTtobUDkZFGNe7GOMEU13NsdmrMeOUZYGODM6+skIkY6CJkev
	WfEIG2LGofUQ7vsJY5ksWeuvwCss07o/vEj3InQouTLUt795YrYm+5npgMDNxNK5iR6aJwWtX6J7v
	8Mqb3azV0Ms+MEDS13VbbWsYYbTZtnWhe/1BM6AkM5YCPmcEdAtSzsoby2M7sRJkCawzpWeY+pvNn
	4WR9u/tHdNDt2NDH9WgT0JmBXf0Hj5Rdc9rmTd6ArkAXfiFHnMDLijW0BTuqjEcGx+1+Dg2PvMsl7
	BPM/XsWyH6lScmBOgoAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAhOs-0002cV-3i; Wed, 18 Sep 2019 21:22:10 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAhOZ-0002ag-0j
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 21:21:52 +0000
Received: from pps.filterd (m0098410.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x8ILKQJe109721
 for <linux-arm-kernel@lists.infradead.org>; Wed, 18 Sep 2019 17:21:47 -0400
Received: from e06smtp07.uk.ibm.com (e06smtp07.uk.ibm.com [195.75.94.103])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2v3vdnr19t-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Wed, 18 Sep 2019 17:21:46 -0400
Received: from localhost
 by e06smtp07.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <zohar@linux.ibm.com>;
 Wed, 18 Sep 2019 22:21:44 +0100
Received: from b06avi18626390.portsmouth.uk.ibm.com (9.149.26.192)
 by e06smtp07.uk.ibm.com (192.168.101.137) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Wed, 18 Sep 2019 22:21:39 +0100
Received: from d06av25.portsmouth.uk.ibm.com (d06av25.portsmouth.uk.ibm.com
 [9.149.105.61])
 by b06avi18626390.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id x8ILLCm418743696
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 18 Sep 2019 21:21:12 GMT
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 9517011C054;
 Wed, 18 Sep 2019 21:21:38 +0000 (GMT)
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id CA4B011C04A;
 Wed, 18 Sep 2019 21:21:36 +0000 (GMT)
Received: from dhcp-9-31-103-196.watson.ibm.com (unknown [9.31.103.196])
 by d06av25.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Wed, 18 Sep 2019 21:21:36 +0000 (GMT)
Subject: Re: [RFC PATCH v1 1/1] Add support for arm64 to carry ima
 measurement log in kexec_file_load
From: Mimi Zohar <zohar@linux.ibm.com>
To: Prakhar Srivastava <prsriva@linux.microsoft.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-integrity@vger.kernel.org, kexec@lists.infradead.org
Date: Wed, 18 Sep 2019 17:21:36 -0400
In-Reply-To: <1568816111.16709.68.camel@linux.ibm.com>
References: <20190913225009.3406-1-prsriva@linux.microsoft.com>
 <20190913225009.3406-2-prsriva@linux.microsoft.com>
 <1568816111.16709.68.camel@linux.ibm.com>
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Mime-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19091821-0028-0000-0000-0000039FA7EA
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19091821-0029-0000-0000-00002461ACC4
Message-Id: <1568841696.4733.3.camel@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-09-18_10:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=3 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1909180182
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_142151_623619_6955F966 
X-CRM114-Status: GOOD (  19.89  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, jean-philippe@linaro.org, arnd@arndb.de,
 takahiro.akashi@linaro.org, sboyd@kernel.org, catalin.marinas@arm.com,
 yamada.masahiro@socionext.com, kristina.martsenko@arm.org, duwe@lst.de,
 bauerman@linux.ibm.com, james.morse@arm.org, tglx@linutronix.de,
 allison@lohutok.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAyMDE5LTA5LTE4IGF0IDEwOjE1IC0wNDAwLCBNaW1pIFpvaGFyIHdyb3RlOgoKPiA+
ICsJdWludDY0X3QgdG1wX3N0YXJ0LCB0bXBfZW5kOwo+ID4gKwo+ID4gKwlwcm9wU3RhcnQgPSBv
Zl9maW5kX3Byb3BlcnR5KG9mX2Nob3NlbiwgImxpbnV4LGltYS1rZXhlYy1idWZmZXIiLAo+ID4g
KwkJCQkgICAgIE5VTEwpOwo+ID4gKwlpZiAocHJvcFN0YXJ0KSB7Cj4gPiArCQl0bXBfc3RhcnQg
PSBmZHQ2NF90b19jcHUoKigoY29uc3QgZmR0NjRfdCAqKSBwcm9wU3RhcnQpKTsKPiA+ICsJCXJl
dCA9IG9mX3JlbW92ZV9wcm9wZXJ0eShvZl9jaG9zZW4sIHByb3BTdGFydCk7Cj4gPiArCQlpZiAo
IXJldCkgewo+ID4gKwkJCXJldHVybiByZXQ7Cj4gPiArCQl9Cj4gPiArCj4gPiArCQlwcm9wRW5k
ID0gb2ZfZmluZF9wcm9wZXJ0eShvZl9jaG9zZW4sCj4gPiArCQkJCQkgICAibGludXgsaW1hLWtl
eGVjLWJ1ZmZlci1lbmQiLCBOVUxMKTsKPiA+ICsJCWlmICghcHJvcEVuZCkgewo+ID4gKwkJCXJl
dHVybiAtRUlOVkFMOwo+ID4gKwkJfQo+ID4gKwo+ID4gKwkJdG1wX2VuZCA9IGZkdDY0X3RvX2Nw
dSgqKChjb25zdCBmZHQ2NF90ICopIHByb3BFbmQpKTsKPiA+ICsKPiA+ICsJCXJldCA9IG9mX3Jl
bW92ZV9wcm9wZXJ0eShvZl9jaG9zZW4sIHByb3BFbmQpOwo+ID4gKwkJaWYgKCFyZXQpIHsKPiA+
ICsJCQlyZXR1cm4gcmV0Owo+ID4gKwkJfQo+IAo+IFRoZXJlIHNlZW1zIHRvIGJlIHF1aXRlIGEg
Yml0IG9mIGNvZGUgZHVwbGljYXRpb24gaW4gdGhpcyBmdW5jdGlvbiBhbmQKPiBpbsKgaW1hX2dl
dF9rZXhlY19idWZmZXIoKS4gwqBJdCBjb3VsZCBwcm9iYWJseSBiZSBjbGVhbmVkIHVwIHdpdGgg
c29tZQo+IHJlZmFjdG9yaW5nLgoKU29ycnksIG15IG1pc3Rha2UuIMKgT25lIGNhbGxzIG9mX2dl
dF9wcm9wZXJ0eSgpLCB3aGlsZSB0aGUgb3RoZXIgY2FsbHMKb2ZfZmluZF9wcm9wZXJ0eSgpLgoK
TWltaQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
