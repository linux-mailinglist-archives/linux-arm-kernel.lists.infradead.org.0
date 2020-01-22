Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6B9145C78
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 20:30:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CTArudS2u+N9p40fuKqCfvne6hq7uEwNmRjjoaddmzw=; b=nnQEqPt8ZvMNSr
	tV/RbhmrdzX3KxwwA7yR2T1HONo94CNErWHvAiSwOcRnLGeklDIyYpoBOK5en9caUaZtdPr2c93BU
	CzIdANJBPPdx0mDG01y22e2cln82NNZBHf3gkGxf3q85rJ3PsCkpxsYCHkVFIX8LTuOjBM+k5TWRX
	2JJf9QtkUb0nl048cpYxLLI8GkdD9DIk1oc9fIWbyd38bKq02Hixsde9VEtVjoHH8gnhA1ScTTcfZ
	8iUDDdvFGc9/e1LuXEu3OkSB1G9r2bqbJjNlX5xF73qPLYcWcHJRMQUZx38F+sFaJB6cVWS3p7VLX
	56gIyE0KyJC8jbOnmSUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuLiG-0003Ca-Bo; Wed, 22 Jan 2020 19:30:52 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuLi6-0003Bv-Oh
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 19:30:44 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00MJSOLY013172;
 Wed, 22 Jan 2020 19:29:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2019-08-05; bh=NWUObdwgZDzbSQPfNwPkqO4BXDviIlQVMJjazGC8iZI=;
 b=WblboZNmJ3T7EyFz0bU/La07yBbrviyMBLElM2gxIIjYpzinBGY4Q5e2k98xiUKKN8F2
 wXZSudBpGBeixGrpEZg3opwZ859Bfdw1gj+4Ktfwi8ZzpAvsHIogDHqkJhgww76nBHgS
 QOvtM9/RIUYrOnL59+9aRHWvkkL1jz+5j+6e2dK3IoxdU0Two7osf7KbDDJiOApa3xPm
 E8C8dNR4wiIGiE5eF9XkdhgdQbiH3NXaw63b0S5CKD+k3AeJKZpzmLnK28I7/COs2540
 jwOEg2AZFuj+CEhnALscVh4IRP7PrxEtJ7jowHd4Fz34bnjDMO9+2vXwNpTuHroyG+4k gg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2xktnrdshb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 22 Jan 2020 19:29:45 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00MJSfHr164521;
 Wed, 22 Jan 2020 19:29:44 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 2xppq18gyk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 22 Jan 2020 19:29:44 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 00MJTenw028887;
 Wed, 22 Jan 2020 19:29:40 GMT
Received: from [10.39.195.152] (/10.39.195.152)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 22 Jan 2020 11:29:39 -0800
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH v9 0/5] Add NUMA-awareness to qspinlock
From: Alex Kogan <alex.kogan@oracle.com>
In-Reply-To: <CAC4j=Y8rCeTX9oKKbh+dCdTP8Ud4hW1ybu+iE7t_nxMSYBOR5w@mail.gmail.com>
Date: Wed, 22 Jan 2020 14:29:36 -0500
Message-Id: <4F71A184-42C0-4865-9AAA-79A636743C25@oracle.com>
References: <20200115035920.54451-1-alex.kogan@oracle.com>
 <CAC4j=Y8rCeTX9oKKbh+dCdTP8Ud4hW1ybu+iE7t_nxMSYBOR5w@mail.gmail.com>
To: Lihao Liang <lihaoliang@google.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9508
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001220165
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9508
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001220165
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_113042_939281_F8E7941B 
X-CRM114-Status: GOOD (  22.47  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.85 listed in wl.mailspike.net]
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
 Peter Zijlstra <peterz@infradead.org>, dave.dice@oracle.com,
 jglauber@marvell.com, x86@kernel.org, will.deacon@arm.com,
 linux@armlinux.org.uk, steven.sistare@oracle.com, linux-kernel@vger.kernel.org,
 mingo@redhat.com, bp@alien8.de, hpa@zytor.com, longman@redhat.com,
 tglx@linutronix.de, daniel.m.jordan@oracle.com, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIExpaGFvLgoKPiBPbiBKYW4gMjIsIDIwMjAsIGF0IDY6NDUgQU0sIExpaGFvIExpYW5nIDxs
aWhhb2xpYW5nQGdvb2dsZS5jb20+IHdyb3RlOgo+IAo+IEhpIEFsZXgsCj4gCj4gT24gV2VkLCBK
YW4gMjIsIDIwMjAgYXQgMTA6MjggQU0gQWxleCBLb2dhbiA8YWxleC5rb2dhbkBvcmFjbGUuY29t
PiB3cm90ZToKPj4gCj4+IFN1bW1hcnkKPj4gLS0tLS0tLQo+PiAKPj4gTG9jayB0aHJvdWdocHV0
IGNhbiBiZSBpbmNyZWFzZWQgYnkgaGFuZGluZyBhIGxvY2sgdG8gYSB3YWl0ZXIgb24gdGhlCj4+
IHNhbWUgTlVNQSBub2RlIGFzIHRoZSBsb2NrIGhvbGRlciwgcHJvdmlkZWQgY2FyZSBpcyB0YWtl
biB0byBhdm9pZAo+PiBzdGFydmF0aW9uIG9mIHdhaXRlcnMgb24gb3RoZXIgTlVNQSBub2Rlcy4g
VGhpcyBwYXRjaCBpbnRyb2R1Y2VzIENOQQo+PiAoY29tcGFjdCBOVU1BLWF3YXJlIGxvY2spIGFz
IHRoZSBzbG93IHBhdGggZm9yIHFzcGlubG9jay4gSXQgaXMKPj4gZW5hYmxlZCB0aHJvdWdoIGEg
Y29uZmlndXJhdGlvbiBvcHRpb24gKE5VTUFfQVdBUkVfU1BJTkxPQ0tTKS4KPj4gCj4gCj4gVGhh
bmtzIGZvciB5b3VyIHBhdGNoZXMuIFRoZSBleHBlcmltZW50YWwgcmVzdWx0cyBsb29rIHByb21p
c2luZyEKPiAKPiBJIHVuZGVyc3RhbmQgdGhhdCB0aGUgbmV3IENOQSBxc3BpbmxvY2sgdXNlcyBy
YW5kb21pemF0aW9uIHRvIGFjaGlldmUKPiBsb25nLXRlcm0gZmFpcm5lc3MsIGFuZCBwcm92aWRl
cyB0aGUgbnVtYV9zcGlubG9ja190aHJlc2hvbGQgcGFyYW1ldGVyCj4gZm9yIHVzZXJzIHRvIHR1
bmUuClRoaXMgaGFzIGJlZW4gdGhlIGNhc2UgaW4gdGhlIGZpcnN0IHZlcnNpb25zIG9mIHRoZSBz
ZXJpZXMsIGJ1dCBpcyBub3QgdHJ1ZSBhbnltb3JlLgpUaGF0IGlzLCB0aGUgbG9uZy10ZXJtIGZh
aXJuZXNzIGlzIGFjaGlldmVkIGRldGVybWluaXN0aWNhbGx5IChhbmQgeW91IGFyZSBjb3JyZWN0
IAp0aGF0IGl0IGlzIGRvbmUgdGhyb3VnaCB0aGUgbnVtYV9zcGlubG9ja190aHJlc2hvbGQgcGFy
YW1ldGVyKS4KCj4gQXMgTGludXggcnVucyBleHRyZW1lbHkgZGl2ZXJzZSB3b3JrbG9hZHMsIGl0
IGlzIG5vdAo+IGNsZWFyIGhvdyByYW5kb21pemF0aW9uIGFmZmVjdHMgaXRzIGZhaXJuZXNzLCBh
bmQgaG93IHVzZXJzIHdpdGgKPiBkaWZmZXJlbnQgcmVxdWlyZW1lbnRzIGFyZSBzdXBwb3NlZCB0
byB0dW5lIHRoaXMgcGFyYW1ldGVyLgo+IAo+IFRvIHRoaXMgZW5kLCBXaWxsIGFuZCBJIGNvbnNp
ZGVyIGl0IGJlbmVmaWNpYWwgdG8gYmUgYWJsZSB0byBhbnN3ZXIgdGhlCj4gZm9sbG93aW5nIHF1
ZXN0aW9uOgo+IAo+IFdpdGggZGlmZmVyZW50IHZhbHVlcyBvZiBudW1hX3NwaW5sb2NrX3RocmVz
aG9sZCBhbmQKPiBTSFVGRkxFX1JFRFVDVElPTl9QUk9CX0FSRywgaG93IGxvbmcgZG8gdGhyZWFk
cyBydW5uaW5nIG9uIGRpZmZlcmVudAo+IHNvY2tldHMgaGF2ZSB0byB3YWl0IHRvIGFjcXVpcmUg
dGhlIGxvY2s/ClRoZSBTSFVGRkxFX1JFRFVDVElPTl9QUk9CX0FSRyBwYXJhbWV0ZXIgaXMgaW50
ZW5kZWQgZm9yIHBlcmZvcm1hbmNlCm9wdGltaXphdGlvbiBvbmx5LCBhbmQgKmRvZXMgbm90KiBh
ZmZlY3QgdGhlIGxvbmctdGVybSBmYWlybmVzcyAob3IsIGF0IHRoZSAKdmVyeSBsZWFzdCwgZG9l
cyBub3QgbWFrZSBpdCBhbnkgd29yc2UpLiBBcyBMb25nbWFuIGNvcnJlY3RseSBwb2ludGVkIG91
dCBpbiAKaGlzIHJlc3BvbnNlIHRvIHRoaXMgZW1haWwsIHRoZSBzaHVmZmxlIHJlZHVjdGlvbiBv
cHRpbWl6YXRpb24gaXMgcmVsZXZhbnQgb25seQp3aGVuIHRoZSBzZWNvbmRhcnkgcXVldWUgaXMg
ZW1wdHkuIEluIHRoYXQgY2FzZSwgQ05BIGhhbmRzLW9mZiB0aGUgbG9jawpleGFjdGx5IGFzIE1D
UyBkb2VzLCBpLmUuLCBpbiB0aGUgRklGTyBvcmRlci4gTm90ZSB0aGF0IHdoZW4gdGhlIHNlY29u
ZGFyeQpxdWV1ZSBpcyBub3QgZW1wdHksIHdlIGRvIG5vdCBjYWxsIHByb2JhYmx5KCkuCgo+IFRo
aXMgaXMgcGFydGljdWxhcmx5IHJlbGV2YW50Cj4gaW4gaGlnaCBjb250ZW50aW9uIHNpdHVhdGlv
bnMgd2hlbiBuZXcgdGhyZWFkcyBrZWVwIGFycml2aW5nIG9uIHRoZSBzYW1lCj4gc29ja2V0IGFz
IHRoZSBsb2NrIGhvbGRlci4KSW4gdGhpcyBjYXNlLCB0aGUgbG9jayB3aWxsIHN0YXkgb24gdGhl
IHNhbWUgTlVNQSBub2RlL3NvY2tldCBmb3IgCjJebnVtYV9zcGlubG9ja190aHJlc2hvbGQgdGlt
ZXMsIHdoaWNoIGlzIHRoZSB3b3JzdCBjYXNlIHNjZW5hcmlvIGlmIHdlIApjb25zaWRlciB0aGUg
bG9uZy10ZXJtIGZhaXJuZXNzLiBBbmQgaWYgd2UgaGF2ZSBtdWx0aXBsZSBub2RlcywgaXQgd2ls
bCB0YWtlIAp1cCB0byAyXm51bWFfc3BpbmxvY2tfdGhyZXNob2xkIFggKG5yX25vZGVzIC0gMSkg
KyBucl9jcHVzX3Blcl9ub2RlCmxvY2sgdHJhbnNpdGlvbnMgdW50aWwgYW55IGdpdmVuIHRocmVh
ZCB3aWxsIGFjcXVpcmUgdGhlIGxvY2sKKGFzc3VtaW5nIDJebnVtYV9zcGlubG9ja190aHJlc2hv
bGQgPiBucl9jcHVzX3Blcl9ub2RlKS4KCkhvcGVmdWxseSwgaXQgYWRkcmVzc2VzIHlvdXIgY29u
Y2Vybi4gTGV0IG1lIGtub3cgaWYgeW91IGhhdmUgYW55IGZ1cnRoZXIgCnF1ZXN0aW9ucy4KCkJl
c3QgcmVnYXJkcywK4oCUIEFsZXgKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
