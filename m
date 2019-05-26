Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6407E2A90B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 May 2019 10:17:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N0nlaMs77CkSorulHUUgz1pS6x4wcOPB4T80xN+8a0M=; b=NOAxIFzEWiPIR8
	a4o+AsnRdBgErJ0pJeY7EKyr3mDGgPIE5Senzzd9fW/1WcxxR4UdYTAE7vhjRfywZjzGW3H1KM6tL
	0z0Fa3OzkRJJgzslXw1nzr8Fjr8SmptALREr+2bbgZsBGpYYCN3qoSOhA0fumL158d7vHssn6s0d7
	+iP6LRus5NuOHrpVRjOaNqNcnUYjNR6r4Lpw28TKMBtAsSpCgkHGL0Q5ANEoFBR2pjrpVOyKxPr6k
	ESFkJrHEZxFA1PbV/5WUzKfD4s06DnJ+u5nzb0Xjijr9Va7kyYI5DjdjHiDHP+y6xu12/rURBTvjA
	NDTZbyjnv9Nqy8cMGQjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUoKu-0004u8-UW; Sun, 26 May 2019 08:16:57 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUoKn-0004tj-IB
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 08:16:51 +0000
Received: by mail-it1-x144.google.com with SMTP id 9so19949894itf.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 May 2019 01:16:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+xjDVW4ItsMdn0KgPfwxOYy40rJX/wc+PFxqfPBiNPQ=;
 b=YUGEq/caM4ivcKxNRTadkbp2V83qUOwbxQvgGaMOGoJpyfhGFhA7KfDstIXJtlPg6Q
 UPaiJEsQA5CsVs2CCvz023dOEMnKq1XNAHXCFDRKNNcG+d7CG65oAYgX2+gR2JaCEpMr
 kv0rABKTgWxEvPxnie65Hk97liwFL+jeNme/rnHg/B48F+K0vqn5RMNIkayFKpEmVW/R
 XNkb4dT0JFEFIPsmAsPCTmQPTE4o6N469KWbHslvipqCrjTgxfxcBRfPbNcEm5nymVma
 JBipPCJa4MCkDnzafeO6e4NsHWUz92gpsmSCgVRi5gui510jBNLmvAH4H0HCzy5KEEO4
 ndWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+xjDVW4ItsMdn0KgPfwxOYy40rJX/wc+PFxqfPBiNPQ=;
 b=U8hwnpEiTiwm7wkHYiArbnCpXVR27Bj+5UzxZ7B81y7oE4JMzsg/YJyLA0AvddZdI7
 rmBYlCmCDfOBGridHqK8ygCwigVWC7bTUVbkP50qZzSIX5j3bxu12B+Calf36rMKgu3g
 G6a/+S0H4+SlzJS4J6hHvzlGq+VjZ5J+1i9QlJ1plB9iuEfmzzpWl6lNaqZhydjRxMTs
 MLH9yTq7zdeY40zcX+jqRbPId0Ipb2wKFCS0eIyaj6UgTDPC4AD1DbG/XW/aEbnYujqv
 c0GStXg89ygONzhk0f0tESVPGZFlFxmS/wJrIQ4nFtXDnTYbS+Q6t0G839+Dpl7ZvAEK
 i+iA==
X-Gm-Message-State: APjAAAXLVfOCoXsVH7UW/zRNuNlCNeHivbCCgVJBMqhgqNCF/oqR/obr
 28VWTYuvkJbrfl8gNMg5aqUCz5ExoY1yLlcqv5MPpA==
X-Google-Smtp-Source: APXvYqwBjd6nuMsqoYDspPt3JLyslN/KOvPirQqYRZlPd9BEe17+YaYcLbclALwDs1PeN3fYdZ3o8N6iFxazetw3K/w=
X-Received: by 2002:a02:1986:: with SMTP id
 b128mr75479151jab.136.1558858605958; 
 Sun, 26 May 2019 01:16:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190523125813.29506-1-brgl@bgdev.pl>
 <20190523125813.29506-2-brgl@bgdev.pl>
 <dbe04cda-4f42-46b5-0808-e756a65180d2@linaro.org>
 <CAMRc=MfUFE_yBSqS-s4fVcU9W11Amgeer-eXWNBrkG0Z7KD4tA@mail.gmail.com>
 <5f513fdc-7768-43b8-9d0c-56f07a60768f@linaro.org>
 <CAMRc=MeFMQ9rz-=8GktGtaQm1j-X66RsCBTqR3-mofc4Bju8-w@mail.gmail.com>
 <a4585f30-5fa7-7fde-bbbd-c32464c0f060@linaro.org>
In-Reply-To: <a4585f30-5fa7-7fde-bbbd-c32464c0f060@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Sun, 26 May 2019 10:16:34 +0200
Message-ID: <CAMRc=Mcx55yJ2HmTi7ui4sxa5L+Fwgudra-chaxgYccgg8Vtfw@mail.gmail.com>
Subject: Re: [RFC v2 1/2] clocksource: davinci-timer: add support for
 clockevents
To: Daniel Lezcano <daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_011649_744033_02452D4E 
X-CRM114-Status: GOOD (  27.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: David Lechner <david@lechnology.com>, Kevin Hilman <khilman@kernel.org>,
 Sekhar Nori <nsekhar@ti.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

c29iLiwgMjUgbWFqIDIwMTkgbyAxNjoxNiBEYW5pZWwgTGV6Y2FubyA8ZGFuaWVsLmxlemNhbm9A
bGluYXJvLm9yZz4gbmFwaXNhxYIoYSk6Cj4KPiBPbiAyNC8wNS8yMDE5IDEzOjUzLCBCYXJ0b3N6
IEdvbGFzemV3c2tpIHdyb3RlOgo+ID4gcHQuLCAyNCBtYWogMjAxOSBvIDEwOjU5IERhbmllbCBM
ZXpjYW5vIDxkYW5pZWwubGV6Y2Fub0BsaW5hcm8ub3JnPiBuYXBpc2HFgihhKToKPiA+Pgo+ID4+
IE9uIDI0LzA1LzIwMTkgMDk6MjgsIEJhcnRvc3ogR29sYXN6ZXdza2kgd3JvdGU6Cj4gPj4+IGN6
dy4sIDIzIG1haiAyMDE5IG8gMTg6MzggRGFuaWVsIExlemNhbm8gPGRhbmllbC5sZXpjYW5vQGxp
bmFyby5vcmc+IG5hcGlzYcWCKGEpOgo+ID4+Pj4KPiA+Pj4+IE9uIDIzLzA1LzIwMTkgMTQ6NTgs
IEJhcnRvc3ogR29sYXN6ZXdza2kgd3JvdGU6Cj4gPj4+Pj4gRnJvbTogQmFydG9zeiBHb2xhc3pl
d3NraSA8YmdvbGFzemV3c2tpQGJheWxpYnJlLmNvbT4KPiA+Pj4+Pgo+ID4+Pj4+IEN1cnJlbnRs
eSB0aGUgY2xvY2tzb3VyY2UgYW5kIGNsb2NrZXZlbnQgc3VwcG9ydCBmb3IgZGF2aW5jaSBwbGF0
Zm9ybXMKPiA+Pj4+PiBsaXZlcyBpbiBtYWNoLWRhdmluY2kuIEl0IGhhcmQtY29kZXMgbWFueSB0
aGluZ3MsIHVzZXMgZ2xvYmFsIHZhcmlhYmxlcywKPiA+Pj4+PiBpbXBsZW1lbnRzIGZ1bmN0aW9u
YWxpdGllcyB1bnVzZWQgYnkgYW55IHBsYXRmb3JtIGFuZCBoYXMgY29kZSBmcmFnbWVudHMKPiA+
Pj4+PiBzY2F0dGVyZWQgYWNyb3NzIG1hbnkgKG9mdGVuIHVucmVsYXRlZCkgZmlsZXMuCj4gPj4+
Pj4KPiA+Pj4+PiBJbXBsZW1lbnQgYSBuZXcsIG1vZGVybiBhbmQgc2ltcGxpZmllZCB0aW1lciBk
cml2ZXIgYW5kIHB1dCBpdCBpbnRvCj4gPj4+Pj4gZHJpdmVycy9jbG9ja3NvdXJjZS4gV2Ugc3Rp
bGwgbmVlZCB0byBzdXBwb3J0IGxlZ2FjeSBib2FyZCBmaWxlcyBzbwo+ID4+Pj4+IGV4cG9ydCBh
IGNvbmZpZyBzdHJ1Y3R1cmUgYW5kIGEgZnVuY3Rpb24gdGhhdCBhbGxvd3MgbWFjaGluZSBjb2Rl
IHRvCj4gPj4+Pj4gcmVnaXN0ZXIgdGhlIHRpbWVyLgo+ID4+Pj4+Cj4gPj4+Pj4gVGhlIHRpbWVy
IHdlJ3JlIHVzaW5nIGlzIDY0LWJpdCBidXQgY2FuIGJlIHByb2dyYW1tZWQgaW4gZHVhbCAzMi1i
aXQKPiA+Pj4+PiBtb2RlIChib3RoIGNoYWluZWQgYW5kIHVuY2hhaW5lZCkuIFdlJ3JlIHVzaW5n
IGR1YWwgMzItYml0IG1vZGUgdG8KPiA+Pj4+PiBoYXZlIHNlcGFyYXRlIGNvdW50ZXJzIGZvciBj
bG9ja2V2ZW50cyBhbmQgY2xvY2tzb3VyY2UuCj4gPj4+Pj4KPiA+Pj4+PiBUaGlzIHBhdGNoIGNv
bnRhaW5zIHRoZSBjb3JlIGNvZGUgYW5kIHN1cHBvcnQgZm9yIGNsb2NrZXZlbnQuIFRoZQo+ID4+
Pj4+IGNsb2Nrc291cmNlIGNvZGUgd2lsbCBiZSBpbmNsdWRlZCBpbiBhIHN1YnNlcXVlbnQgcGF0
Y2guCj4gPj4+Pj4KPgo+IFsgLi4uIF0KPgo+ID4+Pj4+ICtzdGF0aWMgdW5zaWduZWQgaW50Cj4g
Pj4+Pj4gK2RhdmluY2lfY2xvY2tldmVudF9yZWFkKHN0cnVjdCBkYXZpbmNpX2Nsb2NrZXZlbnQg
KmNsb2NrZXZlbnQsCj4gPj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGludCBy
ZWcpCj4gPj4+Pj4gK3sKPiA+Pj4+PiArICAgICByZXR1cm4gcmVhZGxfcmVsYXhlZChjbG9ja2V2
ZW50LT5iYXNlICsgcmVnKTsKPiA+Pj4+PiArfQo+ID4+Pj4+ICsKPiA+Pj4+PiArc3RhdGljIHZv
aWQgZGF2aW5jaV9jbG9ja2V2ZW50X3dyaXRlKHN0cnVjdCBkYXZpbmNpX2Nsb2NrZXZlbnQgKmNs
b2NrZXZlbnQsCj4gPj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1bnNp
Z25lZCBpbnQgcmVnLCB1bnNpZ25lZCBpbnQgdmFsKQo+ID4+Pj4+ICt7Cj4gPj4+Pj4gKyAgICAg
d3JpdGVsX3JlbGF4ZWQodmFsLCBjbG9ja2V2ZW50LT5iYXNlICsgcmVnKTsKPiA+Pj4+PiArfQo+
ID4+Pj4+ICsKPiA+Pj4+PiArc3RhdGljIHZvaWQgZGF2aW5jaV90Y3JfdXBkYXRlKHZvaWQgX19p
b21lbSAqYmFzZSwKPiA+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVk
IGludCBtYXNrLCB1bnNpZ25lZCBpbnQgdmFsKQo+ID4+Pj4+ICt7Cj4gPj4+Pj4gKyAgICAgZGF2
aW5jaV90Y3IgJj0gfm1hc2s7Cj4gPj4+Pj4gKyAgICAgZGF2aW5jaV90Y3IgfD0gdmFsICYgbWFz
azsKPiA+Pj4+Cj4gPj4+Pgo+ID4+Pj4gSSBkb24ndCBzZWUgd2hlbiB0aGUgZGF2aW5jaV90Y3Ig
aXMgaW5pdGlhbGl6ZWQuCj4gPj4+Pgo+ID4+Pgo+ID4+PiBJdCdzIHNldCB0byAweDAgYnkgdGhl
IGNvbXBpbGVyIGFuZCB3ZSdyZSBzZXR0aW5nIHRoZSByZWdpc3RlciB0byAweDAKPiA+Pj4gaW4g
ZGF2aW5jaV90aW1lcl9pbml0KCkuCj4gPj4KPiA+PiBXaHkgZGlkIHlvdSBuZWVkIHRvIHJlYWRs
IGJlZm9yZSBpbiB0aGUgcHJldmlvdXMgdmVyc2lvbj8gVGhlIGlkZWEgb2YKPiA+PiBjYWNoaW5n
IHRoZSB2YWx1ZSB3YXMgdG8gc2F2ZSBhbiBleHRyYSByZWFkbC4KPiA+Pgo+ID4+IElmIGl0IGlz
IGFsd2F5cyB6ZXJvLCB0aGVuIHdlIGRvbid0IG5lZWQgdGhpcyB2YXJpYWJsZSBuZWl0aGVyIHRo
ZSByZWFkLAo+ID4+IGp1c3QgZG9pbmc6Cj4gPj4KPiA+PiB3cml0ZWxfcmVsYXhlZCh2YWwgJiBt
YXNrLCBiYXNlICsgREFWSU5DSV9USU1FUl9SRUdfVENSKTsKPiA+Pgo+ID4+IHNob3VsZCB3b3Jr
IG5vID8KPiA+Cj4gPiBJdCdzIG5vdCBhbHdheXMgemVyby4gSXRzIHJlc2V0IHZhbHVlIGlzIHpl
cm8gYW5kIHdlIHdyaXRlIDAgdG8gaXQgYXQKPiA+IGluaXQgdGltZSBqdXN0IHRvIG1ha2Ugc3Vy
ZSwgYnV0IHRoZW4gd2UgbW9kaWZ5IGl0IGFjY29yZGluZyB0byB0aGUKPiA+IGNvbmZpZ3VyYXRp
b24uIFRoZSBzaW5nbGUgVENSIHJlZ2lzdGVyIGNvbnRyb2xzIGJvdGggaGFsdmVzIG9mIHRoZQo+
ID4gdGltZXIsIHNvIHdlIGRvIG5lZWQgYW4gYWN0dWFsIHVwZGF0ZSwgbm90IGEgc2ltcGxlIHdy
aXRlLgo+Cj4gT2sgYnV0IHRoZSBkcml2ZXIgY2FuIGJlIG9uZXNob3Qgb3IgZGlzYWJsZWQgaW4g
dGhlIGNvZGUgKG11dHVhbGx5Cj4gZXhjbHVzaXZlKSwgbm8gPwo+Cj4gU28gZG9pbmcKPgo+ICAt
IHdyaXRlbChvbmVzaG90LCBiYXNlKTsKPiAgLSB3cml0ZWwoZGlzYWJsZWQsIGJhc2UpOwo+Cj4g
d29ya3Mgd2l0aG91dCBhbnkgbWFzayBjb21wdXRhdGlvbiwgbm8/Cj4KPiBXZWxsIHRoZSBhYm92
ZSBhc3N1bWVzIG90aGVyIHBhcnQgb2YgdGhlIHJlZ2lzdGVyIGFyZW4ndCBjaGFuZ2VkIGJ5Cj4g
b3RoZXIgc3Vic3lzdGVtcyAob3IgYnkgdGhlIHRpbWVyIGl0c2VsZikuCj4KPgoKSSdtIG5vdCBz
dXJlIEkgdW5kZXJzdGFuZC4gWW91IGNhbiBiZSB1c2luZyB0d28gdGltZXJzLiBCb3RoCmNvbnRy
b2xsZWQgYnkgYSBzaW5nbGUgVENSIHJlZ2lzdGVyLiBJbiB5b3VyIGV4YW1wbGUgb25lc2hvdCBj
YW4gZXF1YWwKKDB4MDAsIG9yIDB4MDEpIGFuZCBlaXRoZXIgYmUgc2hpZnRlZCBsZWZ0IGJ5IDYg
b3IgMjIgZm9yIFRJTTEyIGFuZApUSU0zNCByZXNwZWN0aXZlbHkuIElmIHlvdSBkbyB3cml0ZWwo
b25lc2hvdC1mb3ItdGltZTEyLCBiYXNlKSB5b3UnbGwKc2V0IHRpbTM0IHRvIGRpc2FibGVkLgoK
QmFydAoKPgo+Cj4KPgo+Cj4KPgo+Cj4KPiAtLSA6Cj4gIDxodHRwOi8vd3d3LmxpbmFyby5vcmcv
PiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKPgo+IEZv
bGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNl
Ym9vayB8Cj4gPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo+IDxo
dHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCj4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
