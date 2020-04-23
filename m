Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97FCC1B59D8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 13:00:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	Date:From:References:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cZplx/aTQabPU3hGqiU2aQf20yzJBCPprOLmCmcuclM=; b=AFMHsiLdepgANz
	XrGD8AH339KOlfeXiEEM7cajKVcNLnlkJ45TF1gqB+LOK4Kx6qY92MqmxKGoPW9mQ+9O7UHTRr9SC
	YflI+v6TumoaXa/eefI8xTWMxnmjlVMqg+6lKE9uHWkRuqXekBS1Ff0E9Nn0Ws35HvN2Zh1YtwAL/
	2VzaUR2aXIogXvCWjSBMlbSNdC0NT79s5o0vB4kufYSwNcADgUKdaUzZ4RyToc58aaUhcPdxzi0E9
	0UGGwdtpMOXnTGv990Y7Ibo+gGMf08AvmCj4l8S7EehPj/cJP84YbRkZEhng36ifvVtAbK5vDT1zf
	8Cd0liK9Q90CrQ9jWN+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRZb9-0004WE-2l; Thu, 23 Apr 2020 11:00:51 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRZb0-0004VN-1q
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 11:00:43 +0000
Received: from pps.filterd (m0098394.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03NAW62I099529
 for <linux-arm-kernel@lists.infradead.org>; Thu, 23 Apr 2020 07:00:41 -0400
Received: from e06smtp07.uk.ibm.com (e06smtp07.uk.ibm.com [195.75.94.103])
 by mx0a-001b2d01.pphosted.com with ESMTP id 30k7rbuut9-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Thu, 23 Apr 2020 07:00:41 -0400
Received: from localhost
 by e06smtp07.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <borntraeger@de.ibm.com>;
 Thu, 23 Apr 2020 12:00:32 +0100
Received: from b06cxnps4075.portsmouth.uk.ibm.com (9.149.109.197)
 by e06smtp07.uk.ibm.com (192.168.101.137) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Thu, 23 Apr 2020 12:00:22 +0100
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com
 [9.149.105.58])
 by b06cxnps4075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 03NB0RJX46792854
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 23 Apr 2020 11:00:27 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 2A7EA4C071;
 Thu, 23 Apr 2020 11:00:27 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 8B7784C04E;
 Thu, 23 Apr 2020 11:00:25 +0000 (GMT)
Received: from oc7455500831.ibm.com (unknown [9.145.69.15])
 by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Thu, 23 Apr 2020 11:00:25 +0000 (GMT)
Subject: Re: [PATCH v2 1/7] KVM: s390: clean up redundant 'kvm_run' parameters
To: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>,
 Cornelia Huck <cohuck@redhat.com>
References: <20200422125810.34847-1-tianjia.zhang@linux.alibaba.com>
 <20200422125810.34847-2-tianjia.zhang@linux.alibaba.com>
 <20200422154543.2efba3dd.cohuck@redhat.com>
 <dc5e0fa3-558b-d606-bda9-ed281cf9e9ae@de.ibm.com>
 <20200422180403.03f60b0c.cohuck@redhat.com>
 <5e1e126d-f1b0-196c-594b-4289d0afb9a8@linux.alibaba.com>
 <20200423123901.72a4c6a4.cohuck@redhat.com>
 <71344f73-c34f-a373-49d1-5d839c6be5f6@linux.alibaba.com>
From: Christian Borntraeger <borntraeger@de.ibm.com>
Autocrypt: addr=borntraeger@de.ibm.com; prefer-encrypt=mutual; keydata=
 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
 nS4h0HDFPrrp1C2EMVYIQrMokWvlFZbCpsdYbBI=
Date: Thu, 23 Apr 2020 13:00:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <71344f73-c34f-a373-49d1-5d839c6be5f6@linux.alibaba.com>
Content-Language: en-US
X-TM-AS-GCONF: 00
x-cbid: 20042311-0028-0000-0000-000003FD8840
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 20042311-0029-0000-0000-000024C352F5
Message-Id: <1d73b700-4a20-3d7a-66d1-29b5afa03f4d@de.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-23_07:2020-04-22,
 2020-04-23 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0
 clxscore=1015 priorityscore=1501 mlxlogscore=999 impostorscore=0
 mlxscore=0 phishscore=0 lowpriorityscore=0 adultscore=0 suspectscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004230078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_040042_102212_03CE1AEF 
X-CRM114-Status: GOOD (  25.15  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: wanpengli@tencent.com, kvm@vger.kernel.org, david@redhat.com,
 benh@kernel.crashing.org, heiko.carstens@de.ibm.com, peterx@redhat.com,
 linux-mips@vger.kernel.org, paulus@ozlabs.org, hpa@zytor.com,
 kvmarm@lists.cs.columbia.edu, linux-s390@vger.kernel.org,
 frankja@linux.ibm.com, maz@kernel.org, joro@8bytes.org, x86@kernel.org,
 mingo@redhat.com, julien.thierry.kdev@gmail.com, thuth@redhat.com,
 gor@linux.ibm.com, suzuki.poulose@arm.com, kvm-ppc@vger.kernel.org,
 bp@alien8.de, tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 jmattson@google.com, tsbogend@alpha.franken.de, christoffer.dall@arm.com,
 sean.j.christopherson@intel.com, linux-kernel@vger.kernel.org,
 james.morse@arm.com, mpe@ellerman.id.au, pbonzini@redhat.com,
 vkuznets@redhat.com, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyMy4wNC4yMCAxMjo1OCwgVGlhbmppYSBaaGFuZyB3cm90ZToKPiAKPiAKPiBPbiAyMDIw
LzQvMjMgMTg6MzksIENvcm5lbGlhIEh1Y2sgd3JvdGU6Cj4+IE9uIFRodSwgMjMgQXByIDIwMjAg
MTE6MDE6NDMgKzA4MDAKPj4gVGlhbmppYSBaaGFuZyA8dGlhbmppYS56aGFuZ0BsaW51eC5hbGli
YWJhLmNvbT4gd3JvdGU6Cj4+Cj4+PiBPbiAyMDIwLzQvMjMgMDowNCwgQ29ybmVsaWEgSHVjayB3
cm90ZToKPj4+PiBPbiBXZWQsIDIyIEFwciAyMDIwIDE3OjU4OjA0ICswMjAwCj4+Pj4gQ2hyaXN0
aWFuIEJvcm50cmFlZ2VyIDxib3JudHJhZWdlckBkZS5pYm0uY29tPiB3cm90ZToKPj4+PiDCoMKg
Cj4+Pj4+IE9uIDIyLjA0LjIwIDE1OjQ1LCBDb3JuZWxpYSBIdWNrIHdyb3RlOgo+Pj4+Pj4gT24g
V2VkLCAyMiBBcHIgMjAyMCAyMDo1ODowNCArMDgwMAo+Pj4+Pj4gVGlhbmppYSBaaGFuZyA8dGlh
bmppYS56aGFuZ0BsaW51eC5hbGliYWJhLmNvbT4gd3JvdGU6Cj4+Pj4+PiDCoMKgwqDCoMKgCj4+
Pj4+Pj4gSW4gdGhlIGN1cnJlbnQga3ZtIHZlcnNpb24sICdrdm1fcnVuJyBoYXMgYmVlbiBpbmNs
dWRlZCBpbiB0aGUgJ2t2bV92Y3B1Jwo+Pj4+Pj4+IHN0cnVjdHVyZS4gRWFybGllciB0aGFuIGhp
c3RvcmljYWwgcmVhc29ucywgbWFueSBrdm0tcmVsYXRlZCBmdW5jdGlvbgo+Pj4+Pj4KPj4+Pj4+
IHMvRWFybGllciB0aGFuL0Zvci8gPwo+Pj4+Pj4gwqDCoMKgwqDCoAo+Pj4+Pj4+IHBhcmFtZXRl
cnMgcmV0YWluIHRoZSAna3ZtX3J1bicgYW5kICdrdm1fdmNwdScgcGFyYW1ldGVycyBhdCB0aGUg
c2FtZSB0aW1lLgo+Pj4+Pj4+IFRoaXMgcGF0Y2ggZG9lcyBhIHVuaWZpZWQgY2xlYW51cCBvZiB0
aGVzZSByZW1haW5pbmcgcmVkdW5kYW50IHBhcmFtZXRlcnMuCj4+Pj4+Pj4KPj4+Pj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBUaWFuamlhIFpoYW5nIDx0aWFuamlhLnpoYW5nQGxpbnV4LmFsaWJhYmEuY29t
Pgo+Pj4+Pj4+IC0tLQo+Pj4+Pj4+IMKgwqAgYXJjaC9zMzkwL2t2bS9rdm0tczM5MC5jIHwgMzcg
KysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLQo+Pj4+Pj4+IMKgwqAgMSBmaWxl
IGNoYW5nZWQsIDIyIGluc2VydGlvbnMoKyksIDE1IGRlbGV0aW9ucygtKQo+Pj4+Pj4+Cj4+Pj4+
Pj4gZGlmZiAtLWdpdCBhL2FyY2gvczM5MC9rdm0va3ZtLXMzOTAuYyBiL2FyY2gvczM5MC9rdm0v
a3ZtLXMzOTAuYwo+Pj4+Pj4+IGluZGV4IGUzMzVhN2U1ZWFkNy4uZDdiYjJlN2EwN2ZmIDEwMDY0
NAo+Pj4+Pj4+IC0tLSBhL2FyY2gvczM5MC9rdm0va3ZtLXMzOTAuYwo+Pj4+Pj4+ICsrKyBiL2Fy
Y2gvczM5MC9rdm0va3ZtLXMzOTAuYwo+Pj4+Pj4+IEBAIC00MTc2LDggKzQxNzYsOSBAQCBzdGF0
aWMgaW50IF9fdmNwdV9ydW4oc3RydWN0IGt2bV92Y3B1ICp2Y3B1KQo+Pj4+Pj4+IMKgwqDCoMKg
wqDCoCByZXR1cm4gcmM7Cj4+Pj4+Pj4gwqDCoCB9Cj4+Pj4+Pj4gwqDCoCAtc3RhdGljIHZvaWQg
c3luY19yZWdzX2ZtdDIoc3RydWN0IGt2bV92Y3B1ICp2Y3B1LCBzdHJ1Y3Qga3ZtX3J1biAqa3Zt
X3J1bikKPj4+Pj4+PiArc3RhdGljIHZvaWQgc3luY19yZWdzX2ZtdDIoc3RydWN0IGt2bV92Y3B1
ICp2Y3B1KQo+Pj4+Pj4+IMKgwqAgewo+Pj4+Pj4+ICvCoMKgwqAgc3RydWN0IGt2bV9ydW4gKmt2
bV9ydW4gPSB2Y3B1LT5ydW47Cj4+Pj4+Pj4gwqDCoMKgwqDCoMKgIHN0cnVjdCBydW50aW1lX2lu
c3RyX2NiICpyaWNjYjsKPj4+Pj4+PiDCoMKgwqDCoMKgwqAgc3RydWN0IGdzX2NiICpnc2NiOwo+
Pj4+Pj4+IMKgwqAgQEAgLTQyMzUsNyArNDIzNiw3IEBAIHN0YXRpYyB2b2lkIHN5bmNfcmVnc19m
bXQyKHN0cnVjdCBrdm1fdmNwdSAqdmNwdSwgc3RydWN0IGt2bV9ydW4gKmt2bV9ydW4pCj4+Pj4+
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+Pj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlm
ICh2Y3B1LT5hcmNoLmdzX2VuYWJsZWQpIHsKPj4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGN1cnJlbnQtPnRocmVhZC5nc19jYiA9IChzdHJ1Y3QgZ3NfY2IgKikKPj4+Pj4+PiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAmdmNwdS0+cnVu
LT5zLnJlZ3MuZ3NjYjsKPj4+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCAma3ZtX3J1bi0+cy5yZWdzLmdzY2I7Cj4+Pj4+Pgo+Pj4+Pj4gTm90IHN1
cmUgaWYgdGhlc2UgY2hhbmdlcyAodmNwdS0+cnVuLT4gPT4ga3ZtX3J1bi0+KSBhcmUgcmVhbGx5
IHdvcnRoCj4+Pj4+PiBpdC4gKEl0IHNlZW1zIHRoZXkgYW1vdW50IHRvIGF0IGxlYXN0IGFzIG11
Y2ggYXMgdGhlIGNoYW5nZXMgYWR2ZXJ0aXNlZAo+Pj4+Pj4gaW4gdGhlIHBhdGNoIGRlc2NyaXB0
aW9uLikKPj4+Pj4+Cj4+Pj4+PiBPdGhlciBvcGluaW9ucz8KPj4+Pj4KPj4+Pj4gQWdyZWVkLiBJ
dCBmZWVscyBraW5kIG9mIHJhbmRvbS4gTWF5YmUganVzdCBkbyB0aGUgZmlyc3QgbGluZSAobW92
ZSBrdm1fcnVuIGZyb20gdGhlCj4+Pj4+IGZ1bmN0aW9uIHBhcmFtZXRlciBsaXN0IGludG8gdGhl
IHZhcmlhYmxlIGRlY2xhcmF0aW9uKT8gTm90IHN1cmUgaWYgdGhpcyBpcyBiZXR0ZXIuCj4+Pj4+
IMKgIAo+Pj4+Cj4+Pj4gVGhlcmUncyBtb3JlIGluIHRoaXMgcGF0Y2ggdGhhdCBJIGN1dC4uLiBi
dXQgSSB0aGluayBqdXN0IG1vdmluZwo+Pj4+IGt2bV9ydW4gZnJvbSB0aGUgcGFyYW1ldGVyIGxp
c3Qgd291bGQgYmUgbXVjaCBsZXNzIGRpc3J1cHRpdmUuCj4+Pj4gwqDCoCAKPj4+Cj4+PiBJIHRo
aW5rIHRoZXJlIGFyZSB0d28ga2luZHMgb2YgY29kZShgdmNwdS0+cnVuLT5gIGFuZCBga3ZtX3J1
bi0+YCksIGJ1dAo+Pj4gdGhlcmUgd2lsbCBiZSBtb3JlIGRpc3J1cHRpdmUsIG5vdCBsZXNzLgo+
Pgo+PiBJIGp1c3QgZmFpbCB0byBzZWUgdGhlIGJlbmVmaXQ7IHN1cmUsIGt2bV9ydW4tPiBpcyBj
b252ZW5pZW50LCBidXQgdGhlCj4+IGN1cnJlbnQgY29kZSBpcyBqdXN0IGZpbmUsIGFuZCBhbnkg
cmV3b3JrIHNob3VsZCBiZSBiYWxhbmNlZCBhZ2FpbnN0Cj4+IHRoZSBjb3N0IChlLmcuIGNsdXR0
ZXJpbmcgZ2l0IGFubm90YXRlKS4KPj4KPiAKPiBjbHV0dGVyaW5nIGdpdCBhbm5vdGF0ZSA/IERv
ZXMgaXQgbWVhbiBGaXggeHh4eCAoImNvbW1lbnQiKS4gSXMgaXQgcG9zc2libGUgdG8gc29sdmUg
dGhpcyBwcm9ibGVtIGJ5IHNwbGl0dGluZyB0aGlzIHBhdGNoPwoKTm8gaXRzIGFib3V0IGJyZWFr
aW5nIGdpdCBibGFtZSAoYW5kIGJ1Z2ZpeCBiYWNrcG9ydHMpIGZvciBqdXN0IGEgY29zbWV0aWMg
aW1wcm92ZW1lbnQuCkFuZCBJIGFncmVlIHdpdGggQ29ubnk6IHRoZSBjb3N0IGlzIGhpZ2hlciB0
aGFuIHRoZSBiZW5lZml0LgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
