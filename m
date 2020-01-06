Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 730A413145F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 16:04:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bPYGQ9AvEfKOGGfoGbWlmdJihKk+hWHzJaLGoVcw2Aw=; b=BEJybxCmD2Gzkr
	CdJQMEdhUuccvoDfSi7iWAv4vPr4PDpXOyOuMKMct1ZwYm4I8eU6/DdxnPQaA1Foxlbdz1TNmrpiz
	yJoUgGIU9SKfn8ZitZVH7PVUEn8IICSXNzee3NxKCr0O+by+yXuQ+IzT1ub32ityRWw3DkTSpIq64
	k8u3GsGKyZPGI3goNUR9GPtDtIPI0cnqPQGQ2GjMYPy100rQ6dAbFtqfzssRkEph2hh34CWBDRkso
	a95Wwzu0CYV0YM3bjy3aDFsqNl6i6puFLbKH3cipVLuHSlIFEcgtvjfxAK80aTys4JNOeTyRVeP1/
	Eiw/ydW58dy7yLvj/lsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioTvf-0007tx-Pa; Mon, 06 Jan 2020 15:04:27 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioTvZ-0007tH-Mz
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 15:04:23 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 006EsvU7042526;
 Mon, 6 Jan 2020 15:02:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2019-08-05; bh=vpJJSvCE619j3qLkqxL2bhG4dyLHmKTvcpWUgCq3gnE=;
 b=Min4kpGguIF/QqXH3jrLjvxyOVNuhaCLrAnMMtCtEaF7Ha0zLQ8Blg8QEQR08XznZEqr
 28Hdt+u+Cq8/fz57TAV4vE8V5qXgmxVPYUYhv5Qq1u3md8q3A9BvkHHukZKML+TAyI8h
 3H/jVCUfdyfwYEMmV3JU9/5sPj/7fhriqylbqcZ/K0/ZeQe1+YuzJARKg9e+iXLg+jDX
 fEAuCtrBcw3GJqzB/CEAWQoLDqaFQwq6wRrDKfH5g3XzvixcnGk1sovd7EhHhiwDaH9E
 vVEXJ+eRQpW1/cmm3+QUTSTQMXZ0RzwFxN3kpLWzcDmjsNtrrQcbPM+/Kb2TSRA2Izvk rA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2xajnpqn5f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 06 Jan 2020 15:02:41 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 006ExPgc166178;
 Mon, 6 Jan 2020 15:02:41 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 2xb47dq791-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 06 Jan 2020 15:02:40 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 006F2Sqq002099;
 Mon, 6 Jan 2020 15:02:28 GMT
Received: from [10.11.111.157] (/10.11.111.157)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 06 Jan 2020 07:02:27 -0800
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH v8 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
From: Alex Kogan <alex.kogan@oracle.com>
In-Reply-To: <fcba7eee-b98f-5381-ea33-6fd94a9e66a6@redhat.com>
Date: Mon, 6 Jan 2020 10:02:26 -0500
Message-Id: <1E203DB5-E35B-48AA-90DC-286FE479BB91@oracle.com>
References: <20191230194042.67789-1-alex.kogan@oracle.com>
 <20191230194042.67789-4-alex.kogan@oracle.com>
 <fcba7eee-b98f-5381-ea33-6fd94a9e66a6@redhat.com>
To: Waiman Long <longman@redhat.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9491
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001060135
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9491
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001060135
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_070421_836522_96D159C1 
X-CRM114-Status: GOOD (  18.94  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Peter Zijlstra <peterz@infradead.org>, dave.dice@oracle.com,
 jglauber@marvell.com, x86@kernel.org, will.deacon@arm.com,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org, mingo@redhat.com,
 bp@alien8.de, hpa@zytor.com, steven.sistare@oracle.com, tglx@linutronix.de,
 daniel.m.jordan@oracle.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IE9uIEphbiAzLCAyMDIwLCBhdCA1OjE0IFBNLCBXYWltYW4gTG9uZyA8bG9uZ21hbkByZWRo
YXQuY29tPiB3cm90ZToKPiAKPiBPbiAxMi8zMC8xOSAyOjQwIFBNLCBBbGV4IEtvZ2FuIHdyb3Rl
Ogo+PiArLyoKPj4gKyAqIGNuYV9zY2FuX21haW5fcXVldWUgLSBzY2FuIHRoZSBtYWluIHdhaXRp
bmcgcXVldWUgbG9va2luZyBmb3IgdGhlIGZpcnN0Cj4+ICsgKiB0aHJlYWQgcnVubmluZyBvbiB0
aGUgc2FtZSBOVU1BIG5vZGUgYXMgdGhlIGxvY2sgaG9sZGVyLiBJZiBmb3VuZCAoY2FsbCBpdAo+
PiArICogdGhyZWFkIFQpLCBtb3ZlIGFsbCB0aHJlYWRzIGluIHRoZSBtYWluIHF1ZXVlIGJldHdl
ZW4gdGhlIGxvY2sgaG9sZGVyIGFuZAo+PiArICogVCB0byB0aGUgZW5kIG9mIHRoZSBzZWNvbmRh
cnkgcXVldWUgYW5kIHJldHVybiAwCj4+ICsgKiAoPVNVQ0NFU1NPUl9GUk9NX1NBTUVfTlVNQV9O
T0RFX0ZPVU5EKTsgb3RoZXJ3aXNlLCByZXR1cm4gdGhlIGVuY29kZWQKPiBBcmUgeW91IHRhbGtp
bmcgYWJvdXQgTE9DQUxfV0FJVEVSX0ZPVU5EPwpBaGgsIHllcyDigJQgZ29vZCBjYXRjaCEKCj4+
ICsgKiBwb2ludGVyIG9mIHRoZSBsYXN0IHNjYW5uZWQgbm9kZSBpbiB0aGUgcHJpbWFyeSBxdWV1
ZSAoc28gYSBzdWJzZXF1ZW50IHNjYW4KPj4gKyAqIGNhbiBiZSByZXN1bWVkIGZyb20gdGhhdCBu
b2RlKS4KPj4gKyAqCj4+ICsgKiBTY2hlbWF0aWNhbGx5LCB0aGlzIG1heSBsb29rIGxpa2UgdGhl
IGZvbGxvd2luZyAobm4gc3RhbmRzIGZvciBudW1hX25vZGUgYW5kCj4+ICsgKiBldCBzdGFuZHMg
Zm9yIGVuY29kZWRfdGFpbCkuCj4+ICsgKgo+PiArICogICB3aGVuIGNuYV9zY2FuX21haW5fcXVl
dWUoKSBpcyBjYWxsZWQgKHRoZSBzZWNvbmRhcnkgcXVldWUgaXMgZW1wdHkpOgo+PiArICoKPj4g
KyAqICBBKy0tLS0tLS0tLS0tLSsgICBCKy0tLS0tLS0tKyAgIEMrLS0tLS0tLS0rICAgVCstLS0t
LS0tLSsKPj4gKyAqICAgfG1jczpuZXh0ICAgIHwgLT4gfG1jczpuZXh0fCAtPiB8bWNzOm5leHR8
IC0+IHxtY3M6bmV4dHwgLT4gTlVMTAo+PiArICogICB8bWNzOmxvY2tlZD0xfCAgICB8Y25hOm5u
PTB8ICAgIHxjbmE6bm49MnwgICAgfGNuYTpubj0xfAo+PiArICogICB8Y25hOm5uPTEgICAgfCAg
ICArLS0tLS0tLS0rICAgICstLS0tLS0tLSsgICAgKy0tLS0tLS0tKwo+PiArICogICArLS0tLS0t
LS0tLS0gKwo+PiArICoKPj4gKyAqICAgd2hlbiBjbmFfc2Nhbl9tYWluX3F1ZXVlKCkgcmV0dXJu
cyAodGhlIHNlY29uZGFyeSBxdWV1ZSBjb250YWlucyBCIGFuZCBDKToKPj4gKyAqCj4+ICsgKiAg
QSstLS0tLS0tLS0tLS0tLS0tKyAgICBUKy0tLS0tLS0tKwo+PiArICogICB8bWNzOm5leHQgICAg
ICAgIHwgLT4gIHxtY3M6bmV4dHwgLT4gTlVMTAo+PiArICogICB8bWNzOmxvY2tlZD1DLmV0IHwg
LSsgIHxjbmE6bm49MXwKPj4gKyAqICAgfGNuYTpubj0xICAgICAgICB8ICB8ICArLS0tLS0tLS0r
Cj4+ICsgKiAgICstLS0tLS0tLS0tLS0tLS0gKyAgKy0tLS0tKwo+PiArICogICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIFwvCj4+ICsgKiAgICAgICAgICBCKy0tLS0tLS0tKyAgIEMrLS0tLS0t
LS0rCj4+ICsgKiAgICAgICAgICAgfG1jczpuZXh0fCAtPiB8bWNzOm5leHR8IC0rCj4+ICsgKiAg
ICAgICAgICAgfGNuYTpubj0wfCAgICB8Y25hOm5uPTJ8ICB8Cj4+ICsgKiAgICAgICAgICAgKy0t
LS0tLS0tKyAgICArLS0tLS0tLS0rICB8Cj4+ICsgKiAgICAgICAgICAgICAgIF4gICAgICAgICAg
ICAgICAgICAgICB8Cj4+ICsgKiAgICAgICAgICAgICAgICstLS0tLS0tLS0tLS0tLS0tLS0tLS0r
Cj4+ICsgKgo+PiArICogVGhlIHdvcnN0IGNhc2UgY29tcGxleGl0eSBvZiB0aGUgc2NhbiBpcyBP
KG4pLCB3aGVyZSBuIGlzIHRoZSBudW1iZXIKPj4gKyAqIG9mIGN1cnJlbnQgd2FpdGVycy4gSG93
ZXZlciwgdGhlIGFtb3J0aXplZCBjb21wbGV4aXR5IGlzIGNsb3NlIHRvIE8oMSksCj4+ICsgKiBh
cyB0aGUgaW1tZWRpYXRlIHN1Y2Nlc3NvciBpcyBsaWtlbHkgdG8gYmUgcnVubmluZyBvbiB0aGUg
c2FtZSBub2RlIG9uY2UKPj4gKyAqIHRocmVhZHMgZnJvbSBvdGhlciBub2RlcyBhcmUgbW92ZWQg
dG8gdGhlIHNlY29uZGFyeSBxdWV1ZS4KPj4gKyAqCj4+ICsgKiBAbm9kZSAgICAgIDogUG9pbnRl
ciB0byB0aGUgTUNTIG5vZGUgb2YgdGhlIGxvY2sgaG9sZGVyCj4+ICsgKiBAcHJlZF9zdGFydDog
UG9pbnRlciB0byB0aGUgTUNTIG5vZGUgb2YgdGhlIHdhaXRlciB3aG9zZSBzdWNjZXNzb3Igc2hv
dWxkIGJlCj4+ICsgKiAgICAgICAgICAgICAgdGhlIGZpcnN0IG5vZGUgaW4gdGhlIHNjYW4KPj4g
KyAqIFJldHVybiAgICAgOiBMT0NBTF9XQUlURVJfRk9VTkQgb3IgZW5jb2RlZCB0YWlsIG9mIHRo
ZSBsYXN0IHNjYW5uZWQgd2FpdGVyCj4+ICsgKi8KPj4gK3N0YXRpYyB1MzIgY25hX3NjYW5fbWFp
bl9xdWV1ZShzdHJ1Y3QgbWNzX3NwaW5sb2NrICpub2RlLAo+PiArCQkJICAgICAgIHN0cnVjdCBt
Y3Nfc3BpbmxvY2sgKnByZWRfc3RhcnQpCj4+ICt7Cj4+ICsJc3RydWN0IGNuYV9ub2RlICpjbiA9
IChzdHJ1Y3QgY25hX25vZGUgKilub2RlOwo+PiArCXN0cnVjdCBjbmFfbm9kZSAqY25pID0gKHN0
cnVjdCBjbmFfbm9kZSAqKVJFQURfT05DRShwcmVkX3N0YXJ0LT5uZXh0KTsKPj4gKwlzdHJ1Y3Qg
Y25hX25vZGUgKmxhc3Q7Cj4+ICsJaW50IG15X251bWFfbm9kZSA9IGNuLT5udW1hX25vZGU7Cj4+
ICsKPj4gKwkvKiBmaW5kIGFueSBuZXh0IHdhaXRlciBvbiAnb3VyJyBOVU1BIG5vZGUgKi8KPj4g
Kwlmb3IgKGxhc3QgPSBjbjsKPj4gKwkgICAgIGNuaSAmJiBjbmktPm51bWFfbm9kZSAhPSBteV9u
dW1hX25vZGU7Cj4+ICsJICAgICBsYXN0ID0gY25pLCBjbmkgPSAoc3RydWN0IGNuYV9ub2RlICop
UkVBRF9PTkNFKGNuaS0+bWNzLm5leHQpKQo+PiArCQk7Cj4+ICsKPj4gKwkvKiBpZiBmb3VuZCwg
c3BsaWNlIGFueSBza2lwcGVkIHdhaXRlcnMgb250byB0aGUgc2Vjb25kYXJ5IHF1ZXVlICovCj4+
ICsJaWYgKGNuaSkgewo+PiArCQlpZiAobGFzdCAhPSBjbikJLyogZGlkIHdlIHNraXAgYW55IHdh
aXRlcnM/ICovCj4+ICsJCQljbmFfc3BsaWNlX3RhaWwobm9kZSwgbm9kZS0+bmV4dCwKPj4gKwkJ
CQkJKHN0cnVjdCBtY3Nfc3BpbmxvY2sgKilsYXN0KTsKPj4gKwkJcmV0dXJuIExPQ0FMX1dBSVRF
Ul9GT1VORDsKPj4gKwl9Cj4+ICsKPj4gKwlyZXR1cm4gbGFzdC0+ZW5jb2RlZF90YWlsOwo+PiAr
fQo+PiArCj4+IAo+PiArLyoKPj4gKyAqIFN3aXRjaCB0byB0aGUgTlVNQS1mcmllbmRseSBzbG93
IHBhdGggZm9yIHNwaW5sb2NrcyB3aGVuIHdlIGhhdmUKPj4gKyAqIG11bHRpcGxlIE5VTUEgbm9k
ZXMgaW4gbmF0aXZlIGVudmlyb25tZW50LCB1bmxlc3MgdGhlIHVzZXIgaGFzCj4+ICsgKiBvdmVy
cmlkZGVuIHRoaXMgZGVmYXVsdCBiZWhhdmlvciBieSBzZXR0aW5nIHRoZSBudW1hX3NwaW5sb2Nr
IGZsYWcuCj4+ICsgKi8KPj4gK3ZvaWQgY25hX2NvbmZpZ3VyZV9zcGluX2xvY2tfc2xvd3BhdGgo
dm9pZCkKPiBOaXQ6IFRoZXJlIHNob3VsZCBiZSBhIF9faW5pdC4KVHJ1ZS4gSSB3aWxsIGZpeCB0
aGF0LgoKPj4gK3sKPj4gKwlpZiAoKG51bWFfc3BpbmxvY2tfZmxhZyA9PSAxKSB8fAo+PiArCSAg
ICAobnVtYV9zcGlubG9ja19mbGFnID09IDAgJiYgbnJfbm9kZV9pZHMgPiAxICYmCj4+ICsJCSAg
ICBwdl9vcHMubG9jay5xdWV1ZWRfc3Bpbl9sb2NrX3Nsb3dwYXRoID09Cj4+ICsJCQluYXRpdmVf
cXVldWVkX3NwaW5fbG9ja19zbG93cGF0aCkpIHsKPj4gKwkJcHZfb3BzLmxvY2sucXVldWVkX3Nw
aW5fbG9ja19zbG93cGF0aCA9Cj4+ICsJCSAgICBfX2NuYV9xdWV1ZWRfc3Bpbl9sb2NrX3Nsb3dw
YXRoOwo+PiArCj4+ICsJCXByX2luZm8oIkVuYWJsaW5nIENOQSBzcGlubG9ja1xuIik7Cj4+ICsJ
fQo+PiArfQo+IAo+IE90aGVyIHRoYW4gdGhlc2UgdHdvIG1pbm9yIG5pdHMsIHRoZSByZXN0cyBs
b29rcyBnb29kIHRvIG1lLgpHcmVhdC4gSSB3aWxsIHJldmlzZSBhbmQgcmVzdWJtaXQuCgpCZXN0
IHJlZ2FyZHMsCuKAlCBBbGV4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
