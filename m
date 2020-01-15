Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 463DA13BE66
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 12:29:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4OcZvQZgTqxlGEgYloA06U07LwE33HKjs6yqTxP3Ki4=; b=Ow6lpAI2q/U26yXdMwcLXvd73
	1uUeOKWypiYbTg5yuABo/bgHs+i9p6wJeqYL9I6/Aqts/cfqW6a2USMOX/7aUppowXTGa5vuRJI0L
	k6zP2BJAR31PuGLoCiv3prUU+oQbE42+rfk8JQ0KxB+QDwgzt22rW6L14zdhkak5vtbmaDMXShCMd
	qg0rCZcOA2jtnJJgZaKctqr1OB37UVNBupWfW98YaiiCnSb9jaP0IS1fevZh7JjtIMjcI1PWLtFiZ
	67VkEAa9VSrBBkYVh4fFJzaSYzd1s51pEypBUEQaHhF9o5fhGA0HqksFR91oFOcvWXPeItTOA0YJe
	GtgUhcmBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irgrn-00088D-2O; Wed, 15 Jan 2020 11:29:43 +0000
Received: from mail.dlink.ru ([178.170.168.18] helo=fd.dlink.ru)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irgrb-000872-Rb; Wed, 15 Jan 2020 11:29:36 +0000
Received: by fd.dlink.ru (Postfix, from userid 5000)
 id B75601B213C1; Wed, 15 Jan 2020 14:29:26 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 fd.dlink.ru B75601B213C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dlink.ru; s=mail;
 t=1579087766; bh=pO09eBH+n2lZ2OjGmzhiwfRxx2EMdmCQb5JHVBFGHaw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References;
 b=aENVgX9FSgGjyihn1SmE+sRwey7gimCFdJaf9rGTQmauEZlhygWwZe7vF2VU6JskK
 l/YNjjCtrykEIKcXZbGa0qi8w9fSGiTtnSpJ8TAC3UI9y4RXZ7qFQ9VFpXgnoNhssW
 Meycg8dFiGT7MIXAb/WIuFpXv21+fCQ+gBv2+VHM=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dlink.ru
X-Spam-Level: 
X-Spam-Status: No, score=-96.3 required=7.5 tests=BAYES_99,BAYES_999,
 URIBL_BLOCKED,USER_IN_WHITELIST autolearn=disabled version=3.4.2
Received: from mail.rzn.dlink.ru (mail.rzn.dlink.ru [178.170.168.13])
 by fd.dlink.ru (Postfix) with ESMTP id 1451B1B202CB;
 Wed, 15 Jan 2020 14:29:15 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 fd.dlink.ru 1451B1B202CB
Received: from mail.rzn.dlink.ru (localhost [127.0.0.1])
 by mail.rzn.dlink.ru (Postfix) with ESMTP id A45281B20AE9;
 Wed, 15 Jan 2020 14:29:14 +0300 (MSK)
Received: from mail.rzn.dlink.ru (localhost [127.0.0.1])
 by mail.rzn.dlink.ru (Postfix) with ESMTPA;
 Wed, 15 Jan 2020 14:29:14 +0300 (MSK)
MIME-Version: 1.0
Date: Wed, 15 Jan 2020 14:29:14 +0300
From: Alexander Lobakin <alobakin@dlink.ru>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH RFC net-next 05/19] net: dsa: tag_ar9331: add GRO callbacks
In-Reply-To: <f04b112147bbe35f6e5c73d96c456bd4@dlink.ru>
References: <20191230143028.27313-1-alobakin@dlink.ru>
 <20191230143028.27313-6-alobakin@dlink.ru>
 <ee6f83fd-edf4-5a98-9868-4cbe9e226b9b@gmail.com>
 <ed0ad0246c95a9ee87352d8ddbf0d4a1@dlink.ru>
 <CA+h21hoSoZT+ieaOu8N=MCSqkzey0L6HeoXSyLtHjZztT0S9ug@mail.gmail.com>
 <0002a7388dfd5fb70db4b43a6c521c52@dlink.ru>
 <CA+h21hqZoLrU7nL3Vo0KcmFnOxNxQPwoOVSEd6styyjK7XO+5w@mail.gmail.com>
 <129bf2bc-c0e9-02a3-7d40-0f7920803769@gmail.com>
 <f04b112147bbe35f6e5c73d96c456bd4@dlink.ru>
User-Agent: Roundcube Webmail/1.4.0
Message-ID: <82f4cd224d0d0b2b689048a82d790a6e@dlink.ru>
X-Sender: alobakin@dlink.ru
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_032932_256435_B201B354 
X-CRM114-Status: GOOD (  15.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.170.168.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Song Liu <songliubraving@fb.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 Yoshiki Komachi <komachi.yoshiki@gmail.com>,
 lkml <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Stanislav Fomichev <sdf@google.com>, Matteo Croce <mcroce@redhat.com>,
 Edward Cree <ecree@solarflare.com>, Jakub Sitnicki <jakub@cloudflare.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Paolo Abeni <pabeni@redhat.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 Sean Wang <sean.wang@mediatek.com>, Jiri Pirko <jiri@mellanox.com>,
 "moderated list:ARM/Mediatek SoC
 support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, netdev <netdev@vger.kernel.org>,
 Paul Blakey <paulb@mellanox.com>,
 Stephen Hemminger <stephen@networkplumber.org>,
 Vladimir Oltean <olteanv@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 Taehee Yoo <ap420073@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxleGFuZGVyIExvYmFraW4gd3JvdGUgMTUuMDEuMjAyMCAxMDozODoKPiBGbG9yaWFuIEZhaW5l
bGxpIHdyb3RlIDE1LjAxLjIwMjAgMDA6NTY6Cj4+IE9uIDEvMTMvMjAgMjoyOCBBTSwgVmxhZGlt
aXIgT2x0ZWFuIHdyb3RlOgo+Pj4gT24gTW9uLCAxMyBKYW4gMjAyMCBhdCAxMTo0NiwgQWxleGFu
ZGVyIExvYmFraW4gPGFsb2Jha2luQGRsaW5rLnJ1PiAKPj4+IHdyb3RlOgo+Pj4+IAo+Pj4+IFZs
YWRpbWlyIE9sdGVhbiB3cm90ZSAxMy4wMS4yMDIwIDEyOjQyOgo+Pj4+PiBIaSBBbGV4YW5kZXIs
Cj4+Pj4+IAo+Pj4+PiBPbiBNb24sIDEzIEphbiAyMDIwIGF0IDExOjIyLCBBbGV4YW5kZXIgTG9i
YWtpbiA8YWxvYmFraW5AZGxpbmsucnU+Cj4+Pj4+IHdyb3RlOgo+Pj4+Pj4gCj4+Pj4+PiBDUFUg
cG9ydHMgY2FuJ3QgYmUgYnJpZGdlZCBhbnl3YXkKPj4+Pj4+IAo+Pj4+Pj4gUmVnYXJkcywKPj4+
Pj4+IOGatyDhm5Yg4ZqiIOGapiDhmqAg4ZqxCj4+Pj4+IAo+Pj4+PiBUaGUgZmFjdCB0aGF0IENQ
VSBwb3J0cyBjYW4ndCBiZSBicmlkZ2VkIGlzIGFscmVhZHkgbm90IGlkZWFsLgo+Pj4+PiBPbmUg
Y2FuIGhhdmUgYSBEU0Egc3dpdGNoIHdpdGggY2FzY2FkZWQgc3dpdGNoZXMgb24gZWFjaCBwb3J0
LCBzbyAKPj4+Pj4gaXQKPj4+Pj4gYWN0cyBsaWtlIE4gRFNBIG1hc3RlcnMgKG5vdCBhcyBEU0Eg
bGlua3MsIHNpbmNlIHRoZSB0YWdnZXJzIGFyZQo+Pj4+PiBpbmNvbXBhdGlibGUpLCB3aXRoIGVh
Y2ggc3dpdGNoIGZvcm1pbmcgaXRzIG93biB0cmVlLiBJdCBpcyAKPj4+Pj4gZGVzaXJhYmxlCj4+
Pj4+IHRoYXQgdGhlIHBvcnRzIG9mIHRoZSBEU0Egc3dpdGNoIG9uIHRvcCBhcmUgYnJpZGdlZCwg
c28gdGhhdAo+Pj4+PiBmb3J3YXJkaW5nIGJldHdlZW4gY2FzY2FkZWQgc3dpdGNoZXMgZG9lcyBu
b3QgcGFzcyB0aHJvdWdoIHRoZSBDUFUuCj4+Pj4gCj4+Pj4gT2gsIEkgc2VlLiBCdXQgY3VycmVu
dGx5IERTQSBpbmZyYSBmb3JiaWRzIHRoZSBhZGRpbmcgRFNBIG1hc3RlcnMgdG8KPj4+PiBicmlk
Z2VzIElJUkMuIENhbid0IG5hbWUgaXQgZ29vZCBvciBiYWQgZGVjaXNpb24sIGJ1dCB3YXMgaW50
cm9kdWNlZAo+Pj4+IHRvIHByZXZlbnQgYWNjaWRlbnRhbCBwYWNrZXQgZmxvdyBicmVha2luZyBv
biBEU0Egc2V0dXBzLgo+Pj4+IAo+Pj4gCj4+PiBJIGp1c3Qgd2FudGVkIHRvIHBvaW50IG91dCB0
aGF0IHNvbWUgcGVvcGxlIGFyZSBnb2luZyB0byBiZSBsb29raW5nIAo+Pj4gYXQKPj4+IHdheXMg
Ynkgd2hpY2ggdGhlIEVUSF9QX1hEU0EgaGFuZGxlciBjYW4gYmUgbWFkZSB0byBwbGF5IG5pY2Ug
d2l0aCAKPj4+IHRoZQo+Pj4gbWFzdGVyJ3MgcnhfaGFuZGxlciwgYW5kIHRoYXQgaXQgd291bGQg
YmUgbmljZSB0byBhdCBsZWFzdCBub3QgbWFrZQo+Pj4gdGhlIGxpbWl0YXRpb24gd29yc2UgdGhh
biBpdCBpcyBieSBjb252ZXJ0aW5nIGV2ZXJ5dGhpbmcgdG8KPj4+IHJ4X2hhbmRsZXJzICh3aGlj
aCAiY3VycmVudGx5IiBjYW4ndCBiZSBzdGFja2VkLCBmcm9tIHRoZSBjb21tZW50cyBpbgo+Pj4g
bmV0ZGV2aWNlLmgpLgo+PiAKPj4gSSBhbSBub3Qgc3VyZSB0aGlzIHdvdWxkIGNoYW5nZSB0aGUg
c2l0dWF0aW9uIG11Y2gsIHRvZGF5IHdlIGNhbm5vdCAKPj4gaGF2ZQo+PiBhbnl0aGluZyBidXQg
c3dpdGNoIHRhZ3MgdHJhdmVsIG9uIHRoZSBEU0EgbWFzdGVyIG5ldHdvcmsgZGV2aWNlLAo+PiB3
aGV0aGVyIHdlIGFjY29tcGxpc2ggdGhlIFJYIHRhcCB0aHJvdWdoIGEgc3BlY2lhbCBza2ItPnBy
b3RvY29sIHZhbHVlCj4+IG9yIHZpYSByeF9oYW5kbGVyLCBpdCBwcm9iYWJseSBkb2VzIG5vdCBm
dW5jdGlvbmFsbHkgbWF0dGVyLCBidXQgaXQKPj4gY291bGQgY2hhbmdlIHRoZSBwZXJmb3JtYW5j
ZS4KPiAKPiBBcyBmb3Igbm93LCBJIHRoaW5rIHRoYXQgd2Ugc2hvdWxkIGtlZXAgdGhpcyBSRkMg
YXMgaXQgaXMgc28KPiBkZXZlbG9wZXJzIHdvcmtpbmcgd2l0aCBkaWZmZXJlbnQgRFNBIHN3aXRj
aGVzIGNvdWxkIHRlc3QgaXQgb3IKPiBpbXBsZW1lbnQgR1JPIG9mZmxvYWQgZm9yIG90aGVyIHRh
Z2dlcnMgbGlrZSBEU0EgYW5kIEVEU0EsICpidXQqCj4gYW55IGZ1dHVyZSB3b3JrIG9uIHRoaXMg
c2hvdWxkIGNvbWUgb25seSB3aGVuIHdlJ2xsIHJldmlzZS9yZWltYWdpbmUKPiBiYXNpYyBEU0Eg
cGFja2V0IGZsb3csIGFzIHdlIGFscmVhZHkga25vdyAoYXQgbGVhc3QgbWUgYW5kIEZsb3JpYW4K
PiByZXByb2R1Y2UgaXQgd2VsbCkgdGhhdCB0aGUgY3VycmVudCBwYXRoIHRocm91Z2ggdW5saWtl
bHkgYnJhbmNoZXMKPiBpbiBldGhfdHlwZV90cmFucygpIGFuZCBmcmFtZSBjYXB0dXJpbmcgdGhy
b3VnaCBwYWNrZXRfdHlwZSBpcyBzbwo+IHN1Ym9wdGltYWwgdGhhdCBuZWFybHkgZGVzdHJveXMg
b3ZlcmFsbCBwZXJmb3JtYW5jZSBvbiBzZXZlcmFsCj4gc2V0dXBzLgoKV2VsbCwgSSBoYWQgZW5v
dWdoIGZyZWUgdGltZSB0b2RheSB0byB3cml0ZSBhbmQgdGVzdCBzb3J0IG9mCmJsdWVwcmludC1s
aWtlIERTQSB2aWEgLnJ4X2hhbmRsZXIoKSB0byBjb21wYXJlIGl0IHdpdGggdGhlIGN1cnJlbnQK
ZmxvdyBhbmQgZ2V0IGF0IGxlYXN0IGJhc2ljIHBpY3R1cmUgb2Ygd2hhdCdzIGdvaW5nIG9uLgoK
SSBjaG9zZSBhIDYwMCBNSHogVVAgTUlQUyBzeXN0ZW0gdG8gbWFrZSBhIGRpZmZlcmVuY2UgbW9y
ZSBub3RpY2VhYmxlCmFzIG1vcmUgcG93ZXJmdWwgc3lzdGVtcyB0ZW5kIHRvIG1pdGlnYXRlIHBs
ZW50eSBvZiBkaWZmZXJlbnQgImhlYXZ5Igpjb3JuZXJzIGFuZCBtaXNzZXMuCkV0aGVybmV0IGRy
aXZlciBmb3IgQ1BVIHBvcnQgdXNlcyBCUUwgYW5kIERJTSwgYXMgd2VsbCBhcyBoYXJkd2FyZSBU
U08uCkEgbWluaW1hbCBHUk8gb3ZlciBEU0EgaXMgYWxzbyBlbmFibGVkLiBUaGUgY29kZWJhc2Ug
aXMgTGludXggNS41LXJjNi4KSSB1c2Ugc2ltcGxlIFZMQU4gTkFUICh3aXRoIG5mdCBmbG93IG9m
ZmxvYWQpLCBpcGVyZjMsIElQdjQgKyBUQ1AuCgpNYWlubGluZSBEU0EgUnggcHJvY2Vzc2luZywg
b25lIGZsb3c6CgpbIElEXSBJbnRlcnZhbCAgICAgICAgICAgVHJhbnNmZXIgICAgIEJpdHJhdGUg
ICAgICAgICBSZXRyClsgIDVdICAgMC4wMC02MC4wMCAgc2VjICA0LjMwIEdCeXRlcyAgIDYxNSBN
Yml0cy9zZWMgIDIwOTEgICBzZW5kZXIKWyAgNV0gICAwLjAwLTYwLjAxICBzZWMgIDQuMzAgR0J5
dGVzICAgNjE1IE1iaXRzL3NlYyAgICAgICAgIHJlY2VpdmVyCgoxMCBmbG93czoKClsgSURdIElu
dGVydmFsICAgICAgICAgICBUcmFuc2ZlciAgICAgQml0cmF0ZSAgICAgICAgIFJldHIKWyAgNV0g
ICAwLjAwLTYwLjAwICBzZWMgICA0MTQgTUJ5dGVzICA1Ny45IE1iaXRzL3NlYyAgNDYwICAgIHNl
bmRlcgpbICA1XSAgIDAuMDAtNjAuMDEgIHNlYyAgIDQxMyBNQnl0ZXMgIDU3LjcgTWJpdHMvc2Vj
ICAgICAgICAgcmVjZWl2ZXIKWyAgN10gICAwLjAwLTYwLjAwICBzZWMgICAzOTIgTUJ5dGVzICA1
NC44IE1iaXRzL3NlYyAgNDk3ICAgIHNlbmRlcgpbICA3XSAgIDAuMDAtNjAuMDEgIHNlYyAgIDM5
MSBNQnl0ZXMgIDU0LjYgTWJpdHMvc2VjICAgICAgICAgcmVjZWl2ZXIKWyAgOV0gICAwLjAwLTYw
LjAwICBzZWMgICAzOTEgTUJ5dGVzICA1NC42IE1iaXRzL3NlYyAgNDM4ICAgIHNlbmRlcgpbICA5
XSAgIDAuMDAtNjAuMDEgIHNlYyAgIDM4OSBNQnl0ZXMgIDU0LjQgTWJpdHMvc2VjICAgICAgICAg
cmVjZWl2ZXIKWyAxMV0gICAwLjAwLTYwLjAwICBzZWMgICAzODMgTUJ5dGVzICA1My41IE1iaXRz
L3NlYyAgNDcyICAgIHNlbmRlcgpbIDExXSAgIDAuMDAtNjAuMDEgIHNlYyAgIDM4MiBNQnl0ZXMg
IDUzLjQgTWJpdHMvc2VjICAgICAgICAgcmVjZWl2ZXIKWyAxM10gICAwLjAwLTYwLjAwICBzZWMg
ICA0MDQgTUJ5dGVzICA1Ni41IE1iaXRzL3NlYyAgNDY2ICAgIHNlbmRlcgpbIDEzXSAgIDAuMDAt
NjAuMDEgIHNlYyAgIDQwMyBNQnl0ZXMgIDU2LjMgTWJpdHMvc2VjICAgICAgICAgcmVjZWl2ZXIK
WyAxNV0gICAwLjAwLTYwLjAwICBzZWMgICA0NTMgTUJ5dGVzICA2My40IE1iaXRzL3NlYyAgNDkw
ICAgIHNlbmRlcgpbIDE1XSAgIDAuMDAtNjAuMDEgIHNlYyAgIDQ1MiBNQnl0ZXMgIDYzLjEgTWJp
dHMvc2VjICAgICAgICAgcmVjZWl2ZXIKWyAxN10gICAwLjAwLTYwLjAwICBzZWMgICA0NjEgTUJ5
dGVzICA2NC40IE1iaXRzL3NlYyAgNDMwICAgIHNlbmRlcgpbIDE3XSAgIDAuMDAtNjAuMDEgIHNl
YyAgIDQ1OSBNQnl0ZXMgIDY0LjIgTWJpdHMvc2VjICAgICAgICAgcmVjZWl2ZXIKWyAxOV0gICAw
LjAwLTYwLjAwICBzZWMgICAzNjUgTUJ5dGVzICA1MS4wIE1iaXRzL3NlYyAgNDkzICAgIHNlbmRl
cgpbIDE5XSAgIDAuMDAtNjAuMDEgIHNlYyAgIDM2NCBNQnl0ZXMgIDUwLjkgTWJpdHMvc2VjICAg
ICAgICAgcmVjZWl2ZXIKWyAyMV0gICAwLjAwLTYwLjAwICBzZWMgICA0MDcgTUJ5dGVzICA1Ni45
IE1iaXRzL3NlYyAgNTE3ICAgIHNlbmRlcgpbIDIxXSAgIDAuMDAtNjAuMDEgIHNlYyAgIDQwNSBN
Qnl0ZXMgIDU2LjcgTWJpdHMvc2VjICAgICAgICAgcmVjZWl2ZXIKWyAyM10gICAwLjAwLTYwLjAw
ICBzZWMgICA0ODYgTUJ5dGVzICA2OC4wIE1iaXRzL3NlYyAgNDU4ICAgIHNlbmRlcgpbIDIzXSAg
IDAuMDAtNjAuMDEgIHNlYyAgIDQ4NCBNQnl0ZXMgIDY3LjcgTWJpdHMvc2VjICAgICAgICAgcmVj
ZWl2ZXIKW1NVTV0gICAwLjAwLTYwLjAwICBzZWMgIDQuMDYgR0J5dGVzICAgNTgxIE1iaXRzL3Nl
YyAgNDcyMSAgIHNlbmRlcgpbU1VNXSAgIDAuMDAtNjAuMDEgIHNlYyAgNC4wNCBHQnl0ZXMgICA1
NzkgTWJpdHMvc2VjICAgICAgICAgcmVjZWl2ZXIKCi5yeF9oYW5kbGVyKCksIG9uZSBmbG93OgoK
WyBJRF0gSW50ZXJ2YWwgICAgICAgICAgIFRyYW5zZmVyICAgICBCaXRyYXRlICAgICAgICAgUmV0
cgpbICA1XSAgIDAuMDAtNjAuMDAgIHNlYyAgNC40MCBHQnl0ZXMgICA2MzAgTWJpdHMvc2VjICA4
NTMgICAgc2VuZGVyClsgIDVdICAgMC4wMC02MC4wMSAgc2VjICA0LjQwIEdCeXRlcyAgIDYzMCBN
Yml0cy9zZWMgICAgICAgICByZWNlaXZlcgoKQW5kIDEwOgoKWyBJRF0gSW50ZXJ2YWwgICAgICAg
ICAgIFRyYW5zZmVyICAgICBCaXRyYXRlICAgICAgICAgUmV0cgpbICA1XSAgIDAuMDAtNjAuMDAg
IHNlYyAgIDQ0MCBNQnl0ZXMgIDYxLjUgTWJpdHMvc2VjICA1NTEgICAgc2VuZGVyClsgIDVdICAg
MC4wMC02MC4wMSAgc2VjICAgNDM5IE1CeXRlcyAgNjEuNCBNYml0cy9zZWMgICAgICAgICByZWNl
aXZlcgpbICA3XSAgIDAuMDAtNjAuMDAgIHNlYyAgIDQ1NSBNQnl0ZXMgIDYzLjYgTWJpdHMvc2Vj
ICA0OTYgICAgc2VuZGVyClsgIDddICAgMC4wMC02MC4wMSAgc2VjICAgNDU0IE1CeXRlcyAgNjMu
NCBNYml0cy9zZWMgICAgICAgICByZWNlaXZlcgpbICA5XSAgIDAuMDAtNjAuMDAgIHNlYyAgIDQ4
NCBNQnl0ZXMgIDY3LjcgTWJpdHMvc2VjICA1MzIgICAgc2VuZGVyClsgIDldICAgMC4wMC02MC4w
MSAgc2VjICAgNDgzIE1CeXRlcyAgNjcuNSBNYml0cy9zZWMgICAgICAgICByZWNlaXZlcgpbIDEx
XSAgIDAuMDAtNjAuMDAgIHNlYyAgIDU5OCBNQnl0ZXMgIDgzLjYgTWJpdHMvc2VjICA0NTIgICAg
c2VuZGVyClsgMTFdICAgMC4wMC02MC4wMSAgc2VjICAgNTk2IE1CeXRlcyAgODMuMyBNYml0cy9z
ZWMgICAgICAgICByZWNlaXZlcgpbIDEzXSAgIDAuMDAtNjAuMDAgIHNlYyAgIDQyNyBNQnl0ZXMg
IDU5LjcgTWJpdHMvc2VjICA1MzkgICAgc2VuZGVyClsgMTNdICAgMC4wMC02MC4wMSAgc2VjICAg
NDI2IE1CeXRlcyAgNTkuNSBNYml0cy9zZWMgICAgICAgICByZWNlaXZlcgpbIDE1XSAgIDAuMDAt
NjAuMDAgIHNlYyAgIDQ2OSBNQnl0ZXMgIDY1LjUgTWJpdHMvc2VjICA0NjYgICAgc2VuZGVyClsg
MTVdICAgMC4wMC02MC4wMSAgc2VjICAgNDY3IE1CeXRlcyAgNjUuMyBNYml0cy9zZWMgICAgICAg
ICByZWNlaXZlcgpbIDE3XSAgIDAuMDAtNjAuMDAgIHNlYyAgIDQ2MyBNQnl0ZXMgIDY0LjcgTWJp
dHMvc2VjICA0NzIgICAgc2VuZGVyClsgMTddICAgMC4wMC02MC4wMSAgc2VjICAgNDYyIE1CeXRl
cyAgNjQuNSBNYml0cy9zZWMgICAgICAgICByZWNlaXZlcgpbIDE5XSAgIDAuMDAtNjAuMDAgIHNl
YyAgIDUzMyBNQnl0ZXMgIDc0LjUgTWJpdHMvc2VjICA0NDcgICAgc2VuZGVyClsgMTldICAgMC4w
MC02MC4wMSAgc2VjICAgNTMyIE1CeXRlcyAgNzQuMyBNYml0cy9zZWMgICAgICAgICByZWNlaXZl
cgpbIDIxXSAgIDAuMDAtNjAuMDAgIHNlYyAgIDQ0NCBNQnl0ZXMgIDYyLjEgTWJpdHMvc2VjICA1
MjcgICAgc2VuZGVyClsgMjFdICAgMC4wMC02MC4wMSAgc2VjICAgNDQzIE1CeXRlcyAgNjEuOSBN
Yml0cy9zZWMgICAgICAgICByZWNlaXZlcgpbIDIzXSAgIDAuMDAtNjAuMDAgIHNlYyAgIDUwMCBN
Qnl0ZXMgIDY5LjkgTWJpdHMvc2VjICA0NDkgICAgc2VuZGVyClsgMjNdICAgMC4wMC02MC4wMSAg
c2VjICAgNDk5IE1CeXRlcyAgNjkuOCBNYml0cy9zZWMgICAgICAgICByZWNlaXZlcgpbU1VNXSAg
IDAuMDAtNjAuMDAgIHNlYyAgNC43MCBHQnl0ZXMgICA2NzMgTWJpdHMvc2VjICA0OTMxICAgc2Vu
ZGVyCltTVU1dICAgMC4wMC02MC4wMSAgc2VjICA0LjY5IEdCeXRlcyAgIDY3MSBNYml0cy9zZWMg
ICAgICAgICByZWNlaXZlcgoKUHJldHR5IHNpZ25pZmljYW50IHN0YXRzLiBUaGlzIGhhcHBlbnMg
bm90IG9ubHkgYmVjYXVzZSB3ZSBnZXQgcmlkIG9mCm91dC1vZi1saW5lIHVubGlrZWx5KCkgYnJh
bmNoZXMgKHdoaWNoIGFyZSBuYXR1cmFsIGtpbGxlcnMsIGF0IGxlYXN0Cm9uIE1JUFMpLCBidXQg
YWxzbyBiZWNhdXNlIHdlIGRvbid0IG5lZWQgdG8gY2FsbCBuZXRpZl9yZWNlaXZlX3NrYigpCmZv
ciB0aGUgc2Vjb25kIHRpbWUgLS0gd2UgbWlnaHQganVzdCByZXR1cm4gUlhfSEFORExFUl9BTk9U
SEVSIGFuZApSeCBwYXRoIGJlY29tZXMgdGhlbiBub3QgbXVjaCBsb25nZXIgdGhhbiBpbiBjYXNl
IG9mIHNpbXBsZSBWTEFOIHRhZwpyZW1vdmFsIChfbmV0L2NvcmUvZGV2LmM6NTA1Nl8pLgoKVGhp
cyBzaG91bGQgZ2V0IG1vcmUgYXR0ZW50aW9uIGFuZCB0ZXN0cyBvbiBhIHdpZGUgdmFyaWV0eSBv
ZiBvdGhlcgpzeXN0ZW1zLCBvZiBjb3Vyc2UuCgo+IFN3aXRjaGluZyB0byBuZXRfZGV2aWNlOjpy
eF9oYW5kbGVyKCkgaXMganVzdCBvbmUgb2YgYWxsIHRoZSBwb3NzaWJsZQo+IHZhcmlhbnRzLCBJ
J20gc3VyZSB3ZSdsbCBmaW5kIHRoZSBiZXN0IHNvbHV0aW9uIHRvZ2V0aGVyLgo+IAo+IFJlZ2Fy
ZHMsCj4g4Zq3IOGbliDhmqIg4ZqmIOGaoCDhmrEKClJlZ2FyZHMsCuGatyDhm5Yg4ZqiIOGapiDh
mqAg4ZqxCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
