Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C61C912BDC2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Dec 2019 15:20:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=23OYUoPOsy6ExgkkKZmPErZUIYalJ9N0BlzWq4rESo8=; b=lr6OwbIMWh/mqmvf6vaveuDmg
	7vR4eEon51EzUIWV8cBDwRUFGZYswc5LZYQVBJw3f6bNSaxnu4Sao0iMMvDx1eDhrwTxLtEVqgTa3
	K7QY5bDQCxw0FU/JMfF4My2hqZ8ddL2l21f69z+T11LiDbEG6AE2NCLUgYkSpu6TyGHnPiWcLAcQW
	adsxsBgDfGX6NzsLib08YFMzorf4Y2nDg4I7tMbhfTVtXgED0B/sCVlrOA4EbTHMAMcjZGZdlixXR
	SynndZDKs4gijXxPkoKbaqWolrWHHeV0Ucn7gZLUSE0wqRpZKLmy+8MoCgV25GrLQVOpqHzDw3MT3
	iwKUUm5ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilCxQ-0000lH-Oa; Sat, 28 Dec 2019 14:20:44 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilCxJ-0000ks-0H; Sat, 28 Dec 2019 14:20:38 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 9884DAB7F;
 Sat, 28 Dec 2019 14:20:35 +0000 (UTC)
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: realtek: Document RTD1619 and
 Realtek Mjolnir EVB
To: Rob Herring <robh@kernel.org>, James Tai <james.tai@realtek.com>
References: <d655415326064b079b9d1d791024c725@realtek.com>
 <20191118175025.GA24796@bogus>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <0f6aa8e6-bec5-cbff-c60f-f255ee432a42@suse.de>
Date: Sat, 28 Dec 2019 15:20:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191118175025.GA24796@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_062037_191859_0E69981E 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, 'DTML' <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMTguMTEuMTkgdW0gMTg6NTAgc2NocmllYiBSb2IgSGVycmluZzoKPiBPbiBUdWUsIDEyIE5v
diAyMDE5IDE1OjQ1OjEzICswMDAwLCBKYW1lcyBUYWkgd3JvdGU6Cj4+Cj4+IERlZmluZSBjb21w
YXRpYmxlIHN0cmluZ3MgZm9yIFJlYWx0ZWsgUlREMTYxOSBTb0MgYW5kIFJlYWx0ZWsgTWpvbG5p
ciBFVkIuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEphbWVzIFRhaSA8amFtZXMudGFpQHJlYWx0ZWsu
Y29tPgo+PiAtLS0KPj4gICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3Jl
YWx0ZWsueWFtbCB8IDYgKysrKysrCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygr
KQo+Pgo+IAo+IFJldmlld2VkLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgoKQXBw
bGllZCB0byB2NS42L2R0OgoKaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tl
cm5lbC9naXQvYWZhZXJiZXIvbGludXgtcmVhbHRlay5naXQvbG9nLz9oPXY1LjYvZHQKClRoYW5r
cywKQW5kcmVhcwoKLS0gClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSApNYXhm
ZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcsIEdlcm1hbnkKR0Y6IEZlbGl4IEltZW5kw7ZyZmZl
cgpIUkIgMzY4MDkgKEFHIE7DvHJuYmVyZykKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
