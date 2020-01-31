Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE90014F23C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 19:34:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dgQg8MDCdNBekk1pc2E/fbhtgJIuZOttlA1ndnqHR3g=; b=M+BEROyBIUFyTu
	zim195PE9uZ9xN+/zr9xM8fHHudooNfcq5/ZtWQE3vBsaNAmeI+gHAI4b6hCMlCwnDhXaF8Q8y566
	W60xxqF8LCP3TJkVPYgLSHX0F9RmBk4986qTqiQwNQGoFNiPZTfaNbQmYl5vWD/z2rcnNlY4JzDcc
	7nJRHnxh6dQgFaVazEjN3RHN64pZoN6gwS35KP78BktfnLTmMaw3LfbYSopAXekJ6REHRN7huYdWV
	kpXEANJzACguSfDIBky3uEzil7ztfk/FguCZXsC0LQ1sAeutQLcPHToBU9fxdh2N+KMJrdHuA9aXQ
	2fwg83qsHPh8jgyyNIiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixb7v-0006sM-4Q; Fri, 31 Jan 2020 18:34:47 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixb7i-0006rz-Cj
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 18:34:36 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00VIXnLU048194;
 Fri, 31 Jan 2020 18:33:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2019-08-05; bh=P2nZoqcfNGldK9P/dZq23Tu+F7jBb92VgkLDVWfhseI=;
 b=RkOB+zXPcOMe/TzVMBmZWBg0/fmy2xQDHQnkEnZZrVssmKa2LjtgNSfZw4BdUyRj27I3
 NxtdZHOzA0YwS+qsPKRs2ZdxDZ3IdPlSNndj+WXQ9Wm8p1iVrQu5316A54UXgAM9tQDk
 tPteAvxngkK1cDm5h9O6ir6usq8kfCyFyG4eCrg7fbSHPps0kySCBcDMUErr9j8tTPXH
 KXNhmKbQkDdGN2MT1wB3cWnc/Ob9BtjAWbLSDOF5TDZGT/dqtYaBaE1LuZuUDwGWKg/e
 w3lz2uZJKGR0/KqrbmgubqVpPIMaDtrd1MAaXuJikdVETsMJfsG4wgvIAa8GPy/CVIDH 3A== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 2xrdmr491d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 31 Jan 2020 18:33:49 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00VIE1mh039787;
 Fri, 31 Jan 2020 18:33:27 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 2xv8nrhqtk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 31 Jan 2020 18:33:27 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 00VIXC5D029013;
 Fri, 31 Jan 2020 18:33:12 GMT
Received: from [10.39.253.182] (/10.39.253.182)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 31 Jan 2020 10:33:12 -0800
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH v7 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
From: Alex Kogan <alex.kogan@oracle.com>
In-Reply-To: <20200131133543.GD14914@hirez.programming.kicks-ass.net>
Date: Fri, 31 Jan 2020 13:33:09 -0500
Message-Id: <E32F90E2-F00B-423B-A851-336004EF6593@oracle.com>
References: <20191125210709.10293-1-alex.kogan@oracle.com>
 <20191125210709.10293-4-alex.kogan@oracle.com>
 <20200121202919.GM11457@worktop.programming.kicks-ass.net>
 <20200122095127.GC14946@hirez.programming.kicks-ass.net>
 <20200122170456.GY14879@hirez.programming.kicks-ass.net>
 <D6ED40A0-E96D-41F6-AA74-0901C2C37476@oracle.com>
 <20200131133543.GD14914@hirez.programming.kicks-ass.net>
To: Peter Zijlstra <peterz@infradead.org>
X-Mailer: Apple Mail (2.3445.104.11)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9517
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001310151
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9517
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001310152
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_103434_517834_6CE9EC26 
X-CRM114-Status: GOOD (  34.68  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org, Hanjun Guo <guohanjun@huawei.com>,
 Arnd Bergmann <arnd@arndb.de>, dave.dice@oracle.com,
 Jan Glauber <jglauber@marvell.com>, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, linux@armlinux.org.uk,
 Steven Sistare <steven.sistare@oracle.com>, linux-kernel@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, hpa@zytor.com,
 Waiman Long <longman@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Daniel Jordan <daniel.m.jordan@oracle.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cj4+PiArICoKPj4+ICsgKiBSZXR1cm5zIDAgaWYgYSBtYXRjaGluZyBub2RlIGlzIGZvdW5kOyBv
dGhlcndpc2UgcmV0dXJuIHRoZSBlbmNvZGVkIHBvaW50ZXIKPj4+ICsgKiB0byB0aGUgbGFzdCBl
bGVtZW50IGluc3BlY3RlZCAoc3VjaCB0aGF0IGEgc3Vic2VxdWVudCBzY2FuIGNhbiBjb250aW51
ZSB0aGVyZSkuCj4+PiArICoKPj4+ICsgKiBUaGUgd29yc3QgY2FzZSBjb21wbGV4aXR5IG9mIHRo
ZSBzY2FuIGlzIE8obiksIHdoZXJlIG4gaXMgdGhlIG51bWJlcgo+Pj4gKyAqIG9mIGN1cnJlbnQg
d2FpdGVycy4gSG93ZXZlciwgdGhlIGFtb3J0aXplZCBjb21wbGV4aXR5IGlzIGNsb3NlIHRvIE8o
MSksCj4+PiArICogYXMgdGhlIGltbWVkaWF0ZSBzdWNjZXNzb3IgaXMgbGlrZWx5IHRvIGJlIHJ1
bm5pbmcgb24gdGhlIHNhbWUgbm9kZSBvbmNlCj4+PiArICogdGhyZWFkcyBmcm9tIG90aGVyIG5v
ZGVzIGFyZSBtb3ZlZCB0byB0aGUgc2Vjb25kYXJ5IHF1ZXVlLgo+Pj4gKyAqCj4+PiArICogWFhY
IGRvZXMgbm90IGNvbXB1dGU7IGdpdmVuIGVxdWFsIGNvbnRlbnRpb24gaXQgc2hvdWxkIGF2ZXJh
Z2UgdG8gTyhucl9ub2RlcykuCj4+IExldCBtZSB0cnkgdG8gY29udmluY2UgeW91LiBVbmRlciBj
b250ZW50aW9uLCB0aGUgaW1tZWRpYXRlIHdhaXRlciB3b3VsZCBiZQo+PiBhIGxvY2FsIG9uZS4g
U28gdGhlIHNjYW4gd291bGQgdHlwaWNhbGx5IHRha2UgTygxKSBzdGVwcy4gV2UgbmVlZCB0byBj
b25zaWRlcgo+PiB0aGUgZXh0cmEgd29yay9zdGVwcyB3ZSB0YWtlIHRvIG1vdmUgbm9kZXMgdG8g
dGhlIHNlY29uZGFyeSBxdWV1ZS4gVGhlCj4+IG51bWJlciBvZiBzdWNoIG5vZGVzIGlzIE8obikg
KHRvIGJlIG1vcmUgcHJlY2lzZSwgaXQgaXMgTyhuLW0pLCB3aGVyZSBtCj4+IGlzIG5yX2NwdXNf
cGVyX25vZGUpLCBhbmQgd2Ugc3BlbmQgYSBjb25zdGFudCBhbW91bnQgb2Ygd29yaywgcGVyIG5v
ZGUsIAo+PiB0byBzY2FuIHRob3NlIG5vZGVzIGFuZCBtb3ZlIHRoZW0gdG8gdGhlIHNlY29uZGFy
eSBxdWV1ZS4gU28gaW4gMl50aHJlc2hvbGRzCj4+IGxvY2sgaGFuZG92ZXJzLCB3ZSBzY2FuIDJe
dGhyZXNob2xkcyB4IDEgKyBuLW0gbm9kZXMuIEFzc3VtaW5nIAo+PiAyXnRocmVzaG9sZHMgPiBu
LCB0aGUgYW1vcnRpemVkIGNvbXBsZXhpdHkgb2YgdGhpcyBmdW5jdGlvbiB0aGVuIGlzIE8oMSku
Cj4gCj4gVGhlcmUgaXMgbm8gdGhyZXNob2xkIGluIHRoaXMgcGF0Y2guClRoaXMgZG9lcyBub3Qg
Y2hhbmdlIHRoZSBhbmFseXNpcywgdGhvdWdoLgoKPiBUaGF0J3MgdGhlIG5leHQgcGF0Y2gsIGFu
ZAo+IEkndmUgYmVlbiBwcm9jcmFzdGluYXRpbmcgb24gdGhhdCBvbmUsIG1vc3RseSBhbHNvIGJl
Y2F1c2Ugb2YgdGhlCj4gJ3JlYXNvbmFibGUnIGNsYWltIHdpdGhvdXQgZGF0YS4KPiAKPiBCdXQg
QWghLCBJIHRoaW5rIEkgc2VlLCBhZnRlciBucl9jcHVzIHRyaWVzLCBhbGwgcmVtb3RlIHdhaXRl
cnMgYXJlIG9uCj4gdGhlIHNlY29uZGFyeSBxdWV1ZSBhbmQgb25seSBsb2NhbCB3YWl0ZXJzIHdp
bGwgcmVtYWluLiBUaGF0IHdpbGwgaW5kZWVkCj4gZGVwcmVzcyB0aGUgYXZlcmFnZSBhIGxvdC4K
T2ssIGNvb2wuCgo8IHNuaXAgPgoKPiAKPj4+ICt7Cj4+PiArCXN0cnVjdCBtY3Nfc3BpbmxvY2sg
KmhlYWRfMm5kLCAqdGFpbF8ybmQ7Cj4+PiArCj4+PiArCXRhaWxfMm5kID0gZGVjb2RlX3RhaWwo
bm9kZS0+bG9ja2VkKTsKPj4+ICsJaGVhZF8ybmQgPSB0YWlsXzJuZC0+bmV4dDsKPj4gSSB1bmRl
cnN0YW5kIHRoYXQgeW91IGFyZSB0cnlpbmcgdG8gYXZvaWQgcmVwZWF0aW5nIHRob3NlIHR3byBs
aW5lcwo+PiBpbiBib3RoIHBsYWNlcyB0aGlzIGZ1bmN0aW9uIGlzIGNhbGxlZCBmcm9tLCBidXQg
eW91IGRvIGl0IGF0IHRoZSBjb3N0Cj4+IG9mIGFkZGluZyB0aGUgZm9sbG93aW5nIHVubmVjZXNz
YXJ5IGlmLXN0YXRlbWVudCwgYW5kIGluIGdlbmVyYWwgdGhpcyBmdW5jdGlvbgo+PiBsb29rcyBj
bHVua3kuCj4gCj4gTGV0IG1lIHNob3cgeW91IHRoZSBjdXJyZW50IGZvcm06Cj4gCj4gLyoKPiAq
IGNuYV9zcGxpY2VfaGVhZCAtLSBzcGxpY2UgdGhlIGVudGlyZSBzZWNvbmRhcnkgcXVldWUgb250
byB0aGUgaGVhZCBvZiB0aGUKPiAqIHByaW1hcnkgcXVldWUuCj4gKgo+ICogUmV0dXJucyB0aGUg
bmV3IHByaW1hcnkgaGVhZCBub2RlIG9yIE5VTEwgb24gZmFpbHVyZS4KTWF5YmUgZXhwbGFpbiBo
ZXJlIHdoeSBmYWlsdXJlIGNhbiBoYXBwZW4/IEVnLiwg4oCcVGhlIGxhdHRlciBjYW4gaGFwcGVu
CmR1ZSB0byBhIHJhY2Ugd2l0aCBhIHdhaXRlciBqb2luaW5nIGFuIGVtcHR5IHByaW1hcnkgcXVl
dWUuIgoKPiAqLwo+IHN0YXRpYyBzdHJ1Y3QgbWNzX3NwaW5sb2NrICoKPiBjbmFfc3BsaWNlX2hl
YWQoc3RydWN0IHFzcGlubG9jayAqbG9jaywgdTMyIHZhbCwKPiAJCXN0cnVjdCBtY3Nfc3Bpbmxv
Y2sgKm5vZGUsIHN0cnVjdCBtY3Nfc3BpbmxvY2sgKm5leHQpCj4gewo+IAlzdHJ1Y3QgbWNzX3Nw
aW5sb2NrICpoZWFkXzJuZCwgKnRhaWxfMm5kOwo+IAl1MzIgbmV3Owo+IAo+IAl0YWlsXzJuZCA9
IGRlY29kZV90YWlsKG5vZGUtPmxvY2tlZCk7Cj4gCWhlYWRfMm5kID0gdGFpbF8ybmQtPm5leHQ7
Cj4gCj4gCWlmICghbmV4dCkgewo+IAkJLyoKPiAJCSAqIFdoZW4gdGhlIHByaW1hcnkgcXVldWUg
aXMgZW1wdHk7IG91ciB0YWlsIGJlY29tZXMgdGhlIHByaW1hcnkgdGFpbC4KPiAJCSAqLwo+IAo+
IAkJLyoKPiAJCSAqIFNwZWN1bGF0aXZlbHkgYnJlYWsgdGhlIHNlY29uZGFyeSBxdWV1ZSdzIGNp
cmN1bGFyIGxpbms7IHN1Y2ggdGhhdCB3aGVuCj4gCQkgKiB0aGUgc2Vjb25kYXJ5IHRhaWwgYmVj
b21lcyB0aGUgcHJpbWFyeSB0YWlsIGl0IGFsbCB3b3JrcyBvdXQuCj4gCQkgKi8KPiAJCXRhaWxf
Mm5kLT5uZXh0ID0gTlVMTDsKPiAKPiAJCS8qCj4gCQkgKiB0YWlsXzJuZC0+bmV4dCA9IE5VTEwJ
CXhjaGdfdGFpbChsb2NrLCB0YWlsKQo+IAkJICoKPiAJCSAqIGNtcHhjaGdfcmVsZWFzZSgmbG9j
aywgdmFsLCBuZXcpCVdSSVRFX09OQ0UocHJldi0+bmV4dCwgbm9kZSk7Cj4gCQkgKgo+IAkJICog
U3VjaCB0aGF0IGlmIHRoZSBjbXB4Y2hnKCkgc3VjY2VlZHMsIG91ciBzdG9yZXMgd29uJ3QgY29s
bGlkZS4KPiAJCSAqLwo+IAkJbmV3ID0gKChzdHJ1Y3QgY25hX25vZGUgKil0YWlsXzJuZCktPmVu
Y29kZWRfdGFpbCB8IF9RX0xPQ0tFRF9WQUw7Cj4gCQlpZiAoIWF0b21pY190cnlfY21weGNoZ19y
ZWxlYXNlKCZsb2NrLT52YWwsICZ2YWwsIG5ldykpIHsKPiAJCQkvKgo+IAkJCSAqIE5vdGU7IHdo
ZW4gdGhpcyBjbXB4Y2hnIGZhaWxzIGR1ZSB0byBjb25jdXJyZW50Cj4gCQkJICogcXVldWVpbmcg
b2YgYSBuZXcgd2FpdGVyLCB0aGVuIHdlJ2xsIHRyeSBhZ2FpbiBpbgo+IAkJCSAqIGNuYV9wYXNz
X2xvY2soKSBpZiByZXF1aXJlZC4KPiAJCQkgKgo+IAkJCSAqIFJlc3RvcmUgdGhlIHNlY29uZGFy
eSBxdWV1ZSdzIGNpcmN1bGFyIGxpbmsuCj4gCQkJICovCj4gCQkJdGFpbF8ybmQtPm5leHQgPSBo
ZWFkXzJuZDsKPiAJCQlyZXR1cm4gTlVMTDsKPiAJCX0KPiAKPiAJfSBlbHNlIHsKPiAJCS8qCj4g
CQkgKiBJZiB0aGUgcHJpbWFyeSBxdWV1ZSBpcyBub3QgZW1wdHk7IHRoZSBwcmltYXJ5IHRhaWwg
ZG9lc24ndCBuZWVkCj4gCQkgKiB0byBjaGFuZ2UgYW5kIHdlIGNhbiBzaW1wbHkgbGluayBvdXIg
dGFpbCB0byB0aGUgb2xkIGhlYWQuCj4gCQkgKi8KPiAJCXRhaWxfMm5kLT5uZXh0ID0gbmV4dDsK
PiAJfQo+IAo+IAkvKiBUaGF0IHdoaWNoIHdhcyB0aGUgc2Vjb25kYXJ5IHF1ZXVlIGhlYWQsIGlz
IG5vdyB0aGUgcHJpbWFyeSBxdWV1ZSBoZWFkICovClJlcGhyYXNlIHRoZSBjb21tZW50PwoKPiAJ
cmV0dXJuIGhlYWRfMm5kOwo+IH0KPiAKPiBUaGUgZnVuY3Rpb24gYXMgYSB3aG9sZSBpcyBzZWxm
LWNvbnRhaW5lZCBhbmQgY29uc2lzdGVudCwgaXQgZGVhbHMgd2l0aAo+IHRoZSBzcGxpY2UgMm5k
IHRvIDFzdCBxdWV1ZSwgZm9yIGFsbCBwb3NzaWJsZSBjYXNlcy4gWW91IG9ubHkgaGF2ZSB0bwo+
IHRoaW5rIGFib3V0IHRoZSBsaXN0IHNwbGljZSBpbiBvbmUgcGxhY2UsIGhlcmUsIGluc3RlYWQg
b2YgdHdvIHBsYWNlcy4KPiAKPiBJIGRvbid0IHRoaW5rIGl0IHdpbGwgYWN0dWFsbHkgcmVzdWx0
IGluIG1vcmUgYnJhbmNoZXMgZW1pdHRlZDsgdGhlCj4gY29tcGlsZXIgc2hvdWxkIGJlIGFibGUg
dG8gdXNlIHZhbHVlIHByb3BhZ2F0aW9uIHRvIGVsaW1pbmF0ZSBzdHVmZi4KT2ssIEkgY2FuIHNl
ZSB5b3VyIHBvaW50LgoKPiAKPj4+ICtzdGF0aWMgaW5saW5lIGJvb2wgY25hX3RyeV9jbGVhcl90
YWlsKHN0cnVjdCBxc3BpbmxvY2sgKmxvY2ssIHUzMiB2YWwsCj4+PiArCQkJCSAgICAgIHN0cnVj
dCBtY3Nfc3BpbmxvY2sgKm5vZGUpCj4+PiArewo+Pj4gKwlzdHJ1Y3QgbWNzX3NwaW5sb2NrICpu
ZXh0Owo+Pj4gKwo+Pj4gKwkvKgo+Pj4gKwkgKiBXZSdyZSBoZXJlIGJlY2F1c2UgdGhlIHByaW1h
cnkgcXVldWUgaXMgZW1wdHk7IGNoZWNrIHRoZSBzZWNvbmRhcnkKPj4+ICsJICogcXVldWUgZm9y
IHJlbW90ZSB3YWl0ZXJzLgo+Pj4gKwkgKi8KPj4+ICsJaWYgKG5vZGUtPmxvY2tlZCA+IDEpIHsK
Pj4+ICsJCS8qCj4+PiArCQkgKiBXaGVuIHRoZXJlIGFyZSB3YWl0ZXJzIG9uIHRoZSBzZWNvbmRh
cnkgcXVldWUgbW92ZSB0aGVtIGJhY2sKPj4+ICsJCSAqIG9udG8gdGhlIHByaW1hcnkgcXVldWUg
YW5kIGxldCB0aGVtIHJpcC4KPj4+ICsJCSAqLwo+Pj4gKwkJbmV4dCA9IGNuYV9zcGxpY2VfaGVh
ZChsb2NrLCB2YWwsIG5vZGUsIE5VTEwpOwo+Pj4gKwkJaWYgKG5leHQpIHsKPj4gQW5kLCBhZ2Fp
biwgdGhpcyBpZi1zdGF0ZW1lbnQgaXMgaGVyZSBvbmx5IGJlY2F1c2UgeW91IG1vdmVkIHRoZSBy
ZXN0IG9mIHRoZSBjb2RlCj4+IGludG8gY25hX3NwbGljZV9oZWFkKCkuIFBlcmhhcHMsIHdpdGgg
Y25hX2V4dHJhY3RfMmRhcnlfaGVhZF90YWlsKCkgeW91IGNhbgo+PiBicmluZyB0aGF0IGNvZGUg
YmFjaz8KPiAKPiBJIGRvbid0IHNlZSB0aGUgb2JqZWN0aW9uLCB5b3UgYWxyZWFkeSBoYWQgYSBi
cmFuY2ggdGhlcmUsIGZyb20gdGhlCj4gY21weGNoZygpLCB0aGlzIGlzIHRoZSBzYW1lIGJyYW5j
aCwgdGhlIGNvbXBpbGVyIHNob3VsZCBmb2xkIHRoZSBsb3QuCk5vdyB5b3UgaGF2ZSB0aGUgYnJh
bmNoIGZyb20gY21weGNoZygpLCBhbmQgYW5vdGhlciBvbmUgZnJvbSAiaWYgKG5leHQp4oCdLgpC
dXQgeW91IGFyZSByaWdodCB0aGF0IHRoZSBjb21waWxlciBpcyBsaWtlbHkgdG8gb3B0aW1pemUg
b3V0IHRoZSBsYXR0ZXIuCgo+IFdlIGNhbiBhZGQgYW4gX19hbHdheXNfaW5saW5lIGlmIHlvdSdy
ZSB3b3JyaWVkLgpMZXTigJlzIGRvIHRoYXQuCgo8IHNuaXAgPgoKPj4+ICtzdGF0aWMgaW5saW5l
IHZvaWQgY25hX3Bhc3NfbG9jayhzdHJ1Y3QgbWNzX3NwaW5sb2NrICpub2RlLAo+Pj4gKwkJCQkg
c3RydWN0IG1jc19zcGlubG9jayAqbmV4dCkKPj4+ICt7Cj4+PiArCXN0cnVjdCBjbmFfbm9kZSAq
Y24gPSAoc3RydWN0IGNuYV9ub2RlICopbm9kZTsKPj4+ICsJdTMyIHBhcnRpYWxfb3JkZXIgPSBj
bi0+cGFydGlhbF9vcmRlcjsKPj4+ICsJdTMyIHZhbCA9IF9RX0xPQ0tFRF9WQUw7Cj4+PiArCj4+
PiArCS8qIGNuYV93YWl0X2hlYWRfb3JfbG9jaygpIGxlZnQgd29yayBmb3IgdXMuICovCj4+PiAr
CWlmIChwYXJ0aWFsX29yZGVyKSB7Cj4+PiArCQlwYXJ0aWFsX29yZGVyID0gY25hX29yZGVyX3F1
ZXVlKG5vZGUsIGRlY29kZV90YWlsKHBhcnRpYWxfb3JkZXIpKTsKPj4+ICsKPj4+ICsJaWYgKCFw
YXJ0aWFsX29yZGVyKSB7Cj4+PiArCQkvKgo+Pj4gKwkJICogV2UgZm91bmQgYSBsb2NhbCB3YWl0
ZXI7IHJlbG9hZCBAbmV4dCBpbiBjYXNlIHdlIGNhbGxlZAo+Pj4gKwkJICogY25hX29yZGVyX3F1
ZXVlKCkgYWJvdmUuCj4+PiArCQkgKi8KPj4+ICsJCW5leHQgPSBub2RlLT5uZXh0Owo+Pj4gKwkJ
dmFsIHw9IG5vZGUtPmxvY2tlZDsJLyogcHJlc2V2ZSBzZWNvbmRhcnkgcXVldWUgKi8KPj4gVGhp
cyBpcyB3cm9uZy4gbm9kZS0+bG9ja2VkIGNhbiBiZSAwLCAxIG9yIGFuIGVuY29kZWQgdGFpbCBh
dCB0aGlzIHBvaW50LCBhbmQKPj4gdGhlIGxhdHRlciBjYXNlIHdpbGwgYmUgaGFuZGxlZCBpbmNv
cnJlY3RseS4KPj4gCj4+IFNob3VsZCBiZSAKPj4gCQkgIGlmIChub2RlLT5sb2NrZWQpIHZhbCA9
IG5vZGUtPmxvY2tlZDsKPj4gaW5zdGVhZC4KPiAKPiBJJ20gY29uZnVzZWQsIHdobyBjYXJlcyBh
Ym91dCB0aGUgbG9ja2VkIGJpdCB3aGVuIGl0IGhhcyBhbiBlbmNvZGVkIHRhaWwgb24/Cj4gCj4g
VGhlIGdlbmVyaWMgY29kZSBvbmx5IGNhcmVzIGFib3V0IGl0IGJlaW5nICEwLCBhbmQgdGhlIGNu
YSBjb2RlIGFsd2F5cwo+IGNoZWNrcyBpZiBpdCBoYXMgYSB0YWlsICg+MSAsIDw9MSkgZmlyc3Qu
CkFoLCB0aGF0IG1heSBhY3R1YWxseSB3b3JrLCBidXQgbm90IHN1cmUgaWYgdGhpcyB3YXMgeW91
ciBpbnRlbnRpb24uCgpUaGUgY29kZSBhYm92ZSBzZXRzIHZhbCB0byAxIG9yIGVuY29kZWQgdGFp
bCArIDEgKHJhdGhlciB0aGFuIGVuY29kZWQgdGFpbCksCmRlY29kZV90YWlsKHRhaWwpIGRvZXMg
bm90IGNhcmUgYWJvdXQgTFNCLCBhbmQgd2lsbCBkbyBpdHMgY2FsY3VsYXRpb24gY29ycmVjdGx5
LgpJT1csIGRlY29kZV90YWlsKCB0YWlsICkgaXMgdGhlIHNhbWUgYXMgZGVjb2RlX3RhaWwoIHRh
aWwgKyAxICkuCgpJIHRoaW5rIHRoaXMgaXMgYSBiaXQgZnJhZ2lsZSBhbmQgZGVwZW5kcyBvbiB0
aGUgaW1wbGVtZW50YXRpb24gb2YgCmRlY29kZV90YWlsKCksIGJ1dCBpZiB5b3UgYXJlIGZpbmUg
d2l0aCB0aGF0LCBubyBvYmplY3Rpb25zIGhlcmUuCgpSZWdhcmRzLArigJQgQWxleAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
