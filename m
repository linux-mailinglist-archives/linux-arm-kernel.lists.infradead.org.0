Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3401149EEB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 07:06:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0NYfz5t9Rx8XrbhuGd/NhQ/8ggG+ZeNx0SN4+PpbbM4=; b=EyPRkkRbvk4ZOJ
	qFZsZIa0R1bwvKnU+IWNEBWh1yjUkCJH+YNvqiG59VDVeQt2vOXTGcJ8Q0z1PSnNpFNy25JmSqKmw
	S3BEu9+PQMx7HEh0Q6nqfmRDcoXdUuQBhz22UT7PRBW6hW7Jm/+VhoXlRdeIIhYNeZI+8JAUy///U
	bF1LNhw6kFLOIowNI6dUa91oiosNf+iyWrHnXR2TC7GmkBCKtCFNmx7UdoMTu8K1iEZjeLeMhki80
	xjNOd2T80zmBRDhaw50o6CjQcI/wfB009c3mY3xy2BRyEl8CtePD19/4jcvEhzD+T1gLolCFC03i+
	ty1xeQyJMN5xptkZ4/KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivxXT-0002hT-SM; Mon, 27 Jan 2020 06:06:23 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivxXG-0002h2-EJ
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 06:06:12 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00R6365q111317;
 Mon, 27 Jan 2020 06:05:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2019-08-05; bh=JHl3pxKyojAGqGYtfwPFlNCopLmnuaTKzY6k8aSGSUo=;
 b=kOc4+jOX6atn7j9uyuG/XIuhfbNoYv9V/Dg/jICNfYgMbvDP/yAaoCHG++BO5OUH3zYq
 mo5r6N01ZydHh6+tMXhEHlxTQFqjRHYSpbcZ4tIE9/S4VTpDzvbvU3mhqMADQbRRgABw
 +YIYu3w3uPDpYILjOHtqshx0KrdyZUgfNUSmtHTIQzhcZGrcfsVxRNFoIW9nB2nf4Wa+
 6qhUqTsj+MVBVhKz3l9eVAWOlHbZJNx5k9pXedlkaqEfKcSNWIdTODvy6kAGztxCD5JQ
 hcdUuyxHJ2rHmC2OLmqVDWR/vD5NJaAS5mTlPyrFn97iTc628nlMbA/OBc/yIkSOR1yS rg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2xrdmq58bc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 27 Jan 2020 06:05:01 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00R643Vq184794;
 Mon, 27 Jan 2020 06:05:01 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2xry4tm010-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 27 Jan 2020 06:05:00 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 00R64i3x020066;
 Mon, 27 Jan 2020 06:04:47 GMT
Received: from [10.39.241.133] (/10.39.241.133)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Sun, 26 Jan 2020 22:04:43 -0800
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH v9 0/5] Add NUMA-awareness to qspinlock
From: Alex Kogan <alex.kogan@oracle.com>
In-Reply-To: <20200126224245.GA22901@paulmck-ThinkPad-P72>
Date: Mon, 27 Jan 2020 01:04:45 -0500
Message-Id: <FB96E148-C72B-4D00-95F0-C4B69A3EE454@oracle.com>
References: <20200115035920.54451-1-alex.kogan@oracle.com>
 <20200124222434.GA7196@paulmck-ThinkPad-P72>
 <6AAE7FC6-F5DE-4067-8BC4-77F27948CD09@oracle.com>
 <20200125005713.GZ2935@paulmck-ThinkPad-P72>
 <02defadb-217d-7803-88a1-ec72a37eda28@redhat.com>
 <adb4fb09-f374-4d64-096b-ba9ad8b35fd5@redhat.com>
 <20200125045844.GC2935@paulmck-ThinkPad-P72>
 <967f99ee-b781-43f4-d8ba-af83786c429c@redhat.com>
 <20200126153535.GL2935@paulmck-ThinkPad-P72>
 <20200126224245.GA22901@paulmck-ThinkPad-P72>
To: paulmck@kernel.org
X-Mailer: Apple Mail (2.3445.104.11)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9512
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001270052
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9512
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001270052
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_220610_567736_83F0ECAE 
X-CRM114-Status: GOOD (  23.56  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, guohanjun@huawei.com,
 Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>,
 dave.dice@oracle.com, jglauber@marvell.com, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, linux@armlinux.org.uk,
 steven.sistare@oracle.com, linux-kernel@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, bp@alien8.de, hpa@zytor.com,
 Waiman Long <longman@redhat.com>, tglx@linutronix.de,
 daniel.m.jordan@oracle.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IE9uIEphbiAyNiwgMjAyMCwgYXQgNTo0MiBQTSwgUGF1bCBFLiBNY0tlbm5leSA8cGF1bG1j
a0BrZXJuZWwub3JnPiB3cm90ZToKPiAKPiBPbiBTdW4sIEphbiAyNiwgMjAyMCBhdCAwNzozNToz
NUFNIC0wODAwLCBQYXVsIEUuIE1jS2VubmV5IHdyb3RlOgo+PiBPbiBTYXQsIEphbiAyNSwgMjAy
MCBhdCAwMjo0MTozOVBNIC0wNTAwLCBXYWltYW4gTG9uZyB3cm90ZToKPj4+IE9uIDEvMjQvMjAg
MTE6NTggUE0sIFBhdWwgRS4gTWNLZW5uZXkgd3JvdGU6Cj4+Pj4gT24gRnJpLCBKYW4gMjQsIDIw
MjAgYXQgMDk6MTc6MDVQTSAtMDUwMCwgV2FpbWFuIExvbmcgd3JvdGU6Cj4+Pj4+IE9uIDEvMjQv
MjAgODo1OSBQTSwgV2FpbWFuIExvbmcgd3JvdGU6Cj4+Pj4+Pj4gWW91IGNhbGxlZCBpdCEgIEkg
d2lsbCBwbGF5IHdpdGggUUVNVSdzIC1udW1hIGFyZ3VtZW50IHRvIHNlZSBpZiBJIGNhbiBnZXQK
Pj4+Pj4+PiBDTkEgdG8gcnVuIGZvciBtZS4gIFBsZWFzZSBhY2NlcHQgbXkgYXBvbG9naWVzIGZv
ciB0aGUgZmFsc2UgYWxhcm0uCj4+Pj4+Pj4gCj4+Pj4+Pj4gCQkJCQkJCVRoYW54LCBQYXVsCj4+
Pj4+Pj4gCj4+Pj4+PiBDTkEgaXMgbm90IGN1cnJlbnRseSBzdXBwb3J0ZWQgaW4gYSBWTSBndWVz
dCBzaW1wbHkgYmVjYXVzZSB0aGUgbnVtYQo+Pj4+Pj4gaW5mb3JtYXRpb24gaXMgbm90IHJlbGlh
YmxlLiBZb3Ugd2lsbCBoYXZlIHRvIHJ1biBpdCBvbiBiYXJlbWV0YWwgdG8KPj4+Pj4+IHRlc3Qg
aXQuIFNvcnJ5IGZvciB0aGF0Lgo+Pj4+PiBDb3JyZWN0aW9uLiBUaGVyZSBpcyBhIGNvbW1hbmQg
bGluZSBvcHRpb24gdG8gZm9yY2UgQ05BIGxvY2sgdG8gYmUgdXNlZAo+Pj4+PiBpbiBhIFZNLiBV
c2UgdGhlICJudW1hX3NwaW5sb2NrPW9uIiBib290IGNvbW1hbmQgbGluZSBwYXJhbWV0ZXIuCj4+
Pj4gQXMgSSB1bmRlcnN0YW5kIGl0LCBJIG5lZWQgdG8gdXNlIGEgc2VyaWVzIG9mIC1udW1hIGFy
Z3VtZW50cyB0byBxZW11Cj4+Pj4gY29tYmluZWQgd2l0aCB0aGUgbnVtYV9zcGlubG9jaz1vbiAo
b3IgPTEpIG9uIHRoZSBrZXJuZWwgY29tbWFuZCBsaW5lLgo+Pj4+IElmIHRoZSBrZXJuZWwgdGhp
bmtzIHRoYXQgdGhlcmUgaXMgb25seSBvbmUgTlVNQSBub2RlLCBpdCBhcHBlYXJzIHRvCj4+Pj4g
YXZvaWQgZG9pbmcgQ05BLgo+Pj4+IAo+Pj4+IENvcnJlY3Q/Cj4+Pj4gCj4+Pj4gCQkJCQkJCVRo
YW54LCBQYXVsCj4+Pj4gCj4+PiBJbiBhdXRvLWRldGVjdGlvbiBtb2RlICh0aGUgZGVmYXVsdCks
IENOQSB3aWxsIG9ubHkgYmUgdHVybmVkIG9uIHdoZW4KPj4+IHBhcmF2aXJ0IHFzcGlubG9jayBp
cyBub3QgZW5hYmxlZCBmaXJzdCBhbmQgdGhlcmUgYXJlIGF0IGxlYXN0IDIgbnVtYQo+Pj4gbm9k
ZXMuIFRoZSAibnVtYV9zcGlubG9jaz1vbiIgb3B0aW9uIHdpbGwgZm9yY2UgaXQgb24gZXZlbiB3
aGVuIGJvdGggb2YKPj4+IHRoZSBhYm92ZSBjb25kaXRpb25zIGFyZSBmYWxzZS4KPj4gCj4+IEht
bW0uLi4KPj4gCj4+IEhlcmUgaXMgbXkga2VybmVsIGNvbW1hbmQgbGluZSB0YWtlbiBmcm9tIHRo
ZSBjb25zb2xlIGxvZzoKPj4gCj4+IGNvbnNvbGU9dHR5UzAgbG9ja3RvcnR1cmUub25vZmZfaW50
ZXJ2YWw9MCBudW1hX3NwaW5sb2NrPW9uIGxvY2t0b3J0dXJlLnN0YXRfaW50ZXJ2YWw9MTUgbG9j
a3RvcnR1cmUuc2h1dGRvd25fc2Vjcz0xODAwIGxvY2t0b3J0dXJlLnZlcmJvc2U9MQo+PiAKPj4g
WWV0IHRoZSBzdHJpbmcgIkVuYWJsaW5nIENOQSBzcGlubG9jayIgZG9lcyBub3QgYXBwZWFyLgo+
PiAKPj4gQWgsIGlkaW90IGhlcmUgbmVlZHMgdG8gZW5hYmxlIENPTkZJR19OVU1BX0FXQVJFX1NQ
SU5MT0NLUyBpbiBoaXMgYnVpbGQuCj4+IFRyeWluZyBhZ2FpbiB3aXRoICItLWtjb25maWcgIkNP
TkZJR19OVU1BX0FXQVJFX1NQSU5MT0NLUz15Ii4uLgo+IAo+IEFuZCBhZnRlciBmaXhpbmcgdGhh
dCwgcGx1cyBhZGRpbmcgdGhlIG90aGVyIHRocmVlIEtjb25maWcgb3B0aW9ucyByZXF1aXJlZAo+
IHRvIGVuYWJsZSB0aGlzLCBJIHJlYWxseSBkbyBzZWUgIkVuYWJsaW5nIENOQSBzcGlubG9jayIg
aW4gdGhlIGNvbnNvbGUgbG9nLgo+IFlheSEKR3JlYXQhIFlvdXIgcGVyc2lzdGVuY2UgcGFpZCBv
ZmYgOikKCllldCwgQ05BIGRvZXMgbm90IGRvIG11Y2ggaW50ZXJlc3RpbmcgaGVyZSwgYXMgaXQg
c2VlcyBvbmx5IG9uZSBudW1hIG5vZGUuCgo+IAo+IEF0IHRoZSBlbmQgb2YgdGhlIDMwLW1pbnV0
ZSBsb2NrdG9ydHVyZSBleGNsdXNpdmUtbG9jayBydW4sIEkgc2VlIHRoaXM6Cj4gCj4gV3JpdGVz
OiAgVG90YWw6IDU3MjE3NjU2NSAgTWF4L01pbjogNTQxNjc3MDQvMTA4NzgyMTYgPz8/ICBGYWls
OiAwCj4gCj4gVGhpcyBpcyBhYm91dCBhIGZpdmUtdG8tb25lIHJhdGlvLiAgSXMgdGhpcyBleHBl
Y3RlZCBiZWhhdmlvciwgZ2l2ZW4gYQo+IHNpbmdsZSBOVU1BIG5vZGUgb24gYSBzaW5nbGUtc29j
a2V0IHN5c3RlbSB3aXRoIDEyIGhhcmR3YXJlIHRocmVhZHM/CknigJltIG5vdCBzdXJlIHdoYXQg
aXMgZXhwZWN0ZWQgaGVyZS4KSeKAmW0gZ3Vlc3NpbmcgdGhhdCBpZiB5b3UgYm9vdCB5b3VyIGd1
ZXN0IHdpdGggdGhlIGRlZmF1bHQgCihub24tQ05BL25vbi1wYXJhdmlydCkgcXNwaW5sb2NrLCB5
b3Ugd2lsbCBnZXQgYSBzaW1pbGFyIHJlc3VsdC4KCj4gCj4gSSB3aWxsIHRyeSByZWFkZXItd3Jp
dGVyIGxvY2sgbmV4dC4KPiAKPiBBZ2Fpbiwgc2hvdWxkIEkgYmUgdXNpbmcgcWVtdSdzIC1udW1h
IGNvbW1hbmQtbGluZSBvcHRpb24gdG8gY3JlYXRlIG5vZGVzPwo+IElmIHNvLCB3aGF0IHdvdWxk
IGJlIGEgc2FuZSBjb25maWd1cmF0aW9uIGdpdmVuIDEyIENQVXMgYW5kIDUxMk1CIG9mCj4gbWVt
b3J5IGZvciB0aGUgVk0/ICBJZiBub3QsIHdoYXQgaXMgYSBnb29kIHdheSB0byBleGVyY2lzZSBD
TkEncyBOVU1BCj4gY2FwYWJpbGl0aWVzIHdpdGhpbiBhIGd1ZXN0IE9TPwpUaGF04oCZcyBhIGdv
b2QgcXVlc3Rpb24uIFBlcmhhcHMgTG9uZ21hbiBrbm93cyB0aGUgYW5zd2VyPwoKUmVnYXJkcywK
4oCUIEFsZXgKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
