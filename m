Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0599614901D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 22:28:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CRLVD+pvTCIxBO1L7CRs+kzSzNg3CiLB4sp/dR/5a5Y=; b=i1UakqfnmWmBJG
	3PB3JGWC2gHv8weypHOuBHMoiUAXkDvOtOKEDIX6JuB3iCncJW/5OAe6I6JccJZUbI2c2aqF8GrJh
	zNwm57i/j5UiHYiK2pCihkikL4h1HKEo9lRmjHtEmOOvz6bpNA/SlbopJTIhoWr6n22J+rz8YjPHD
	bq7yWYAnXIjtN0joWKGZ4ikEIwzwfdcDJ3FoXBOGmgumocBSOL9EgM4CzgI/GUsXwlxi9Pk4ZyqNY
	Ah9KzRe6UmmtqqLiN/SUWVQ9SD2QRSr8Imt0E1kKwPeguGIs6sJmSoO+3bL7+2t2GMMxlAo9mkpfI
	znp2NA+k+kqJ0HdnSP9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv6VM-00072K-6s; Fri, 24 Jan 2020 21:28:40 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv6V8-00071h-Oc
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 21:28:28 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00OLDUX8030736;
 Fri, 24 Jan 2020 21:27:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2019-08-05; bh=p5t6LkqqtkLbFaU0MqEIWNiNkEIpgv1igSF09fB8KrA=;
 b=VHKFEVeNqeHq17YMHhlyAcOE2zv81FJr4giioXRcXUw+UhejgDR8KPlrH5TXonuDgb1s
 14Baht/IkQtPfsr7o6zX4MyX42qVIGA3/1G333aHdYGrkbyohbhXuHEueUWLNjgX5Wqi
 WCPb8iyNq0fbsuYZVOF32EfOn7V/0w2f7lrImFDHhtnQlj/sgr5Yva+KD2+Q07OhA+Jl
 V6IDDUZz9kh43M89O5eriW01AWMTtg0L5ZKgr97edCkZCjpLA0lk+gb3b6AIHLiAasy4
 k2FKyd7ykREklycu6ZglxkRxn/AOINsWvMPuuCEHv5dTi5Fse2f8bMmDvYiq5cEB0EDX zw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2xksev3nbb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 24 Jan 2020 21:27:50 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00OLE1Ca127966;
 Fri, 24 Jan 2020 21:27:50 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 2xr2yhvtpq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 24 Jan 2020 21:27:50 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 00OLRaav016958;
 Fri, 24 Jan 2020 21:27:41 GMT
Received: from [192.168.0.159] (/173.76.205.43)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 24 Jan 2020 13:27:35 -0800
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH v8 4/5] locking/qspinlock: Introduce starvation avoidance
 into CNA
From: Alex Kogan <alex.kogan@oracle.com>
In-Reply-To: <edc53126-bfe4-5102-d2eb-2332bf3a68e5@redhat.com>
Date: Fri, 24 Jan 2020 16:27:32 -0500
Message-Id: <D39064BF-6EF3-4C13-B2D1-34C282A20F5E@oracle.com>
References: <20191230194042.67789-1-alex.kogan@oracle.com>
 <20191230194042.67789-5-alex.kogan@oracle.com>
 <20200121132949.GL14914@hirez.programming.kicks-ass.net>
 <cfdf635d-be2e-9d4b-c4ca-6bcbddc6868f@redhat.com>
 <3862F8A1-FF9B-40AD-A88E-2C0BA7AF6F58@oracle.com>
 <20200124075235.GX14914@hirez.programming.kicks-ass.net>
 <2c6741c5-d89d-4b2c-cebe-a7c7f6eed884@redhat.com>
 <48ce49e5-98a7-23cd-09f4-8290a65abbb5@redhat.com>
 <8D3AFB47-B595-418C-9568-08780DDC58FF@oracle.com>
 <714892cd-d96f-4d41-ae8b-d7b7642a6e3c@redhat.com>
 <1669BFDE-A1A5-4ED8-B586-035460BBF68A@oracle.com>
 <45660873-731a-a810-8c57-1a5a19d266b4@redhat.com>
 <693E6287-E37C-4C5D-BE33-B3D813BE505D@oracle.com>
 <edc53126-bfe4-5102-d2eb-2332bf3a68e5@redhat.com>
To: Waiman Long <longman@redhat.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9510
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001240175
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9510
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001240175
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_132826_890130_50941320 
X-CRM114-Status: GOOD (  18.81  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>,
 dave.dice@oracle.com, Jan Glauber <jglauber@marvell.com>, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, hpa@zytor.com,
 Steven Sistare <steven.sistare@oracle.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Daniel Jordan <daniel.m.jordan@oracle.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IE9uIEphbiAyNCwgMjAyMCwgYXQgNDoxMiBQTSwgV2FpbWFuIExvbmcgPGxvbmdtYW5AcmVk
aGF0LmNvbT4gd3JvdGU6Cj4gCj4gT24gMS8yNC8yMCAzOjA5IFBNLCBBbGV4IEtvZ2FuIHdyb3Rl
Ogo+Pj4+IFdlIGFsc28gcHJvYmFibHkgZG8gbm90IHdhbnQgdGhvc2Ug4oCccHJpb3JpdGl6ZWTi
gJ0gdGhyZWFkcyB0byBkaXNydXB0Cj4+Pj4gbm9ybWFsCj4+Pj4gQ05BIG9wZXJhdGlvbi4gRS5n
LiwgaWYgdGhlIG1haW4gcXVldWUgbG9va3MgbGlrZSBUMV8xLCBQMl8xLCBUMV8yLAo+Pj4+IOKA
piwgd2hlcmUKPj4+PiBUMV94IGlzIGEgdGhyZWFkIHJ1bm5pbmcgb24gbm9kZSAxIGFuZCBQMl8x
IGlzIGEgcHJpb3JpdGl6ZWQgdGhyZWFkCj4+Pj4gcnVubmluZwo+Pj4+IG9uIG5vZGUgMiwgd2Ug
d2FudCB0byBwYXNzIHRoZSBsb2NrIGZyb20gVDFfMSB0byBQMl8xIGFuZCB0aGVuIHRvIFQxXzIK
Pj4+PiAocmF0aGVyIHRoYW4gaGF2ZSBQMl8xIHRvIHNjYW4gZm9yIGFub3RoZXIgdGhyZWFkIG9u
IG5vZGUgMikuCj4+Pj4gCj4+Pj4gVGhlcmUgaXMgYSB3YXkgdG8gYWNoaWV2ZSB0aGF0IOKAlCB3
aGVuIHdlIHBhc3MgdGhlIGxvY2sgdG8gUDJfMSwKPj4+PiB3ZSBjYW4gc2V0IGl0cyBudW1hIG5v
ZGUgZmllbGQgdG8gMS4gVGhpcyBtZWFucyB0aGF0IHdlIG5lZWQgdG8KPj4+PiByZXNldCB0aGUg
bnVtYQo+Pj4+IG5vZGUgZmllbGQgaW4gY25hX2luaXRfbm9kZSgpLCBidXQgQUZBSUNUIHRoaXMg
aXMgcmVsYXRpdmVseSBjaGVhcC4KPj4+PiBUaGUgcmVzdAo+Pj4+IG9mIHRoZSBDTkEgbG9naWMg
c2hvdWxkIG5vdCBjaGFuZ2UuCj4+PiAKPj4+IEkgd29uJ3QgcmVjb21tZW5kIGRvaW5nIHRoYXQu
IElmIHRoZSBsb2NrIGNhY2hlbGluZSBoYXMgYmVlbiBtb3ZlZAo+Pj4gZnJvbSBub2RlIDEgdG8g
MiwgSSB3aWxsIHNheSBpdCBpcyBiZXR0ZXIgdG8gc3RpY2sgd2l0aCBub2RlIDIgcmF0aGVyCj4+
PiB0aGFuIHN3aXRjaGluZyBiYWNrIHRvIG5vZGUgMS4gVGhhdCB3aWxsIG1lYW4gdGhhdCB0aGUg
c2Vjb25kYXJ5Cj4+PiBxdWV1ZSBtYXkgY29udGFpbiBsb2NrIHdhaXRlcnMgZnJvbSB0aGUgc2Ft
ZSBub2RlcywgYnV0IHRoZXkgd2lsbAo+Pj4gZXZlbnR1YWxseSBiZSBmbHVzaGVkIGJhY2sgdG8g
dGhlIHByaW1hcnkgcXVldWUuCj4+PiAKPj4gVGhhdOKAmXMgcmlnaHQsIGFzc3VtaW5nIHdlIGRv
IG5vdCByZXNldCBpbnRyYV9ub2RlIGNvdW50IHdoZW4KPj4gdHJhbnNmZXJyaW5nIHRoZQo+PiBs
b2NrIHRvIGEgcHJpb3JpdGl6ZWQgdGhyZWFkIGZyb20gYW5vdGhlciBub2RlLiBPdGhlcndpc2Us
IHdlIG1heSBzdGFydmUKPj4gd2FpdGVycyBpbiB0aGUgc2Vjb25kYXJ5IHF1ZXVlLiAKPj4gCj4+
IFN0aWxsLCB0aGF0IGNhbiBtYWtlIHRoZSBsb2NrIGV2ZW4gbGVzcyBmYWlyIHRvIG5vbi1wcmlv
cml0aXplZAo+PiB0aHJlYWRzLiBXaGVuCj4+IHlvdSBmbHVzaCB0aGUgc2Vjb25kYXJ5IHF1ZXVl
LCB0aGUgcHJlZmVyZW5jZSBtYXkgcmVtYWluIHdpdGggdGhlIHNhbWUKPj4gbm9kZS4gVGhpcyB3
aWxsIG5vdCBoYXBwZW4gaW4gdGhlIGN1cnJlbnQgZm9ybSBvZiBDTkEsIGFzIHdlIG5ldmVyIGdl
dCAKPj4gdGhyZWFkcyBmcm9tIHRoZSBwcmVmZXJyZWQgbm9kZSBpbiB0aGUgc2Vjb25kYXJ5IHF1
ZXVlLgo+IAo+IFRoYXQgaXMgdHJ1ZS4KPiAKPiBIb3dldmVyLCBpdCBpcyBubyBkaWZmZXJlbnQg
ZnJvbSB0aGUgY3VycmVudCBzY2hlbWUgdGhhdCBhIHdhaXRlciBmcm9tCj4gYW5vdGhlciBub2Rl
IG1heSBoYXZlIHRvIHdhaXQgZm9yIDY0ayBvdGhlciB3YWl0ZXJzIHRvIGdvIGZpcnN0IGJlZm9y
ZQo+IGl0IGhhcyBhIGNoYW5jZSB0byBnZXQgaXQuIE5vdyB0aGF0IHdhaXRlciBjYW4gYmUgZnJv
bSB0aGUgc2FtZSBub2RlIGFzCj4gd2VsbC4KClRoZSBkaWZmZXJlbmNlIGlzIHRoYXQgaW4gdGhl
IGN1cnJlbnQgZm9ybSBvZiBDTkEsIHRoZSBwcmVmZXJyZWQgbm9kZSBfd2lsbApjaGFuZ2UgYWZ0
ZXIgNjRrIGxvY2sgdHJhbnNpdGlvbnMuIEluIHRoZSBjaGFuZ2UgeW91IHByb3Bvc2UsIHRoaXMg
aXMgbm8KbG9uZ2VyIHRoZSBjYXNlLiBJdCBtYXkgdGFrZSBhbm90aGVyIH42NGsgdHJhbnNpdGlv
bnMgZm9yIHRoYXQgdG8gaGFwcGVuLgpNb3JlIGdlbmVyYWxseSwgSSB0aGluayB0aGlzIG1ha2Vz
IHRoZSBhbmFseXNpcyBvZiB0aGUgbG9jayBiZWhhdmlvciBtb3JlCmNvbnZvbHV0ZWQuCgpJIHRo
aW5rIHdlIHNob3VsZCB0cmVhdCB0aG9zZSBwcmlvcml0aXplZCB0aHJlYWRzIGFzIOKAnHdpbGTi
gJ0gY2FyZHMsIHBhc3NpbmcgdGhlIApsb2NrIHRocm91Z2ggdGhlbSwgYnV0IGtlZXBpbmcgdGhl
IHByZWZlcnJlZCBub2RlIGludGFjdC4gVGhpcyB3aWxsIHBvdGVudGlhbGx5CmNvc3Qgb25lIGV4
dHJhIGxvY2sgbWlncmF0aW9uLCBidXQgd2lsbCBtYWtlIHJlYXNvbmluZyBhYm91dCB0aGUgbG9j
awpiZWhhdmlvciBlYXNpZXIuCgpSZWdhcmRzLArigJQgQWxleApfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
