Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E40138DB8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 10:25:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1lfB+GyPeC3TgurMZp8JG3WWDNz5JtH4TOwJcbNhVsU=; b=gOSwgO7mvs7DQw7Qz97IoFeXq
	HP7jN93RM2H7QOwbaqLGaw/FHea//vjkJub1n1HNmCZ54+1RyOWDbkaAqNY90SKEXDODxmzfZ4sPv
	MPLZLro9Du0jTBZHIVZoR0K0iEfaha1e/KIJPL9G7ufL9R2eURx3Mp/S6QmB7z1/7ARGRtZodD630
	0uYJw+Bya7CRn6Vdm48FGvDt6UOPDFmVhfma03aFUql+eIoDr3MBaLQYdGMGsU6LMQekB+M7+9O1r
	lne2usESTtLP9ABHg9JrVZbgzxCpLuUm/+d3uWrUV/+aq6/n/XT/RzjtM34gJIEdNFhheG3qYMsmq
	uiI1yiGaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqvyk-0008EB-Vy; Mon, 13 Jan 2020 09:25:46 +0000
Received: from mail.dlink.ru ([178.170.168.18] helo=fd.dlink.ru)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqvyX-0008DQ-BA; Mon, 13 Jan 2020 09:25:34 +0000
Received: by fd.dlink.ru (Postfix, from userid 5000)
 id 30E3C1B20968; Mon, 13 Jan 2020 12:25:30 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 fd.dlink.ru 30E3C1B20968
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dlink.ru; s=mail;
 t=1578907530; bh=2f/Y/GZU1BlOm+comjchqo4T/ukgrbsudCbLlFnoBlg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References;
 b=fwiqF50P8SUCASZq6CdAJ+h+GXabFDEwcMXqtN6++C1LDQoC9TIfAITXOp+yuFTmi
 DwMjf0S+pgyISV0LAaAJlB2hCBbSLoBcHqkdrYypY79RBiLCKtJu5uJCFbw38YOgJU
 PTB9UmuqwIGsVQYMquKXrmpYWOIob1lVocdHTmb0=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dlink.ru
X-Spam-Level: 
X-Spam-Status: No, score=-99.2 required=7.5 tests=BAYES_50,USER_IN_WHITELIST
 autolearn=disabled version=3.4.2
Received: from mail.rzn.dlink.ru (mail.rzn.dlink.ru [178.170.168.13])
 by fd.dlink.ru (Postfix) with ESMTP id B5EDE1B201FA;
 Mon, 13 Jan 2020 12:25:20 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 fd.dlink.ru B5EDE1B201FA
Received: from mail.rzn.dlink.ru (localhost [127.0.0.1])
 by mail.rzn.dlink.ru (Postfix) with ESMTP id 5075A1B20320;
 Mon, 13 Jan 2020 12:25:20 +0300 (MSK)
Received: from mail.rzn.dlink.ru (localhost [127.0.0.1])
 by mail.rzn.dlink.ru (Postfix) with ESMTPA;
 Mon, 13 Jan 2020 12:25:20 +0300 (MSK)
MIME-Version: 1.0
Date: Mon, 13 Jan 2020 12:25:20 +0300
From: Alexander Lobakin <alobakin@dlink.ru>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH RFC net-next 00/20] net: dsa: add GRO support
In-Reply-To: <20191230171216.GC13569@lunn.ch>
References: <20191230143028.27313-1-alobakin@dlink.ru>
 <20191230171216.GC13569@lunn.ch>
User-Agent: Roundcube Webmail/1.4.0
Message-ID: <e98ab4764c8a0a90c18bfd49305310fe@dlink.ru>
X-Sender: alobakin@dlink.ru
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_012533_573719_9E47DAEE 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.170.168.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Song Liu <songliubraving@fb.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 Yoshiki Komachi <komachi.yoshiki@gmail.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Stanislav Fomichev <sdf@google.com>,
 Matteo Croce <mcroce@redhat.com>, Edward Cree <ecree@solarflare.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jakub Sitnicki <jakub@cloudflare.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Paolo Abeni <pabeni@redhat.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 Sean Wang <sean.wang@mediatek.com>, Jiri Pirko <jiri@mellanox.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 Paul Blakey <paulb@mellanox.com>,
 Stephen Hemminger <stephen@networkplumber.org>,
 "David S. Miller" <davem@davemloft.net>, Taehee Yoo <ap420073@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW5kcmV3IEx1bm4gd3JvdGUgMzAuMTIuMjAxOSAyMDoxMjoKPj4gSSBtYXJrIHRoaXMgYXMgUkZD
LCBhbmQgdGhlcmUgYXJlIHRoZSBrZXkgcXVlc3Rpb25zIGZvciBtYWludGFpbmVycywKPj4gZGV2
ZWxvcGVycywgdXNlcnMgZXRjLjoKPj4gLSBEbyB3ZSBuZWVkIEdSTyBzdXBwb3J0IGZvciBEU0Eg
YXQgYWxsPwo+IAo+PiAtIERvZXMgdGhpcyBzZXJpZXMgYnJpbmcgYW55IHBlcmZvcm1hbmNlIGlt
cHJvdmVtZW50cyBvbiB0aGUKPj4gICBhZmZlY3RlZCBzeXN0ZW1zPwo+IAo+IEhpIEFsZXhhbmRl
cgoKSGksCgo+IEkgdGhpbmsgdGhlc2UgYXJlIHRoZSB0d28gbW9zdCBpbXBvcnRhbnQgcXVlc3Rp
b25zLiBEaWQgeW91IGRvIGFueQo+IHBlcmZvcm1hbmNlIHRlc3RpbmcgZm9yIHRoZSBoYXJkd2Fy
ZSB5b3UgaGF2ZT8KCkV4YWN0bHksIHRoaXMgYXJlIHRoZSB0b3AgcXVlc3Rpb25zLiBJIHBlcmZv
cm1lZCBsb3RzIG9mIHRlc3RzIG9uCmhhcmR3YXJlIHdpdGggd2hpY2ggSSdtIHdvcmtpbmcgb24g
YW5kIGhhZCBhIHByZXR0eSBnb29kIGJvb3N0cwooSSBkaWRuJ3QgbWFpbmxpbmVkIG15IGRyaXZl
cnMgeWV0IHVuZm9ydHVuYXRlbHkpLgpCdXQgdGhpcyBkb2VzIG5vdCBtZWFuIHRoYXQgR1JPIHdv
dWxkIGJlIHRoYXQgbmljZSBmb3IgYWxsIGtpbmQgb2YKZGV2aWNlcyAqYXQgYWxsKi4gVGhhdCdz
IHdoeSBJIHdvdWxkIGxpa2UgdG8gc2VlIG1vcmUgdGVzdCByZXN1bHRzCm9uIGRpZmZlcmVudCBz
eXN0ZW1zLgoKPiBJIHBlcnNvbmFsbHkgZG9uJ3QgaGF2ZSBhbnkgb2YgdGhlIHN3aXRjaGVzIHlv
dSBoYXZlIG1hZGUKPiBtb2RpZmljYXRpb25zIHRvLCBzbyBpIGNhbm5vdCB0ZXN0IHRoZXNlIHBh
dGNoZXMuIEkgbWlnaHQgYmUgYWJsZSB0bwo+IGFkZCBHUk8gdG8gRFNBIGFuZCBFRFNBLCB3aGVy
ZSBpIGNhbiBkbyBzb21lIHBlcmZvcm1hbmNlIHRlc3RpbmcuCj4gCj4gICAgIEFuZHJldwoKUmVn
YXJkcywK4Zq3IOGbliDhmqIg4ZqmIOGaoCDhmrEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
