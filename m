Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B72CA1DEEF0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 20:10:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PLRQRffAGG4lkRSCYN5lQ2SXkSNYIELAu+UN1jwez8M=; b=XbQ5i5trTR9zvT
	s/HsrZ0/V5f/I8TXhYxjK9FrxpgPFV4CNKYiyfzXBvgbkJuRH5N5KpEuLWh0Anatkeu2PsTy0yv+8
	fzKtkAmgF6iQncAvZcBBFWkjOhB0WUB4EGbw3sDiWRp5DbvfiDB/bd27ZxsSLmKfFoWTbZ6A2lySU
	lnVrwNrspwWlpJdunX3DXoxCEI0WXtqccA7usRMoMBF4KfmcmxoWgVrVNho509UojpbvIvRe8etaL
	FB1tcg7eVUUNHNDZbmdrNle6pKTVUw7vd0bQuE3AYsmIq9uAe6cttCjZCXI2kCQsYOlVsajDeOGGU
	wURwUDHIH4DFugB7+mSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcC7m-0005zC-4F; Fri, 22 May 2020 18:10:26 +0000
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcC7d-0005yL-Ao
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 18:10:19 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 002A727E06AA;
 Fri, 22 May 2020 20:10:16 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id R-U1f_76ElBJ; Fri, 22 May 2020 20:10:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 43C3A27E1552;
 Fri, 22 May 2020 20:10:15 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 43C3A27E1552
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1590171015;
 bh=bK83LII32CYIXyNdBCoJRVs5oREoCEW0+9bccKTq9hk=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=NVtj+Ij+ss4G7UKccUqDpaqJ6k3alv4FFmlutBMH6TKECR4B9pdEfjUey3hS29asP
 k4AzlgGLkGIHc7LSyAhWmtBYuCuO97RXvvmJInVeW9rkiPh625qIIX98U6vAdUaMxt
 abGB0OGkTCP4INpZmk7pAhPs1rTMvOKkR1/ZqyWw=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id efYqJTyB0HMQ; Fri, 22 May 2020 20:10:15 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 286DD27E06AA;
 Fri, 22 May 2020 20:10:15 +0200 (CEST)
Date: Fri, 22 May 2020 20:10:14 +0200 (CEST)
From: =?utf-8?Q?Cl=C3=A9ment?= Leger <cleger@kalray.eu>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Message-ID: <1334263091.4218509.1590171014972.JavaMail.zimbra@kalray.eu>
In-Reply-To: <1739080680.4218297.1590170621467.JavaMail.zimbra@kalray.eu>
References: <20200325204701.16862-1-s-anna@ti.com>
 <20200325204701.16862-4-s-anna@ti.com> <20200521180417.GJ408178@builder.lan>
 <997d6f9a-64ba-7a89-e909-9a5a474120b0@ti.com>
 <f15b0c6d-eee8-b839-0c79-a5316dbbfa7b@ti.com> <20200522173346.GJ11847@yoga>
 <1739080680.4218297.1590170621467.JavaMail.zimbra@kalray.eu>
Subject: Re: [PATCH 3/4] remoteproc: add support for a new 64-bit trace version
MIME-Version: 1.0
X-Originating-IP: [192.168.40.202]
X-Mailer: Zimbra 8.8.15_GA_3895 (ZimbraWebClient - GC81 (Linux)/8.8.15_GA_3895)
Thread-Topic: remoteproc: add support for a new 64-bit trace version
Thread-Index: L30XW51sgsk7NRKU7I+TV4VplJ8G6Xb707z7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_111017_703600_8E8F4EBA 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Loic PALLARDY <loic.pallardy@st.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Lokesh Vutla <lokeshvutla@ti.com>,
 linux-remoteproc <linux-remoteproc@vger.kernel.org>,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 s-anna <s-anna@ti.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgotLS0tLSBPbiAyMiBNYXksIDIwMjAsIGF0IDIwOjAzLCBDbMOpbWVudCBMZWdlciBjbGVnZXJA
a2FscmF5LmV1IHdyb3RlOgoKPiBIaSBTdW1hbiwKPiAKPiAtLS0tLSBPbiAyMiBNYXksIDIwMjAs
IGF0IDE5OjMzLCBCam9ybiBBbmRlcnNzb24gYmpvcm4uYW5kZXJzc29uQGxpbmFyby5vcmcKPiB3
cm90ZToKPiAKPj4gT24gRnJpIDIyIE1heSAwOTo1NCBQRFQgMjAyMCwgU3VtYW4gQW5uYSB3cm90
ZToKPj4gCj4+PiBPbiA1LzIxLzIwIDI6NDIgUE0sIFN1bWFuIEFubmEgd3JvdGU6Cj4+PiA+IEhp
IEJqb3JuLAo+Pj4gPiAKPj4+ID4gT24gNS8yMS8yMCAxOjA0IFBNLCBCam9ybiBBbmRlcnNzb24g
d3JvdGU6Cj4+PiA+ID4gT24gV2VkIDI1IE1hciAxMzo0NyBQRFQgMjAyMCwgU3VtYW4gQW5uYSB3
cm90ZToKPj4gWy4uXQo+Pj4gPiA+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvcmVtb3Rl
cHJvYy5oIGIvaW5jbHVkZS9saW51eC9yZW1vdGVwcm9jLmgKPj4gWy4uXQo+Pj4gPiA+ID4gK3N0
cnVjdCBmd19yc2NfdHJhY2UyIHsKPj4+ID4gPiAKPj4+ID4gPiBTb3VuZHMgbW9yZSBsaWtlIGZ3
X3JzY190cmFjZTY0IHRvIG1lIC0gaW4gcGFydGljdWxhciBzaW5jZSB0aGUgdmVyc2lvbgo+Pj4g
PiA+IG9mIHRyYWNlMiBpcyAxLi4uCj4+PiA+IAo+Pj4gPiBZZWFoLCB3aWxsIHJlbmFtZSB0aGlz
Lgo+Pj4gPiAKPj4+ID4gPiAKPj4+ID4gPiA+ICvCoMKgwqAgdTMyIHBhZGRpbmc7Cj4+PiA+ID4g
PiArwqDCoMKgIHU2NCBkYTsKPj4+ID4gPiA+ICvCoMKgwqAgdTMyIGxlbjsKPj4+ID4gPiA+ICvC
oMKgwqAgdTMyIHJlc2VydmVkOwo+Pj4gPiA+IAo+Pj4gPiA+IFdoYXQncyB0aGUgcHVycG9zZSBv
ZiB0aGlzIHJlc2VydmVkIGZpZWxkPwo+Pj4gPiAKPj4+ID4gUGFydGx5IHRvIG1ha2Ugc3VyZSB0
aGUgZW50aXJlIHJlc291cmNlIGlzIGFsaWduZWQgb24gYW4gOC1ieXRlLCBhbmQKPj4+ID4gcGFy
dGx5IGNvcGllZCBvdmVyIGZyb20gZndfcnNjX3RyYWNlIGVudHJ5LiBJIGd1ZXNzIDMyLWJpdHMg
aXMgYWxyZWFkeQo+Pj4gPiBsYXJnZSBlbm91Z2ggb2YgYSBzaXplIGZvciB0cmFjZSBlbnRyaWVz
IGlycmVzcGVjdGl2ZSBvZiAzMi1iaXQgb3IKPj4+ID4gNjQtYml0IHRyYWNlcywgc28gSSBkb3Vi
dCBpZiB3ZSB3YW50IHRvIG1ha2UgdGhlIGxlbiBmaWVsZCBhbHNvIGEgdTY0Lgo+Pj4gCj4+PiBM
b29raW5nIGF0IHRoaXMgYWdhaW4sIEkgY2FuIGRyb3AgYm90aCBwYWRkaW5nIGFuZCByZXNlcnZl
ZCBmaWVsZHMsIGlmIEkKPj4+IG1vdmUgdGhlIGxlbiBmaWVsZCBiZWZvcmUgZGEuIEFueSBwcmVm
ZXJlbmNlcy9jb21tZW50cz8KPiAKU29ycnksIG15IG1lc3NhZ2Ugd2VudCBhIGJpdCB0b28gZmFz
dC4uLiBTbyBhcyBJIHdhcyBzYXlpbmc6CgpOb3Qgb25seSB0aGUgaW4tc3RydWN0dXJlIGFsaWdu
bWVudCBtYXR0ZXJzIGJ1dCBhbHNvIGluIHRoZSByZXNvdXJjZSB0YWJsZS4KU2luY2UgdGhlIHJl
c291cmNlIHRhYmxlIGlzIG9mdGVuIHBhY2tlZCAoc2VlIFsxXSBmb3IgaW5zdGFuY2UpLCBpZiBh
IHRyYWNlCnJlc291cmNlIGlzIGVtYmVkZGVkIGluIHRoZSByZXNvdXJjZSB0YWJsZSBhZnRlciBh
bm90aGVyIHJlc291cmNlIGFsaWduZWQKb24gMzIgYml0cyBvbmx5LCB5b3VyIDY0IGJpdHMgdHJh
Y2UgZmllbGQgd2lsbCBwb3RlbnRpYWxseSBlbmQgdXAKbWlzYWxpZ25lZC4KClRvIG92ZXJjb21l
IHRoaXMsIHRoZXJlIGlzIG11bHRpcGxlIHNvbHV0aW9uczoKCi0gU3BsaXQgdGhlIDY0IGJpdHMg
ZmllbGRzIGludG8gMzJiaXRzIGxvdyBhbmQgaGlnaCBwYXJ0czoKU2luY2UgYWxsIHJlc291cmNl
cyBhcmUgYWxpZ25lZCBvbiAzMmJpdHMsIGl0IHdpbGwgYmUgb2sKCi0gVXNlIG1lbWNweV9mcm9t
L3RvX2lvIHdoZW4gcmVhZGluZy93cml0aW5nIHN1Y2ggZmllbGRzCkFzIEkgc2FpZCBpbiBhIHBy
ZXZpb3VzIG1lc3NhZ2UgdGhpcyBzaG91bGQgcHJvYmFibHkgYmUgdXNlZCBzaW5jZQp0aGUgbWVt
b3JpZXMgdGhhdCBhcmUgYWNjZXNzZWQgYnkgcnByb2MgYXJlIGlvIG1lbSAoaW9yZW1hcCBpbiBh
bG1vc3QKYWxsIGRyaXZlcnMpLgoKUmVnYXJkcywKCkNsw6ltZW50CgpbMV0gIGh0dHBzOi8vZ2l0
aHViLmNvbS9PcGVuQU1QL29wZW4tYW1wL2Jsb2IvbWFzdGVyL2FwcHMvbWFjaGluZS96eW5xbXBf
cjUvcnNjX3RhYmxlLmgKPiAKPiAKPiAKPiAKPj4+IAo+PiAKPj4gU291bmRzIGdvb2QgdG8gbWUu
Cj4+IAo+PiBUaGFua3MsCj4gPiBCam9ybgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
