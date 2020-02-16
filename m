Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E624160535
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 19:11:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wzFcjYBYcXZDeQblqgjWvNnvTAdJ+rJS1IqtRU/nTjc=; b=MRDufwVkaijqdY
	GkRWpfLrXKB5UPxKGKL6PlnyQQDd8701F2JGjUPj3yJXnUejB95mbfXvTMNmoYJ0ZD3QG6WdMN9Lx
	7GnToBnNVcKGCZCyhIitgDuCv5jb/Ov+5h+KFYv4YkphjcEwZlBU1VM4JIvGDX/86GvfNAVAW94BT
	zejjlGrGIkUUacrYmOAQvaCNUOAZohJCdzkBNLL+T9TDT1BwXI00uPb835hKS1H1I/kmxyqssPisG
	+9+SwKSzfSvlaDjlC5JQCnxtZxeq+6Fgq54ZJ1tWIJfob/pmGvLvEjLK1R9z6wWyiniwbw/KVt20+
	g0nFIGaD9vNPpos/t9CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3OO3-00033A-Sq; Sun, 16 Feb 2020 18:11:23 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3ONx-00032f-A4
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Feb 2020 18:11:19 +0000
Received: from mail-qv1-f44.google.com ([209.85.219.44]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MwQw1-1jLk171kjl-00sQKc for <linux-arm-kernel@lists.infradead.org>; Sun,
 16 Feb 2020 19:11:12 +0100
Received: by mail-qv1-f44.google.com with SMTP id q9so5710185qvu.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 10:11:12 -0800 (PST)
X-Gm-Message-State: APjAAAVvuiW6Ou30GAYajPMJos5PIpfUj2sufZbUVw9K8hG16pBNoyBA
 HkfDRMn5G5Twd5mAVH1qrPRMVrK01PlakfTi50M=
X-Google-Smtp-Source: APXvYqzvtOyO80NGJ0NQzbdKQvJf1lkKW8T220YClkzb69MFsE4nIeROks8Hz90TjXKc5YYn+5v58NnqAVTN3OLIhHE=
X-Received: by 2002:a05:6214:524:: with SMTP id
 x4mr10124633qvw.4.1581876671327; 
 Sun, 16 Feb 2020 10:11:11 -0800 (PST)
MIME-Version: 1.0
References: <cover.1577111363.git.christophe.leroy@c-s.fr>
 <bd4557a7-9715-59aa-5d8e-488c5e516a98@c-s.fr>
 <20200109200733.GS3191@gate.crashing.org>
 <77a8bf25-6615-6c0a-56d4-eae7aa8a8f09@c-s.fr>
 <20200111113328.GX3191@gate.crashing.org>
In-Reply-To: <20200111113328.GX3191@gate.crashing.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sun, 16 Feb 2020 19:10:55 +0100
X-Gmail-Original-Message-ID: <CAK8P3a11wX1zJ+TAacDTkYsrzvfdVmNrcB6OC23aFvCxF57opQ@mail.gmail.com>
Message-ID: <CAK8P3a11wX1zJ+TAacDTkYsrzvfdVmNrcB6OC23aFvCxF57opQ@mail.gmail.com>
Subject: Re: Surprising code generated for vdso_read_begin()
To: Segher Boessenkool <segher@kernel.crashing.org>
X-Provags-ID: V03:K1:tBpFbQL3ZpMjX3TE4Hrgy0CJvZKdwSCJoHaiYG0xNqEOibwBihG
 cGIWAhdx/yIwbMcu9k7DI7SsSUC+gd4rfNc8JdkZkZiuYv3S0o7Ikr7ll+w4PC0aEpcKaol
 QgS/IphRPTHwfK9wZr6zcgLCLeyPDK0/R8jGg67GIWTYg79ejLy0bq1CZvsA58wG15AgXeM
 cPyu0CItCMDX9yd3k/Zag==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vQ1N75rrn7Q=:y6q9SYZz+eTscu6o4IboYb
 sxkVKCrM1vm4FwZUd+KVBQVJpAtRy6Z3U7HURBzDzsVrn5FO4FYelNkigoM+qFnJoOOt46SGZ
 sLI4B4hm6xAWG90HPo96KEZvejUCZGTTRXW/LO2bVMRdyP9MszKBPRzoaJgVPUZY5alTlPoVr
 awiM40RbMD4PLi+bOG7MP1a/GrcRoIYsrZQE/EYmzW4tUYDwNiZQDMgvkv/x9Mi6r43u4b1rz
 aS5xGV1CH7eLr98blQQliqWwm/g7wzz+cLWLy/rD+e5um1/5Tu3cvGy9mFCFrvIzA0JKnfhxr
 le5ETLGvuld+NRxXSNa6QuDVdUNwh2ktiQPrTueA+z0xJ0YIyenfZgTdynU1PdaDVXDsx7fWT
 YEHogcundS0n+W56Pep/GZkX9204n/KMVZpnjX5nuPdNwxq1WDrYOtu6ExRFysDv+np50pldg
 HecFfrC7x1Qbs8Ju85Ndk6XshmeM6dWw8u2URUpy8FCWkeyh8j/jtxkVJulSw8ZSxGBFhZ6CA
 L0cg2LD9owA1Lv4EKfd1BvPzabPDMMEeSMMoO3bN8Jdf5xA22kkOijz+qIVFY8yoJJpPT3hH6
 uvV1CfhoqLjMGq0TPGfmRQRX0pupLUVqtOViK6xFuv3w5VS+VmZeG5SzIu8nsN60Hy7g1O5cM
 3b/SKJ+oO1KSMtUxNcZOhCmvWKXv+5h1k49zNPtqtN/rjwxwoMg6tpPRX68JcZvt0IbAqr/6/
 ZW290fffkh3xrJN5hWDS9eb8idrQ+FT5DS4GPx6gt8PI7Hlt5jczot0zp4MdL4/OZpQ9D0aln
 mFBg21wlMF+EtWrp9B/sfDokFXnKlnEdL3wIQ/fyj9kIToziyY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_101117_642260_47F8328C 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
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

T24gU2F0LCBKYW4gMTEsIDIwMjAgYXQgMTI6MzMgUE0gU2VnaGVyIEJvZXNzZW5rb29sCjxzZWdo
ZXJAa2VybmVsLmNyYXNoaW5nLm9yZz4gd3JvdGU6Cj4KPiBPbiBGcmksIEphbiAxMCwgMjAyMCBh
dCAwNzo0NTo0NEFNICswMTAwLCBDaHJpc3RvcGhlIExlcm95IHdyb3RlOgo+ID4gTGUgMDkvMDEv
MjAyMCDDoCAyMTowNywgU2VnaGVyIEJvZXNzZW5rb29sIGEgw6ljcml0IDoKPiA+ID5JdCBsb29r
cyBsaWtlIHRoZSBjb21waWxlciBkaWQgbG9vcCBwZWVsaW5nLiAgV2hhdCBHQ0MgdmVyc2lvbiBp
cyB0aGlzPwo+ID4gPlBsZWFzZSB0cnkgY3VycmVudCB0cnVuayAodG8gYmVjb21lIEdDQyAxMCks
IG9yIGF0IGxlYXN0IEdDQyA5Pwo+ID4KPiA+IEl0IGlzIHdpdGggR0NDIDUuNQo+ID4KPiA+IGh0
dHBzOi8vbWlycm9ycy5lZGdlLmtlcm5lbC5vcmcvcHViL3Rvb2xzL2Nyb3NzdG9vbC8gZG9lc24n
dCBoYXZlIG1vcmUKPiA+IHJlY2VudCB0aGFuIDguMQo+Cj4gQXJuZCwgY2FuIHlvdSB1cGRhdGUg
dGhlIHRvb2xzPyAgV2UgYXJlIGF0IDguMyBhbmQgOS4yIG5vdyA6LSkgIE9yIGlzCj4gdGhpcyBo
YXJkIGFuZC9vciBwYWluZnVsIHRvIGRvPwoKVG8gZm9sbG93IHVwIG9uIHRoaXMgb2xkZXIgdGhy
ZWFkLCBJIGhhdmUgbm93IHVwbG9hZGVkIDYuNSwgNy41LCA4LjMgYW5kIDkuMgpiaW5hcmllcywg
YXMgd2VsbCBhcyBhIHJlY2VudCAxMC4wIHNuYXBzaG90LgoKSSBob3BlIHRoZXNlIHdvcmssIGxl
dCBtZSBrbm93IGlmIHRoZXJlIGFyZSBwcm9ibGVtcy4KCiAgICAgICBBcm5kCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
