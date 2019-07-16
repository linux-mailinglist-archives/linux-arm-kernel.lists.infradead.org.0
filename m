Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E79636AD91
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 19:20:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BfWwtCoCBgsgviZFvYfY7dO2SMW3yppt4W9UwoK5wzM=; b=pTMYCsqxf4oV+n
	+15ExXCyzVN+2shZJ2kNC5yoPFiPs17wwjbSID9G5K2euEZyJNDe5gz6LQPyJI9jHQGs7k+KQgn+6
	CsQ6lyk1XASBHDjm66rXNbjRAui8B8slS82R2tG9ZO3VDtrGaq/xnBCQJAB35FlZ2r4PT44XhjzaN
	HmUiC0jMKvN+Hdq+uUWw+8k2dc0BFpM9iJ9hn+3k4N+38n5x8fFLH1wczcpklJceiOnhYrHZpDhxP
	pW4+daO7sC+3HE+UOYBh2L66CA0x5MDLPXP2mhMEPIs/Jrx01yT7E4kt/7nRuqM3x3FzvF/tmTHsp
	taQjLH2g2krIOWsw8C/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnR7x-0007zl-Nh; Tue, 16 Jul 2019 17:20:33 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnR7k-0007z1-DS
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 17:20:22 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6GHIks5065487;
 Tue, 16 Jul 2019 17:19:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2018-07-02; bh=sCf21UOaOAUhlxqHIiC1lJ6uDmpf3G/KNigZLTzyEQY=;
 b=Y+wovuD8ba5GmLeCjQ76Ub931WhVRNEyB0QWQ8dfFFQ5vjNjJKN32LrjhL+fLpd7XHF3
 Ks6bHzq5JtNXUSgJ324OyzvbngcDDjatj3xymMsZgCFbPwUcg4QeGe9ICgilVlXLVR3D
 a180gWa0kd8xyHILI8eumul9YGHIiTi7d+d3jxoWB4sEUIisy+/fOILEh7RzQg/lBx8l
 85RFkyFjd0gqo6M6HdQZ5nS2g8LPXYDsVe9LPtOiHY/jIaBUI8oDrec+ruaMYi/sikK4
 EjedNAKNT1+UQozA/4Nn0qNK46jxLRgfD+a+dpA6ceyMW5IG5kqaXNBkoRhaUkH+nd7H 3Q== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2tq6qtnyxv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 16 Jul 2019 17:19:37 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6GHHhnC184904;
 Tue, 16 Jul 2019 17:19:37 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 2tq6mn0us3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 16 Jul 2019 17:19:37 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x6GHJJ0u030134;
 Tue, 16 Jul 2019 17:19:20 GMT
Received: from [10.39.235.122] (/10.39.235.122)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 16 Jul 2019 17:19:19 +0000
Mime-Version: 1.0 (Mac OS X Mail 10.2 \(3259\))
Subject: Re: [PATCH v3 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
From: Alex Kogan <alex.kogan@oracle.com>
In-Reply-To: <20190716155022.GR3419@hirez.programming.kicks-ass.net>
Date: Tue, 16 Jul 2019 13:19:16 -0400
Message-Id: <193BBB31-F376-451F-BDE1-D4807140EB51@oracle.com>
References: <20190715192536.104548-1-alex.kogan@oracle.com>
 <20190715192536.104548-4-alex.kogan@oracle.com>
 <20190716155022.GR3419@hirez.programming.kicks-ass.net>
To: Peter Zijlstra <peterz@infradead.org>
X-Mailer: Apple Mail (2.3259)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9320
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=860
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1907160213
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9320
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=914 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1907160213
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_102020_606844_2BEDB9C8 
X-CRM114-Status: GOOD (  27.93  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, guohanjun@huawei.com, arnd@arndb.de,
 dave.dice@oracle.com, jglauber@marvell.com, x86@kernel.org,
 will.deacon@arm.com, linux@armlinux.org.uk, steven.sistare@oracle.com,
 linux-kernel@vger.kernel.org, rahul.x.yadav@oracle.com, mingo@redhat.com,
 bp@alien8.de, hpa@zytor.com, longman@redhat.com, tglx@linutronix.de,
 daniel.m.jordan@oracle.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIFBldGVyLgoKVGhhbmtzIGZvciB0aGUgcmV2aWV3IGFuZCBhbGwgdGhlIHN1Z2dlc3Rpb25z
IQoKQSBjb3VwbGUgb2YgY29tbWVudHMgYXJlIGlubGluZWQgYmVsb3cuCgo+IE9uIEp1bCAxNiwg
MjAxOSwgYXQgMTE6NTAgQU0sIFBldGVyIFppamxzdHJhIDxwZXRlcnpAaW5mcmFkZWFkLm9yZz4g
d3JvdGU6Cj4gCj4gT24gTW9uLCBKdWwgMTUsIDIwMTkgYXQgMDM6MjU6MzRQTSAtMDQwMCwgQWxl
eCBLb2dhbiB3cm90ZToKPj4gK3N0YXRpYyBzdHJ1Y3QgY25hX25vZGUgKmZpbmRfc3VjY2Vzc29y
KHN0cnVjdCBtY3Nfc3BpbmxvY2sgKm1lKQo+PiArewo+PiArCXN0cnVjdCBjbmFfbm9kZSAqbWVf
Y25hID0gQ05BX05PREUobWUpOwo+PiArCXN0cnVjdCBjbmFfbm9kZSAqaGVhZF9vdGhlciwgKnRh
aWxfb3RoZXIsICpjdXI7Cj4+ICsJc3RydWN0IGNuYV9ub2RlICpuZXh0ID0gQ05BX05PREUoUkVB
RF9PTkNFKG1lLT5uZXh0KSk7Cj4+ICsJaW50IG15X25vZGU7Cj4+ICsKPj4gKwkvKiBAbmV4dCBz
aG91bGQgYmUgc2V0LCBlbHNlIHdlIHdvdWxkIG5vdCBiZSBjYWxsaW5nIHRoaXMgZnVuY3Rpb24u
ICovCj4+ICsJV0FSTl9PTl9PTkNFKG5leHQgPT0gTlVMTCk7Cj4+ICsKPj4gKwlteV9ub2RlID0g
bWVfY25hLT5udW1hX25vZGU7Cj4+ICsKPj4gKwkvKgo+PiArCSAqIEZhc3QgcGF0aCAtIGNoZWNr
IHdoZXRoZXIgdGhlIGltbWVkaWF0ZSBzdWNjZXNzb3IgcnVucyBvbgo+PiArCSAqIHRoZSBzYW1l
IG5vZGUuCj4+ICsJICovCj4+ICsJaWYgKG5leHQtPm51bWFfbm9kZSA9PSBteV9ub2RlKQo+PiAr
CQlyZXR1cm4gbmV4dDsKPj4gKwo+PiArCWhlYWRfb3RoZXIgPSBuZXh0Owo+PiArCXRhaWxfb3Ro
ZXIgPSBuZXh0Owo+PiArCj4+ICsJLyoKPj4gKwkgKiBUcmF2ZXJzZSB0aGUgbWFpbiB3YWl0aW5n
IHF1ZXVlIHN0YXJ0aW5nIGZyb20gdGhlIHN1Y2Nlc3NvciBvZiBteQo+PiArCSAqIHN1Y2Nlc3Nv
ciwgYW5kIGxvb2sgZm9yIGEgdGhyZWFkIHJ1bm5pbmcgb24gdGhlIHNhbWUgbm9kZS4KPj4gKwkg
Ki8KPj4gKwljdXIgPSBDTkFfTk9ERShSRUFEX09OQ0UobmV4dC0+bWNzLm5leHQpKTsKPj4gKwl3
aGlsZSAoY3VyKSB7Cj4+ICsJCWlmIChjdXItPm51bWFfbm9kZSA9PSBteV9ub2RlKSB7Cj4+ICsJ
CQkvKgo+PiArCQkJICogRm91bmQgYSB0aHJlYWQgb24gdGhlIHNhbWUgbm9kZS4gTW92ZSB0aHJl
YWRzCj4+ICsJCQkgKiBiZXR3ZWVuIG1lIGFuZCB0aGF0IG5vZGUgaW50byB0aGUgc2Vjb25kYXJ5
IHF1ZXVlLgo+PiArCQkJICovCj4+ICsJCQlpZiAobWUtPmxvY2tlZCA+IDEpCj4+ICsJCQkJQ05B
X05PREUobWUtPmxvY2tlZCktPnRhaWwtPm1jcy5uZXh0ID0KPj4gKwkJCQkJKHN0cnVjdCBtY3Nf
c3BpbmxvY2sgKiloZWFkX290aGVyOwo+PiArCQkJZWxzZQo+PiArCQkJCW1lLT5sb2NrZWQgPSAo
dWludHB0cl90KWhlYWRfb3RoZXI7Cj4+ICsJCQl0YWlsX290aGVyLT5tY3MubmV4dCA9IE5VTEw7
Cj4+ICsJCQlDTkFfTk9ERShtZS0+bG9ja2VkKS0+dGFpbCA9IHRhaWxfb3RoZXI7Cj4+ICsJCQly
ZXR1cm4gY3VyOwo+PiArCQl9Cj4+ICsJCXRhaWxfb3RoZXIgPSBjdXI7Cj4+ICsJCWN1ciA9IENO
QV9OT0RFKFJFQURfT05DRShjdXItPm1jcy5uZXh0KSk7Cj4+ICsJfQo+PiArCXJldHVybiBOVUxM
Owo+PiArfQo+IAo+IHN0YXRpYyB2b2lkIGNuYV9tb3ZlKHN0cnVjdCBjbmFfbm9kZSAqY24sIHN0
cnVjdCBjbmFfbm9kZSAqY25pKQo+IHsKPiAJc3RydWN0IGNuYV9ub2RlICpoZWFkLCAqdGFpbDsK
PiAKPiAJLyogcmVtb3ZlIEBjbmkgKi8KPiAJV1JJVEVfT05DRShjbi0+bWNzLm5leHQsIGNuaS0+
bWNzLm5leHQpOwo+IAo+IAkvKiBzdGljayBAY25pIG9uIHRoZSAnb3RoZXInIGxpc3QgdGFpbCAq
Lwo+IAljbmktPm1jcy5uZXh0ID0gTlVMTDsKPiAKPiAJaWYgKGNuLT5tY3MubG9ja2VkIDw9IDEp
IHsKPiAJCS8qIGhlYWQgPSB0YWlsID0gY25pICovCj4gCQloZWFkID0gY25pOwo+IAkJaGVhZC0+
dGFpbCA9IGNuaTsKPiAJCWNuLT5tY3MubG9ja2VkID0gaGVhZC0+ZW5jb2RlZF90YWlsOwo+IAl9
IGVsc2Ugewo+IAkJLyogYWRkIHRvIHRhaWwgKi8KPiAJCWhlYWQgPSAoc3RydWN0IGNuYV9ub2Rl
ICopZGVjb2RlX3RhaWwoY24tPm1jcy5sb2NrZWQpOwo+IAkJdGFpbCA9IHRhaWwtPnRhaWw7Cj4g
CQl0YWlsLT5uZXh0ID0gY25pOwo+IAl9Cj4gfQo+IAo+IHN0YXRpYyBzdHJ1Y3QgY25hX25vZGUg
KmNuYV9maW5kX25leHQoc3RydWN0IG1jc19zcGlubG9jayAqbm9kZSkKPiB7Cj4gCXN0cnVjdCBj
bmFfbm9kZSAqY25pLCAqY24gPSAoc3RydWN0IGNuYV9ub2RlICopbm9kZTsKPiAKPiAJd2hpbGUg
KChjbmkgPSAoc3RydWN0IGNuYV9ub2RlICopUkVBRF9PTkNFKGNuLT5tY3MubmV4dCkpKSB7Cj4g
CQlpZiAobGlrZWx5KGNuaS0+bm9kZSA9PSBjbi0+bm9kZSkpCj4gCQkJYnJlYWs7Cj4gCj4gCQlj
bmFfbW92ZShjbiwgY25pKTsKPiAJfQo+IAo+IAlyZXR1cm4gY25pOwo+IH0KQnV0IHRoZW4geW91
IG1vdmUgbm9kZXMgZnJvbSB0aGUgbWFpbiBsaXN0IHRvIHRoZSDigJhvdGhlcuKAmSBsaXN0IG9u
ZS1ieS1vbmUuCknigJltIGFmcmFpZCB0aGlzIHdvdWxkIGJlIHVubmVjZXNzYXJ5IGV4cGVuc2l2
ZS4KUGx1cywgYWxsIHRoaXMgZXh0cmEgd29yayBpcyB3YXN0ZWQgaWYgeW91IGRvIG5vdCBmaW5k
IGEgdGhyZWFkIG9uIHRoZSBzYW1lIApOVU1BIG5vZGUgKHlvdSBtb3ZlIGV2ZXJ5b25lIHRvIHRo
ZSDigJhvdGhlcuKAmSBsaXN0IG9ubHkgdG8gbW92ZSB0aGVtIGJhY2sgaW4gCmNuYV9tY3NfcGFz
c19sb2NrKCkpLgoKPiAKPj4gK3N0YXRpYyBpbmxpbmUgYm9vbCBjbmFfc2V0X2xvY2tlZF9lbXB0
eV9tY3Moc3RydWN0IHFzcGlubG9jayAqbG9jaywgdTMyIHZhbCwKPj4gKwkJCQkJc3RydWN0IG1j
c19zcGlubG9jayAqbm9kZSkKPj4gK3sKPj4gKwkvKiBDaGVjayB3aGV0aGVyIHRoZSBzZWNvbmRh
cnkgcXVldWUgaXMgZW1wdHkuICovCj4+ICsJaWYgKG5vZGUtPmxvY2tlZCA8PSAxKSB7Cj4+ICsJ
CWlmIChhdG9taWNfdHJ5X2NtcHhjaGdfcmVsYXhlZCgmbG9jay0+dmFsLCAmdmFsLAo+PiArCQkJ
CV9RX0xPQ0tFRF9WQUwpKQo+PiArCQkJcmV0dXJuIHRydWU7IC8qIE5vIGNvbnRlbnRpb24gKi8K
Pj4gKwl9IGVsc2Ugewo+PiArCQkvKgo+PiArCQkgKiBQYXNzIHRoZSBsb2NrIHRvIHRoZSBmaXJz
dCB0aHJlYWQgaW4gdGhlIHNlY29uZGFyeQo+PiArCQkgKiBxdWV1ZSwgYnV0IGZpcnN0IHRyeSB0
byB1cGRhdGUgdGhlIHF1ZXVlJ3MgdGFpbCB0bwo+PiArCQkgKiBwb2ludCB0byB0aGUgbGFzdCBu
b2RlIGluIHRoZSBzZWNvbmRhcnkgcXVldWUuCj4gCj4gCj4gVGhhdCBjb21tZW50IGRvZXNuJ3Qg
bWFrZSBzZW5zZTsgdGhlcmUncyBhdCBsZWFzdCBvbmUgY29uZGl0aW9uYWwKPiBtaXNzaW5nLgpJ
biBDTkEsIHdlIGNhbm5vdCBqdXN0IGNsZWFyIHRoZSB0YWlsIHdoZW4gdGhlIE1DUyBjaGFpbiBp
cyBlbXB0eSwgYXMgCnRoZXJlIG1pZ2h0IGJlIG5vZGVzIGluIHRoZSDigJhvdGhlcuKAmSBjaGFp
bi4gSW4gdGhhdCBjYXNlICh0aGlzIGlzIHRoZSDigJxlbHNl4oCdIHBhcnQpLAp3ZSB3YW50IHRv
IHBhc3MgdGhlIGxvY2sgdG8gdGhlIGZpcnN0IG5vZGUgaW4gdGhlIOKAmG90aGVy4oCZIGNoYWlu
LCBidXQgCmZpcnN0IHdlIG5lZWQgdG8gcHV0IHRoZSBsYXN0IG5vZGUgZnJvbSB0aGF0IGNoYWlu
IGludG8gdGhlIHRhaWwuIFBlcmhhcHMgdGhlCmNvbW1lbnQgc2hvdWxkIHJlYWQg4oCc4oCmICBi
dXQgZmlyc3QgdHJ5IHRvIHVwZGF0ZSB0aGUgKnByaW1hcnkqIHF1ZXVlJ3MgdGFpbCDigKbigJ0s
IAppZiB0aGF0IG1ha2VzIG1vcmUgc2Vuc2UuCgo+IAo+PiArCQkgKi8KPj4gKwkJc3RydWN0IGNu
YV9ub2RlICpzdWNjID0gQ05BX05PREUobm9kZS0+bG9ja2VkKTsKPj4gKwkJdTMyIG5ldyA9IHN1
Y2MtPnRhaWwtPmVuY29kZWRfdGFpbCArIF9RX0xPQ0tFRF9WQUw7Cj4+ICsKPj4gKwkJaWYgKGF0
b21pY190cnlfY21weGNoZ19yZWxheGVkKCZsb2NrLT52YWwsICZ2YWwsIG5ldykpIHsKPj4gKwkJ
CWFyY2hfbWNzX3NwaW5fdW5sb2NrX2NvbnRlbmRlZCgmc3VjYy0+bWNzLmxvY2tlZCwgMSk7Cj4+
ICsJCQlyZXR1cm4gdHJ1ZTsKPj4gKwkJfQo+PiArCX0KPj4gKwo+PiArCXJldHVybiBmYWxzZTsK
Pj4gK30KPiAKPiBzdGF0aWMgY25hX3RyeV9jbGVhcl90YWlsKHN0cnVjdCBxc3BpbmxvY2sgKmxv
Y2ssIHUzMiB2YWwsIHN0cnVjdCBtY3Nfc3BpbmxvY2sgKm5vZGUpCj4gewo+IAlpZiAobm9kZS0+
bG9ja2VkIDw9IDEpCj4gCQlyZXR1cm4gX190cnlfY2xlYXJfdGFpbChsb2NrLCB2YWwsIG5vZGUp
Owo+IAo+IAkvKiB0aGUgb3RoZXIgY2FzZSAqLwo+IH0KR29vZCBwb2ludCwgdGhhbmtzLgoKPiAK
Pj4gK3N0YXRpYyBpbmxpbmUgdm9pZCBjbmFfcGFzc19tY3NfbG9jayhzdHJ1Y3QgbWNzX3NwaW5s
b2NrICpub2RlLAo+PiArCQkJCSAgICAgc3RydWN0IG1jc19zcGlubG9jayAqbmV4dCkKPj4gK3sK
Pj4gKwlzdHJ1Y3QgY25hX25vZGUgKnN1Y2MgPSBOVUxMOwo+PiArCXU2NCAqdmFyID0gJm5leHQt
PmxvY2tlZDsKPj4gKwl1NjQgdmFsID0gMTsKPj4gKwo+PiArCXN1Y2MgPSBmaW5kX3N1Y2Nlc3Nv
cihub2RlKTsKPiAKPiBUaGlzIG1ha2VzIHVubG9jayBPKG4pLCB3aGljaCBpcyAnZnVubmVoJyBh
bmQgdW5kb2N1bWVudGVkLgpJIHdpbGwgYWRkIGEgY29tbWVudCBhYm92ZSB0aGUgY2FsbCB0byBm
aW5kX3N1Y2Nlc3NvcigpIC8gY25hX2ZpbmRfbmV4dCgpLgoKPiAKPj4gKwo+PiArCWlmIChzdWNj
KSB7Cj4+ICsJCXZhciA9ICZzdWNjLT5tY3MubG9ja2VkOwo+PiArCQkvKgo+PiArCQkgKiBXZSB1
bmxvY2sgYSBzdWNjZXNzb3IgYnkgcGFzc2luZyBhIG5vbi16ZXJvIHZhbHVlLAo+PiArCQkgKiBz
byBzZXQgQHZhbCB0byAxIGlmZiBAbG9ja2VkIGlzIDAsIHdoaWNoIHdpbGwgaGFwcGVuCj4+ICsJ
CSAqIGlmIHdlIGFjcXVpcmVkIHRoZSBNQ1MgbG9jayB3aGVuIGl0cyBxdWV1ZSB3YXMgZW1wdHkK
Pj4gKwkJICovCj4+ICsJCXZhbCA9IG5vZGUtPmxvY2tlZCArIChub2RlLT5sb2NrZWQgPT0gMCk7
Cj4+ICsJfSBlbHNlIGlmIChub2RlLT5sb2NrZWQgPiAxKSB7IC8qIGlmIHRoZSBzZWNvbmRhcnkg
cXVldWUgaXMgbm90IGVtcHR5ICovCj4+ICsJCS8qIHBhc3MgdGhlIGxvY2sgdG8gdGhlIGZpcnN0
IG5vZGUgaW4gdGhhdCBxdWV1ZSAqLwo+PiArCQlzdWNjID0gQ05BX05PREUobm9kZS0+bG9ja2Vk
KTsKPj4gKwkJc3VjYy0+dGFpbC0+bWNzLm5leHQgPSBuZXh0Owo+PiArCQl2YXIgPSAmc3VjYy0+
bWNzLmxvY2tlZDsKPiAKPj4gKwl9CS8qCj4+ICsJCSAqIE90aGVyd2lzZSwgcGFzcyB0aGUgbG9j
ayB0byB0aGUgaW1tZWRpYXRlIHN1Y2Nlc3Nvcgo+PiArCQkgKiBpbiB0aGUgbWFpbiBxdWV1ZS4K
Pj4gKwkJICovCj4gCj4gSSBkb24ndCB0aGluayB0aGlzIG1pcy1pbmRlbnRlZCBjb21tZW50IGNh
biBoYXBwZW4uIFRoZSBjYWxsLXNpdGUKPiBndWFyYW50ZWVzIEBuZXh0IGlzIG5vbi1udWxsLgo+
IAo+IFRoZXJlZm9yZSwgY25hX2ZpbmRfbmV4dCgpIHdpbGwgZWl0aGVyIHJldHVybiBpdCwgb3Ig
cGxhY2UgaXQgb24gdGhlCj4gc2Vjb25kYXJ5IGxpc3QuIElmIGl0IChjbmFfZmluZF9uZXh0KSBy
ZXR1cm5zIE5VTEwsIHdlIG11c3QgaGF2ZSBhCj4gbm9uLWVtcHR5IHNlY29uZGFyeSBsaXN0Lgo+
IAo+IEluIG5vIGNhc2UgZG8gSSBzZWUgdGhpcyB0ZXJ0aWFyeSBjb25kaXRpb24gYmVpbmcgcG9z
c2libGUuCmZpbmRfc3VjY2Vzc29yKCkgd2lsbCByZXR1cm4gTlVMTCBpZiBpdCBkb2VzIG5vdCBm
aW5kIGEgdGhyZWFkIHJ1bm5pbmcgb24gdGhlIApzYW1lIE5VTUEgbm9kZS4gQW5kIHRoZSBzZWNv
bmRhcnkgcXVldWUgbWlnaHQgYmUgZW1wdHkgYXQgdGhhdCB0aW1lLgoKPiAKPj4gKwo+PiArCWFy
Y2hfbWNzX3NwaW5fdW5sb2NrX2NvbnRlbmRlZCh2YXIsIHZhbCk7Cj4+ICt9Cj4gCj4gVGhpcyBh
bHNvIHJlbmRlcnMgdGhpcyBAbmV4dCBhcmd1bWVudCBzdXBlcmZsdW91cy4KPiAKPiBzdGF0aWMg
Y25hX21jc19wYXNzX2xvY2soc3RydWN0IG1jc19zcGlubG9jayAqbm9kZSwgc3RydWN0IG1jc19z
cGlubG9jayAqbmV4dCkKPiB7Cj4gCW5leHQgPSBjbmFfZmluZF9uZXh0KG5vZGUpOwo+IAlpZiAo
IW5leHQpIHsKPiAJCUJVR19PTihub2RlLT5sb2NrZWQgPD0gMSk7Cj4gCQluZXh0ID0gKHN0cnVj
dCBjbmFfbm9kZSAqKWRlY29kZV90YWlsKG5vZGUtPmxvY2tlZCk7Cj4gCQlub2RlLT5sb2NrZWQg
PSAxOwo+IAl9Cj4gCj4gCWFyY2hfbWNzX3Bhc3NfbG9jaygmbmV4dC0+bWNzLmxvY2tlZCwgbm9k
ZS0+bG9ja2VkKTsKPiB9CgpAbmV4dCBpcyBwYXNzZWQgdG8gc2F2ZSB0aGUgbG9hZCBmcm9tIEBu
b2RlLgpUaGlzIGlzIHByb2JhYmx5IG1vc3QgaW1wb3J0YW50IGZvciB0aGUgbmF0aXZlIGNvZGUg
KF9fcGFzc19tY3NfbG9jaygpKS4KVGhhdCBmdW5jdGlvbiBzaG91bGQgYmUgaW5saW5lZCwgaG93
ZXZlciwgYW5kIHRoYXQgbG9hZCBzaG91bGQgbm90IG1hdHRlci4KQm90dG9tIGxpbmUsIEkgYWdy
ZWUgdGhhdCB3ZSBjYW4gcmVtb3ZlIHRoZSBAbmV4dCBhcmd1bWVudC4KCkJlc3QgcmVnYXJkcywK
4oCUIEFsZXgKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
