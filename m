Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E342B1EA690
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 17:10:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YhjXUYsP5Zh76i7p/IhrqLD6Ws5iaLxDJs9zCYlLeoU=; b=GyztyQv9Gy4Wca
	hzRwOH50cnwlRtQwlDLhLm53+Rggb0zyEGsnUmx0tUGTl1DySbJpInAtKeaI0YxYozMpYK5f4ldaF
	SI7ymo65zUOuESrZSAFUxSbcql2FPJt1NnHsA9kD2mlCxtGdM/w1JKC0v9teLUoAXkDQgvHo1YEiW
	bhVD01YTLi1n8MZadgb2vZJLacE00qbWCJG8gyGLwrbVTphdMG8M2qBKdVJ/3fXk4u90fc91MlA3y
	NLjfRJFMzSStrVW7wBqWevIKZ6lzxkHGKY3gQQBO3vhnI+QDa6KNSHS/BMy9GHPX8AuXhVNZy+v/x
	LAvhwCnYY0kMlPC0nnPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfm5V-0001bk-GF; Mon, 01 Jun 2020 15:10:53 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfm5N-0001bA-4i
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 15:10:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qyaZKCXXV6sKGAOCvFszwj+5rDsE8vvtfD9Kg6pCq+A=; b=c5umpFK/fS8VKhR9x6DY4E0vg
 flJd70nTs9XDy8KtVtirXxghIg35XLo+dBzrnlmsZNpsio9sat7SbnsO42zUkpFBo61WErrNq6GT0
 2saUzmQ36pIRODEsOaOe8zkFpJCWT1yrt66ZvVSm1vBhMrIans7j5DkW0d0ELWP9yq6NxtTuVAAQv
 B174bdX/GlCgz4gt+kMnJqbFbMIb8xLPnkC9WMBK/nxUmG+7ZMS9CGou4pK8fOEC1+GGwVhXvU+gk
 JsQtVuUZqc3KuBfqcoTuoFnP9/4eUFI8qtG0q+w9ydvAScv+YYIeQYY6TAYtfkJkrFtcd9VdQvD+d
 gwf/+FRKA==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:37552)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jfm5A-0000d5-4q; Mon, 01 Jun 2020 16:10:32 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jfm59-0003Q9-Gu; Mon, 01 Jun 2020 16:10:31 +0100
Date: Mon, 1 Jun 2020 16:10:31 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Lukasz Stelmach <l.stelmach@samsung.com>
Subject: Re: [PATCH 1/5] arm: decompressor: set malloc pool size for the
 decompressor
Message-ID: <20200601151031.GM1551@shell.armlinux.org.uk>
References: <20200601144607.GI1551@shell.armlinux.org.uk>
 <CGME20200601145652eucas1p11dcea1cea21824d0a6bfe6ab38c1cab7@eucas1p1.samsung.com>
 <dleftj367eu95j.fsf%l.stelmach@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dleftj367eu95j.fsf%l.stelmach@samsung.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_081045_186836_8D468368 
X-CRM114-Status: GOOD (  18.40  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kees Cook <keescook@chromium.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 AKASHI Takahiro <takahiro.akashi@linaro.org>, Ben Dooks <ben-linux@fluff.org>,
 Thomas Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>,
 Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBKdW4gMDEsIDIwMjAgYXQgMDQ6NTY6NDBQTSArMDIwMCwgTHVrYXN6IFN0ZWxtYWNo
IHdyb3RlOgo+IEl0IHdhcyA8MjAyMC0wNi0wMSBwb24gMTU6NDY+LCB3aGVuIFJ1c3NlbGwgS2lu
ZyAtIEFSTSBMaW51eCBhZG1pbiB3cm90ZToKPiA+IE9uIE1vbiwgSnVuIDAxLCAyMDIwIGF0IDA0
OjI3OjUwUE0gKzAyMDAsIMWBdWthc3ogU3RlbG1hY2ggd3JvdGU6Cj4gPj4gTW92ZSB0aGUgZGVm
aW5pdGlvbiBvZiBtYWxsb2MgcG9vbCBzaXplIG9mIHRoZSBkZWNvbXByZXNzb3IgdG8KPiA+PiBh
IHNpbmdsZSBwbGFjZS4gVGhpcyB2YWx1ZSB3aWxsIGJlIGV4cG9zZWQgbGF0ZXIgZm9yIGtleGVj
X2ZpbGUgbG9hZGVyLgo+ID4+IAo+ID4+IFNpZ25lZC1vZmYtYnk6IMWBdWthc3ogU3RlbG1hY2gg
PGwuc3RlbG1hY2hAc2Ftc3VuZy5jb20+Cj4gPj4gLS0tCj4gPj4gIGFyY2gvYXJtL2Jvb3QvY29t
cHJlc3NlZC9NYWtlZmlsZSB8IDIgKysKPiA+PiAgYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL2hl
YWQuUyAgIHwgNiArKysrLS0KPiA+PiAgMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pCj4gPj4gCj4gPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvY29t
cHJlc3NlZC9NYWtlZmlsZSBiL2FyY2gvYXJtL2Jvb3QvY29tcHJlc3NlZC9NYWtlZmlsZQo+ID4+
IGluZGV4IDljMTFlNzQ5MDI5Mi4uYjM1OTRjZDE1ODhjIDEwMDY0NAo+ID4+IC0tLSBhL2FyY2gv
YXJtL2Jvb3QvY29tcHJlc3NlZC9NYWtlZmlsZQo+ID4+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvY29t
cHJlc3NlZC9NYWtlZmlsZQo+ID4+IEBAIC0xMjUsNiArMTI1LDggQEAgS0JTU19TWiA9ICQoc2hl
bGwgZWNobyAkJCgoJCQoJChOTSkgJChvYmopLy4uLy4uLy4uLy4uL3ZtbGludXggfCBcCj4gPj4g
IAkJc2VkIC1uIC1lICdzL15cKFteIF0qXCkgW0FCXSBfX2Jzc19zdGFydCQkLy0weFwxL3AnIFwK
PiA+PiAgCQkgICAgICAgLWUgJ3MvXlwoW14gXSpcKSBbQUJdIF9fYnNzX3N0b3AkJC8rMHhcMS9w
JykgKSkgKQo+ID4+ICBMREZMQUdTX3ZtbGludXggPSAtLWRlZnN5bSBfa2VybmVsX2Jzc19zaXpl
PSQoS0JTU19TWikKPiA+PiArIyBtYWxsb2MgcG9vbCBzaXplCj4gPj4gK0xERkxBR1Nfdm1saW51
eCArPSAtLWRlZnN5bSBfbWFsbG9jX3NpemU9MHgxMDAwMAo+ID4+ICAjIFN1cHBseSBaUkVMQURE
UiB0byB0aGUgZGVjb21wcmVzc29yIHZpYSBhIGxpbmtlciBzeW1ib2wuCj4gPj4gIGlmbmVxICgk
KENPTkZJR19BVVRPX1pSRUxBRERSKSx5KQo+ID4+ICBMREZMQUdTX3ZtbGludXggKz0gLS1kZWZz
eW0genJlbGFkZHI9JChaUkVMQUREUikKPiA+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9j
b21wcmVzc2VkL2hlYWQuUyBiL2FyY2gvYXJtL2Jvb3QvY29tcHJlc3NlZC9oZWFkLlMKPiA+PiBp
bmRleCBlOGUxYzg2NmU0MTMuLmRjYzFhZmE2MGZiOSAxMDA2NDQKPiA+PiAtLS0gYS9hcmNoL2Fy
bS9ib290L2NvbXByZXNzZWQvaGVhZC5TCj4gPj4gKysrIGIvYXJjaC9hcm0vYm9vdC9jb21wcmVz
c2VkL2hlYWQuUwo+ID4+IEBAIC0zMDksNyArMzA5LDggQEAgcmVzdGFydDoJYWRyCXIwLCBMQzAK
PiA+PiAgI2lmbmRlZiBDT05GSUdfWkJPT1RfUk9NCj4gPj4gIAkJLyogbWFsbG9jIHNwYWNlIGlz
IGFib3ZlIHRoZSByZWxvY2F0ZWQgc3RhY2sgKDY0ayBtYXgpICovCj4gPj4gIAkJYWRkCXNwLCBz
cCwgcjAKPiA+PiAtCQlhZGQJcjEwLCBzcCwgIzB4MTAwMDAKPiA+PiArCQlsZHIJcjEwLCA9X21h
bGxvY19zaXplCj4gPj4gKwkJYWRkCXIxMCwgcjEwLCBzcAo+ID4KPiA+IFRoaXMgc2F5cyAibG9j
YXRlIF9tYWxsb2Nfc2l6ZSBpbiBhIGxpdGVyYWwgcG9vbCBzb21ld2hlcmUsIGFuZCBsb2FkIGl0
Cj4gPiB1c2luZyBhIFBDLXJlbGF0aXZlIG9mZnNldCIuICBBcmUgeW91IHN1cmUgdGhhdCB0aGUg
bGl0ZXJhbCBwb29sIGlzCj4gPiBzZW5zaWJseSBsb2NhdGVkPwo+ID4KPiA+IFdvdWxkIGl0IGJl
IGJldHRlciB0byB1c2UgYSBkZWZpbml0aW9uIGZvciB0aGlzPwo+IAo+IEkndmUgZm9sbG93ZWQg
WlJFTEFERFIgd2F5LiBJIHRoaW5rIGJvdGggdmFsdWVzIHNob3VsZCBiZSBoYW5kbGVkIHRoZQo+
IHNhbWUgd2F5IChpdCBtYWtlcyBpdCBlYXNpZXIgdG8gY29tcHJlaGVuZCBJTUhPKS4gSXMgdGhl
cmUgYW55IHJlYXNvbgo+IG5vdCB0bz8gIFNob3VsZCBJIGNoYW5nZSBaUkVMQUREUiBmb3IgdjIg
dG9vPwoKVGhlcmUncyBhIGdvb2QgcmVhc29uLiAgWlJFTEFERFIgY2FuIGJlIGEgY29uc3RhbnQg
dGhhdCBkb2VzIG5vdCBmaXQKaW50byB0aGUgQVJNcyBpbW1lZGlhdGUgY29uc3RhbnRzICg4IGJp
dHMgb2Ygc2lnbmlmaWNhbnQgZGF0YSBwbHVzCmEgbXVsdGlwbGUgb2YgYSAyLWJpdCBzaGlmdCks
IHdoZXJlYXMgdGhlIHNpemUgb2YgdGhlIG1hbGxvYyBzcGFjZQppcyBndWFyYW50ZWVkIHRvIGZp
dC4gIFNvLCBaUkVMQUREUiBoYXMgdG8gdXNlIGEgbGl0ZXJhbCBsb2FkLgpUaGlzIGRvZXNuJ3Qu
CgotLSAKUk1LJ3MgUGF0Y2ggc3lzdGVtOiBodHRwczovL3d3dy5hcm1saW51eC5vcmcudWsvZGV2
ZWxvcGVyL3BhdGNoZXMvCkZUVEMgZm9yIDAuOG0gKGVzdC4gMTc2Mm0pIGxpbmUgaW4gc3VidXJi
aWE6IHN5bmMgYXQgMTMuMU1icHMgZG93biA0MjRrYnBzIHVwCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
