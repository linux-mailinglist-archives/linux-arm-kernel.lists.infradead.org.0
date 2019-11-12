Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C8AF8A32
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 09:12:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=owF6zOZ1e+GEe3VhxuNmP8nOrHj1vqobLAu1jh/A1Tw=; b=fPjKZzj3WrDOpw
	ECh1ZYxzT1IWlevra++wSrvF/Mfi25JpUNZm/19wXNUXIc6cbRsk6fUblp+HgpeAbLMJLI7L1tRDT
	hFXyuiU07EJUYideVo3ggZjyCzE2k0ql6fZHXou9QQ9FVs2uie7sr7sZQ6J2AIT0iepHwb9nX8psm
	GOGYTd12r3IqRTi5XiruNbN2u3zO9MSmIqmgNbwJ0KtmvfuxTPnNCl2lTibpuMTR6XEFKb+u7hPoF
	V1fb9x5QWIn8yx/QwC8eWnltzrSv9zsPkzZvKtovAVUslO7tIfGgUnBfNDashMDxpRiE2Zkd4rSUh
	w9dGYzUS16daTe0UIiLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iURHK-0008RG-N8; Tue, 12 Nov 2019 08:11:58 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iURH9-0008PF-1Z; Tue, 12 Nov 2019 08:11:48 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 1AEE8B2E9;
 Tue, 12 Nov 2019 08:11:42 +0000 (UTC)
Subject: Re: [PATCH] soc: amlogic: socinfo: Avoid soc_device_to_device()
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20191111221521.1587-1-afaerber@suse.de>
 <20191112054003.GD1210104@kroah.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <0673ba51-108c-76c4-5c71-00804d8ea661@suse.de>
Date: Tue, 12 Nov 2019 09:11:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191112054003.GD1210104@kroah.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_001147_377283_D4415FF6 
X-CRM114-Status: GOOD (  18.47  )
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMTIuMTEuMTkgdW0gMDY6NDAgc2NocmllYiBHcmVnIEtyb2FoLUhhcnRtYW46Cj4gT24gTW9u
LCBOb3YgMTEsIDIwMTkgYXQgMTE6MTU6MjFQTSArMDEwMCwgQW5kcmVhcyBGw6RyYmVyIHdyb3Rl
Ogo+PiBUaGUgaGVscGVyIHNvY19kZXZpY2VfdG9fZGV2aWNlKCkgaXMgY29uc2lkZXJlZCBkZXBy
ZWNhdGVkLgo+PiBGb3IgYSBkcml2ZXIgX19pbml0IGZ1bmN0aW9uIHRoZSBwcmVkaWN0YWJsZSBw
cmVmaXggdGV4dAo+PiAic29jIHNvYzA6IiBmcm9tIGRldl9pbmZvKCkgZG9lcyBub3QgYWRkIHJl
YWwgdmFsdWUsIHNvIHVzZQo+PiBwcl9pbmZvKCkgdG8gZW1pdCB0aGUgaW5mbyB0ZXh0IHdpdGhv
dXQgc3VjaCBwcmVmaXguCj4+Cj4+IFdoaWxlIGF0IGl0LCBub3JtYWxpemUgdGhlIGNhc2luZyBv
ZiAiZGV0ZWN0ZWQiIGZvciBHWC4KPj4KPj4gQ2M6IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2to
QGxpbnV4Zm91bmRhdGlvbi5vcmc+Cj4+IENjOiBNYXJ0aW4gQmx1bWVuc3RpbmdsIDxtYXJ0aW4u
Ymx1bWVuc3RpbmdsQGdvb2dsZW1haWwuY29tPgo+PiBDYzogTmVpbCBBcm1zdHJvbmcgPG5hcm1z
dHJvbmdAYmF5bGlicmUuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFm
YWVyYmVyQHN1c2UuZGU+Cj4+IC0tLQo+PiAgZHJpdmVycy9zb2MvYW1sb2dpYy9tZXNvbi1neC1z
b2NpbmZvLmMgfCA0ICstLS0KPj4gIGRyaXZlcnMvc29jL2FtbG9naWMvbWVzb24tbXgtc29jaW5m
by5jIHwgNCArKy0tCj4+ICAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNSBkZWxl
dGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc29jL2FtbG9naWMvbWVzb24tZ3gt
c29jaW5mby5jIGIvZHJpdmVycy9zb2MvYW1sb2dpYy9tZXNvbi1neC1zb2NpbmZvLmMKPj4gaW5k
ZXggMDFmYzBkMjBhNzBkLi4xMDViODE5YmJkNWYgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvc29j
L2FtbG9naWMvbWVzb24tZ3gtc29jaW5mby5jCj4+ICsrKyBiL2RyaXZlcnMvc29jL2FtbG9naWMv
bWVzb24tZ3gtc29jaW5mby5jCj4+IEBAIC0xMjksNyArMTI5LDYgQEAgc3RhdGljIGludCBfX2lu
aXQgbWVzb25fZ3hfc29jaW5mb19pbml0KHZvaWQpCj4+ICAJc3RydWN0IGRldmljZV9ub2RlICpu
cDsKPj4gIAlzdHJ1Y3QgcmVnbWFwICpyZWdtYXA7Cj4+ICAJdW5zaWduZWQgaW50IHNvY2luZm87
Cj4+IC0Jc3RydWN0IGRldmljZSAqZGV2Owo+PiAgCWludCByZXQ7Cj4+ICAKPj4gIAkvKiBsb29r
IHVwIGZvciBjaGlwaWQgbm9kZSAqLwo+PiBAQCAtMTkyLDkgKzE5MSw4IEBAIHN0YXRpYyBpbnQg
X19pbml0IG1lc29uX2d4X3NvY2luZm9faW5pdCh2b2lkKQo+PiAgCQlrZnJlZShzb2NfZGV2X2F0
dHIpOwo+PiAgCQlyZXR1cm4gUFRSX0VSUihzb2NfZGV2KTsKPj4gIAl9Cj4+IC0JZGV2ID0gc29j
X2RldmljZV90b19kZXZpY2Uoc29jX2Rldik7Cj4+ICAKPj4gLQlkZXZfaW5mbyhkZXYsICJBbWxv
Z2ljIE1lc29uICVzIFJldmlzaW9uICV4OiV4ICgleDoleCkgRGV0ZWN0ZWRcbiIsCj4+ICsJcHJf
aW5mbygiQW1sb2dpYyBNZXNvbiAlcyBSZXZpc2lvbiAleDoleCAoJXg6JXgpIGRldGVjdGVkXG4i
LAo+IAo+IFRoaXMgc2hvdWxkIG1lc3NhZ2Ugc2hvdWxkIGp1c3QgYmUgcmVtb3ZlZCBlbnRpcmVs
eS4KPiAKPj4gIAkJCXNvY19kZXZfYXR0ci0+c29jX2lkLAo+PiAgCQkJc29jaW5mb190b19tYWpv
cihzb2NpbmZvKSwKPj4gIAkJCXNvY2luZm9fdG9fbWlub3Ioc29jaW5mbyksCj4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL3NvYy9hbWxvZ2ljL21lc29uLW14LXNvY2luZm8uYyBiL2RyaXZlcnMvc29j
L2FtbG9naWMvbWVzb24tbXgtc29jaW5mby5jCj4+IGluZGV4IDc4ZjBmMWFlY2E1Ny4uN2RiMmM5
NGE3MTMwIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3NvYy9hbWxvZ2ljL21lc29uLW14LXNvY2lu
Zm8uYwo+PiArKysgYi9kcml2ZXJzL3NvYy9hbWxvZ2ljL21lc29uLW14LXNvY2luZm8uYwo+PiBA
QCAtMTY3LDggKzE2Nyw4IEBAIHN0YXRpYyBpbnQgX19pbml0IG1lc29uX214X3NvY2luZm9faW5p
dCh2b2lkKQo+PiAgCQlyZXR1cm4gUFRSX0VSUihzb2NfZGV2KTsKPj4gIAl9Cj4+ICAKPj4gLQlk
ZXZfaW5mbyhzb2NfZGV2aWNlX3RvX2RldmljZShzb2NfZGV2KSwgIkFtbG9naWMgJXMgJXMgZGV0
ZWN0ZWRcbiIsCj4+IC0JCSBzb2NfZGV2X2F0dHItPnNvY19pZCwgc29jX2Rldl9hdHRyLT5yZXZp
c2lvbik7Cj4+ICsJcHJfaW5mbygiQW1sb2dpYyAlcyAlcyBkZXRlY3RlZFxuIiwKPj4gKwkJc29j
X2Rldl9hdHRyLT5zb2NfaWQsIHNvY19kZXZfYXR0ci0+cmV2aXNpb24pOwo+IAo+IFNhbWUgaGVy
ZSwgbm8gbmVlZCB0byBwb2x1dGUgdGhlIGtlcm5lbCBsb2cgZm9yIHdoZW4gYWxsIGlzIGdvaW5n
IGp1c3QKPiBmaW5lLgo+IAo+IFRoYXQncyB3aHkgd2UgY3JlYXRlZCAiY29tbW9uIiBkcml2ZXIg
aW5pdCBoZWxwZXJzLCB0byBwcmV2ZW50IHRoZQo+IGFiaWxpdHkgZm9yIHRoaXMgdHlwZSBvZiBu
b2lzZSBmcm9tIGV2ZW4gYmVpbmcgYWJsZSB0byBiZSBjcmVhdGVkIGF0Cj4gYWxsLgoKTGV0J3Mg
aGF2ZSB0aGF0IGRpc2N1c3Npb24gaW4gdGhlIGNlbnRyYWwgdGhyZWFkIHBsZWFzZS4KCkZhY3Qg
aGVyZSBpcyB0aGF0IEFtbG9naWMgR1gncyBrZXJuZWwgb3V0cHV0IChhbmQgdGhpcyBjb2RlIGdl
dHRpbmcKbWlycm9yZWQgaW50byBVLUJvb3QpIG1hZGUgbWUgYXdhcmUgb2YgdGhpcyBkcml2ZXIg
aW4gdGhlIGZpcnN0IHBsYWNlLgoKUmVnYXJkcywKQW5kcmVhcwoKLS0gClNVU0UgU29mdHdhcmUg
U29sdXRpb25zIEdlcm1hbnkgR21iSApNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcsIEdl
cm1hbnkKR0Y6IEZlbGl4IEltZW5kw7ZyZmZlcgpIUkIgMzY4MDkgKEFHIE7DvHJuYmVyZykKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
