Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73227DCF91
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 21:50:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GNY82iTe/lYGqmZ8UxLeUzGFvy62iuBcGE8bwS+4Gho=; b=B7QgXyEPu5OjnU
	ZCiLbkrA0f1CuNQVjybK0Q34h/1Fmuxupdk0C4IiV5VjmuyrudbipLj1HiMTUXl4MZn5fEJ50Q0wY
	Ti0dfSxw1EXhdLkOogc4vW8vS8njz/ZtX0jZ8QxqiilhPajko8JllqeTcauOwHLKzeZrO+DCROevh
	kFrsP2XiiZH1KN9LQFKeVcmjNFerJZqwVpc9cdKaXQUJES3RHaaRyO+t77fh5mJS/sQo9LrEjrxmO
	RsJ1zrBBn13mF/a/jAYpmYay3ohd5aCF3JUlhrhiGrbgJIAJzhwSPuuAUSUXeWtTcs4Dktfa3HjvQ
	0jI1Ap6sgJNpVL+DpgGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLYG7-0007xq-Eh; Fri, 18 Oct 2019 19:49:59 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLYFx-0007wq-9v
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 19:49:51 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9IJmgsk015302;
 Fri, 18 Oct 2019 19:48:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2019-08-05; bh=5kh2kuJLfAGl6rIst1XR0q5Mh2Qu48hZ3Oy8va9aCjQ=;
 b=iY0Z47dbIMjVfFquSbQAdR3bdgq3caBV7pBIp8JNHdt1z+dUTcmcQPa43KmlT0HIyeTT
 +rJt5afsxV+p5ssdtjGgo0x9JHb6sTXYz8ImuWOVzIFwtR1nN/p/rvyLqfaAqIFz6px0
 fXQ0ykBr7iK5bwVs4xnMokXm5nEYNpdLjGf4Jwjl89AlGHYgNq3iZpDaykwMcZvdiNJ1
 1gMhzv4ST1Xzmh8yfaZrlzh8J3Ek0C8ynh7Vox/TVQlhrugKdKjT1JPbvxIVLQgeq3sh
 UV5ppxeFpTRjolV+EWh6O8vmaSydGvQGtx+ola8CHRbcyT9+3qiJ111hDaYOFv0AQF8d mQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2vq0q4dwhj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 18 Oct 2019 19:48:43 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9IJmc3u174215;
 Fri, 18 Oct 2019 19:48:43 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2vq0ex4kmf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 18 Oct 2019 19:48:43 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x9IJm0ht020800;
 Fri, 18 Oct 2019 19:48:07 GMT
Received: from [10.39.213.111] (/10.39.213.111)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 18 Oct 2019 19:47:59 +0000
Mime-Version: 1.0 (Mac OS X Mail 10.2 \(3259\))
Subject: Re: [PATCH v5 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
From: Alex Kogan <alex.kogan@oracle.com>
In-Reply-To: <6f346e41-c787-b84b-8433-f73f31a7d7ff@redhat.com>
Date: Fri, 18 Oct 2019 15:48:03 -0400
Message-Id: <AC12A81B-6863-4BA7-B360-26CEBE3CFDE6@oracle.com>
References: <20191016042903.61081-1-alex.kogan@oracle.com>
 <20191016042903.61081-4-alex.kogan@oracle.com>
 <6f346e41-c787-b84b-8433-f73f31a7d7ff@redhat.com>
To: Waiman Long <longman@redhat.com>
X-Mailer: Apple Mail (2.3259)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9414
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910180172
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9414
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910180172
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_124949_479851_A447EC55 
X-CRM114-Status: GOOD (  30.33  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, Hanjun Guo <guohanjun@huawei.com>,
 Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>,
 dave.dice@oracle.com, Jan Glauber <jglauber@marvell.com>, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, rahul.x.yadav@oracle.com,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, hpa@zytor.com,
 Steven Sistare <steven.sistare@oracle.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Daniel Jordan <daniel.m.jordan@oracle.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cj4gT24gT2N0IDE2LCAyMDE5LCBhdCA0OjU3IFBNLCBXYWltYW4gTG9uZyA8bG9uZ21hbkByZWRo
YXQuY29tPiB3cm90ZToKPiAKPiBPbiAxMC8xNi8xOSAxMjoyOSBBTSwgQWxleCBLb2dhbiB3cm90
ZToKPj4gSW4gQ05BLCBzcGlubmluZyB0aHJlYWRzIGFyZSBvcmdhbml6ZWQgaW4gdHdvIHF1ZXVl
cywgYSBtYWluIHF1ZXVlIGZvcgo+PiB0aHJlYWRzIHJ1bm5pbmcgb24gdGhlIHNhbWUgbm9kZSBh
cyB0aGUgY3VycmVudCBsb2NrIGhvbGRlciwgYW5kIGEKPj4gc2Vjb25kYXJ5IHF1ZXVlIGZvciB0
aHJlYWRzIHJ1bm5pbmcgb24gb3RoZXIgbm9kZXMuIEFmdGVyIGFjcXVpcmluZyB0aGUKPj4gTUNT
IGxvY2sgYW5kIGJlZm9yZSBhY3F1aXJpbmcgdGhlIHNwaW5sb2NrLCB0aGUgbG9jayBob2xkZXIg
c2NhbnMgdGhlCj4+IG1haW4gcXVldWUgbG9va2luZyBmb3IgYSB0aHJlYWQgcnVubmluZyBvbiB0
aGUgc2FtZSBub2RlIChwcmUtc2NhbikuIElmCj4+IGZvdW5kIChjYWxsIGl0IHRocmVhZCBUKSwg
YWxsIHRocmVhZHMgaW4gdGhlIG1haW4gcXVldWUgYmV0d2VlbiB0aGUKPj4gY3VycmVudCBsb2Nr
IGhvbGRlciBhbmQgVCBhcmUgbW92ZWQgdG8gdGhlIGVuZCBvZiB0aGUgc2Vjb25kYXJ5IHF1ZXVl
Lgo+PiBJZiBzdWNoIFQgaXMgbm90IGZvdW5kLCB3ZSBtYWtlIGFub3RoZXIgc2NhbiBvZiB0aGUg
bWFpbiBxdWV1ZSB3aGVuCj4+IHVubG9ja2luZyB0aGUgTUNTIGxvY2sgKHBvc3Qtc2NhbiksIHN0
YXJ0aW5nIGF0IHRoZSBwb3NpdGlvbiB3aGVyZQo+PiBwcmUtc2NhbiBzdG9wcGVkLiBJZiBib3Ro
IHNjYW5zIGZhaWwgdG8gZmluZCBzdWNoIFQsIHRoZSBNQ1MgbG9jayBpcwo+PiBwYXNzZWQgdG8g
dGhlIGZpcnN0IHRocmVhZCBpbiB0aGUgc2Vjb25kYXJ5IHF1ZXVlLiBJZiB0aGUgc2Vjb25kYXJ5
IHF1ZXVlCj4+IGlzIGVtcHR5LCB0aGUgbG9jayBpcyBwYXNzZWQgdG8gdGhlIG5leHQgdGhyZWFk
IGluIHRoZSBtYWluIHF1ZXVlLgo+PiBGb3IgbW9yZSBkZXRhaWxzLCBzZWUgaHR0cHM6Ly91cmxk
ZWZlbnNlLnByb29mcG9pbnQuY29tL3YyL3VybD91PWh0dHBzLTNBX19hcnhpdi5vcmdfYWJzXzE4
MTAuMDU2MDAmZD1Ed0lDYVEmYz1Sb1AxWXVtQ1hDZ2FXSHZsWllSOFBaaDhCdjdxSXJNVUI2NWVh
cElfSm5FJnI9SHZoazNGNG9tZENrLUdFMVBUT20zS24wQTdBcFdPWjJhWkxUdVZ4Rks0ayZtPVlF
X0VJTk50SjZrdlg3LXIxZkNvU1BvX2hQa3lUVGtZUktKMldTUWdVUkEmcz1IeGs1UFgxV2hzVkJK
TWI1TEItYndfRUJUM1pYTWJyMEc0MExiRFFXdHFnJmU9IC4KPj4gCj4+IE5vdGUgdGhhdCB0aGlz
IHZhcmlhbnQgb2YgQ05BIG1heSBpbnRyb2R1Y2Ugc3RhcnZhdGlvbiBieSBjb250aW51b3VzbHkK
Pj4gcGFzc2luZyB0aGUgbG9jayB0byB0aHJlYWRzIHJ1bm5pbmcgb24gdGhlIHNhbWUgbm9kZS4g
VGhpcyBpc3N1ZQo+PiB3aWxsIGJlIGFkZHJlc3NlZCBsYXRlciBpbiB0aGUgc2VyaWVzLgo+PiAK
Pj4gRW5hYmxpbmcgQ05BIGlzIGNvbnRyb2xsZWQgdmlhIGEgbmV3IGNvbmZpZ3VyYXRpb24gb3B0
aW9uCj4+IChOVU1BX0FXQVJFX1NQSU5MT0NLUykuIEJ5IGRlZmF1bHQsIHRoZSBDTkEgdmFyaWFu
dCBpcyBwYXRjaGVkIGluIGF0IHRoZQo+PiBib290IHRpbWUgb25seSBpZiB3ZSBydW4gb24gYSBt
dWx0aS1ub2RlIG1hY2hpbmUgaW4gbmF0aXZlIGVudmlyb25tZW50IGFuZAo+PiB0aGUgbmV3IGNv
bmZpZyBpcyBlbmFibGVkLiAoRm9yIHRoZSB0aW1lIGJlaW5nLCB0aGUgcGF0Y2hpbmcgcmVxdWly
ZXMKPj4gQ09ORklHX1BBUkFWSVJUX1NQSU5MT0NLUyB0byBiZSBlbmFibGVkIGFzIHdlbGwuIEhv
d2V2ZXIsIHRoaXMgc2hvdWxkIGJlCj4+IHJlc29sdmVkIG9uY2Ugc3RhdGljX2NhbGwoKSBpcyBh
dmFpbGFibGUuKSBUaGlzIGRlZmF1bHQgYmVoYXZpb3IgY2FuIGJlCj4+IG92ZXJyaWRkZW4gd2l0
aCB0aGUgbmV3IGtlcm5lbCBib290IGNvbW1hbmQtbGluZSBvcHRpb24KPj4gIm51bWFfc3Bpbmxv
Y2s9b24vb2ZmIiAoZGVmYXVsdCBpcyAiYXV0byIpLgo+PiAKPj4gU2lnbmVkLW9mZi1ieTogQWxl
eCBLb2dhbiA8YWxleC5rb2dhbkBvcmFjbGUuY29tPgo+PiBSZXZpZXdlZC1ieTogU3RldmUgU2lz
dGFyZSA8c3RldmVuLnNpc3RhcmVAb3JhY2xlLmNvbT4KPj4gLS0tCj4+IGFyY2gveDg2L0tjb25m
aWcgICAgICAgICAgICAgICAgIHwgIDE5ICsrKwo+PiBhcmNoL3g4Ni9pbmNsdWRlL2FzbS9xc3Bp
bmxvY2suaCB8ICAgNCArCj4+IGFyY2gveDg2L2tlcm5lbC9hbHRlcm5hdGl2ZS5jICAgIHwgIDQx
ICsrKysrKysKPj4ga2VybmVsL2xvY2tpbmcvbWNzX3NwaW5sb2NrLmggICAgfCAgIDIgKy0KPj4g
a2VybmVsL2xvY2tpbmcvcXNwaW5sb2NrLmMgICAgICAgfCAgMzQgKysrKystCj4+IGtlcm5lbC9s
b2NraW5nL3FzcGlubG9ja19jbmEuaCAgIHwgMjU4ICsrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKwo+PiA2IGZpbGVzIGNoYW5nZWQsIDM1MyBpbnNlcnRpb25zKCspLCA1IGRl
bGV0aW9ucygtKQo+PiBjcmVhdGUgbW9kZSAxMDA2NDQga2VybmVsL2xvY2tpbmcvcXNwaW5sb2Nr
X2NuYS5oCj4+IAo+PiBkaWZmIC0tZ2l0IGEvYXJjaC94ODYvS2NvbmZpZyBiL2FyY2gveDg2L0tj
b25maWcKPj4gaW5kZXggZDZlMWZhYTI4YzU4Li4xZDQ4MGYxOTBkZWYgMTAwNjQ0Cj4+IC0tLSBh
L2FyY2gveDg2L0tjb25maWcKPj4gKysrIGIvYXJjaC94ODYvS2NvbmZpZwo+PiBAQCAtMTU3Myw2
ICsxNTczLDI1IEBAIGNvbmZpZyBOVU1BCj4+IAo+PiAJICBPdGhlcndpc2UsIHlvdSBzaG91bGQg
c2F5IE4uCj4+IAo+PiArY29uZmlnIE5VTUFfQVdBUkVfU1BJTkxPQ0tTCj4+ICsJYm9vbCAiTnVt
YS1hd2FyZSBzcGlubG9ja3MiCj4+ICsJZGVwZW5kcyBvbiBOVU1BCj4+ICsJZGVwZW5kcyBvbiBR
VUVVRURfU1BJTkxPQ0tTCj4+ICsJIyBGb3Igbm93LCB3ZSBkZXBlbmQgb24gUEFSQVZJUlRfU1BJ
TkxPQ0tTIHRvIG1ha2UgdGhlIHBhdGNoaW5nIHdvcmsuCj4+ICsJIyBUaGlzIGlzIGF3a3dhcmQs
IGJ1dCBob3BlZnVsbHkgd291bGQgYmUgcmVzb2x2ZWQgb25jZSBzdGF0aWNfY2FsbCgpCj4+ICsJ
IyBpcyBhdmFpbGFibGUuCj4+ICsJZGVwZW5kcyBvbiBQQVJBVklSVF9TUElOTE9DS1MKPj4gKwlk
ZWZhdWx0IHkKPj4gKwloZWxwCj4+ICsJICBJbnRyb2R1Y2UgTlVNQSAoTm9uIFVuaWZvcm0gTWVt
b3J5IEFjY2VzcykgYXdhcmVuZXNzIGludG8KPj4gKwkgIHRoZSBzbG93IHBhdGggb2Ygc3Bpbmxv
Y2tzLgo+PiArCj4+ICsJICBJbiB0aGlzIHZhcmlhbnQgb2YgcXNwaW5sb2NrLCB0aGUga2VybmVs
IHdpbGwgdHJ5IHRvIGtlZXAgdGhlIGxvY2sKPj4gKwkgIG9uIHRoZSBzYW1lIG5vZGUsIHRodXMg
cmVkdWNpbmcgdGhlIG51bWJlciBvZiByZW1vdGUgY2FjaGUgbWlzc2VzLAo+PiArCSAgd2hpbGUg
dHJhZGluZyBzb21lIG9mIHRoZSBzaG9ydCB0ZXJtIGZhaXJuZXNzIGZvciBiZXR0ZXIgcGVyZm9y
bWFuY2UuCj4+ICsKPj4gKwkgIFNheSBOIGlmIHlvdSB3YW50IGFic29sdXRlIGZpcnN0IGNvbWUg
Zmlyc3Qgc2VydmUgZmFpcm5lc3MuCj4+ICsKPj4gY29uZmlnIEFNRF9OVU1BCj4+IAlkZWZfYm9v
bCB5Cj4+IAlwcm9tcHQgIk9sZCBzdHlsZSBBTUQgT3B0ZXJvbiBOVU1BIGRldGVjdGlvbiIKPiAK
PiBJIGZvcmdvdCB0byBtZW50aW9uIHRoYXQgeW91IHNob3VsZCBhbHNvIGRvY3VtZW50IHRoZSBu
ZXcgYm9vdCBjb21tYW5kCj4gbGluZSBvcHRpb24gYXQgRG9jdW1lbnRhdGlvbi9hZG1pbi1ndWlk
ZS9rZXJuZWwtcGFyYW1ldGVycy50eHQuCldpbGwgZG8uCgo+IAo+IAo+PiBkaWZmIC0tZ2l0IGEv
YXJjaC94ODYvaW5jbHVkZS9hc20vcXNwaW5sb2NrLmggYi9hcmNoL3g4Ni9pbmNsdWRlL2FzbS9x
c3BpbmxvY2suaAo+PiBpbmRleCA0NDRkNmZkOWE2ZDguLjZmYThmY2M1YzdhZiAxMDA2NDQKPj4g
LS0tIGEvYXJjaC94ODYvaW5jbHVkZS9hc20vcXNwaW5sb2NrLmgKPj4gKysrIGIvYXJjaC94ODYv
aW5jbHVkZS9hc20vcXNwaW5sb2NrLmgKPj4gQEAgLTI3LDYgKzI3LDEwIEBAIHN0YXRpYyBfX2Fs
d2F5c19pbmxpbmUgdTMyIHF1ZXVlZF9mZXRjaF9zZXRfcGVuZGluZ19hY3F1aXJlKHN0cnVjdCBx
c3BpbmxvY2sgKmxvCj4+IAlyZXR1cm4gdmFsOwo+PiB9Cj4+IAo+PiArI2lmZGVmIENPTkZJR19O
VU1BX0FXQVJFX1NQSU5MT0NLUwo+PiArZXh0ZXJuIHZvaWQgX19jbmFfcXVldWVkX3NwaW5fbG9j
a19zbG93cGF0aChzdHJ1Y3QgcXNwaW5sb2NrICpsb2NrLCB1MzIgdmFsKTsKPj4gKyNlbmRpZgo+
PiArCj4+ICNpZmRlZiBDT05GSUdfUEFSQVZJUlRfU1BJTkxPQ0tTCj4+IGV4dGVybiB2b2lkIG5h
dGl2ZV9xdWV1ZWRfc3Bpbl9sb2NrX3Nsb3dwYXRoKHN0cnVjdCBxc3BpbmxvY2sgKmxvY2ssIHUz
MiB2YWwpOwo+PiBleHRlcm4gdm9pZCBfX3B2X2luaXRfbG9ja19oYXNoKHZvaWQpOwo+PiBkaWZm
IC0tZ2l0IGEvYXJjaC94ODYva2VybmVsL2FsdGVybmF0aXZlLmMgYi9hcmNoL3g4Ni9rZXJuZWwv
YWx0ZXJuYXRpdmUuYwo+PiBpbmRleCA5ZDNhOTcxZWEzNjQuLmUwZTY2YmQ4YjI1MSAxMDA2NDQK
Pj4gLS0tIGEvYXJjaC94ODYva2VybmVsL2FsdGVybmF0aXZlLmMKPj4gKysrIGIvYXJjaC94ODYv
a2VybmVsL2FsdGVybmF0aXZlLmMKPj4gQEAgLTY5OCw2ICs2OTgsMzMgQEAgc3RhdGljIHZvaWQg
X19pbml0IGludDNfc2VsZnRlc3Qodm9pZCkKPj4gCXVucmVnaXN0ZXJfZGllX25vdGlmaWVyKCZp
bnQzX2V4Y2VwdGlvbl9uYik7Cj4+IH0KPj4gCj4+ICsjaWYgZGVmaW5lZChDT05GSUdfTlVNQV9B
V0FSRV9TUElOTE9DS1MpCj4+ICsvKgo+PiArICogQ29uc3RhbnQgKGJvb3QtcGFyYW0gY29uZmln
dXJhYmxlKSBmbGFnIHNlbGVjdGluZyB0aGUgTlVNQS1hd2FyZSB2YXJpYW50Cj4+ICsgKiBvZiBz
cGlubG9jay4gIFBvc3NpYmxlIHZhbHVlczogLTEgKG9mZikgLyAwIChhdXRvLCBkZWZhdWx0KSAv
IDEgKG9uKS4KPj4gKyAqLwo+PiArc3RhdGljIGludCBudW1hX3NwaW5sb2NrX2ZsYWc7Cj4+ICsK
Pj4gK3N0YXRpYyBpbnQgX19pbml0IG51bWFfc3BpbmxvY2tfc2V0dXAoY2hhciAqc3RyKQo+PiAr
ewo+PiArCWlmICghc3RyY21wKHN0ciwgImF1dG8iKSkgewo+PiArCQludW1hX3NwaW5sb2NrX2Zs
YWcgPSAwOwo+PiArCQlyZXR1cm4gMTsKPj4gKwl9IGVsc2UgaWYgKCFzdHJjbXAoc3RyLCAib24i
KSkgewo+PiArCQludW1hX3NwaW5sb2NrX2ZsYWcgPSAxOwo+PiArCQlyZXR1cm4gMTsKPj4gKwl9
IGVsc2UgaWYgKCFzdHJjbXAoc3RyLCAib2ZmIikpIHsKPj4gKwkJbnVtYV9zcGlubG9ja19mbGFn
ID0gLTE7Cj4+ICsJCXJldHVybiAxOwo+PiArCX0KPj4gKwo+PiArCXJldHVybiAwOwo+PiArfQo+
PiArCj4+ICtfX3NldHVwKCJudW1hX3NwaW5sb2NrPSIsIG51bWFfc3BpbmxvY2tfc2V0dXApOwo+
PiArCj4+ICsjZW5kaWYKPj4gKwo+PiB2b2lkIF9faW5pdCBhbHRlcm5hdGl2ZV9pbnN0cnVjdGlv
bnModm9pZCkKPj4gewo+PiAJaW50M19zZWxmdGVzdCgpOwo+PiBAQCAtNzM4LDYgKzc2NSwyMCBA
QCB2b2lkIF9faW5pdCBhbHRlcm5hdGl2ZV9pbnN0cnVjdGlvbnModm9pZCkKPj4gCX0KPj4gI2Vu
ZGlmCj4+IAo+PiArI2lmIGRlZmluZWQoQ09ORklHX05VTUFfQVdBUkVfU1BJTkxPQ0tTKQo+PiAr
CS8qCj4+ICsJICogQnkgZGVmYXVsdCwgc3dpdGNoIHRvIHRoZSBOVU1BLWZyaWVuZGx5IHNsb3cg
cGF0aCBmb3IKPj4gKwkgKiBzcGlubG9ja3Mgd2hlbiB3ZSBoYXZlIG11bHRpcGxlIE5VTUEgbm9k
ZXMgaW4gbmF0aXZlIGVudmlyb25tZW50Lgo+PiArCSAqLwo+PiArCWlmICgobnVtYV9zcGlubG9j
a19mbGFnID09IDEpIHx8Cj4+ICsJICAgIChudW1hX3NwaW5sb2NrX2ZsYWcgPT0gMCAmJiBucl9u
b2RlX2lkcyA+IDEgJiYKPj4gKwkJICAgIHB2X29wcy5sb2NrLnF1ZXVlZF9zcGluX2xvY2tfc2xv
d3BhdGggPT0KPj4gKwkJCW5hdGl2ZV9xdWV1ZWRfc3Bpbl9sb2NrX3Nsb3dwYXRoKSkgewo+PiAr
CQlwdl9vcHMubG9jay5xdWV1ZWRfc3Bpbl9sb2NrX3Nsb3dwYXRoID0KPj4gKwkJICAgIF9fY25h
X3F1ZXVlZF9zcGluX2xvY2tfc2xvd3BhdGg7Cj4+ICsJfQo+PiArI2VuZGlmCj4+ICsKPj4gCWFw
cGx5X3BhcmF2aXJ0KF9fcGFyYWluc3RydWN0aW9ucywgX19wYXJhaW5zdHJ1Y3Rpb25zX2VuZCk7
Cj4+IAo+PiAJcmVzdGFydF9ubWkoKTsKPj4gZGlmZiAtLWdpdCBhL2tlcm5lbC9sb2NraW5nL21j
c19zcGlubG9jay5oIGIva2VybmVsL2xvY2tpbmcvbWNzX3NwaW5sb2NrLmgKPj4gaW5kZXggNTJk
MDZlYzZmNTI1Li5lNDBiOTUzOGI3OWYgMTAwNjQ0Cj4+IC0tLSBhL2tlcm5lbC9sb2NraW5nL21j
c19zcGlubG9jay5oCj4+ICsrKyBiL2tlcm5lbC9sb2NraW5nL21jc19zcGlubG9jay5oCj4+IEBA
IC0xNyw3ICsxNyw3IEBACj4+IAo+PiBzdHJ1Y3QgbWNzX3NwaW5sb2NrIHsKPj4gCXN0cnVjdCBt
Y3Nfc3BpbmxvY2sgKm5leHQ7Cj4+IC0JaW50IGxvY2tlZDsgLyogMSBpZiBsb2NrIGFjcXVpcmVk
ICovCj4+ICsJdW5zaWduZWQgaW50IGxvY2tlZDsgLyogMSBpZiBsb2NrIGFjcXVpcmVkICovCj4+
IAlpbnQgY291bnQ7ICAvKiBuZXN0aW5nIGNvdW50LCBzZWUgcXNwaW5sb2NrLmMgKi8KPj4gfTsK
Pj4gCj4+IGRpZmYgLS1naXQgYS9rZXJuZWwvbG9ja2luZy9xc3BpbmxvY2suYyBiL2tlcm5lbC9s
b2NraW5nL3FzcGlubG9jay5jCj4+IGluZGV4IGMwNmQxZTgwNzVkOS4uNmQ4YzRhNTJlNDRlIDEw
MDY0NAo+PiAtLS0gYS9rZXJuZWwvbG9ja2luZy9xc3BpbmxvY2suYwo+PiArKysgYi9rZXJuZWwv
bG9ja2luZy9xc3BpbmxvY2suYwo+PiBAQCAtMTEsNyArMTEsNyBAQAo+PiAgKiAgICAgICAgICBQ
ZXRlciBaaWpsc3RyYSA8cGV0ZXJ6QGluZnJhZGVhZC5vcmc+Cj4+ICAqLwo+PiAKPj4gLSNpZm5k
ZWYgX0dFTl9QVl9MT0NLX1NMT1dQQVRICj4+ICsjaWYgIWRlZmluZWQoX0dFTl9QVl9MT0NLX1NM
T1dQQVRIKSAmJiAhZGVmaW5lZChfR0VOX0NOQV9MT0NLX1NMT1dQQVRIKQo+PiAKPj4gI2luY2x1
ZGUgPGxpbnV4L3NtcC5oPgo+PiAjaW5jbHVkZSA8bGludXgvYnVnLmg+Cj4+IEBAIC03MCw3ICs3
MCw4IEBACj4+IC8qCj4+ICAqIE9uIDY0LWJpdCBhcmNoaXRlY3R1cmVzLCB0aGUgbWNzX3NwaW5s
b2NrIHN0cnVjdHVyZSB3aWxsIGJlIDE2IGJ5dGVzIGluCj4+ICAqIHNpemUgYW5kIGZvdXIgb2Yg
dGhlbSB3aWxsIGZpdCBuaWNlbHkgaW4gb25lIDY0LWJ5dGUgY2FjaGVsaW5lLiBGb3IKPj4gLSAq
IHB2cXNwaW5sb2NrLCBob3dldmVyLCB3ZSBuZWVkIG1vcmUgc3BhY2UgZm9yIGV4dHJhIGRhdGEu
IFRvIGFjY29tbW9kYXRlCj4+ICsgKiBwdnFzcGlubG9jaywgaG93ZXZlciwgd2UgbmVlZCBtb3Jl
IHNwYWNlIGZvciBleHRyYSBkYXRhLiBUaGUgc2FtZSBhbHNvCj4+ICsgKiBhcHBsaWVzIGZvciB0
aGUgTlVNQS1hd2FyZSB2YXJpYW50IG9mIHNwaW5sb2NrcyAoQ05BKS4gVG8gYWNjb21tb2RhdGUK
Pj4gICogdGhhdCwgd2UgaW5zZXJ0IHR3byBtb3JlIGxvbmcgd29yZHMgdG8gcGFkIGl0IHVwIHRv
IDMyIGJ5dGVzLiBJT1csIG9ubHkKPj4gICogdHdvIG9mIHRoZW0gY2FuIGZpdCBpbiBhIGNhY2hl
bGluZSBpbiB0aGlzIGNhc2UuIFRoYXQgaXMgT0sgYXMgaXQgaXMgcmFyZQo+PiAgKiB0byBoYXZl
IG1vcmUgdGhhbiAyIGxldmVscyBvZiBzbG93cGF0aCBuZXN0aW5nIGluIGFjdHVhbCB1c2UuIFdl
IGRvbid0Cj4+IEBAIC03OSw3ICs4MCw3IEBACj4+ICAqLwo+PiBzdHJ1Y3QgcW5vZGUgewo+PiAJ
c3RydWN0IG1jc19zcGlubG9jayBtY3M7Cj4+IC0jaWZkZWYgQ09ORklHX1BBUkFWSVJUX1NQSU5M
T0NLUwo+PiArI2lmIGRlZmluZWQoQ09ORklHX1BBUkFWSVJUX1NQSU5MT0NLUykgfHwgZGVmaW5l
ZChDT05GSUdfTlVNQV9BV0FSRV9TUElOTE9DS1MpCj4+IAlsb25nIHJlc2VydmVkWzJdOwo+PiAj
ZW5kaWYKPj4gfTsKPj4gQEAgLTEwMyw2ICsxMDQsOCBAQCBzdHJ1Y3QgcW5vZGUgewo+PiAgKiBF
eGFjdGx5IGZpdHMgb25lIDY0LWJ5dGUgY2FjaGVsaW5lIG9uIGEgNjQtYml0IGFyY2hpdGVjdHVy
ZS4KPj4gICoKPj4gICogUFYgZG91YmxlcyB0aGUgc3RvcmFnZSBhbmQgdXNlcyB0aGUgc2Vjb25k
IGNhY2hlbGluZSBmb3IgUFYgc3RhdGUuCj4+ICsgKiBDTkEgYWxzbyBkb3VibGVzIHRoZSBzdG9y
YWdlIGFuZCB1c2VzIHRoZSBzZWNvbmQgY2FjaGVsaW5lIGZvcgo+PiArICogQ05BLXNwZWNpZmlj
IHN0YXRlLgo+PiAgKi8KPj4gc3RhdGljIERFRklORV9QRVJfQ1BVX0FMSUdORUQoc3RydWN0IHFu
b2RlLCBxbm9kZXNbTUFYX05PREVTXSk7Cj4+IAo+PiBAQCAtMzE2LDcgKzMxOSw3IEBAIHN0YXRp
YyBfX2Fsd2F5c19pbmxpbmUgdm9pZCBfX21jc19wYXNzX2xvY2soc3RydWN0IG1jc19zcGlubG9j
ayAqbm9kZSwKPj4gI2RlZmluZSB0cnlfY2xlYXJfdGFpbAlfX3RyeV9jbGVhcl90YWlsCj4+ICNk
ZWZpbmUgbWNzX3Bhc3NfbG9jawkJX19tY3NfcGFzc19sb2NrCj4+IAo+PiAtI2VuZGlmIC8qIF9H
RU5fUFZfTE9DS19TTE9XUEFUSCAqLwo+PiArI2VuZGlmIC8qIF9HRU5fUFZfTE9DS19TTE9XUEFU
SCAmJiBfR0VOX0NOQV9MT0NLX1NMT1dQQVRIICovCj4+IAo+PiAvKioKPj4gICogcXVldWVkX3Nw
aW5fbG9ja19zbG93cGF0aCAtIGFjcXVpcmUgdGhlIHF1ZXVlZCBzcGlubG9jawo+PiBAQCAtNTg5
LDYgKzU5MiwyOSBAQCB2b2lkIHF1ZXVlZF9zcGluX2xvY2tfc2xvd3BhdGgoc3RydWN0IHFzcGlu
bG9jayAqbG9jaywgdTMyIHZhbCkKPj4gRVhQT1JUX1NZTUJPTChxdWV1ZWRfc3Bpbl9sb2NrX3Ns
b3dwYXRoKTsKPj4gCj4+IC8qCj4+ICsgKiBHZW5lcmF0ZSB0aGUgY29kZSBmb3IgTlVNQS1hd2Fy
ZSBzcGlubG9ja3MKPj4gKyAqLwo+PiArI2lmICFkZWZpbmVkKF9HRU5fQ05BX0xPQ0tfU0xPV1BB
VEgpICYmIGRlZmluZWQoQ09ORklHX05VTUFfQVdBUkVfU1BJTkxPQ0tTKQo+PiArI2RlZmluZSBf
R0VOX0NOQV9MT0NLX1NMT1dQQVRICj4+ICsKPj4gKyN1bmRlZiBwdl93YWl0X2hlYWRfb3JfbG9j
awo+PiArI2RlZmluZSBwdl93YWl0X2hlYWRfb3JfbG9jawkJY25hX3ByZV9zY2FuCj4+ICsKPj4g
KyN1bmRlZiB0cnlfY2xlYXJfdGFpbAo+PiArI2RlZmluZSB0cnlfY2xlYXJfdGFpbAkJCWNuYV90
cnlfY2hhbmdlX3RhaWwKPj4gKwo+PiArI3VuZGVmIG1jc19wYXNzX2xvY2sKPj4gKyNkZWZpbmUg
bWNzX3Bhc3NfbG9jawkJCWNuYV9wYXNzX2xvY2sKPj4gKwo+PiArI3VuZGVmICBxdWV1ZWRfc3Bp
bl9sb2NrX3Nsb3dwYXRoCj4+ICsjZGVmaW5lIHF1ZXVlZF9zcGluX2xvY2tfc2xvd3BhdGgJX19j
bmFfcXVldWVkX3NwaW5fbG9ja19zbG93cGF0aAo+PiArCj4+ICsjaW5jbHVkZSAicXNwaW5sb2Nr
X2NuYS5oIgo+PiArI2luY2x1ZGUgInFzcGlubG9jay5jIgo+PiArCj4+ICsjZW5kaWYKPj4gKwo+
PiArLyoKPj4gICogR2VuZXJhdGUgdGhlIHBhcmF2aXJ0IGNvZGUgZm9yIHF1ZXVlZF9zcGluX3Vu
bG9ja19zbG93cGF0aCgpLgo+PiAgKi8KPj4gI2lmICFkZWZpbmVkKF9HRU5fUFZfTE9DS19TTE9X
UEFUSCkgJiYgZGVmaW5lZChDT05GSUdfUEFSQVZJUlRfU1BJTkxPQ0tTKQo+PiBkaWZmIC0tZ2l0
IGEva2VybmVsL2xvY2tpbmcvcXNwaW5sb2NrX2NuYS5oIGIva2VybmVsL2xvY2tpbmcvcXNwaW5s
b2NrX2NuYS5oCj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+IGluZGV4IDAwMDAwMDAwMDAwMC4u
NGQwOTVmNzQyZDMxCj4+IC0tLSAvZGV2L251bGwKPj4gKysrIGIva2VybmVsL2xvY2tpbmcvcXNw
aW5sb2NrX2NuYS5oCj4+IEBAIC0wLDAgKzEsMjU4IEBACj4+ICsvKiBTUERYLUxpY2Vuc2UtSWRl
bnRpZmllcjogR1BMLTIuMCAqLwo+PiArI2lmbmRlZiBfR0VOX0NOQV9MT0NLX1NMT1dQQVRICj4+
ICsjZXJyb3IgImRvIG5vdCBpbmNsdWRlIHRoaXMgZmlsZSIKPj4gKyNlbmRpZgo+PiArCj4+ICsj
aW5jbHVkZSA8bGludXgvdG9wb2xvZ3kuaD4KPj4gKwo+PiArLyoKPj4gKyAqIEltcGxlbWVudCBh
IE5VTUEtYXdhcmUgdmVyc2lvbiBvZiBNQ1MgKGFrYSBDTkEsIG9yIGNvbXBhY3QgTlVNQS1hd2Fy
ZSBsb2NrKS4KPj4gKyAqCj4+ICsgKiBJbiBDTkEsIHNwaW5uaW5nIHRocmVhZHMgYXJlIG9yZ2Fu
aXplZCBpbiB0d28gcXVldWVzLCBhIG1haW4gcXVldWUgZm9yCj4+ICsgKiB0aHJlYWRzIHJ1bm5p
bmcgb24gdGhlIHNhbWUgTlVNQSBub2RlIGFzIHRoZSBjdXJyZW50IGxvY2sgaG9sZGVyLCBhbmQg
YQo+PiArICogc2Vjb25kYXJ5IHF1ZXVlIGZvciB0aHJlYWRzIHJ1bm5pbmcgb24gb3RoZXIgbm9k
ZXMuIFNjaGVtYXRpY2FsbHksIGl0Cj4+ICsgKiBsb29rcyBsaWtlIHRoaXM6Cj4+ICsgKgo+PiAr
ICogICAgY25hX25vZGUKPj4gKyAqICAgKy0tLS0tLS0tLS0rICAgICstLS0tLS0tLSsgICAgICAg
ICstLS0tLS0tLSsKPj4gKyAqICAgfG1jczpuZXh0ICB8IC0+IHxtY3M6bmV4dHwgLT4gLi4uIHxt
Y3M6bmV4dHwgLT4gTlVMTCAgICAgIFtNYWluIHF1ZXVlXQo+PiArICogICB8bWNzOmxvY2tlZHwg
LSsgKy0tLS0tLS0tKyAgICAgICAgKy0tLS0tLS0tKwo+PiArICogICArLS0tLS0tLS0tLSsgIHwK
Pj4gKyAqICAgICAgICAgICAgICAgICArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsKPj4gKyAqICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFwvCj4+ICsgKiAgICAgICAgICAg
ICAgICAgKy0tLS0tLS0tKyAgICAgICAgICstLS0tLS0tLSsKPj4gKyAqICAgICAgICAgICAgICAg
ICB8bWNzOm5leHR8IC0+IC4uLiAgfG1jczpuZXh0fCAgICAgICAgICBbU2Vjb25kYXJ5IHF1ZXVl
XQo+PiArICogICAgICAgICAgICAgICAgICstLS0tLS0tLSsgICAgICAgICArLS0tLS0tLS0rCj4+
ICsgKiAgICAgICAgICAgICAgICAgICAgIF4gICAgICAgICAgICAgICAgICAgIHwKPj4gKyAqICAg
ICAgICAgICAgICAgICAgICAgKy0tLS0tLS0tLS0tLS0tLS0tLS0tKwo+PiArICoKPj4gKyAqIE4u
Qi4gbG9ja2VkID0gMSBpZiBzZWNvbmRhcnkgcXVldWUgaXMgYWJzZW50LiBPdGhld3Jpc2UsIGl0
IGNvbnRhaW5zIHRoZQo+PiArICogZW5jb2RlZCBwb2ludGVyIHRvIHRoZSB0YWlsIG9mIHRoZSBz
ZWNvbmRhcnkgcXVldWUsIHdoaWNoIGlzIG9yZ2FuaXplZCBhcyBhCj4+ICsgKiBjaXJjdWxhciBs
aXN0Lgo+PiArICoKPj4gKyAqIEFmdGVyIGFjcXVpcmluZyB0aGUgTUNTIGxvY2sgYW5kIGJlZm9y
ZSBhY3F1aXJpbmcgdGhlIHNwaW5sb2NrLCB0aGUgbG9jawo+PiArICogaG9sZGVyIHNjYW5zIHRo
ZSBtYWluIHF1ZXVlIGxvb2tpbmcgZm9yIGEgdGhyZWFkIHJ1bm5pbmcgb24gdGhlIHNhbWUgbm9k
ZQo+PiArICogKHByZS1zY2FuKS4gSWYgZm91bmQgKGNhbGwgaXQgdGhyZWFkIFQpLCBhbGwgdGhy
ZWFkcyBpbiB0aGUgbWFpbiBxdWV1ZQo+PiArICogYmV0d2VlbiB0aGUgY3VycmVudCBsb2NrIGhv
bGRlciBhbmQgVCBhcmUgbW92ZWQgdG8gdGhlIGVuZCBvZiB0aGUgc2Vjb25kYXJ5Cj4+ICsgKiBx
dWV1ZS4gIElmIHN1Y2ggVCBpcyBub3QgZm91bmQsIHdlIG1ha2UgYW5vdGhlciBzY2FuIG9mIHRo
ZSBtYWluIHF1ZXVlIHdoZW4KPj4gKyAqIHVubG9ja2luZyB0aGUgTUNTIGxvY2sgKHBvc3Qtc2Nh
biksIHN0YXJ0aW5nIGF0IHRoZSBub2RlIHdoZXJlIHByZS1zY2FuCj4+ICsgKiBzdG9wcGVkLiBJ
ZiBib3RoIHNjYW5zIGZhaWwgdG8gZmluZCBzdWNoIFQsIHRoZSBNQ1MgbG9jayBpcyBwYXNzZWQg
dG8gdGhlCj4+ICsgKiBmaXJzdCB0aHJlYWQgaW4gdGhlIHNlY29uZGFyeSBxdWV1ZS4gSWYgdGhl
IHNlY29uZGFyeSBxdWV1ZSBpcyBlbXB0eSwgdGhlCj4+ICsgKiBsb2NrIGlzIHBhc3NlZCB0byB0
aGUgbmV4dCB0aHJlYWQgaW4gdGhlIG1haW4gcXVldWUuCj4+ICsgKgo+PiArICogRm9yIG1vcmUg
ZGV0YWlscywgc2VlIGh0dHBzOi8vdXJsZGVmZW5zZS5wcm9vZnBvaW50LmNvbS92Mi91cmw/dT1o
dHRwcy0zQV9fYXJ4aXYub3JnX2Fic18xODEwLjA1NjAwJmQ9RHdJQ2FRJmM9Um9QMVl1bUNYQ2dh
V0h2bFpZUjhQWmg4QnY3cUlyTVVCNjVlYXBJX0puRSZyPUh2aGszRjRvbWRDay1HRTFQVE9tM0tu
MEE3QXBXT1oyYVpMVHVWeEZLNGsmbT1ZRV9FSU5OdEo2a3ZYNy1yMWZDb1NQb19oUGt5VFRrWVJL
SjJXU1FnVVJBJnM9SHhrNVBYMVdoc1ZCSk1iNUxCLWJ3X0VCVDNaWE1icjBHNDBMYkRRV3RxZyZl
PSAuCj4+ICsgKgo+PiArICogQXV0aG9yczogQWxleCBLb2dhbiA8YWxleC5rb2dhbkBvcmFjbGUu
Y29tPgo+PiArICogICAgICAgICAgRGF2ZSBEaWNlIDxkYXZlLmRpY2VAb3JhY2xlLmNvbT4KPj4g
KyAqLwo+PiArCj4+ICtzdHJ1Y3QgY25hX25vZGUgewo+PiArCXN0cnVjdCBtY3Nfc3BpbmxvY2sJ
bWNzOwo+PiArCWludAkJCW51bWFfbm9kZTsKPj4gKwl1MzIJCQllbmNvZGVkX3RhaWw7Cj4+ICsJ
dTMyCQkJcHJlX3NjYW5fcmVzdWx0OyAvKiAwIG9yIGFuIGVuY29kZWQgdGFpbCAqLwo+PiArfTsK
Pj4gKwo+PiArc3RhdGljIHZvaWQgX19pbml0IGNuYV9pbml0X25vZGVzX3Blcl9jcHUodW5zaWdu
ZWQgaW50IGNwdSkKPj4gK3sKPj4gKwlzdHJ1Y3QgbWNzX3NwaW5sb2NrICpiYXNlID0gcGVyX2Nw
dV9wdHIoJnFub2Rlc1swXS5tY3MsIGNwdSk7Cj4+ICsJaW50IG51bWFfbm9kZSA9IGNwdV90b19u
b2RlKGNwdSk7Cj4+ICsJaW50IGk7Cj4+ICsKPj4gKwlmb3IgKGkgPSAwOyBpIDwgTUFYX05PREVT
OyBpKyspIHsKPj4gKwkJc3RydWN0IGNuYV9ub2RlICpjbiA9IChzdHJ1Y3QgY25hX25vZGUgKiln
cmFiX21jc19ub2RlKGJhc2UsIGkpOwo+PiArCj4+ICsJCWNuLT5udW1hX25vZGUgPSBudW1hX25v
ZGU7Cj4+ICsJCWNuLT5lbmNvZGVkX3RhaWwgPSBlbmNvZGVfdGFpbChjcHUsIGkpOwo+PiArCQkv
Kgo+PiArCQkgKiBAZW5jb2RlZF90YWlsIGhhcyB0byBiZSBsYXJnZXIgdGhhbiAxLCBzbyB3ZSBk
byBub3QgY29uZnVzZQo+PiArCQkgKiBpdCB3aXRoIG90aGVyIHZhbGlkIHZhbHVlcyBmb3IgQGxv
Y2tlZCBvciBAcHJlX3NjYW5fcmVzdWx0Cj4+ICsJCSAqICgwIG9yIDEpCj4+ICsJCSAqLwo+PiAr
CQlXQVJOX09OKGNuLT5lbmNvZGVkX3RhaWwgPD0gMSk7Cj4+ICsJfQo+PiArfQo+PiArCj4+ICtz
dGF0aWMgdm9pZCBfX2luaXQgY25hX2luaXRfbm9kZXModm9pZCkKPj4gK3sKPj4gKwl1bnNpZ25l
ZCBpbnQgY3B1Owo+PiArCj4+ICsJQlVJTERfQlVHX09OKHNpemVvZihzdHJ1Y3QgY25hX25vZGUp
ID4gc2l6ZW9mKHN0cnVjdCBxbm9kZSkpOwo+PiArCS8qIHdlIHN0b3JlIGFuIGVjb2RlZCB0YWls
IHdvcmQgaW4gdGhlIG5vZGUncyBAbG9ja2VkIGZpZWxkICovCj4+ICsJQlVJTERfQlVHX09OKHNp
emVvZih1MzIpID4gc2l6ZW9mKHVuc2lnbmVkIGludCkpOwo+PiArCj4+ICsJZm9yX2VhY2hfcG9z
c2libGVfY3B1KGNwdSkKPj4gKwkJY25hX2luaXRfbm9kZXNfcGVyX2NwdShjcHUpOwo+PiArfQo+
PiArZWFybHlfaW5pdGNhbGwoY25hX2luaXRfbm9kZXMpOwo+IHR5cGVkZWYgaW50ICgqaW5pdGNh
bGxfdCkodm9pZCk7Cj4gCj4gU28gY25hX2luaXRfbm9kZXMoKSBzaG91bGQgcmV0dXJuIGFuIGlu
dGVnZXIgdmFsdWUuIFlvdSBjYW4ganVzdCByZXR1cm4KPiAwIGluIHRoaXMgY2FzZS4KSSdsbCBm
aXggdGhhdCwgdGhhbmtzLgoKPiAKPj4gKwo+PiArc3RhdGljIGlubGluZSBib29sIGNuYV90cnlf
Y2hhbmdlX3RhaWwoc3RydWN0IHFzcGlubG9jayAqbG9jaywgdTMyIHZhbCwKPj4gKwkJCQkgICAg
ICAgc3RydWN0IG1jc19zcGlubG9jayAqbm9kZSkKPj4gK3sKPj4gKwlzdHJ1Y3QgbWNzX3NwaW5s
b2NrICpoZWFkXzJuZCwgKnRhaWxfMm5kOwo+PiArCXUzMiBuZXc7Cj4+ICsKPj4gKwkvKiBJZiB0
aGUgc2Vjb25kYXJ5IHF1ZXVlIGlzIGVtcHR5LCBkbyB3aGF0IE1DUyBkb2VzLiAqLwo+PiArCWlm
IChub2RlLT5sb2NrZWQgPD0gMSkKPj4gKwkJcmV0dXJuIF9fdHJ5X2NsZWFyX3RhaWwobG9jaywg
dmFsLCBub2RlKTsKPj4gKwo+PiArCS8qCj4+ICsJICogVHJ5IHRvIHVwZGF0ZSB0aGUgdGFpbCB2
YWx1ZSB0byB0aGUgbGFzdCBub2RlIGluIHRoZSBzZWNvbmRhcnkgcXVldWUuCj4+ICsJICogSWYg
c3VjY2Vzc2Z1bCwgcGFzcyB0aGUgbG9jayB0byB0aGUgZmlyc3QgdGhyZWFkIGluIHRoZSBzZWNv
bmRhcnkKPj4gKwkgKiBxdWV1ZS4gRG9pbmcgdGhvc2UgdHdvIGFjdGlvbnMgZWZmZWN0aXZlbHkg
bW92ZXMgYWxsIG5vZGVzIGZyb20gdGhlCj4+ICsJICogc2Vjb25kYXJ5IHF1ZXVlIGludG8gdGhl
IG1haW4gb25lLgo+PiArCSAqLwo+PiArCXRhaWxfMm5kID0gZGVjb2RlX3RhaWwobm9kZS0+bG9j
a2VkKTsKPj4gKwloZWFkXzJuZCA9IHRhaWxfMm5kLT5uZXh0Owo+PiArCW5ldyA9ICgoc3RydWN0
IGNuYV9ub2RlICopdGFpbF8ybmQpLT5lbmNvZGVkX3RhaWwgKyBfUV9MT0NLRURfVkFMOwo+PiAr
Cj4+ICsJaWYgKGF0b21pY190cnlfY21weGNoZ19yZWxheGVkKCZsb2NrLT52YWwsICZ2YWwsIG5l
dykpIHsKPj4gKwkJLyoKPj4gKwkJICogVHJ5IHRvIHJlc2V0IEBuZXh0IGluIHRhaWxfMm5kIHRv
IE5VTEwsIGJ1dCBubyBuZWVkIHRvIGNoZWNrCj4+ICsJCSAqIHRoZSByZXN1bHQgLSBpZiBmYWls
ZWQsIGEgbmV3IHN1Y2Nlc3NvciBoYXMgdXBkYXRlZCBpdC4KPj4gKwkJICovCj4+ICsJCWNtcHhj
aGc2NF9yZWxheGVkKCZ0YWlsXzJuZC0+bmV4dCwgaGVhZF8ybmQsIE5VTEwpOwo+IAo+IFdoeSBk
byB5b3UgdXNlIGNtcHhjaGc2NCooKT8gVGhhdCBjYW4gYmUgcHJvYmxlbWF0aWMgd2hlbiBjb21w
aWxpbmcgb24KPiAzMi1iaXQgYXJjaGl0ZWN0dXJlLiBJIHRoaW5rIHlvdSBzaG91bGQganVzdCB1
c2UgY21weGhnX3JlbGF4ZWQoKSBmb3IKPiBhdXRvbWF0aWMgc2l6aW5nLgpUaGF04oCZcyByaWdo
dC4gSSB3aWxsIGNoYW5nZSB0aGlzLgoKVGhhbmtzLArigJQgQWxleAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
