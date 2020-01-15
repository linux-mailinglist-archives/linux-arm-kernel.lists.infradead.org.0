Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A76A13BA63
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 08:38:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wcRDj8ABRnlVcTehWtNr6vO8VVPHLNhWuD74NAxnlLQ=; b=levc3EZB5wz+dYmsmVrfNrSwy
	c/ZQUHyCK8kT/J4col5M9ndMQwgB7C2Ma3MDADmbPaOx32h6KOPJAiD4RhUfHmI7pLM6lXw2NwlKz
	9yErBELgyYxA940PnhG83EeeDgHqnug1dfT8hirSAprC5f778c4HTWMEz0yS4OlTIg9woXT4xBqnS
	xN6TE2FomsxQrl4nHsKeoqGSimoZDZbKVVVkUAGYBhhYJyYh/Geqe9UgY2PKzFcZcDCVrtuNZqECL
	20kaPLSdEQ1+OAQR/zZsv98i9XNNHEq0ltbfu3THNMHfZ/qML9ok9aBhW41FiDviAOZyiomlJZt4l
	iBjrgPeHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irdGF-0007xU-Mw; Wed, 15 Jan 2020 07:38:43 +0000
Received: from mail.dlink.ru ([178.170.168.18] helo=fd.dlink.ru)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irdG1-0007wp-Lx; Wed, 15 Jan 2020 07:38:34 +0000
Received: by fd.dlink.ru (Postfix, from userid 5000)
 id 444801B20857; Wed, 15 Jan 2020 10:38:28 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 fd.dlink.ru 444801B20857
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dlink.ru; s=mail;
 t=1579073908; bh=CxEiSPavtIlJWlMwr6AuhfGibqHNMwLCY9kUK5W5q30=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References;
 b=Cv7wHqPl+qAWKunjxq0HVohvH8s53UaBFABoCjAulPPLJMqFJG7beeKbMhXE/H6be
 n0Ooygzk2gUgMhvTzO1u983m4Pnyr2CZtDtnuMoD93BD3x7UuE0zCErcaK3Ilpzc8k
 vllgAZBKuZDXVehg1W6XgS7DdYy25158dtcMywxo=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dlink.ru
X-Spam-Level: 
X-Spam-Status: No, score=-99.2 required=7.5 tests=BAYES_50,URIBL_BLOCKED,
 USER_IN_WHITELIST autolearn=disabled version=3.4.2
Received: from mail.rzn.dlink.ru (mail.rzn.dlink.ru [178.170.168.13])
 by fd.dlink.ru (Postfix) with ESMTP id 257691B20968;
 Wed, 15 Jan 2020 10:38:21 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 fd.dlink.ru 257691B20968
Received: from mail.rzn.dlink.ru (localhost [127.0.0.1])
 by mail.rzn.dlink.ru (Postfix) with ESMTP id 243EB1B21422;
 Wed, 15 Jan 2020 10:38:20 +0300 (MSK)
Received: from mail.rzn.dlink.ru (localhost [127.0.0.1])
 by mail.rzn.dlink.ru (Postfix) with ESMTPA;
 Wed, 15 Jan 2020 10:38:20 +0300 (MSK)
MIME-Version: 1.0
Date: Wed, 15 Jan 2020 10:38:19 +0300
From: Alexander Lobakin <alobakin@dlink.ru>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH RFC net-next 05/19] net: dsa: tag_ar9331: add GRO callbacks
In-Reply-To: <129bf2bc-c0e9-02a3-7d40-0f7920803769@gmail.com>
References: <20191230143028.27313-1-alobakin@dlink.ru>
 <20191230143028.27313-6-alobakin@dlink.ru>
 <ee6f83fd-edf4-5a98-9868-4cbe9e226b9b@gmail.com>
 <ed0ad0246c95a9ee87352d8ddbf0d4a1@dlink.ru>
 <CA+h21hoSoZT+ieaOu8N=MCSqkzey0L6HeoXSyLtHjZztT0S9ug@mail.gmail.com>
 <0002a7388dfd5fb70db4b43a6c521c52@dlink.ru>
 <CA+h21hqZoLrU7nL3Vo0KcmFnOxNxQPwoOVSEd6styyjK7XO+5w@mail.gmail.com>
 <129bf2bc-c0e9-02a3-7d40-0f7920803769@gmail.com>
User-Agent: Roundcube Webmail/1.4.0
Message-ID: <f04b112147bbe35f6e5c73d96c456bd4@dlink.ru>
X-Sender: alobakin@dlink.ru
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_233830_102477_497201DB 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.170.168.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

RmxvcmlhbiBGYWluZWxsaSB3cm90ZSAxNS4wMS4yMDIwIDAwOjU2Ogo+IE9uIDEvMTMvMjAgMjoy
OCBBTSwgVmxhZGltaXIgT2x0ZWFuIHdyb3RlOgo+PiBPbiBNb24sIDEzIEphbiAyMDIwIGF0IDEx
OjQ2LCBBbGV4YW5kZXIgTG9iYWtpbiA8YWxvYmFraW5AZGxpbmsucnU+IAo+PiB3cm90ZToKPj4+
IAo+Pj4gVmxhZGltaXIgT2x0ZWFuIHdyb3RlIDEzLjAxLjIwMjAgMTI6NDI6Cj4+Pj4gSGkgQWxl
eGFuZGVyLAo+Pj4+IAo+Pj4+IE9uIE1vbiwgMTMgSmFuIDIwMjAgYXQgMTE6MjIsIEFsZXhhbmRl
ciBMb2Jha2luIDxhbG9iYWtpbkBkbGluay5ydT4KPj4+PiB3cm90ZToKPj4+Pj4gCj4+Pj4+IENQ
VSBwb3J0cyBjYW4ndCBiZSBicmlkZ2VkIGFueXdheQo+Pj4+PiAKPj4+Pj4gUmVnYXJkcywKPj4+
Pj4g4Zq3IOGbliDhmqIg4ZqmIOGaoCDhmrEKPj4+PiAKPj4+PiBUaGUgZmFjdCB0aGF0IENQVSBw
b3J0cyBjYW4ndCBiZSBicmlkZ2VkIGlzIGFscmVhZHkgbm90IGlkZWFsLgo+Pj4+IE9uZSBjYW4g
aGF2ZSBhIERTQSBzd2l0Y2ggd2l0aCBjYXNjYWRlZCBzd2l0Y2hlcyBvbiBlYWNoIHBvcnQsIHNv
IGl0Cj4+Pj4gYWN0cyBsaWtlIE4gRFNBIG1hc3RlcnMgKG5vdCBhcyBEU0EgbGlua3MsIHNpbmNl
IHRoZSB0YWdnZXJzIGFyZQo+Pj4+IGluY29tcGF0aWJsZSksIHdpdGggZWFjaCBzd2l0Y2ggZm9y
bWluZyBpdHMgb3duIHRyZWUuIEl0IGlzIAo+Pj4+IGRlc2lyYWJsZQo+Pj4+IHRoYXQgdGhlIHBv
cnRzIG9mIHRoZSBEU0Egc3dpdGNoIG9uIHRvcCBhcmUgYnJpZGdlZCwgc28gdGhhdAo+Pj4+IGZv
cndhcmRpbmcgYmV0d2VlbiBjYXNjYWRlZCBzd2l0Y2hlcyBkb2VzIG5vdCBwYXNzIHRocm91Z2gg
dGhlIENQVS4KPj4+IAo+Pj4gT2gsIEkgc2VlLiBCdXQgY3VycmVudGx5IERTQSBpbmZyYSBmb3Ji
aWRzIHRoZSBhZGRpbmcgRFNBIG1hc3RlcnMgdG8KPj4+IGJyaWRnZXMgSUlSQy4gQ2FuJ3QgbmFt
ZSBpdCBnb29kIG9yIGJhZCBkZWNpc2lvbiwgYnV0IHdhcyBpbnRyb2R1Y2VkCj4+PiB0byBwcmV2
ZW50IGFjY2lkZW50YWwgcGFja2V0IGZsb3cgYnJlYWtpbmcgb24gRFNBIHNldHVwcy4KPj4+IAo+
PiAKPj4gSSBqdXN0IHdhbnRlZCB0byBwb2ludCBvdXQgdGhhdCBzb21lIHBlb3BsZSBhcmUgZ29p
bmcgdG8gYmUgbG9va2luZyBhdAo+PiB3YXlzIGJ5IHdoaWNoIHRoZSBFVEhfUF9YRFNBIGhhbmRs
ZXIgY2FuIGJlIG1hZGUgdG8gcGxheSBuaWNlIHdpdGggdGhlCj4+IG1hc3RlcidzIHJ4X2hhbmRs
ZXIsIGFuZCB0aGF0IGl0IHdvdWxkIGJlIG5pY2UgdG8gYXQgbGVhc3Qgbm90IG1ha2UKPj4gdGhl
IGxpbWl0YXRpb24gd29yc2UgdGhhbiBpdCBpcyBieSBjb252ZXJ0aW5nIGV2ZXJ5dGhpbmcgdG8K
Pj4gcnhfaGFuZGxlcnMgKHdoaWNoICJjdXJyZW50bHkiIGNhbid0IGJlIHN0YWNrZWQsIGZyb20g
dGhlIGNvbW1lbnRzIGluCj4+IG5ldGRldmljZS5oKS4KPiAKPiBJIGFtIG5vdCBzdXJlIHRoaXMg
d291bGQgY2hhbmdlIHRoZSBzaXR1YXRpb24gbXVjaCwgdG9kYXkgd2UgY2Fubm90IAo+IGhhdmUK
PiBhbnl0aGluZyBidXQgc3dpdGNoIHRhZ3MgdHJhdmVsIG9uIHRoZSBEU0EgbWFzdGVyIG5ldHdv
cmsgZGV2aWNlLAo+IHdoZXRoZXIgd2UgYWNjb21wbGlzaCB0aGUgUlggdGFwIHRocm91Z2ggYSBz
cGVjaWFsIHNrYi0+cHJvdG9jb2wgdmFsdWUKPiBvciB2aWEgcnhfaGFuZGxlciwgaXQgcHJvYmFi
bHkgZG9lcyBub3QgZnVuY3Rpb25hbGx5IG1hdHRlciwgYnV0IGl0Cj4gY291bGQgY2hhbmdlIHRo
ZSBwZXJmb3JtYW5jZS4KCkFzIGZvciBub3csIEkgdGhpbmsgdGhhdCB3ZSBzaG91bGQga2VlcCB0
aGlzIFJGQyBhcyBpdCBpcyBzbwpkZXZlbG9wZXJzIHdvcmtpbmcgd2l0aCBkaWZmZXJlbnQgRFNB
IHN3aXRjaGVzIGNvdWxkIHRlc3QgaXQgb3IKaW1wbGVtZW50IEdSTyBvZmZsb2FkIGZvciBvdGhl
ciB0YWdnZXJzIGxpa2UgRFNBIGFuZCBFRFNBLCAqYnV0KgphbnkgZnV0dXJlIHdvcmsgb24gdGhp
cyBzaG91bGQgY29tZSBvbmx5IHdoZW4gd2UnbGwgcmV2aXNlL3JlaW1hZ2luZQpiYXNpYyBEU0Eg
cGFja2V0IGZsb3csIGFzIHdlIGFscmVhZHkga25vdyAoYXQgbGVhc3QgbWUgYW5kIEZsb3JpYW4K
cmVwcm9kdWNlIGl0IHdlbGwpIHRoYXQgdGhlIGN1cnJlbnQgcGF0aCB0aHJvdWdoIHVubGlrZWx5
IGJyYW5jaGVzCmluIGV0aF90eXBlX3RyYW5zKCkgYW5kIGZyYW1lIGNhcHR1cmluZyB0aHJvdWdo
IHBhY2tldF90eXBlIGlzIHNvCnN1Ym9wdGltYWwgdGhhdCBuZWFybHkgZGVzdHJveXMgb3ZlcmFs
bCBwZXJmb3JtYW5jZSBvbiBzZXZlcmFsCnNldHVwcy4KU3dpdGNoaW5nIHRvIG5ldF9kZXZpY2U6
OnJ4X2hhbmRsZXIoKSBpcyBqdXN0IG9uZSBvZiBhbGwgdGhlIHBvc3NpYmxlCnZhcmlhbnRzLCBJ
J20gc3VyZSB3ZSdsbCBmaW5kIHRoZSBiZXN0IHNvbHV0aW9uIHRvZ2V0aGVyLgoKUmVnYXJkcywK
4Zq3IOGbliDhmqIg4ZqmIOGaoCDhmrEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
