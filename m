Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1DFAB1D1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 06:52:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HNovlKGHFWr21SeBJs1tbZ4jAm5WB/CuxYloX3UdB1E=; b=cPciLldjtxM4P5FQuQosu5o7h
	GcoQhHE+NKi00A8s7I1NwPU+Fj/EXSa+p8cjwlIfbt3LvfPWgx5CcYOb6kokAP6yWECr3EEbrXJU8
	li6B4M1aNxsZIFI3Fz6qu9YZO8V/o83+Wn3Cy8n0FreqCrAnCNrgJ2yuddIVMX4AYkGLfQJtyW8RP
	cxS7owv/WQDbappeGiMRyV1m01OSDcwoaZkXimZbUcZNe6GX6r5v4Gf+6G168vDThYASZU7X5j8Rr
	fue+Q8nUPYQUyaHmyJNFcid+0XaaVijQE1wodB+AV+sdCvCVWwxkN8pVCIuOEO5Qna0xPKzX3K0vr
	DW+8AGQOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i66EM-00009B-Td; Fri, 06 Sep 2019 04:52:18 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i66EG-00008g-4X
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 04:52:13 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x864q6xo165294;
 Fri, 6 Sep 2019 04:52:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2019-08-05;
 bh=KYhsWfcC1iMt71xKx7AjqLrfKI6cIO/kus0pmtMoVYI=;
 b=R7bhguuuAj+QxGbojFmU3ZneukGYN3gnkPEysNDEMgNRQ6Y46oqrb++vqLLFLdngzlA9
 WgeFLZNu1n/Ogz9q9AecZt95XQEBonCdUtzwCBb69xakojZxwpQhkdlpRVZjVt4AdEU4
 NSbnuPKrk160n7rrf+/j+R3ibkJJFVLB5CLBoh9CCNSDG2KKorEauRgR5WxCqY8NnR6w
 e3uMpod7c24GcqOfb6x9svt0w5AFkegTkNhg0zioqFPKMzW3fkiBJ+eTvE75r6j6Anui
 niRmzLwiRzhhFOi1TnQS4kL/hfrmkijyMjVj9NkAbX9n34qZaTpJC1WLJXy17/Sib57s Pw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2uugt5000q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 06 Sep 2019 04:52:06 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x864mmu8128244;
 Fri, 6 Sep 2019 04:52:06 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2utpmc9nvf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 06 Sep 2019 04:52:06 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x864q56i010773;
 Fri, 6 Sep 2019 04:52:05 GMT
Received: from [10.159.230.78] (/10.159.230.78)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 05 Sep 2019 21:52:04 -0700
Subject: Re: [RESEND PATCH next v2 0/6] ARM: keystone: update dt and enable
 cpts support
To: Grygorii Strashko <grygorii.strashko@ti.com>,
 Santosh Shilimkar <ssantosh@kernel.org>
References: <20190705151247.30422-1-grygorii.strashko@ti.com>
 <2ef8b34e-7a6e-b3e4-90e0-c4e7f16c2e99@oracle.com>
 <323c1835-e6b0-9153-8d1e-06200d5e2201@ti.com>
From: santosh.shilimkar@oracle.com
Organization: Oracle Corporation
Message-ID: <56a97316-73aa-b8ba-41f3-a374a14edc92@oracle.com>
Date: Thu, 5 Sep 2019 21:52:03 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <323c1835-e6b0-9153-8d1e-06200d5e2201@ti.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9371
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1909060054
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9371
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1909060054
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_215212_312801_5F40CA8D 
X-CRM114-Status: GOOD (  16.03  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Murali Karicheri <m-karicheri2@ti.com>,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gOS81LzE5IDEyOjMzIFBNLCBHcnlnb3JpaSBTdHJhc2hrbyB3cm90ZToKPiBIaSBTYW50b3No
LAo+IAo+IE9uIDA2LzA3LzIwMTkgMDI6NDgsIHNhbnRvc2guc2hpbGlta2FyQG9yYWNsZS5jb20g
d3JvdGU6Cj4+IE9uIDcvNS8xOSA4OjEyIEFNLCBHcnlnb3JpaSBTdHJhc2hrbyB3cm90ZToKPj4+
IEhpIFNhbnRvc2gsCj4+Pgo+Pj4gVGhpcyBzZXJpZXMgaXMgc2V0IG9mIHBsYXRmb3JtIGNoYW5n
ZXMgcmVxdWlyZWQgdG8gZW5hYmxlIE5FVENQIENQVFMgCj4+PiByZWZlcmVuY2UKPj4+IGNsb2Nr
IHNlbGVjdGlvbiBhbmQgZmluYWwgcGF0Y2ggdG8gZW5hYmxlIENQVFMgZm9yIEtleXN0b25lIAo+
Pj4gNjZBSzJFL0wvSEsgU29Dcy4KPj4+Cj4+PiBUaG9zZSBwYXRjaGVzIHdlcmUgcG9zdGVkIGFs
cmVhZHkgWzFdIHRvZ2V0aGVyIHdpdGggZHJpdmVyJ3MgY2hhbmdlcywgCj4+PiBzbyB0aGlzCj4+
PiBpcyByZS1zZW5kIG9mIERUL3BsYXRmb3JtIHNwZWNpZmljIGNoYW5nZXMgb25seSwgYXMgZHJp
dmVyJ3MgY2hhbmdlcyAKPj4+IGhhdmUKPj4+IGJlZW4gbWVyZ2VkIGFscmVhZHkuCj4+Pgo+Pj4g
UGF0Y2hlcyAxLTU6IENQVFMgRFQgbm9kZXMgdXBkYXRlIGZvciBUSSBLZXlzdG9uZSAyIDY2QUsy
SEsvRS9MIFNvQ3MuCj4+PiBQYXRjaCA2OiBlbmFibGVzIENQVFMgZm9yIFRJIEtleXN0b25lIDIg
NjZBSzJISy9FL0wgU29Dcy4KPj4+Cj4+PiBbMV0gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9y
Zy9jb3Zlci8xMDk4MDAzNy8KPj4+Cj4+PiBHcnlnb3JpaSBTdHJhc2hrbyAoNik6Cj4+PiDCoMKg
IEFSTTogZHRzOiBrZXlzdG9uZS1jbG9ja3M6IGFkZCBpbnB1dCBmaXhlZCBjbG9ja3MKPj4+IMKg
wqAgQVJNOiBkdHM6IGsyZS1jbG9ja3M6IGFkZCBpbnB1dCBleHQuIGZpeGVkIGNsb2NrcyB0c2lw
Y2xrYS9iCj4+PiDCoMKgIEFSTTogZHRzOiBrMmUtbmV0Y3A6IGFkZCBjcHRzIHJlZmNsa19tdXgg
bm9kZQo+Pj4gwqDCoCBBUk06IGR0czogazJoay1uZXRjcDogYWRkIGNwdHMgcmVmY2xrX211eCBu
b2RlCj4+PiDCoMKgIEFSTTogZHRzOiBrMmwtbmV0Y3A6IGFkZCBjcHRzIHJlZmNsa19tdXggbm9k
ZQo+Pj4gwqDCoCBBUk06IGNvbmZpZ3M6IGtleXN0b25lOiBlbmFibGUgY3B0cwo+Pj4KPj4gV2ls
bCBhZGQgdGhlc2UgZm9yIDUuNCBxdWV1ZS4gVGhhbmtzICEhCj4gCj4gU3J5LCB0aGF0IEknbSBk
aXN0dXJiaW5nIHlvdSwgYnV0IEkgZG8gbm90IHNlZSB0aG9zZSBwYXRjaGVzIGFwcGxpZWQ/Cj4g
ClNvcnJ5IEkgbWlzc2VkIHRoaXMgb25lLiBXaWxsIHF1ZXVlIHRoaXMgdXAgZm9yIG5leHQgbWVy
Z2Ugd2luZG93LgpXaWxsIHB1c2ggdGhpcyBvdXQgdG8gbmV4dCBlYXJseSBvbmNlIHJjMSBpcyBv
dXQuIElmIHlvdSBkb24ndApzZWUgaXQsIHBsZWFzZSBwaW5nIG1lLgoKClJlZ2FyZHMsClNhbnRv
c2gKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
