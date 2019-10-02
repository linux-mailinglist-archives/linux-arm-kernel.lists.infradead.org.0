Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC8FCC92AB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 21:55:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FiXedkmhtKfsnz46kfv2k9pHfjmQgXBhVewM5qyi0gE=; b=u07q1WMbmAZMnn
	UGyTuJ1ruheqvyzamGoOAom1QfMYZ5En/Su7YF9uQqw6hFNZzcHq4irJnjlpOttBucyXnPx26tfZ7
	nndcDS9jAMVnsPKcmA0TpAefWAm7o6tVQd6tDZeFZoxiD6Es4GJVsM/kAY+0GKKq1N9rcp+7V4hlX
	boJp562A9Ta/c6cnx8+IjQrQqa6B3d9wHCuZuF0Klg97dbgZ5gh+CeXBnH8uf25A3Z/wnDbdw6F6u
	ly4sjH+NCVa+IvnSB/+ixuQ79hcVqowikmQoNJ1Ob5SuDTPIpF81Yn+9avZE/uN9opDCcl4hEFQm8
	XbZCnA1jWRroYOxvljEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFkif-00044g-WD; Wed, 02 Oct 2019 19:55:30 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFkiY-00043q-PT
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 19:55:24 +0000
Received: by mail-ed1-x543.google.com with SMTP id h2so312244edn.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 12:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=xkIPEeBh6Q97IvXGn4hjLXlT8I4asAfynX43MLqWSPQ=;
 b=giR0dB73oo9Hev8XpA4FIuuMUIUAo+fUm46PmKWy/t1grR8nLOEBy7KCmuMVBIhpgu
 DqZZeaB0KYxkD/l2l7XxNtcWmq7enjmcp/2jXBbjSIX8AU503H/mKpZQXxL6yRQ5TO33
 B8QEZatRcv+rJjm+U6tmafDvI9USkQNQ9Ux0Q37GX5upAgpsR1g+m1EHKB5A2kA4cy1t
 CTUHuYWYl1EmhaxFnDFjasXylpc9W4iwZ93dlZ27PjGUuGhBBHGX7AAJYHewPra+sJ3Q
 0QLFjvn1KhuAQmn7rtCHmQjVb8nK3lbzu1O6WQHerx0+p39rod/W2ym+kdT+TdToa1Ap
 FF7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=xkIPEeBh6Q97IvXGn4hjLXlT8I4asAfynX43MLqWSPQ=;
 b=rE6oKWFZoWtftIn2oZbLra1JHf5vAUhT4E6jLTOwCL85OtYmvMzyAHdVm9fmF9kb/G
 4Lpvb2cS1fgn8RlXRyO0TQq7aub1wLZHJ3vaWN/vb+fM0KAdn0oaDzsx+hPl5v7rxUcT
 s7E4SkZgdW+kcutmwOlDV9gNwKdg1jJJ75xJC94FsznwF0dzJXKQHmtr+h6Q+JF83pzY
 gWPN69ELBtmCfBvy3FnNEnuwl1a4ynCLc+PEsicpIBrUwXKftY1SdBXNMyn2wFnLCSjQ
 5JarJwlswNvDqjpU351o2tCqoFX6omutdmEHWuWit0xIWL4Wad7lKqPXWiPy1SsXTU6u
 4xGQ==
X-Gm-Message-State: APjAAAUZVqpwU2O5y9urB6sdYGFMGHdnMFHBprYHr8Tu1bnUcIzjl5Hk
 i7gS814NBrh2hBq2fq7QA8BoRJnMyhfyrXMfysk=
X-Google-Smtp-Source: APXvYqyBZL/DpNeTN5iSVkVr1dDOZLljTZyNX5ooanHL1zA0OBrgXa2VJbpQr5JScE8i4pEBDoDLrK/oJaRcHaqRNBg=
X-Received: by 2002:a17:906:4c4c:: with SMTP id
 d12mr4652655ejw.174.1570046120024; 
 Wed, 02 Oct 2019 12:55:20 -0700 (PDT)
MIME-Version: 1.0
References: <1569634131-13875-1-git-send-email-jsanka@codeaurora.org>
 <1569634131-13875-2-git-send-email-jsanka@codeaurora.org>
 <20190930103931.GZ1208@intel.com>
 <f6d3c2b6ad897ce8b2fdcaab44993eed@codeaurora.org>
 <20191002134535.GU1208@intel.com>
In-Reply-To: <20191002134535.GU1208@intel.com>
From: Rob Clark <robdclark@gmail.com>
Date: Wed, 2 Oct 2019 15:55:10 -0400
Message-ID: <CAF6AEGtETiKLggNEKm+YyH8PMzpXpp119PjV2f6jdbU4UYxiAQ@mail.gmail.com>
Subject: Re: [PATCH] drm: add fb max width/height fields to drm_mode_config
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_125522_829148_9EB4ED39 
X-CRM114-Status: GOOD (  27.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robdclark[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Sean Paul <seanpaul@chromium.org>,
 Jeykumar Sankaran <jsanka@codeaurora.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBPY3QgMiwgMjAxOSBhdCA5OjQ1IEFNIFZpbGxlIFN5cmrDpGzDpAo8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+Cj4gT24gVHVlLCBPY3QgMDEsIDIwMTkgYXQg
MDI6MjA6NTVQTSAtMDcwMCwgSmV5a3VtYXIgU2Fua2FyYW4gd3JvdGU6Cj4gPiBPbiAyMDE5LTA5
LTMwIDAzOjM5LCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6Cj4gPiA+IE9uIEZyaSwgU2VwIDI3LCAy
MDE5IGF0IDA2OjI4OjUxUE0gLTA3MDAsIEpleWt1bWFyIFNhbmthcmFuIHdyb3RlOgo+ID4gPj4g
VGhlIG1vZGVfY29uZmlnIG1heCB3aWR0aC9oZWlnaHQgdmFsdWVzIGRldGVybWluZSB0aGUgbWF4
aW11bQo+ID4gPj4gcmVzb2x1dGlvbiB0aGUgcGl4ZWwgcmVhZGVyIGNhbiBoYW5kbGUuCj4gPiA+
Cj4gPiA+IE5vdCBhY2NvcmRpbmcgdG8gdGhlIGRvY3MgSSAiZml4ZWQiIGEgd2hpbGUgYWdvLgo+
ID4gPgo+ID4gPj4gQnV0IHRoZSBzYW1lIHZhbHVlcyBhcmUKPiA+ID4+IHVzZWQgdG8gcmVzdHJp
Y3QgdGhlIHNpemUgb2YgdGhlIGZyYW1lYnVmZmVyIGNyZWF0aW9uLiBIYXJkd2FyZSdzCj4gPiA+
PiB3aXRoIHNjYWxpbmcgYmxvY2tzIGNhbiBvcGVyYXRlIG9uIGZyYW1lYnVmZmVycyBsYXJnZXIv
c21hbGxlciB0aGFuCj4gPiA+PiB0aGF0IG9mIHRoZSBwaXhlbCByZWFkZXIgcmVzb2x1dGlvbnMg
Ynkgc2NhbGluZyB0aGVtIGRvd24vdXAgYmVmb3JlCj4gPiA+PiByZW5kZXJpbmcuCj4gPiA+Pgo+
ID4gPj4gVGhpcyBjaGFuZ2VzIGFkZHMgYSBzZXBhcmF0ZSBmcmFtZWJ1ZmZlciBtYXggd2lkdGgv
aGVpZ2h0IGZpZWxkcwo+ID4gPj4gaW4gZHJtX21vZGVfY29uZmlnIHRvIGFsbG93IHZlbmRvcnMg
dG8gc2V0IGlmIHRoZXkgYXJlIGRpZmZlcmVudAo+ID4gPj4gdGhhbiB0aGF0IG9mIHRoZSBkZWZh
dWx0IG1heCByZXNvbHV0aW9uIHZhbHVlcy4KPiA+ID4KPiA+ID4gSWYgeW91J3JlIGdvaW5nIHRv
IGNoYW5nZSB0aGUgbWVhbmluZyBvZiB0aGUgb2xkIHZhbHVlcyB5b3UgbmVlZAo+ID4gPiB0byBm
aXggdGhlIGRyaXZlcnMgdG9vLgo+ID4gPgo+ID4gPiBQZXJzb25hbGx5IEkgZG9uJ3Qgc2VlIHRv
byBtdWNoIHBvaW50IGluIHRoaXMgc2luY2UgeW91IG1vc3QgbGlrZWx5Cj4gPiA+IHdhbnQgdG8g
dmFsaWRhdGUgYWxsIHRoZSBvdGhlciB0aW1pbmdzIGFzIHdlbGwsIGFuZCBzbyBsaWtlbHkgbmVl
ZAo+ID4gPiBzb21lIGtpbmQgb2YgbW9kZV92YWxpZCBpbXBsZW1lbnRhdGlvbiBhbnl3YXkuIEhl
bmNlIHRvIHZhbGlkYXRlCj4gPiA+IG1vZGVzIHRoZXJlJ3Mgbm90IG11Y2ggYmVuZWZpdCBvZiBo
YXZpbmcgZ2xvYmFsIG1pbi9tYXggdmFsdWVzLgo+ID4gPgo+ID4gaHR0cHM6Ly9wYXRjaHdvcmsu
a2VybmVsLm9yZy9wYXRjaC8xMDQ2NzE1NS8KPiA+Cj4gPiBJIGJlbGlldmUgeW91IGFyZSByZWZl
cnJpbmcgdG8gdGhpcyBwYXRjaC4KPiA+Cj4gPiBJIGFtIHByaW1hcmlseSBpbnRlcmVzdGVkIGlu
IHRoZSBzY2FsaW5nIHNjZW5hcmlvIG1lbnRpb25lZCBoZXJlLiBNU00KPiA+IGFuZCBhIGZldyBv
dGhlciBoYXJkd2FyZSBoYXZlIHNjYWxpbmcgYmxvY2sgdGhhdCBhcmUgdXNlZCBib3RoIHdheXM6
Cj4gPgo+ID4gMSkgV2hlcmUgRkIgbGltaXRzIGFyZSBsYXJnZXIgdGhhbiB0aGUgZGlzcGxheSBs
aW1pdHMuIFNjYWxhciBibG9ja3MgYXJlCj4gPiB1c2VkIHRvCj4gPiAgICAgZG93bnNjYWxlIHRo
ZSBmcmFtZWJ1ZmZlcnMgYW5kIHJlbmRlciB3aXRoaW4gZGlzcGxheSBsaW1pdHMuCj4gPgo+ID4g
SW4gdGhpcyBzY2VuYXJpbywgd2l0aCB5b3VyIHBhdGNoLCBhcmUgeW91IHN1Z2dlc3RpbmcgdGhl
IGRyaXZlcnMKPiA+IG1haW50YWluIHRoZQo+ID4gZGlzcGxheSBsaW1pdHMgbG9jYWxseSBhbmQg
dXNlIHRob3NlIHZhbHVlcyBpbiBmaWxsX21vZGVzKCkgLwo+ID4gbW9kZV92YWxpZCgpIHRvIGZp
bHRlcgo+ID4gb3V0IGludmFsaWQgbW9kZXMgZXhwbGljaXRseSBpbnN0ZWFkIG9mIG1vZGVfY29u
ZmlnLm1heF93aWR0aC9oZWlnaHQ/Cj4gPgo+ID4gMikgV2hlcmUgRkIgbGltaXRzIGFyZSBzbWFs
bGVyIHRoYW4gZGlzcGxheSBsaW1pdHMuIEVuZm9yY2VkIGZvcgo+ID4gcGVyZm9ybWFuY2UgcmVh
c29ucyBvbiBsb3cgdGllciBoYXJkd2FyZS4KPiA+IEl0IHJlZHVjZXMgdGhlIGZldGNoIGJhbmR3
aWR0aCBhbmQgdXNlcyBwb3N0IGJsZW5kaW5nIHNjYWxhciBibG9jayB0bwo+ID4gc2NhbGUgdXAg
dGhlIHBpeGVsIHN0cmVhbQo+ID4gdG8gbWF0Y2ggdGhlIGRpc3BsYXkgcmVzb2x1dGlvbi4KPgo+
IEFzIERhbmllbCBtZW50aW9uZWQgaW4gdGhhdCBkaXNjdXNzaW9uIHlvdXIgdHlwaWNhbCB1c2Vy
c3BhY2UKPiBhc3N1bWVzIHRoYXQgaXQgY2FuIHVzZSBhIHNpbmdsZSB1bnNjYWxlZCBmcmFtZWJ1
ZmZlciB3aXRoIGFueQo+IGFkdmVydGlzZWQgbW9kZS4gSGVuY2UgSSBiZWxpZXZlIGxpbWl0aW5n
IHRoZSBtb2RlIGxpc3QgYmFzZWQKPiBvbiB0aGUgbWF4IGZyYW1lYnVmZmVyIHNpemUgaXMgcHJl
dHR5IG11Y2ggcmVxdWlyZWQgdW5sZXNzCj4geW91IHdhbnQgdG8gYnJlYWsgZXhpc3RpbmcgdXNl
cnNwYWNlLgo+Cj4gSW4gaTkxNSBJIHdlbnQgYSBiaXQgZnVydGhlciB0aGFuIHRoYXQgcmVjZW50
bHkgYW5kIG5vdyB3ZQo+IGZpbHRlciB0aGUgbW9kZSBsaXN0IGJhc2VkIG9uIHRoZSBtYXhpbXVt
IHBsYW5lIHNpemUgWzFdCj4gKHdoaWNoIGNhbiBiZSBsZXNzIHRoYW4gdGhlIG1heCBmYiBzaXpl
IGFuZCBsZXNzIHRoYW4gdGhlCj4gbWF4aW11bSBjcnRjIGRpbWVuc2lvbnMpLiBBbmQgYWdhaW4g
dGhhdCdzIGJlY2F1c2UgdXNlcnNwYWNlCj4gYXNzdW1lcyB0aGF0IGl0IGNhbiBqdXN0IHVzZSBh
IHNpbmdsZSB1bnNjYWxlZCBmdWxsc2NyZWVuCj4gcGxhbmUgdG8gY292ZXIgdGhlIGVudGlyZSBj
cnRjLgo+Cj4gVGhlc2UgYXNzdW1wdGlvbiBhcmUgYWxzbyBjYXJ2ZWQgaW50byB0aGUgbGVnYWN5
IHNldGNydGMgdWFwaQo+IHdoZXJlIHlvdSBjYW4ndCBldmVuIHNwZWNpZnkgbXVsdGlwbGUgZnJh
bWVidWZmZXJzLiBJbiB0aGVvcnkKPiBhIGRyaXZlciBjb3VsZCBpbnRlcm5hbGx5IHVzZSBtdWx0
aXBsZSBwbGFuZXMgdG8gb3ZlcmNvbWUgc29tZQo+IG9mIHRoZSBsaW1pdGF0aW9ucywgYnV0IGlu
IGk5MTUgYXQgbGVhc3Qgd2UgZG9uJ3QuCj4KPiBbMV0gaHR0cHM6Ly9jZ2l0LmZyZWVkZXNrdG9w
Lm9yZy9kcm0vZHJtLWludGVsL2NvbW1pdC8/aWQ9MmQyMDQxMWUyNWEzYmYzZDI5MTRhMjIxOWY0
N2VkNDhkYzU3YWVkNQo+Cj4gPgo+ID4gQW55IHN1Z2dlc3Rpb25zIG9uIGhvdyB0aGlzIHRvcG9s
b2d5IGNhbiBiZSBoYW5kbGVkIHdpdGggYSBzaW5nbGUgc2V0IG9mCj4gPiBtYXgvbWluIHZhbHVl
cz8KPiA+Cj4KPiBJIHRoaW5rIGEgc2FmZSB3YXkgdG8gcmVsYXggdGhlc2UgcnVsZXMgd291bGQg
YmUgdG8gZWl0aGVyOgo+IGEpIEFkZCBhIGNsaWVudCBjYXAgYnkgd2hpY2ggdXNlcnNwYWNlIGNh
biBpbmZvcm0gdGhlIGtlcm5lbAo+ICAgIGl0IHVuZGVyc3RhbmRzIHRoZXJlIGFyZSBtb3JlIGNv
bXBsaWNhdGVkIGxpbWl0cyBhdCBwbGF5Cj4gICAgYW5kIHRodXMgY2FuJ3QgYXNzdW1lIHRoYXQg
ZXZlcnl0aGluZyB3aWxsIGp1c3Qgd29yawo+IGIpIE1heWJlIHdlIGNvdWxkIGp1c3QgdGllIHRo
YXQgaW4gd2l0aCB0aGUgYXRvbWljIGNhcCBzaW5jZQo+ICAgIGF0b21pYyBjbGllbnRzIGFyZSBw
cmV0dHkgbXVjaCByZXF1aXJlZCB0byBkbyB0aGUgVEVTVF9PTkxZCj4gICAgZGFuY2UgYW55d2F5
LCBzbyBvbmUgbWlnaHQgaG9wZSB0aGV5IGhhdmUgYSB3b3JraW5nIGZhbGxiYWNrCj4gICAgc3Ry
YXRlZ3kuIFRob3VnaCBJIHN1c3BlY3QgZWcuIHRoZSBtb2Rlc2V0dGluZyBkZHggd291bGRuJ3QK
PiAgICBsaWtlIHRoaXMuIEJ1dCB3ZSBubyBsb25nZXIgYWxsb3cgYXRvbWljIHdpdGggWCBhbnl3
YXkgc28KPiAgICB0aGF0IHBhcnRjdWxhciBhcmd1bWVudCBtYXkgbm90IGhvbGQgbXVjaCB3ZWln
aHQgYW55bW9yZS4KCldoYXQgd2FzIHRoZSBjb25jbHVzaW9uIG9mIHRoZSBoYWNrIHRvIG5vdCBl
eHBvc2UgYXRvbWljIHRvCm1vZGVzZXR0aW5nIGRkeCwgZHVlIHRvIHRoZSBicm9rZW5uZXNzIG9m
IGl0J3MgYXRvbWljIHVzZT8gIEkgZ3Vlc3MKdGhhdCBjb3VsZCBhbHNvIG1ha2UgdGhlIG1vZGVz
ZXR0aW5nIGNhc2UgZ28gYXdheS4uCgpCUiwKLVIKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
