Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C1713818E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 15:32:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oTubnCDT4pBbmO/K+lfVi6wNR92id+fVQf2swkiCFTI=; b=WHc+nckvwcpHd/oqhoX2tNtKH
	Oo/bwTPfYA2j0B5+9lzvKrWXlL4/yaPKsA9WrhuuPRuo4JwMnvoaZnczvEZ9gN8lDhJNd4TrXR7TG
	Am2tU6sQcRCmPNz/UiTzm+7f9JZxVccNt0NG6WbVO6PClxbbTWbX9VDEy/3P2nQpKEJSWHV4RTVVC
	PYwDDYicLnGSVFlNfqoWu56gw5dcilJPSsHT0mjEGnzX2/IdnV6tz7DX/7VfgQM2j/T7uJ7n8vgF5
	B9sFlc8p+CUbcyauuUs6BzzciYxBgQtvBzPgZWzuR/e7DeaAeqK5Gqn+xPGeRJdf6jgYfTgEvQjfD
	N4Q6cN6Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqHo7-0007vn-EY; Sat, 11 Jan 2020 14:32:07 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqHo0-0007uZ-2p
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 14:32:02 +0000
X-Originating-IP: 79.86.19.127
Received: from [192.168.0.12] (127.19.86.79.rev.sfr.net [79.86.19.127])
 (Authenticated sender: alexandre@ghiti.fr)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id D0921E0002;
 Sat, 11 Jan 2020 14:31:50 +0000 (UTC)
From: Alexandre Ghiti <alexandre@ghiti.fr>
Subject: Re: linux-next: build warning after merge of the bpf-next tree
To: Palmer Dabbelt <palmerdabbelt@google.com>
References: <a367af4d-7267-2e94-74dc-2a2aac204080@ghiti.fr>
 <20191018105657.4584ec67@canb.auug.org.au>
 <20191028110257.6d6dba6e@canb.auug.org.au>
 <mhng-0daa1a90-2bed-4b2e-833e-02cd9c0aa73f@palmerdabbelt-glaptop>
Message-ID: <d5d59f54-e391-3659-d4c0-eada50f88187@ghiti.fr>
Date: Sat, 11 Jan 2020 09:31:48 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <mhng-0daa1a90-2bed-4b2e-833e-02cd9c0aa73f@palmerdabbelt-glaptop>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_063200_404586_C8AC634E 
X-CRM114-Status: GOOD (  20.66  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, daniel@iogearbox.net,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, ast@kernel.org,
 linux-next@vger.kernel.org, zong.li@sifive.com, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDEvMTAvMjAgNzoyMCBQTSwgUGFsbWVyIERhYmJlbHQgd3JvdGU6Cj4gT24gRnJpLCAxMCBK
YW4gMjAyMCAxNDoyODoxNyBQU1QgKC0wODAwKSwgYWxleGFuZHJlQGdoaXRpLmZyIHdyb3RlOgo+
PiBIaSBndXlzLAo+Pgo+PiBPbiAxMC8yNy8xOSA4OjAyIFBNLCBTdGVwaGVuIFJvdGh3ZWxsIHdy
b3RlOgo+Pj4gSGkgYWxsLAo+Pj4KPj4+IE9uIEZyaSwgMTggT2N0IDIwMTkgMTA6NTY6NTcgKzEx
MDAgU3RlcGhlbiBSb3Rod2VsbCAKPj4+IDxzZnJAY2FuYi5hdXVnLm9yZy5hdT4gd3JvdGU6Cj4+
Pj4gSGkgYWxsLAo+Pj4+Cj4+Pj4gQWZ0ZXIgbWVyZ2luZyB0aGUgYnBmLW5leHQgdHJlZSwgdG9k
YXkncyBsaW51eC1uZXh0IGJ1aWxkIChwb3dlcnBjCj4+Pj4gcHBjNjRfZGVmY29uZmlnKSBwcm9k
dWNlZCB0aGlzIHdhcm5pbmc6Cj4+Pj4KPj4+PiBXQVJOSU5HOiAyIGJhZCByZWxvY2F0aW9ucwo+
Pj4+IGMwMDAwMDAwMDE5OThhNDggUl9QUEM2NF9BRERSNjQgX2JpbmFyeV9fYnRmX3ZtbGludXhf
YmluX3N0YXJ0Cj4+Pj4gYzAwMDAwMDAwMTk5OGE1MCBSX1BQQzY0X0FERFI2NCBfYmluYXJ5X19i
dGZfdm1saW51eF9iaW5fZW5kCj4+Pj4KPj4+PiBJbnRyb2R1Y2VkIGJ5IGNvbW1pdAo+Pj4+Cj4+
Pj4gwqDCoCA4NTgwYWM5NDA0ZjYgKCJicGY6IFByb2Nlc3MgaW4ta2VybmVsIEJURiIpCj4+PiBU
aGlzIHdhcm5pbmcgbm93IGFwcGVhcnMgaW4gdGhlIG5ldC1uZXh0IHRyZWUgYnVpbGQuCj4+Pgo+
Pj4KPj4gSSBidW1wIHRoYXQgdGhyZWFkIHVwIGJlY2F1c2UgWm9uZyBhbHNvIG5vdGljZWQgdGhh
dCAyIG5ldyAKPj4gcmVsb2NhdGlvbnMgZm9yCj4+IHRob3NlIHN5bWJvbHMgYXBwZWFyZWQgaW4g
bXkgcmlzY3YgcmVsb2NhdGFibGUga2VybmVsIGJyYW5jaCBmb2xsb3dpbmcKPj4gdGhhdCBjb21t
aXQuCj4+Cj4+IEkgYWxzbyBub3RpY2VkIDIgbmV3IHJlbG9jYXRpb25zIFJfQUFSQ0g2NF9BQlM2
NCBhcHBlYXJpbmcgaW4gYXJtNjQgCj4+IGtlcm5lbC4KPj4KPj4gVGhvc2UgMiB3ZWFrIHVuZGVm
aW5lZCBzeW1ib2xzIGhhdmUgZXhpc3RlZCBzaW5jZSBjb21taXQKPj4gMzQxZGZjZjhkNzhlICgi
YnRmOiBleHBvc2UgQlRGIGluZm8gdGhyb3VnaCBzeXNmcyIpIGJ1dCB0aGlzIGlzIHRoZSBmYWN0
Cj4+IHRvIGRlY2xhcmUgdGhvc2Ugc3ltYm9scyBpbnRvIGJ0Zi5jIHRoYXQgcHJvZHVjZWQgdGhv
c2UgcmVsb2NhdGlvbnMuCj4+Cj4+IEknbSBub3Qgc3VyZSB3aGF0IHRoaXMgYWxsIG1lYW5zLCBi
dXQgdGhpcyBpcyBub3Qgc29tZXRoaW5nIEkgZXhwZWN0ZWQKPj4gZm9yIHJpc2N2IGZvcgo+PiBh
IGtlcm5lbCBsaW5rZWQgd2l0aCAtc2hhcmVkLy1mcGllLiBNYXliZSBzaG91bGQgd2UganVzdCBs
ZWF2ZSB0aGVtIHRvCj4+IHplcm8gPwo+Pgo+PiBJIHRoaW5rIHRoYXQgZGVzZXJ2ZXMgYSBkZWVw
ZXIgbG9vayBpZiBzb21lb25lIHVuZGVyc3RhbmRzIGFsbCB0aGlzCj4+IGJldHRlciB0aGFuIEkg
ZG8uCj4KPiBDYW4geW91IGdpdmUgbWUgYSBwb2ludGVyIHRvIHlvdXIgdHJlZSBhbmQgaG93IHRv
IGJ1aWxkIGEgcmVsb2NhdGFibGUgCj4ga2VybmVsPwo+IFdlYWsgdW5kZWZpbmVkIHN5bWJvbHMg
aGF2ZSB0aGUgYWJzb2x1dGUgdmFsdWUgMCwKCgpTbyBhY2NvcmRpbmcgdG8geW91IHRoZSAyIG5l
dyByZWxvY2F0aW9ucyBSX1JJU0NWXzY0IGFyZSBub3JtYWwgYW5kIApzaG91bGQgbm90CmJlIG1v
ZGlmaWVkIGF0IHJ1bnRpbWUgcmlnaHQgPwoKCj4gYnV0IHRoZSBrZXJuZWwgaXMgbGlua2VkIGF0
Cj4gYW4gYWRkcmVzcyBzdWNoIHRoYXQgMCBjYW4ndCBiZSByZWFjaGVkIGJ5IG5vcm1hbCBtZWFu
cy7CoCBXaGVuIEkgYWRkZWQgCj4gc3VwcG9ydAo+IHRvIGJpbnV0aWxzIGZvciB0aGlzIEkgZGlk
IGl0IGluIGEgd2F5IHRoYXQgcmVxdWlyZWQgYWxtb3N0IG5vIGNvZGUgLS0KPiBlc3NldGlhbGx5
IEkganVzdCBzdG9wcGVkIGRpc3NhbGxvd2luZyB4MCBhcyBhIHBvc3NpYmxlIGJhc2UgcmVnaXN0
ZXIgCj4gZm9yIFBDUkVMCj4gcmVsb2NhdGlvbnMsIHdoaWNoIHJlc3VsdHMgaW4gMCBhbHdheXMg
YmVpbmcgYWNjZXNzaWJsZS7CoCBJIGp1c3QgCj4gd2FudGVkIHRvIGdldAo+IHRoZSBrZXJuZWwg
dG8gYnVpbGQgYWdhaW4sIHNvIEkgZGlkbid0IHdvcnJ5IGFib3V0IGNoYXNpbmcgYXJvdW5kIGFs
bCB0aGUKPiBhZGRyZXNzaW5nIG1vZGVzLsKgIFRoZSBQSUMvUElFIHN1cHBvcnQgZ2VuZXJhdGVz
IGRpZmZlcmVudCByZWxvY2F0aW9ucyAKPiBhbmQgSQo+IHdvdWxkbid0IGJlIHN1cnByaXNlZCBp
ZiBJIGp1c3QgbWlzc2VkIG9uZSAob3IgbW9yZSBsaWtlbHkgYWxsKSBvZiB0aGVtLgo+Cj4gSXQn
cyBwcm9iYWJseSBhIHNpbXBsZSBmaXgsIHRob3VnaCBJIGZlZWwgbGlrZSBldmVyeSB0aW1lIEkg
c2F5IHRoYXQgCj4gYWJvdXQgdGhlCj4gbGlua2VyIEkgZW5kIHVwIHNwZW5kaW5nIGEgbW9udGgg
aW4gdGhlcmUuLi4KCllvdSBjYW4gZmluZCBpdCBoZXJlOgoKaHR0cHM6Ly9naXRodWIuY29tL0Fs
ZXhHaGl0aS9yaXNjdi1saW51eC90cmVlL2ludC9hbGV4L3Jpc2N2X3JlbG9jYXRhYmxlX3YxCgpa
b25nIGZpeGVkIHRoZSBidWcgaW50cm9kdWNlZCBieSB0aG9zZSAyIG5ldyByZWxvY2F0aW9ucyBh
bmQgZXZlcnl0aGluZyAKd29ya3MKbGlrZSBhIGNoYXJtLCBzbyBJJ20gbm90IHN1cmUgeW91IGhh
dmUgdG8gZGlnIGluIHRoZSBsaW5rZXIgOikKCkFsZXgKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
