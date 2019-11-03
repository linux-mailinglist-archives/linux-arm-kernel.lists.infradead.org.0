Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D115DED179
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 02:45:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C69rYZzEO1WrAWDyy9mEJKMnoeNtZPrlTnVeZThvHnk=; b=s6w+TYJFkoR5cA
	w+hMStofFzq84FkOeURMBuIOSn2etT2fBMtfE+gHVooUs8eoGFqH/14DDjoDJEu2S5gtM6JMYySH0
	JROSOQ5lPG3QQKhG/VJazQ46ADvxJFJkZ2pmQNl6rFzOganM+iUR64gFRKr0yS33oPlUk3hxKLtmt
	ck2xA2L7ZY9UdpAq3LMpn7HTO7Ox4UkggQC0wgC7B4kdPB+q71IwBT68rh4KREI1LvkuUh6tqDiHQ
	rlqlOHx5eqiy/brHMJmeaoHLOrlNkb35HtXDRp1jb93XJ9rjHM8S6sE6s4LgXeL4pQ0EsxW3e6X/Z
	cZiz9DZfbAaEIdkp/oKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iR4xJ-0002oe-Ut; Sun, 03 Nov 2019 01:45:25 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iR4xD-0002oC-Ku; Sun, 03 Nov 2019 01:45:20 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 6090AAD29;
 Sun,  3 Nov 2019 01:45:18 +0000 (UTC)
Subject: Re: [RFC 02/11] soc: Add Realtek chip info driver for RTD1195 and
 RTD1295
To: linux-realtek-soc@lists.infradead.org
References: <20191103013645.9856-1-afaerber@suse.de>
 <20191103013645.9856-3-afaerber@suse.de>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <1734baae-e529-e51e-145e-c8e1c533523c@suse.de>
Date: Sun, 3 Nov 2019 02:45:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191103013645.9856-3-afaerber@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_184519_831218_BDFC585B 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMDMuMTEuMTkgdW0gMDI6MzYgc2NocmllYiBBbmRyZWFzIEbDpHJiZXI6Cj4gIGRyaXZlcnMv
c29jL0tjb25maWcgICAgICAgICAgfCAgIDEgKwo+ICBkcml2ZXJzL3NvYy9NYWtlZmlsZSAgICAg
ICAgIHwgICAxICsKPiAgZHJpdmVycy9zb2MvcmVhbHRlay9LY29uZmlnICB8ICAxMyArKysrCj4g
IGRyaXZlcnMvc29jL3JlYWx0ZWsvTWFrZWZpbGUgfCAgIDIgKwo+ICBkcml2ZXJzL3NvYy9yZWFs
dGVrL2NoaXAuYyAgIHwgMTY0ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysKPiAgNSBmaWxlcyBjaGFuZ2VkLCAxODEgaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9k
ZSAxMDA2NDQgZHJpdmVycy9zb2MvcmVhbHRlay9LY29uZmlnCj4gIGNyZWF0ZSBtb2RlIDEwMDY0
NCBkcml2ZXJzL3NvYy9yZWFsdGVrL01ha2VmaWxlCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2
ZXJzL3NvYy9yZWFsdGVrL2NoaXAuYwpUaGlzIHBhdGNoIGZvcmdldHMgdG8gYWRkIGRyaXZlcnMv
c29jL3JlYWx0ZWsvIHRvIE1BSU5UQUlORVJTLgoKUmVnYXJkcywKQW5kcmVhcwoKLS0gClNVU0Ug
U29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSApNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xy
bmJlcmcsIEdlcm1hbnkKR0Y6IEZlbGl4IEltZW5kw7ZyZmZlcgpIUkIgMzY4MDkgKEFHIE7DvHJu
YmVyZykKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
