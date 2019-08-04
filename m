Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A48680F56
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 01:29:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B59lHjbsVU0iaJhT3nXekogT3WDFwj2fKpVvxDyYdLY=; b=kT6YPwNJKUcqOdwHgwCIPDNhB
	+Zsfyi0/2Ep2hSSKT9C0NH9YPkocqiZm7Jl3hbHxGfDDSklMMRQScxJLGyO/nMbDFg4vjoYS+Ft1R
	eSariE1+fwXPGnMrbAJz4myMdW7xfmWrYY9zKglQ7bXABeLIXjWSjO+1ONFgzwRwDWIMyJXhGcdtN
	olAmpKxvQU/q9iCpu0d4Hq57Awnw8FD3FAXP02s+zGEouLtpY4tRJ1qsWTxftSkIvZofi+WPNTeO6
	Z2LZ+So6IuiGsF6qDl82PaJN/ErS3K0yVqH2NS9nfEkAeYHg3uLAGtL3rQtB/lh2FBapBbqq0TESD
	vL91wHkgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huPvz-0001YV-At; Sun, 04 Aug 2019 23:29:03 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huPvm-0001XZ-I0; Sun, 04 Aug 2019 23:28:51 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x74NNpc9062157;
 Sun, 4 Aug 2019 23:28:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=cc : subject : to :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2018-07-02;
 bh=Xv/Xmfe6YA+uiUXCTMOrvz+2cmMCgKpadUjchsyGSqE=;
 b=Q8jHS5LyGioVRXkw2sEGxpCJ0g6RThcXNJNhQ+zIt1yN9QAbG9oidwXBknqGefI/Gzo9
 By4AgfVTCnBhziiCIa41vp2Km7uJGUaiXbbnEbFOGJu/tindREq8cqQoMC9pE39KJmFC
 pbJGax0NRp2J6BU7Wqa2MYOikJcTOlvo6BuaJMMnG/rkz+mFpRP2aBj29SOQtqfHNiyp
 Oiqh3Pja48Hg208XzAKVGnWgaY0bM8E6Jd5XgoYoeEDXsXo8GsiLTw4ZRpe3pTL5xLes
 aQ1Owfq77tOFIMZ2lazrtAcx+SAXXLqcnJIeXpem2RoPun+jIzPsLiAZSgR10i43pZcT 6Q== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 2u527pc4c4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sun, 04 Aug 2019 23:28:16 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x74NRrau079768;
 Sun, 4 Aug 2019 23:28:16 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by aserp3030.oracle.com with ESMTP id 2u50abah84-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sun, 04 Aug 2019 23:28:16 +0000
Received: from aserp3030.oracle.com (aserp3030.oracle.com [127.0.0.1])
 by pps.reinject (8.16.0.27/8.16.0.27) with SMTP id x74NSFYX079993;
 Sun, 4 Aug 2019 23:28:15 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 2u50abah81-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sun, 04 Aug 2019 23:28:15 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x74NSAcc031730;
 Sun, 4 Aug 2019 23:28:10 GMT
Received: from mbp2018.cdmnet.org (/82.27.120.181)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Sun, 04 Aug 2019 16:28:10 -0700
Subject: Re: [PATCH 31/34] nfs: convert put_page() to put_user_page*()
To: John Hubbard <jhubbard@nvidia.com>, john.hubbard@gmail.com,
 Andrew Morton <akpm@linux-foundation.org>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
 <20190802022005.5117-32-jhubbard@nvidia.com>
 <1738cb1e-15d8-0bbe-5362-341664f6efc8@oracle.com>
 <db136399-ed87-56ea-bd6e-e5d29b145eda@nvidia.com>
From: Calum Mackay <calum.mackay@oracle.com>
Organization: Oracle
Message-ID: <03a81556-98a7-7edb-5989-b799ec99a072@oracle.com>
Date: Mon, 5 Aug 2019 00:28:01 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:70.0)
 Gecko/20100101 Thunderbird/70.0a1
MIME-Version: 1.0
In-Reply-To: <db136399-ed87-56ea-bd6e-e5d29b145eda@nvidia.com>
Content-Language: en-GB
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9339
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908040274
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_162850_692546_69C109E4 
X-CRM114-Status: GOOD (  17.79  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-fbdev@vger.kernel.org, Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 sparclinux@vger.kernel.org, Ira Weiny <ira.weiny@intel.com>,
 calum.mackay@oracle.com, devel@driverdev.osuosl.org, rds-devel@oss.oracle.com,
 linux-rdma@vger.kernel.org, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Dan Williams <dan.j.williams@intel.com>, linux-block@vger.kernel.org,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, ceph-devel@vger.kernel.org,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDMvMDgvMjAxOSAyOjQxIGFtLCBKb2huIEh1YmJhcmQgd3JvdGU6Cj4gT24gOC8yLzE5IDY6
MjcgUE0sIENhbHVtIE1hY2theSB3cm90ZToKPj4gT24gMDIvMDgvMjAxOSAzOjIwIGFtLCBqb2hu
Lmh1YmJhcmRAZ21haWwuY29tIHdyb3RlOgo+IC4uLgo+PiBTaW5jZSBpdCdzIHN0YXRpYywgYW5k
IG9ubHkgY2FsbGVkIHR3aWNlLCBtaWdodCBpdCBiZSBiZXR0ZXIgdG8gY2hhbmdlIGl0cyB0d28g
Y2FsbGVycyBbbmZzX2RpcmVjdF97cmVhZCx3cml0ZX1fc2NoZWR1bGVfaW92ZWMoKV0gdG8gY2Fs
bCBwdXRfdXNlcl9wYWdlcygpIGRpcmVjdGx5LCBhbmQgcmVtb3ZlIG5mc19kaXJlY3RfcmVsZWFz
ZV9wYWdlcygpIGVudGlyZWx5Pwo+Pgo+PiB0aGFua3MsCj4+IGNhbHVtLgo+Pgo+Pgo+Pj4gIMKg
IMKgIHZvaWQgbmZzX2luaXRfY2luZm9fZnJvbV9kcmVxKHN0cnVjdCBuZnNfY29tbWl0X2luZm8g
KmNpbmZvLAo+Pj4KPiAgIAo+IEhpIENhbHVtLAo+IAo+IEFic29sdXRlbHkhIElzIGl0IE9LIHRv
IGFkZCB5b3VyIHJldmlld2VkLWJ5LCB3aXRoIHRoZSBmb2xsb3dpbmcgaW5jcmVtZW50YWwKPiBw
YXRjaCBtYWRlIHRvIHRoaXMgb25lPwoKVGhhbmtzIEpvaG47IGxvb2tzIGdvb2QuCgpSZXZpZXdl
ZC1ieTogQ2FsdW0gTWFja2F5IDxjYWx1bS5tYWNrYXlAb3JhY2xlLmNvbT4KCj4gCj4gZGlmZiAt
LWdpdCBhL2ZzL25mcy9kaXJlY3QuYyBiL2ZzL25mcy9kaXJlY3QuYwo+IGluZGV4IGIwMGI4OWRk
YTNjNS4uYzBjMWI5ZjJjMDY5IDEwMDY0NAo+IC0tLSBhL2ZzL25mcy9kaXJlY3QuYwo+ICsrKyBi
L2ZzL25mcy9kaXJlY3QuYwo+IEBAIC0yNzYsMTEgKzI3Niw2IEBAIHNzaXplX3QgbmZzX2RpcmVj
dF9JTyhzdHJ1Y3Qga2lvY2IgKmlvY2IsIHN0cnVjdCBpb3ZfaXRlciAqaXRlcikKPiAgICAgICAg
ICByZXR1cm4gbmZzX2ZpbGVfZGlyZWN0X3dyaXRlKGlvY2IsIGl0ZXIpOwo+ICAgfQo+ICAgCj4g
LXN0YXRpYyB2b2lkIG5mc19kaXJlY3RfcmVsZWFzZV9wYWdlcyhzdHJ1Y3QgcGFnZSAqKnBhZ2Vz
LCB1bnNpZ25lZCBpbnQgbnBhZ2VzKQo+IC17Cj4gLSAgICAgICBwdXRfdXNlcl9wYWdlcyhwYWdl
cywgbnBhZ2VzKTsKPiAtfQo+IC0KPiAgIHZvaWQgbmZzX2luaXRfY2luZm9fZnJvbV9kcmVxKHN0
cnVjdCBuZnNfY29tbWl0X2luZm8gKmNpbmZvLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBzdHJ1Y3QgbmZzX2RpcmVjdF9yZXEgKmRyZXEpCj4gICB7Cj4gQEAgLTUxMCw3ICs1MDUs
NyBAQCBzdGF0aWMgc3NpemVfdCBuZnNfZGlyZWN0X3JlYWRfc2NoZWR1bGVfaW92ZWMoc3RydWN0
IG5mc19kaXJlY3RfcmVxICpkcmVxLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICBwb3MgKz0g
cmVxX2xlbjsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgZHJlcS0+Ynl0ZXNfbGVmdCAtPSBy
ZXFfbGVuOwo+ICAgICAgICAgICAgICAgICAgfQo+IC0gICAgICAgICAgICAgICBuZnNfZGlyZWN0
X3JlbGVhc2VfcGFnZXMocGFnZXZlYywgbnBhZ2VzKTsKPiArICAgICAgICAgICAgICAgcHV0X3Vz
ZXJfcGFnZXMocGFnZXZlYywgbnBhZ2VzKTsKPiAgICAgICAgICAgICAgICAgIGt2ZnJlZShwYWdl
dmVjKTsKPiAgICAgICAgICAgICAgICAgIGlmIChyZXN1bHQgPCAwKQo+ICAgICAgICAgICAgICAg
ICAgICAgICAgICBicmVhazsKPiBAQCAtOTMzLDcgKzkyOCw3IEBAIHN0YXRpYyBzc2l6ZV90IG5m
c19kaXJlY3Rfd3JpdGVfc2NoZWR1bGVfaW92ZWMoc3RydWN0IG5mc19kaXJlY3RfcmVxICpkcmVx
LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICBwb3MgKz0gcmVxX2xlbjsKPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgZHJlcS0+Ynl0ZXNfbGVmdCAtPSByZXFfbGVuOwo+ICAgICAgICAgICAg
ICAgICAgfQo+IC0gICAgICAgICAgICAgICBuZnNfZGlyZWN0X3JlbGVhc2VfcGFnZXMocGFnZXZl
YywgbnBhZ2VzKTsKPiArICAgICAgICAgICAgICAgcHV0X3VzZXJfcGFnZXMocGFnZXZlYywgbnBh
Z2VzKTsKPiAgICAgICAgICAgICAgICAgIGt2ZnJlZShwYWdldmVjKTsKPiAgICAgICAgICAgICAg
ICAgIGlmIChyZXN1bHQgPCAwKQo+ICAgICAgICAgICAgICAgICAgICAgICAgICBicmVhazsKPiAK
PiAKPiAKPiB0aGFua3MsCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
