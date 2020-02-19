Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 577C01640D3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 10:52:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=szpD+vkQYi+q5P/j/BIrgjhHLzG5db5qV7QW9nBOLJ4=; b=ijrc60hUiAwY9X
	vfClfun7W56onUZrxSsL02nEARs7nGMqpQdCiiocbLxHF0D85Ie0hd9ZqPtWwbUsc9hN2TCOvnJa/
	mV1igZI3H5DxSYjGAWKVmiEemjPuh7GzHavGvL/8hNCgkqrV32EDcdBSHksiyiGQh185ZmID6B7eK
	LFuUknZvTuSMNLM6H8pSxPYQnu9/41rKTcDwynBpA4hpOgdkMP+OKlhICf6z2jMygYGkfjPs8Etpl
	BTxHeT11+OKWDmnh0Qq7cBQo+JZpzJa0zLoaOHVr7zS3tORh6yAe+nMslgzYD71thxC58iOaF44aK
	uOLBBcdwHlnmSsin9qHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4M2C-00075l-Dc; Wed, 19 Feb 2020 09:52:48 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4M22-000754-No
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 09:52:40 +0000
Received: from mail-qk1-f174.google.com ([209.85.222.174]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MsZBb-1jKFDu15ul-00u06n for <linux-arm-kernel@lists.infradead.org>; Wed,
 19 Feb 2020 10:52:33 +0100
Received: by mail-qk1-f174.google.com with SMTP id a141so12554030qkg.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 01:52:33 -0800 (PST)
X-Gm-Message-State: APjAAAUh3UTDx0yYktynZpeKOJXMO1s8x/bbNaICDcgj9VYOBlVm12wc
 /18E6es9hlTRN539Pi12LhHJgVfx3bV8XuS9BF0=
X-Google-Smtp-Source: APXvYqz6sQrDPqUNAmecu/h04WniHkbB4ukHoV+epQJlqXgny5NFbF326v+1laQu3l+m+Fb5JwCdWHZ/0sv+ehZyuPE=
X-Received: by 2002:a05:620a:1530:: with SMTP id
 n16mr22824472qkk.394.1582105952127; 
 Wed, 19 Feb 2020 01:52:32 -0800 (PST)
MIME-Version: 1.0
References: <cover.1577111363.git.christophe.leroy@c-s.fr>
 <bd4557a7-9715-59aa-5d8e-488c5e516a98@c-s.fr>
 <20200109200733.GS3191@gate.crashing.org>
 <77a8bf25-6615-6c0a-56d4-eae7aa8a8f09@c-s.fr>
 <20200111113328.GX3191@gate.crashing.org>
 <CAK8P3a11wX1zJ+TAacDTkYsrzvfdVmNrcB6OC23aFvCxF57opQ@mail.gmail.com>
 <305fcee5-2e1b-ea4d-9a2a-a0e8034d40a8@c-s.fr>
In-Reply-To: <305fcee5-2e1b-ea4d-9a2a-a0e8034d40a8@c-s.fr>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 19 Feb 2020 10:52:16 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0SfCwP04CJPThCuDmngGhwtejN8Px_UQpSwi=s_ww=bw@mail.gmail.com>
Message-ID: <CAK8P3a0SfCwP04CJPThCuDmngGhwtejN8Px_UQpSwi=s_ww=bw@mail.gmail.com>
Subject: Re: Surprising code generated for vdso_read_begin()
To: Christophe Leroy <christophe.leroy@c-s.fr>
X-Provags-ID: V03:K1:gag68nYR4qRnD8K0vHh2IxjruSwZA8+eIt9w95fOGo02EGSEbxM
 WffNVDA2OzK23PF7EU6eip2YIKWsjI4MOjilq0RrOwSR3cOsys734az5t+VtP4yvsih8q2v
 bpB2jsT0V5oIQes6DNsWPGrNQzHzJGjZ+rYzaZegCota5BqCDkT0+lZVxTNJsKVsuSNWBhq
 rUOo7aYyvRl4G/LNjEc9g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:PLxC/0d37pM=:kdvp4Bq3GflFoxT3AEX5dx
 thof9u9btw18yt5dafIenJXgI6kmL4nbW7sEiXY6w3svVomZ6ONrGoGb7TCido7h0K6iiudQB
 c1wC/ENyxZ+HHR6HhhWRTkStq7qee7rBybvC0hwXHnqiDkrokbNqeFwDKRK9Hkp0bDq7J3ED1
 V9lQCQ0x2E0ZcSlJU7hUDjKAiuAmjQHEf+3QXyp7oj9Oh3r8+2maS2kK6D5apGH55Tf9rKMeo
 FdpO/2n6AoQ7LzCloMx2hbiaCWe8wzQ62TQU7QO+QRp3Y+V8krGdwZ5kJVSws3ZFy6EXCbjmG
 LyMBqX48cHYinyx52DNBtsznfaEYA9dTTFBa5UySFVIy92KpeufZN48RJpHvCWC9gHpfb/Cnb
 molVWD66ybsdJuEcMjsN3gMnVsjJ1+tCPzdtPGitDxvIFPh3MMauJ28bH4tKCLyxb5QUIkWHT
 xjyz6im/sEalzXU9nqecMiTlmbGjqID9BSeNMalQbObr/SN0MsqG4OXoTXmDKWrW7LVao9SD/
 jquOm+1t4PRf3NXzBla0lbrrcWmYsmn1qsNjY+rjU4pI4xp0iuPLG7ZVdjPMPxzUwMldCuHGf
 wGZ+4vGU6dSVL8Ewe124CdIWZXYTWZcCE18Lc1osXKDHS3gfUMGFKeL70lmtHx4WLocDo7EOs
 5VOTXubghCHcDgw6/PPQeBYjf4CCyHtRvH/YJ4RvARE0SRJtwyqhVMtPPTDmhkW5DqcZ6MSUH
 eaeogJm0X1ucSKLYRP+SuAE351uqm+W39xBwD/zVRGKy82AJKo97EjHRvb9pLmMm0T2Hqdky+
 r/EN/R57DN3RsCPWCA4pvUTE9lkb1iNqa4Z2hUy/O5TcUIzK8c=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_015239_071207_614A51CF 
X-CRM114-Status: GOOD (  18.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Segher Boessenkool <segher@kernel.crashing.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 Paul Mackerras <paulus@samba.org>, Andy Lutomirski <luto@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBGZWIgMTksIDIwMjAgYXQgOTo0NSBBTSBDaHJpc3RvcGhlIExlcm95CjxjaHJpc3Rv
cGhlLmxlcm95QGMtcy5mcj4gd3JvdGU6Cj4gTGUgMTYvMDIvMjAyMCDDoCAxOToxMCwgQXJuZCBC
ZXJnbWFubiBhIMOpY3JpdCA6Cj4gPiBPbiBTYXQsIEphbiAxMSwgMjAyMCBhdCAxMjozMyBQTSBT
ZWdoZXIgQm9lc3Nlbmtvb2wKPiA+IDxzZWdoZXJAa2VybmVsLmNyYXNoaW5nLm9yZz4gd3JvdGU6
Cj4gPj4KPiA+PiBPbiBGcmksIEphbiAxMCwgMjAyMCBhdCAwNzo0NTo0NEFNICswMTAwLCBDaHJp
c3RvcGhlIExlcm95IHdyb3RlOgo+ID4+PiBMZSAwOS8wMS8yMDIwIMOgIDIxOjA3LCBTZWdoZXIg
Qm9lc3Nlbmtvb2wgYSDDqWNyaXQgOgo+ID4+Pj4gSXQgbG9va3MgbGlrZSB0aGUgY29tcGlsZXIg
ZGlkIGxvb3AgcGVlbGluZy4gIFdoYXQgR0NDIHZlcnNpb24gaXMgdGhpcz8KPiA+Pj4+IFBsZWFz
ZSB0cnkgY3VycmVudCB0cnVuayAodG8gYmVjb21lIEdDQyAxMCksIG9yIGF0IGxlYXN0IEdDQyA5
Pwo+ID4+Pgo+ID4+PiBJdCBpcyB3aXRoIEdDQyA1LjUKPiA+Pj4KPiA+Pj4gaHR0cHM6Ly9taXJy
b3JzLmVkZ2Uua2VybmVsLm9yZy9wdWIvdG9vbHMvY3Jvc3N0b29sLyBkb2Vzbid0IGhhdmUgbW9y
ZQo+ID4+PiByZWNlbnQgdGhhbiA4LjEKPiA+Pgo+ID4+IEFybmQsIGNhbiB5b3UgdXBkYXRlIHRo
ZSB0b29scz8gIFdlIGFyZSBhdCA4LjMgYW5kIDkuMiBub3cgOi0pICBPciBpcwo+ID4+IHRoaXMg
aGFyZCBhbmQvb3IgcGFpbmZ1bCB0byBkbz8KPiA+Cj4gPiBUbyBmb2xsb3cgdXAgb24gdGhpcyBv
bGRlciB0aHJlYWQsIEkgaGF2ZSBub3cgdXBsb2FkZWQgNi41LCA3LjUsIDguMyBhbmQgOS4yCj4g
PiBiaW5hcmllcywgYXMgd2VsbCBhcyBhIHJlY2VudCAxMC4wIHNuYXBzaG90Lgo+ID4KPgo+IFRo
YW5rcyBBcm5kLAo+Cj4gSSBoYXZlIGJ1aWx0IHRoZSBWRFNPIHdpdGggOS4yLCBJIGdldCBsZXNz
IHBlcmZvcm1hbnQgcmVzdWx0IHRoYW4gd2l0aAo+IDguMiAoc2FtZSBwZXJmb3JtYW5jZSBhcyB3
aXRoIDUuNSkuCj4KPiBBZnRlciBhIHF1aWNrIGxvb2ssIEkgc2VlOgo+IC0gSXJyZWxldmFudCBO
T1BzIHRvIGFsaWduIGxvb3BzIGFuZCBzdHVmZiwgYWxsdGhvdWdoIC1tcGN1PTg2MCBzaG91bGQK
PiBhdm9pZCB0aGF0Lgo+IC0gQSBzdGFjayBmcmFtZSBpcyBzZXQgZm9yIHNhdmluZyByMzEgaW4g
X19jX2tlcm5lbF9jbG9ja19nZXR0aW1lLiBHQ0MKPiA4LjEgZG9uJ3QgbmVlZCB0aGF0LCBhbGwg
VkRTTyBmdW5jdGlvbnMgYXJlIGZyYW1lbGVzcyB3aXRoIDguMQoKSWYgeW91IHRoaW5rIGl0IHNo
b3VsZCBiZSBmaXhlZCBpbiBnY2MsIG1heWJlIHRyeSB0byByZXByb2R1Y2UgaXQgaW4KaHR0cHM6
Ly9nb2Rib2x0Lm9yZy8gYW5kIG9wZW4gYSBnY2MgYnVnIGFnYWluc3QgdGhhdC4KCkFsc28sIHBs
ZWFzZSB0cnkgdGhlIGdjYy0xMCBzbmFwc2hvdCwgd2hpY2ggaGFzIHRoZSBoaWdoZXN0IGNoYW5j
ZQpvZiBnZXR0aW5nIGZpeGVzIGlmIGl0IHNob3dzIHRoZSBzYW1lIGlzc3VlIChvciB3b3JzZSku
CgogICAgIEFybmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
