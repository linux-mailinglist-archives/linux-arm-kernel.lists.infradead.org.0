Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E491607D1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:27:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1GwMR6aDQioTBWaqUx92EbpI4iwmwDRcbnpLS6zSOL8=; b=jaU5yBeOpwR/xw
	o1p1MT4Z26Nrgc+Kgm5mnSCyPadjfSCvB9vBmeIsYdXeU0uPlokSjFs3xifk53lv6+w/J9cGgRwDH
	7DDaBD5ltTLWwOUQ5TsrZQFKg8751tmQ2JiaIgvm1tUtnnXVi5w0TVlJs62Zj31pybvScYpGl2Fm9
	SySmCsrYetiZJtSuhzab3EkvPsLR5nO1ov/5c/WbZ1GGCSnOtasGrX7EtRqe/pb4mTDbFaKbPM+6g
	AeGJF6jpMjkBi+oGsAscNGn+BMe6OXRIGDYNO0RPK7YiPXNQeafWAPEqeBLm811iGzSYEoatz/Np0
	6JeU7gBnvKc4a5thsQZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPBT-0000xL-3n; Fri, 05 Jul 2019 14:27:31 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPBG-0000uj-Ep; Fri, 05 Jul 2019 14:27:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TaTbGD6rYLRxf3Z3JmQsh3CDW6xJ+2zReQvac0Q8f4o=; b=as5lLBdslTGOIsUrklQkPVj0K9
 L5XepgYVa92HMIMA5PMUI35NLiZIvKv9OkjJdIzaMErN5zbzHsPkQK3fBqySILHqSZEH4/IB8bB9Q
 HhMutqRy3gYdqLcn/eozTEoIYz9f88G7xowIofUSWdKFZ2i/dvSrrIm7U9iENqYPP6uPo21+bxHpH
 1Y9bNQMRe+uxHyTwkxS+ndse2CfDbXHA0Z2Q182syYdaibjMhXOu+KxKfwFgJN4TCBrn6OPZYEYq4
 K94HV6Zxpyl2pFWroK16oGlU6eOZw0fiQSlqiO1Q+vThnBeNaR2qBfuKzkpSO+2ZlT9B1wYxkWuBz
 G6366WEQ==;
Received: from mx1.redhat.com ([209.132.183.28])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjHD0-0000i7-HU; Fri, 05 Jul 2019 05:56:37 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8C622307CDEA;
 Fri,  5 Jul 2019 05:55:56 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-83.pek2.redhat.com [10.72.12.83])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8204B86420;
 Fri,  5 Jul 2019 05:55:44 +0000 (UTC)
Date: Fri, 5 Jul 2019 13:55:40 +0800
From: Dave Young <dyoung@redhat.com>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Subject: Re: [PATCH 18/39] docs: admin-guide: add kdump documentation into it
Message-ID: <20190705055540.GA2790@localhost.localdomain>
References: <cover.1561724493.git.mchehab+samsung@kernel.org>
 <654e7591c044632c06257e0f069a52c0bb993554.1561724493.git.mchehab+samsung@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <654e7591c044632c06257e0f069a52c0bb993554.1561724493.git.mchehab+samsung@kernel.org>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Fri, 05 Jul 2019 05:55:57 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_065634_889208_7EF722F8 
X-CRM114-Status: GOOD (  43.05  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-5.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rich Felker <dalias@libc.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Jerry Hoemann <jerry.hoemann@hpe.com>, Harry Wei <harryxiyou@gmail.com>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Alex Shi <alex.shi@linux.alibaba.com>, Will Deacon <will@kernel.org>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Jonathan Corbet <corbet@lwn.net>,
 linux-sh@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Guenter Roeck <linux@roeck-us.net>, linux-watchdog@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@infradead.org>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, Baoquan He <bhe@redhat.com>,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Vivek Goyal <vgoyal@redhat.com>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDYvMjgvMTkgYXQgMDk6MzBhbSwgTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIHdyb3RlOgo+IFRo
ZSBLZHVtcCBkb2N1bWVudGF0aW9uIGRlc2NyaWJlcyBwcm9jZWR1cmVzIHdpdGggYWRtaW5zIHVz
ZQo+IGluIG9yZGVyIHRvIHNvbHZlIGlzc3VlcyBvbiB0aGVpciBzeXN0ZW1zLgo+IAo+IFNpZ25l
ZC1vZmYtYnk6IE1hdXJvIENhcnZhbGhvIENoZWhhYiA8bWNoZWhhYitzYW1zdW5nQGtlcm5lbC5v
cmc+Cj4gLS0tCj4gIERvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUvYnVnLWh1bnRpbmcucnN0ICAg
ICAgICAgICAgfCA0ICsrLS0KPiAgRG9jdW1lbnRhdGlvbi9hZG1pbi1ndWlkZS9pbmRleC5yc3Qg
ICAgICAgICAgICAgICAgICB8IDEgKwo+ICBEb2N1bWVudGF0aW9uL3sgPT4gYWRtaW4tZ3VpZGV9
L2tkdW1wL2dkYm1hY3Jvcy50eHQgIHwgMAo+ICBEb2N1bWVudGF0aW9uL3sgPT4gYWRtaW4tZ3Vp
ZGV9L2tkdW1wL2luZGV4LnJzdCAgICAgIHwgMSAtCj4gIERvY3VtZW50YXRpb24veyA9PiBhZG1p
bi1ndWlkZX0va2R1bXAva2R1bXAucnN0ICAgICAgfCAwCj4gIERvY3VtZW50YXRpb24veyA9PiBh
ZG1pbi1ndWlkZX0va2R1bXAvdm1jb3JlaW5mby5yc3QgfCAwCj4gIERvY3VtZW50YXRpb24vYWRt
aW4tZ3VpZGUva2VybmVsLXBhcmFtZXRlcnMudHh0ICAgICAgfCA2ICsrKy0tLQo+ICBEb2N1bWVu
dGF0aW9uL3Bvd2VycGMvZmlybXdhcmUtYXNzaXN0ZWQtZHVtcC5yc3QgICAgIHwgMiArLQo+ICBE
b2N1bWVudGF0aW9uL3RyYW5zbGF0aW9ucy96aF9DTi9vb3BzLXRyYWNpbmcudHh0ICAgIHwgNCAr
Ky0tCj4gIERvY3VtZW50YXRpb24vd2F0Y2hkb2cvaHB3ZHQucnN0ICAgICAgICAgICAgICAgICAg
ICAgfCAyICstCj4gIE1BSU5UQUlORVJTICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgfCAyICstCj4gIGFyY2gvYXJtL0tjb25maWcgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgfCAyICstCj4gIGFyY2gvYXJtNjQvS2NvbmZpZyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgfCAyICstCj4gIGFyY2gvc2gvS2NvbmZpZyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAyICstCj4gIGFyY2gveDg2L0tjb25maWcgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCA0ICsrLS0KPiAgMTUgZmlsZXMgY2hh
bmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pCj4gIHJlbmFtZSBEb2N1bWVu
dGF0aW9uL3sgPT4gYWRtaW4tZ3VpZGV9L2tkdW1wL2dkYm1hY3Jvcy50eHQgKDEwMCUpCj4gIHJl
bmFtZSBEb2N1bWVudGF0aW9uL3sgPT4gYWRtaW4tZ3VpZGV9L2tkdW1wL2luZGV4LnJzdCAoOTcl
KQo+ICByZW5hbWUgRG9jdW1lbnRhdGlvbi97ID0+IGFkbWluLWd1aWRlfS9rZHVtcC9rZHVtcC5y
c3QgKDEwMCUpCj4gIHJlbmFtZSBEb2N1bWVudGF0aW9uL3sgPT4gYWRtaW4tZ3VpZGV9L2tkdW1w
L3ZtY29yZWluZm8ucnN0ICgxMDAlKQo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2Fk
bWluLWd1aWRlL2J1Zy1odW50aW5nLnJzdCBiL0RvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUvYnVn
LWh1bnRpbmcucnN0Cj4gaW5kZXggYjc2MWFhMmE1MWQyLi40NGI4YTRlZGQzNDggMTAwNjQ0Cj4g
LS0tIGEvRG9jdW1lbnRhdGlvbi9hZG1pbi1ndWlkZS9idWctaHVudGluZy5yc3QKPiArKysgYi9E
b2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL2J1Zy1odW50aW5nLnJzdAo+IEBAIC05MCw5ICs5MCw5
IEBAIHRoZSBkaXNrIGlzIG5vdCBhdmFpbGFibGUgdGhlbiB5b3UgaGF2ZSB0aHJlZSBvcHRpb25z
Ogo+ICAgICAgcnVuIGEgbnVsbCBtb2RlbSB0byBhIHNlY29uZCBtYWNoaW5lIGFuZCBjYXB0dXJl
IHRoZSBvdXRwdXQgdGhlcmUKPiAgICAgIHVzaW5nIHlvdXIgZmF2b3VyaXRlIGNvbW11bmljYXRp
b24gcHJvZ3JhbS4gIE1pbmljb20gd29ya3Mgd2VsbC4KPiAgCj4gLSgzKSBVc2UgS2R1bXAgKHNl
ZSBEb2N1bWVudGF0aW9uL2tkdW1wL2tkdW1wLnJzdCksCj4gKygzKSBVc2UgS2R1bXAgKHNlZSBE
b2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL2tkdW1wL2tkdW1wLnJzdCksCj4gICAgICBleHRyYWN0
IHRoZSBrZXJuZWwgcmluZyBidWZmZXIgZnJvbSBvbGQgbWVtb3J5IHdpdGggdXNpbmcgZG1lc2cK
PiAtICAgIGdkYm1hY3JvIGluIERvY3VtZW50YXRpb24va2R1bXAvZ2RibWFjcm9zLnR4dC4KPiAr
ICAgIGdkYm1hY3JvIGluIERvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUva2R1bXAvZ2RibWFjcm9z
LnR4dC4KPiAgCj4gIEZpbmRpbmcgdGhlIGJ1ZydzIGxvY2F0aW9uCj4gIC0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUvaW5k
ZXgucnN0IGIvRG9jdW1lbnRhdGlvbi9hZG1pbi1ndWlkZS9pbmRleC5yc3QKPiBpbmRleCA5ODk5
Yjc4ZGJlNTAuLjY1ZTgyMWEwM2FjYSAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2FkbWlu
LWd1aWRlL2luZGV4LnJzdAo+ICsrKyBiL0RvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUvaW5kZXgu
cnN0Cj4gQEAgLTM5LDYgKzM5LDcgQEAgcHJvYmxlbXMgYW5kIGJ1Z3MgaW4gcGFydGljdWxhci4K
PiAgICAgcmFtb29wcwo+ICAgICBkeW5hbWljLWRlYnVnLWhvd3RvCj4gICAgIGluaXQKPiArICAg
a2R1bXAvaW5kZXgKPiAgICAgcGVyZi9pbmRleAo+ICAKPiAgVGhpcyBpcyB0aGUgYmVnaW5uaW5n
IG9mIGEgc2VjdGlvbiB3aXRoIGluZm9ybWF0aW9uIG9mIGludGVyZXN0IHRvCj4gZGlmZiAtLWdp
dCBhL0RvY3VtZW50YXRpb24va2R1bXAvZ2RibWFjcm9zLnR4dCBiL0RvY3VtZW50YXRpb24vYWRt
aW4tZ3VpZGUva2R1bXAvZ2RibWFjcm9zLnR4dAo+IHNpbWlsYXJpdHkgaW5kZXggMTAwJQo+IHJl
bmFtZSBmcm9tIERvY3VtZW50YXRpb24va2R1bXAvZ2RibWFjcm9zLnR4dAo+IHJlbmFtZSB0byBE
b2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL2tkdW1wL2dkYm1hY3Jvcy50eHQKPiBkaWZmIC0tZ2l0
IGEvRG9jdW1lbnRhdGlvbi9rZHVtcC9pbmRleC5yc3QgYi9Eb2N1bWVudGF0aW9uL2FkbWluLWd1
aWRlL2tkdW1wL2luZGV4LnJzdAo+IHNpbWlsYXJpdHkgaW5kZXggOTclCj4gcmVuYW1lIGZyb20g
RG9jdW1lbnRhdGlvbi9rZHVtcC9pbmRleC5yc3QKPiByZW5hbWUgdG8gRG9jdW1lbnRhdGlvbi9h
ZG1pbi1ndWlkZS9rZHVtcC9pbmRleC5yc3QKPiBpbmRleCAyYjE3ZmNmNjg2N2EuLjhlMmViZDAz
ODNjZCAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2tkdW1wL2luZGV4LnJzdAo+ICsrKyBi
L0RvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUva2R1bXAvaW5kZXgucnN0Cj4gQEAgLTEsNCArMSwz
IEBACj4gLTpvcnBoYW46Cj4gIAo+ICA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09Cj4gIERvY3VtZW50YXRpb24gZm9yIEtkdW1w
IC0gVGhlIGtleGVjLWJhc2VkIENyYXNoIER1bXBpbmcgU29sdXRpb24KPiBkaWZmIC0tZ2l0IGEv
RG9jdW1lbnRhdGlvbi9rZHVtcC9rZHVtcC5yc3QgYi9Eb2N1bWVudGF0aW9uL2FkbWluLWd1aWRl
L2tkdW1wL2tkdW1wLnJzdAo+IHNpbWlsYXJpdHkgaW5kZXggMTAwJQo+IHJlbmFtZSBmcm9tIERv
Y3VtZW50YXRpb24va2R1bXAva2R1bXAucnN0Cj4gcmVuYW1lIHRvIERvY3VtZW50YXRpb24vYWRt
aW4tZ3VpZGUva2R1bXAva2R1bXAucnN0Cj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24va2R1
bXAvdm1jb3JlaW5mby5yc3QgYi9Eb2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL2tkdW1wL3ZtY29y
ZWluZm8ucnN0Cj4gc2ltaWxhcml0eSBpbmRleCAxMDAlCj4gcmVuYW1lIGZyb20gRG9jdW1lbnRh
dGlvbi9rZHVtcC92bWNvcmVpbmZvLnJzdAo+IHJlbmFtZSB0byBEb2N1bWVudGF0aW9uL2FkbWlu
LWd1aWRlL2tkdW1wL3ZtY29yZWluZm8ucnN0Cj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24v
YWRtaW4tZ3VpZGUva2VybmVsLXBhcmFtZXRlcnMudHh0IGIvRG9jdW1lbnRhdGlvbi9hZG1pbi1n
dWlkZS9rZXJuZWwtcGFyYW1ldGVycy50eHQKPiBpbmRleCBlMzhiOTZkMDYxZjQuLjliNTM1YzBl
MjJmMyAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL2tlcm5lbC1wYXJh
bWV0ZXJzLnR4dAo+ICsrKyBiL0RvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUva2VybmVsLXBhcmFt
ZXRlcnMudHh0Cj4gQEAgLTcwOCwxNCArNzA4LDE0IEBACj4gIAkJCVtLTkwsIHg4Nl82NF0gc2Vs
ZWN0IGEgcmVnaW9uIHVuZGVyIDRHIGZpcnN0LCBhbmQKPiAgCQkJZmFsbCBiYWNrIHRvIHJlc2Vy
dmUgcmVnaW9uIGFib3ZlIDRHIHdoZW4gJ0BvZmZzZXQnCj4gIAkJCWhhc24ndCBiZWVuIHNwZWNp
ZmllZC4KPiAtCQkJU2VlIERvY3VtZW50YXRpb24va2R1bXAva2R1bXAucnN0IGZvciBmdXJ0aGVy
IGRldGFpbHMuCj4gKwkJCVNlZSBEb2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL2tkdW1wL2tkdW1w
LnJzdCBmb3IgZnVydGhlciBkZXRhaWxzLgo+ICAKPiAgCWNyYXNoa2VybmVsPXJhbmdlMTpzaXpl
MVsscmFuZ2UyOnNpemUyLC4uLl1bQG9mZnNldF0KPiAgCQkJW0tOTF0gU2FtZSBhcyBhYm92ZSwg
YnV0IGRlcGVuZHMgb24gdGhlIG1lbW9yeQo+ICAJCQlpbiB0aGUgcnVubmluZyBzeXN0ZW0uIFRo
ZSBzeW50YXggb2YgcmFuZ2UgaXMKPiAgCQkJc3RhcnQtW2VuZF0gd2hlcmUgc3RhcnQgYW5kIGVu
ZCBhcmUgYm90aAo+ICAJCQlhIG1lbW9yeSB1bml0IChhbW91bnRbS01HXSkuIFNlZSBhbHNvCj4g
LQkJCURvY3VtZW50YXRpb24va2R1bXAva2R1bXAucnN0IGZvciBhbiBleGFtcGxlLgo+ICsJCQlE
b2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL2tkdW1wL2tkdW1wLnJzdCBmb3IgYW4gZXhhbXBsZS4K
PiAgCj4gIAljcmFzaGtlcm5lbD1zaXplW0tNR10saGlnaAo+ICAJCQlbS05MLCB4ODZfNjRdIHJh
bmdlIGNvdWxkIGJlIGFib3ZlIDRHLiBBbGxvdyBrZXJuZWwKPiBAQCAtMTIwNyw3ICsxMjA3LDcg
QEAKPiAgCQkJU3BlY2lmaWVzIHBoeXNpY2FsIGFkZHJlc3Mgb2Ygc3RhcnQgb2Yga2VybmVsIGNv
cmUKPiAgCQkJaW1hZ2UgZWxmIGhlYWRlciBhbmQgb3B0aW9uYWxseSB0aGUgc2l6ZS4gR2VuZXJh
bGx5Cj4gIAkJCWtleGVjIGxvYWRlciB3aWxsIHBhc3MgdGhpcyBvcHRpb24gdG8gY2FwdHVyZSBr
ZXJuZWwuCj4gLQkJCVNlZSBEb2N1bWVudGF0aW9uL2tkdW1wL2tkdW1wLnJzdCBmb3IgZGV0YWls
cy4KPiArCQkJU2VlIERvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUva2R1bXAva2R1bXAucnN0IGZv
ciBkZXRhaWxzLgo+ICAKPiAgCWVuYWJsZV9tdHJyX2NsZWFudXAgW1g4Nl0KPiAgCQkJVGhlIGtl
cm5lbCB0cmllcyB0byBhZGp1c3QgTVRSUiBsYXlvdXQgZnJvbSBjb250aW51b3VzCj4gZGlmZiAt
LWdpdCBhL0RvY3VtZW50YXRpb24vcG93ZXJwYy9maXJtd2FyZS1hc3Npc3RlZC1kdW1wLnJzdCBi
L0RvY3VtZW50YXRpb24vcG93ZXJwYy9maXJtd2FyZS1hc3Npc3RlZC1kdW1wLnJzdAo+IGluZGV4
IGQ3ZmE3YzM1ZGQxMi4uOWNhMTI4MzBhNDhlIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24v
cG93ZXJwYy9maXJtd2FyZS1hc3Npc3RlZC1kdW1wLnJzdAo+ICsrKyBiL0RvY3VtZW50YXRpb24v
cG93ZXJwYy9maXJtd2FyZS1hc3Npc3RlZC1kdW1wLnJzdAo+IEBAIC02MSw3ICs2MSw3IEBAIGFz
IGZvbGxvd3M6Cj4gICAgICAgICAgIHRoZSBkZWZhdWx0IGNhbGN1bGF0ZWQgc2l6ZS4gVXNlIHRo
aXMgb3B0aW9uIGlmIGRlZmF1bHQKPiAgICAgICAgICAgYm9vdCBtZW1vcnkgc2l6ZSBpcyBub3Qg
c3VmZmljaWVudCBmb3Igc2Vjb25kIGtlcm5lbCB0bwo+ICAgICAgICAgICBib290IHN1Y2Nlc3Nm
dWxseS4gRm9yIHN5bnRheCBvZiBjcmFzaGtlcm5lbD0gcGFyYW1ldGVyLAo+IC0gICAgICAgICBy
ZWZlciB0byBEb2N1bWVudGF0aW9uL2tkdW1wL2tkdW1wLnJzdC4gSWYgYW55IG9mZnNldCBpcwo+
ICsgICAgICAgICByZWZlciB0byBEb2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL2tkdW1wL2tkdW1w
LnJzdC4gSWYgYW55IG9mZnNldCBpcwo+ICAgICAgICAgICBwcm92aWRlZCBpbiBjcmFzaGtlcm5l
bD0gcGFyYW1ldGVyLCBpdCB3aWxsIGJlIGlnbm9yZWQKPiAgICAgICAgICAgYXMgZmFkdW1wIHVz
ZXMgYSBwcmVkZWZpbmVkIG9mZnNldCB0byByZXNlcnZlIG1lbW9yeQo+ICAgICAgICAgICBmb3Ig
Ym9vdCBtZW1vcnkgZHVtcCBwcmVzZXJ2YXRpb24gaW4gY2FzZSBvZiBhIGNyYXNoLgo+IGRpZmYg
LS1naXQgYS9Eb2N1bWVudGF0aW9uL3RyYW5zbGF0aW9ucy96aF9DTi9vb3BzLXRyYWNpbmcudHh0
IGIvRG9jdW1lbnRhdGlvbi90cmFuc2xhdGlvbnMvemhfQ04vb29wcy10cmFjaW5nLnR4dAo+IGlu
ZGV4IDM2OGRkZDA1YjMwNC4uYzVmM2JkYTdhYmNiIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRp
b24vdHJhbnNsYXRpb25zL3poX0NOL29vcHMtdHJhY2luZy50eHQKPiArKysgYi9Eb2N1bWVudGF0
aW9uL3RyYW5zbGF0aW9ucy96aF9DTi9vb3BzLXRyYWNpbmcudHh0Cj4gQEAgLTUzLDggKzUzLDgg
QEAgY2F0IC9wcm9jL2ttc2cgPiBmaWxl77yMIOeEtuiAjOS9oOW/hemhu+S7i+WFpeS4reatouS8
oOi+k++8jCBrbXNn5piv5LiA5Liq4oCcCj4gIO+8iDLvvInnlKjkuLLlj6Pnu4jnq6/lkK/liqjv
vIjor7flj4LnnItEb2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL3NlcmlhbC1jb25zb2xlLnJzdO+8
ie+8jOi/kOihjOS4gOS4qm51bGwKPiAgbW9kZW3liLDlj6bkuIDlj7DmnLrlmajlubbnlKjkvaDl
lpzmrKLnmoTpgJrorq/lt6Xlhbfojrflj5bovpPlh7rjgIJNaW5pY29t5bel5L2c5Zyw5b6I5aW9
44CCCj4gIAo+IC3vvIgz77yJ5L2/55SoS2R1bXDvvIjor7flj4LnnItEb2N1bWVudGF0aW9uL2tk
dW1wL2tkdW1wLnJzdO+8ie+8jAo+IC3kvb/nlKjlnKhEb2N1bWVudGF0aW9uL2tkdW1wL2dkYm1h
Y3Jvcy50eHTkuK3lrprkuYnnmoRkbWVzZyBnZGLlro/vvIzku47ml6fnmoTlhoXlrZjkuK3mj5Dl
j5blhoXmoLgKPiAr77yIM++8ieS9v+eUqEtkdW1w77yI6K+35Y+C55yLRG9jdW1lbnRhdGlvbi9h
ZG1pbi1ndWlkZS9rZHVtcC9rZHVtcC5yc3TvvInvvIwKPiAr5L2/55So5ZyoRG9jdW1lbnRhdGlv
bi9hZG1pbi1ndWlkZS9rZHVtcC9nZGJtYWNyb3MudHh05Lit5a6a5LmJ55qEZG1lc2cgZ2Ri5a6P
77yM5LuO5pen55qE5YaF5a2Y5Lit5o+Q5Y+W5YaF5qC4Cj4gIOeOr+W9oue8k+WGsuWMuuOAggo+
ICAKPiAg5a6M5pW05L+h5oGvCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vd2F0Y2hkb2cv
aHB3ZHQucnN0IGIvRG9jdW1lbnRhdGlvbi93YXRjaGRvZy9ocHdkdC5yc3QKPiBpbmRleCA5NGE5
NjM3MTExM2UuLjQ5YzY0N2RiYThhYSAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL3dhdGNo
ZG9nL2hwd2R0LnJzdAo+ICsrKyBiL0RvY3VtZW50YXRpb24vd2F0Y2hkb2cvaHB3ZHQucnN0Cj4g
QEAgLTU5LDcgKzU5LDcgQEAgTGFzdCByZXZpZXdlZDogMDgvMjAvMjAxOAo+ICAgYW5kIGxvb3Ag
Zm9yZXZlci4gIFRoaXMgaXMgZ2VuZXJhbGx5IG5vdCB3aGF0IGEgd2F0Y2hkb2cgdXNlciB3YW50
cy4KPiAgCj4gICBGb3IgdGhvc2Ugd2lzaGluZyB0byBsZWFybiBtb3JlIHBsZWFzZSBzZWU6Cj4g
LQlEb2N1bWVudGF0aW9uL2tkdW1wL2tkdW1wLnJzdAo+ICsJRG9jdW1lbnRhdGlvbi9hZG1pbi1n
dWlkZS9rZHVtcC9rZHVtcC5yc3QKPiAgCURvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUva2VybmVs
LXBhcmFtZXRlcnMudHh0IChwYW5pYz0pCj4gIAlZb3VyIExpbnV4IERpc3RyaWJ1dGlvbiBzcGVj
aWZpYyBkb2N1bWVudGF0aW9uLgo+ICAKPiBkaWZmIC0tZ2l0IGEvTUFJTlRBSU5FUlMgYi9NQUlO
VEFJTkVSUwo+IGluZGV4IGQzNWZmNzNmNzE4YS4uNGM2MjJhMTlhYjdkIDEwMDY0NAo+IC0tLSBh
L01BSU5UQUlORVJTCj4gKysrIGIvTUFJTlRBSU5FUlMKPiBAQCAtODYyMiw3ICs4NjIyLDcgQEAg
UjoJVml2ZWsgR295YWwgPHZnb3lhbEByZWRoYXQuY29tPgo+ICBMOglrZXhlY0BsaXN0cy5pbmZy
YWRlYWQub3JnCj4gIFc6CWh0dHA6Ly9sc2Uuc291cmNlZm9yZ2UubmV0L2tkdW1wLwo+ICBTOglN
YWludGFpbmVkCj4gLUY6CURvY3VtZW50YXRpb24va2R1bXAvCj4gK0Y6CURvY3VtZW50YXRpb24v
YWRtaW4tZ3VpZGUva2R1bXAvCj4gIAo+ICBLRUVORSBGTSBSQURJTyBUUkFOU01JVFRFUiBEUklW
RVIKPiAgTToJSGFucyBWZXJrdWlsIDxodmVya3VpbEB4czRhbGwubmw+Cj4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtL0tjb25maWcgYi9hcmNoL2FybS9LY29uZmlnCj4gaW5kZXggOGJmODk4NWVjNjY3
Li5kNWJkNDM1MGZjYmQgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vS2NvbmZpZwo+ICsrKyBiL2Fy
Y2gvYXJtL0tjb25maWcKPiBAQCAtMjAyNSw3ICsyMDI1LDcgQEAgY29uZmlnIENSQVNIX0RVTVAK
PiAgCSAga2R1bXAva2V4ZWMuIFRoZSBjcmFzaCBkdW1wIGtlcm5lbCBtdXN0IGJlIGNvbXBpbGVk
IHRvIGEKPiAgCSAgbWVtb3J5IGFkZHJlc3Mgbm90IHVzZWQgYnkgdGhlIG1haW4ga2VybmVsCj4g
IAo+IC0JICBGb3IgbW9yZSBkZXRhaWxzIHNlZSBEb2N1bWVudGF0aW9uL2tkdW1wL2tkdW1wLnJz
dAo+ICsJICBGb3IgbW9yZSBkZXRhaWxzIHNlZSBEb2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL2tk
dW1wL2tkdW1wLnJzdAo+ICAKPiAgY29uZmlnIEFVVE9fWlJFTEFERFIKPiAgCWJvb2wgIkF1dG8g
Y2FsY3VsYXRpb24gb2YgdGhlIGRlY29tcHJlc3NlZCBrZXJuZWwgaW1hZ2UgYWRkcmVzcyIKPiBk
aWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9LY29uZmlnIGIvYXJjaC9hcm02NC9LY29uZmlnCj4gaW5k
ZXggYWNjYjA0NTk5N2M2Li5lMWVhNjk5OTRlMGYgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9L
Y29uZmlnCj4gKysrIGIvYXJjaC9hcm02NC9LY29uZmlnCj4gQEAgLTk5Nyw3ICs5OTcsNyBAQCBj
b25maWcgQ1JBU0hfRFVNUAo+ICAJICByZXNlcnZlZCByZWdpb24gYW5kIHRoZW4gbGF0ZXIgZXhl
Y3V0ZWQgYWZ0ZXIgYSBjcmFzaCBieQo+ICAJICBrZHVtcC9rZXhlYy4KPiAgCj4gLQkgIEZvciBt
b3JlIGRldGFpbHMgc2VlIERvY3VtZW50YXRpb24va2R1bXAva2R1bXAucnN0Cj4gKwkgIEZvciBt
b3JlIGRldGFpbHMgc2VlIERvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUva2R1bXAva2R1bXAucnN0
Cj4gIAo+ICBjb25maWcgWEVOX0RPTTAKPiAgCWRlZl9ib29sIHkKPiBkaWZmIC0tZ2l0IGEvYXJj
aC9zaC9LY29uZmlnIGIvYXJjaC9zaC9LY29uZmlnCj4gaW5kZXggMzFhN2QxMmRiNzA1Li5jMjg1
OGFjNmE0NmEgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9zaC9LY29uZmlnCj4gKysrIGIvYXJjaC9zaC9L
Y29uZmlnCj4gQEAgLTYyNiw3ICs2MjYsNyBAQCBjb25maWcgQ1JBU0hfRFVNUAo+ICAJICB0byBh
IG1lbW9yeSBhZGRyZXNzIG5vdCB1c2VkIGJ5IHRoZSBtYWluIGtlcm5lbCB1c2luZwo+ICAJICBQ
SFlTSUNBTF9TVEFSVC4KPiAgCj4gLQkgIEZvciBtb3JlIGRldGFpbHMgc2VlIERvY3VtZW50YXRp
b24va2R1bXAva2R1bXAucnN0Cj4gKwkgIEZvciBtb3JlIGRldGFpbHMgc2VlIERvY3VtZW50YXRp
b24vYWRtaW4tZ3VpZGUva2R1bXAva2R1bXAucnN0Cj4gIAo+ICBjb25maWcgS0VYRUNfSlVNUAo+
ICAJYm9vbCAia2V4ZWMganVtcCAoRVhQRVJJTUVOVEFMKSIKPiBkaWZmIC0tZ2l0IGEvYXJjaC94
ODYvS2NvbmZpZyBiL2FyY2gveDg2L0tjb25maWcKPiBpbmRleCBjOWQ1OWNhNWUzYWMuLjQ4OWZk
ODMzYjk4MCAxMDA2NDQKPiAtLS0gYS9hcmNoL3g4Ni9LY29uZmlnCj4gKysrIGIvYXJjaC94ODYv
S2NvbmZpZwo+IEBAIC0yMDU3LDcgKzIwNTcsNyBAQCBjb25maWcgQ1JBU0hfRFVNUAo+ICAJICB0
byBhIG1lbW9yeSBhZGRyZXNzIG5vdCB1c2VkIGJ5IHRoZSBtYWluIGtlcm5lbCBvciBCSU9TIHVz
aW5nCj4gIAkgIFBIWVNJQ0FMX1NUQVJULCBvciBpdCBtdXN0IGJlIGJ1aWx0IGFzIGEgcmVsb2Nh
dGFibGUgaW1hZ2UKPiAgCSAgKENPTkZJR19SRUxPQ0FUQUJMRT15KS4KPiAtCSAgRm9yIG1vcmUg
ZGV0YWlscyBzZWUgRG9jdW1lbnRhdGlvbi9rZHVtcC9rZHVtcC5yc3QKPiArCSAgRm9yIG1vcmUg
ZGV0YWlscyBzZWUgRG9jdW1lbnRhdGlvbi9hZG1pbi1ndWlkZS9rZHVtcC9rZHVtcC5yc3QKPiAg
Cj4gIGNvbmZpZyBLRVhFQ19KVU1QCj4gIAlib29sICJrZXhlYyBqdW1wIgo+IEBAIC0yMDk0LDcg
KzIwOTQsNyBAQCBjb25maWcgUEhZU0lDQUxfU1RBUlQKPiAgCSAgdGhlIHJlc2VydmVkIHJlZ2lv
bi4gIEluIG90aGVyIHdvcmRzLCBpdCBjYW4gYmUgc2V0IGJhc2VkIG9uCj4gIAkgIHRoZSAiWCIg
dmFsdWUgYXMgc3BlY2lmaWVkIGluIHRoZSAiY3Jhc2hrZXJuZWw9WU1AWE0iCj4gIAkgIGNvbW1h
bmQgbGluZSBib290IHBhcmFtZXRlciBwYXNzZWQgdG8gdGhlIHBhbmljLWVkCj4gLQkgIGtlcm5l
bC4gUGxlYXNlIHRha2UgYSBsb29rIGF0IERvY3VtZW50YXRpb24va2R1bXAva2R1bXAucnN0Cj4g
KwkgIGtlcm5lbC4gUGxlYXNlIHRha2UgYSBsb29rIGF0IERvY3VtZW50YXRpb24vYWRtaW4tZ3Vp
ZGUva2R1bXAva2R1bXAucnN0Cj4gIAkgIGZvciBtb3JlIGRldGFpbHMgYWJvdXQgY3Jhc2ggZHVt
cHMuCj4gIAo+ICAJICBVc2FnZSBvZiBiekltYWdlIGZvciBjYXB0dXJpbmcgdGhlIGNyYXNoIGR1
bXAgaXMgcmVjb21tZW5kZWQgYXMKPiAtLSAKPiAyLjIxLjAKPiAKCkFja2VkLWJ5OiBEYXZlIFlv
dW5nIDxkeW91bmdAcmVkaGF0LmNvbT4KClRoYW5rcwpEYXZlCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
