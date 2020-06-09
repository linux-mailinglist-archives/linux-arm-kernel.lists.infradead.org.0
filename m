Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1797A1F3820
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 12:29:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l02jE7K7BBV9D7dzuRaWpebQ/ZYwG/bFymxjIjXG0Vg=; b=stukW8u41ck5nv
	czBEAV7nvrIY0HnEiepaScBwk/vS5NLghRNu2YxTW3YhZxkowFHZCNNxEIax/MvULMbqbgYOz7Uwc
	nTMChIzdtnVeAymDllhIsxvZNyi+YIIwk9Ugd9XmeF7guq6d7xo4G6wyLN+tyqz36IR7y3ue3slBt
	LENyKvJgZl9YP0TirfzHMX8iZDPxbcs5TL2ylOLFfV983Pc7RRUDizBI8Lnb+/8KKzOeohi2RoaZp
	6uciyT3HPkdWM4sAY47sDKDz86k/Yhya3A+L331nAJfm/ulHK6tlGK1f8wvhwCcsdiyP8WgDObQCO
	qtn+bHVDHndAra7jZYLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jibVI-0006rZ-JE; Tue, 09 Jun 2020 10:29:12 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jibV3-0006pi-Al
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 10:28:59 +0000
Received: by mail-ed1-x541.google.com with SMTP id m21so15870792eds.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 03:28:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=gFNWdxQvJsj/PAcrNno1NXDrWUfuQ3gELpOPfZFY9Ok=;
 b=bWTGfVAOG6tfJfLLKI3RpHybPpWytXlALbTZ34ZpOyOmB1Dxfj7SykRUv/XYVfF6IA
 QsjVmQiJIYrP7R/wcwSSnyfZjY8Bsgw2EWZy9Tsb0Cegmtpuwq5fJVZ6x0vCfDBXfPuI
 tnx/l1sUi1c4IdE1GUCateS/CElmISjns8noFnDPXJzIwU5OM6MdRhEGmTzOfE2MDGZ5
 /vmk6NNv1rTAsuOT5WMWZS9iuGAlmWexYWDEeWMgIjk1LXYBSNwvv1CFbiIsjPtq61Ir
 QnTfYDvkxZc5Tf9hHLIUJ6hJVY0LpvnMc7fI8e1GP5Rx8E9l/MHT+h0EQ79CUyrBqOXi
 sd6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=gFNWdxQvJsj/PAcrNno1NXDrWUfuQ3gELpOPfZFY9Ok=;
 b=JlR4ciRW3iuP/2p12MFpXuOQgaRGIB6dIOHB2IYtdecFm2/twDEipR7Q6pmqb53kQJ
 K0Kd/vd8EtYJU0kffAkFc1ELodwFCAgjI0ydr1ijxx1Yt7mdpopDQlPqzLIHtDBrMODV
 p7XMkIRg0ke/x6DFlW/2QWWhmoG6+bgqkwj8YLmG31Y0wJpbksFBrPgw6GDRr17bEfj1
 lsZQ7ouDKW2SrU/pFPujkpbXOb1azqhiBtxI90oPUleTwX45aUmlb7xlWhZ7NRiuaf+l
 mpnS4d2aWPyU6WcGbYYGxpuPNhk5IyoPxyaqLtOOWJWI6lsf3rWxG0MMch3V1GpUjbaj
 tHRg==
X-Gm-Message-State: AOAM533hU2jaDlk4S/1BBOfR8RZLj3Bb+U4aKCUIVhkg4624YM04f+M3
 nY4zdxbhFbM3E/ueN5s4d6y+zO68f1Pg9r+G46DjIQ==
X-Google-Smtp-Source: ABdhPJxZ6XlgVmh3lSP6SM9175REGiYedmbVtXDN/k3Pkaj/EKKBRDkAoZb/wAc6G53Gx2OymPWm4S7XPrTygcgKTIg=
X-Received: by 2002:a05:6402:1746:: with SMTP id
 v6mr2922335edx.236.1591698535254; 
 Tue, 09 Jun 2020 03:28:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200604135317.9235-1-narmstrong@baylibre.com>
 <20200604135317.9235-2-narmstrong@baylibre.com>
 <02aa06fd8397b77c9a75d3a8399cb55d3b4d39c1.camel@ndufresne.ca>
 <4d22ff40-11ac-c77a-564d-af9a678f23af@baylibre.com>
 <a15dea55-3ca4-2a65-5c56-6c1edd2de405@xs4all.nl>
 <a4c5ae79-1d4d-4c1e-1535-c6c8b02d4b6f@baylibre.com>
 <2a0db0a4-9d04-f20c-39d8-ff25e07e64b7@xs4all.nl>
 <f6d35521b61da395528d6dd1164a9af6c3acd664.camel@ndufresne.ca>
 <3ffe901f-73e4-bdf7-84a6-a5372186b55c@baylibre.com>
In-Reply-To: <3ffe901f-73e4-bdf7-84a6-a5372186b55c@baylibre.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Tue, 9 Jun 2020 07:28:44 -0300
Message-ID: <CAAEAJfB8HfgONpJ6YZhLnLdQz+emfhDetR_0=BoRykz3-7732Q@mail.gmail.com>
Subject: Re: [PATCH 1/5] media: videodev2: add Compressed Framebuffer pixel
 formats
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_032857_578005_BD11332F 
X-CRM114-Status: GOOD (  29.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Maxime Jourdan <mjourdan@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Nicolas Dufresne <nicolas@ndufresne.ca>,
 Helen Koike <helen.koike@collabora.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-amlogic@lists.infradead.org,
 Tomasz Figa <tfiga@chromium.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkaW5nIEhlbGVuIHRvIHRoZSBkaXNjdXNzaW9uLgoKT24gVHVlLCA5IEp1biAyMDIwIGF0IDA0
OjQzLCBOZWlsIEFybXN0cm9uZyA8bmFybXN0cm9uZ0BiYXlsaWJyZS5jb20+IHdyb3RlOgo+Cj4g
SGkgTmljb2xhcywKPgo+IE9uIDA4LzA2LzIwMjAgMjA6NTksIE5pY29sYXMgRHVmcmVzbmUgd3Jv
dGU6Cj4gPiBMZSBsdW5kaSAwOCBqdWluIDIwMjAgw6AgMTY6NDMgKzAyMDAsIEhhbnMgVmVya3Vp
bCBhIMOpY3JpdCA6Cj4gPj4gT24gMDgvMDYvMjAyMCAxNjoxNCwgTmVpbCBBcm1zdHJvbmcgd3Jv
dGU6Cj4gPj4+IE9uIDA4LzA2LzIwMjAgMTE6MjYsIEhhbnMgVmVya3VpbCB3cm90ZToKPiA+Pj4+
IE9uIDA4LzA2LzIwMjAgMTA6MTYsIE5laWwgQXJtc3Ryb25nIHdyb3RlOgo+ID4+Pj4+IEhpIE5p
Y29sYXMsCj4gPj4+Pj4KPiA+Pj4+PiBPbiAwNS8wNi8yMDIwIDE3OjM1LCBOaWNvbGFzIER1ZnJl
c25lIHdyb3RlOgo+ID4+Pj4+PiBMZSBqZXVkaSAwNCBqdWluIDIwMjAgw6AgMTU6NTMgKzAyMDAs
IE5laWwgQXJtc3Ryb25nIGEgw6ljcml0IDoKPiA+Pj4+Pj4+IEZyb206IE1heGltZSBKb3VyZGFu
IDxtam91cmRhbkBiYXlsaWJyZS5jb20+Cj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gQWRkIHR3byBnZW5l
cmljIENvbXByZXNzZWQgRnJhbWVidWZmZXIgcGl4ZWwgZm9ybWF0cyB0byBiZSB1c2VkCj4gPj4+
Pj4+PiB3aXRoIGEgbW9kaWZpZXIgd2hlbiBpbXBvcnRlZCBiYWNrIGluIGFub3RoZXIgc3Vic3lz
dGVtIGxpa2UgRFJNL0tNUy4KPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBUaGVzZSBwaXhlbCBmb3JtYXRz
IHJlcHJlc2VudHMgZ2VuZXJpYyA4Yml0cyBhbmQgMTBiaXRzIGNvbXByZXNzZWQgYnVmZmVycwo+
ID4+Pj4+Pj4gd2l0aCBhIHZlbmRvciBzcGVjaWZpYyBsYXlvdXQuCj4gPj4+Pj4+Pgo+ID4+Pj4+
Pj4gVGhlc2UgYXJlIGFsaWduZWQgd2l0aCB0aGUgRFJNX0ZPUk1BVF9ZVVY0MjBfOEJJVCBhbmQg
RFJNX0ZPUk1BVF9ZVVY0MjBfMTBCSVQKPiA+Pj4+Pj4+IHVzZWQgdG8gZGVzY3JpYmUgdGhlIHVu
ZGVybHlpbmcgY29tcHJlc3NlZCBidWZmZXJzIHVzZWQgZm9yIEFSTSBGcmFtZWJ1ZmZlcgo+ID4+
Pj4+Pj4gQ29tcHJlc3Npb24uIEluIHRoZSBBbWxvZ2ljIGNhc2UsIHRoZSBjb21wcmVzc2lvbiBp
cyBkaWZmZXJlbnQgYnV0IHRoZQo+ID4+Pj4+Pj4gdW5kZXJseWluZyBidWZmZXIgY29tcG9uZW50
cyBpcyB0aGUgc2FtZS4KPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBNYXhpbWUg
Sm91cmRhbiA8bWpvdXJkYW5AYmF5bGlicmUuY29tPgo+ID4+Pj4+Pj4gU2lnbmVkLW9mZi1ieTog
TmVpbCBBcm1zdHJvbmcgPG5hcm1zdHJvbmdAYmF5bGlicmUuY29tPgo+ID4+Pj4+Pj4gLS0tCj4g
Pj4+Pj4+PiAgZHJpdmVycy9tZWRpYS92NGwyLWNvcmUvdjRsMi1pb2N0bC5jIHwgMiArKwo+ID4+
Pj4+Pj4gIGluY2x1ZGUvdWFwaS9saW51eC92aWRlb2RldjIuaCAgICAgICB8IDkgKysrKysrKysr
Cj4gPj4+Pj4+PiAgMiBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspCj4gPj4+Pj4+Pgo+
ID4+Pj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3Y0bDItaW9jdGwu
YyBiL2RyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3Y0bDItaW9jdGwuYwo+ID4+Pj4+Pj4gaW5kZXgg
MjMyMmYwOGE5OGJlLi44ZjE0YWRmZDViYzUgMTAwNjQ0Cj4gPj4+Pj4+PiAtLS0gYS9kcml2ZXJz
L21lZGlhL3Y0bDItY29yZS92NGwyLWlvY3RsLmMKPiA+Pj4+Pj4+ICsrKyBiL2RyaXZlcnMvbWVk
aWEvdjRsMi1jb3JlL3Y0bDItaW9jdGwuYwo+ID4+Pj4+Pj4gQEAgLTE0NDcsNiArMTQ0Nyw4IEBA
IHN0YXRpYyB2b2lkIHY0bF9maWxsX2ZtdGRlc2Moc3RydWN0IHY0bDJfZm10ZGVzYyAqZm10KQo+
ID4+Pj4+Pj4gICAgICAgICAgICAgICAgIGNhc2UgVjRMMl9QSVhfRk1UX1M1Q19VWVZZX0pQRzog
ZGVzY3IgPSAiUzVDNzNNWCBpbnRlcmxlYXZlZCBVWVZZL0pQRUciOyBicmVhazsKPiA+Pj4+Pj4+
ICAgICAgICAgICAgICAgICBjYXNlIFY0TDJfUElYX0ZNVF9NVDIxQzogICAgICAgIGRlc2NyID0g
Ik1lZGlhdGVrIENvbXByZXNzZWQgRm9ybWF0IjsgYnJlYWs7Cj4gPj4+Pj4+PiAgICAgICAgICAg
ICAgICAgY2FzZSBWNEwyX1BJWF9GTVRfU1VOWElfVElMRURfTlYxMjogZGVzY3IgPSAiU3VueGkg
VGlsZWQgTlYxMiBGb3JtYXQiOyBicmVhazsKPiA+Pj4+Pj4+ICsgICAgICAgICAgICAgICBjYXNl
IFY0TDJfUElYX0ZNVF9ZVVY0MjBfOEJJVDogIGRlc2NyID0gIkNvbXByZXNzZWQgWVVWIDQ6Mjow
IDgtYml0IEZvcm1hdCI7IGJyZWFrOwo+ID4+Pj4+Pj4gKyAgICAgICAgICAgICAgIGNhc2UgVjRM
Ml9QSVhfRk1UX1lVVjQyMF8xMEJJVDogZGVzY3IgPSAiQ29tcHJlc3NlZCBZVVYgNDoyOjAgMTAt
Yml0IEZvcm1hdCI7IGJyZWFrOwo+ID4+Pgo+ID4+PiBbLi5dCj4gPj4+Cj4gPj4+Pj4+IEknbGwg
cmVtaW5kIHRoYXQgdGhlIG1vZGlmaWVyIGltcGxlbWVudGF0aW9uIGhhcyBncmVhdCB2YWx1ZSBh
bmQgaXMKPiA+Pj4+Pj4gbXVjaCBtb3JlIHNjYWxhYmxlIHRoZW4gdGhlIGN1cnJlbnQgVjRMMiBh
cHByb2FjaC4gVGhlcmUgaGFzIGJlZW4gc29tZQo+ID4+Pj4+PiBlYXJseSBwcm9wb3NhbCBmb3Ig
dGhpcywgbWF5YmUgaXQncyB0aW1lIHRvIHByaW9yaXRpemUgYmVjYXVzZSB0aGlzCj4gPj4+Pj4+
IGxpc3Qgd2lsbCBzdGFydHMgZ3Jvd2luZyB3aXRoIGh1bmRyZWQgb3IgZXZlbiB0aG91c2FuZHMg
b3IgZm9ybWF0LAo+ID4+Pj4+PiB3aGljaCBpcyBjbGVhcmx5IGluZGljYXRlZCBieSB0aGUgaW5j
cmVhc2Ugb2YgbW9kaWZpZXIgZ2VuZXJhdG9yIG1hY3JvCj4gPj4+Pj4+IG9uIHRoZSBEUk0gc2lk
ZS4KPiA+Pj4+Pgo+ID4+Pj4+IFllcywgYnV0IHVudGlsIHRoZSBtaWdyYXRpb24gb2YgZHJtX2Zv
dXJjYyBhbmQgdjRsMiBmb3VyY2MgaW50byBhIGNvbW1vbiBvbmUKPiA+Pj4+PiBpcyBkZWNpZGVk
LCBJJ20gc3R1Y2sgYW5kIHRoaXMgaXMgdGhlIG9ubHkgaW50ZXJtZWRpYXRlIHNvbHV0aW9uIEkg
Zm91bmQuCj4gPj4+Pgo+ID4+Pj4gV2UgY2FuIHNhZmVseSBhc3N1bWUgdGhhdCBkcm0gZm91cmNj
IGFuZCB2NGwyIGZvdXJjYyB3b24ndCBiZSBtZXJnZWQuCj4gPj4+Pgo+ID4+Pj4gVGhlcmUgaXMg
dG9vIG11Y2ggZGl2ZXJnZW5jZSBhbmQgbm90IGVub3VnaCBpbnRlcmVzdCBpbiBjcmVhdGluZyBj
b21tb24KPiA+Pj4+IGZvdXJjY3MuCj4gPj4+Pgo+ID4+Pj4gQnV0IHdlICpkbyogd2FudCB0byBz
aGFyZSB0aGUgbW9kaWZpZXJzLgo+ID4+Pj4KPiA+Pj4+PiBXZSBoYXZlIGEgd29ya2luZyBzb2x1
dGlvbiB3aXRoIEJvcmlzJ3MgcGF0Y2hzZXQgd2l0aCBleHRfZm10IHBhc3NpbmcgdGhlCj4gPj4+
Pj4gbW9kaWZpZXIgdG8gdXNlci1zcGFjZS4KPiA+Pj4+Pgo+ID4+Pj4+IGJ1dCBhbnl3YXksIHNp
bmNlIHRoZSBnb2FsIGlzIHRvIG1lcmdlIHRoZSBmb3VyY2MgYmV0d2VlbiBEUk0gJiBWNEwyLCB0
aGVzZSBZVVY0MjBfKkJJVAo+ID4+Pj4+IHdpbGwgc3RpbGwgYmUgbmVlZGVkIGlmIHdlIHBhc3Mg
dGhlIG1vZGlmaWVyIHdpdGggYW4gZXh0ZW5kZWQgZm9ybWF0IHN0cnVjdC4KPiA+Pj4+Cj4gPj4+
PiBXZSB0cmllZCBtZXJnaW5nIGZvdXJjY3MgYnV0IHRoYXQgcmFuIGludG8gcmVzaXN0YW5jZS4g
RnJhbmtseSwgSSB3b3VsZG4ndAo+ID4+Pj4gYm90aGVyIHdpdGggdGhpcywgaXQgaXMgbXVjaCBl
YXNpZXIgdG8ganVzdCBjcmVhdGUgYSBjb252ZXJzaW9uIHRhYmxlIGluIHRoZQo+ID4+Pj4ga2Vy
bmVsIGRvY3MuCj4gPj4+Pgo+ID4+Pj4gU28gZG9uJ3QgYmxvY2sgb24gdGhpcywgSSB3b3VsZCBy
ZWFsbHkgcHJlZmVyIGlmIHRoZSBleHRfZm10IHNlcmllcyBpcyBwaWNrZWQKPiA+Pj4+IHVwIGFn
YWluIGFuZCByZWJhc2VkIGFuZCByZXBvc3RlZCBhbmQgdGhlbiB3b3JrZWQgb24uIFRoZSBzdGF0
ZWxlc3MgY29kZWMgc3VwcG9ydAo+ID4+Pj4gaXMgdGFraW5nIGxlc3MgdGltZSAoaXQncyBzaGFw
aW5nIHVwIHdlbGwpIHNvIHRoZXJlIGlzIG1vcmUgdGltZSB0byB3b3JrIG9uIHRoaXMuCj4gPj4+
Cj4gPj4+IE9rLCBJIGFscmVhZHkgc3RhcnRpbmcgZGlzY3Vzc2luZyB3aXRoIEhlbGVuIEtvaWtl
IGFib3V0IHRoZSBleHRfZm50IHJlLXNwaW4uCj4gPj4+Cj4gPj4+IFNob3VsZCBJIHJlLWludHJv
ZHVjZSBkaWZmZXJlbnQgdjRsMiBwaXhmbXQgZm9yIHRoZXNlIERSTSBZVVY0MjBfKkJJVCBvciBJ
IGNhbiBrZWVwIHRoaXMKPiA+Pj4gcGF0Y2ggYWxvbmcgdGhlIG5ldyBleHRfZm10IGFuZCBzaGFy
ZWQgbW9kaWZpZXJzID8KPiA+Pgo+ID4+IFNvIHRvIGJlIGNsZWFyIHRoZSBEUk1fRk9STUFUX1lV
VjQyMF84QklULzEwQklUIGZvdXJjY3MgZGVmaW5lIHRoYXQgdGhpcyBpcyBhCj4gPj4gYnVmZmVy
IGNvbnRhaW5pbmcgY29tcHJlc3NlZCBZVVY0MjAgaW4gOCBvciAxMCBiaXQgYW5kIHRoZSBtb2Rp
ZmllciB0ZWxscyB1c2Vyc3BhY2UKPiA+PiB3aGljaCBjb21wcmVzc2lvbiBpcyB1c2VkLCByaWdo
dD8KPiA+Pgo+ID4+IEFuZCB3ZSB3b3VsZCBhZGQgVjRMMl9QSVhfRk1UX1lVVjQyMF84QklUL18x
MEJJVCB0aGF0LCBJIGFzc3VtZSwgdXNlIHRoZSBzYW1lCj4gPj4gZm91cmNjIHZhbHVlcyBhcyB0
aGUgRFJNIHZhcmlhbnRzPwo+ID4+Cj4gPj4gU2luY2UgdGhlc2UgZm91cmNjcyBhcmUgYmFzaWNh
bGx5IHVzZWxlc3Mgd2l0aG91dCBWNEwyIG1vZGlmaWVyIHN1cHBvcnQgaXQgd291bGQKPiA+PiBv
bmx5IG1ha2Ugc2Vuc2UgaW4gY29tYmluYXRpb24gd2l0aCB0aGUgZXh0X2ZtdCBzZXJpZXMuCj4g
Pgo+ID4gSSBwZXJzb25hbGx5IHN0aWxsIHRoaW5rIHRoYXQgYWRkaW5nIHRoZXNlIGZvdXJjYyB3
aWxsIGp1c3QgY3JlYXRlIGEKPiA+IHNvdXJjZSBvZiBjb25mdXNpb24gYW5kIHRoYXQgZm91cmNj
IHNob3VsZCBub3QgYmUgdHJpZWQgdG8gYmUgbWF0Y2hlZAo+ID4gYXQgdGhlIGNvc3Qgb2YgdHJp
cGxpbmcgdGhlIGFscmVhZHkgZHVwbGljYXRlZCBwaXhlbCBmb3JtYXRzLiBVc2Vyc3BhY2UKPiA+
IGFscmVhZHkgbmVlZCB0byBpbXBsZW1lbnQgdHJhbnNsYXRpb24gYW55d2F5Lgo+Cj4gQnkgdXNp
bmcgdGhlIHNhbWUgZm91cmNjICsgbW9kaWZpZXJzLCB0aGUgdHJhbnNsYXRpb24gdGFibGUgd291
bGQgb25seSBiZSBuZWVkZWQKPiBmb3IgdjRsMi1zcGVjaWZpYyBmb3VyY2MsIGJ5IHJldXNpbmcg
dGhlIHNhbWUgaXQncyBub3QgbmVjZXNzYXJ5IGFueW1vcmUuCj4gV2UgaGF2ZSBhIHJlYWxseSBz
aW1wbGUgZmZtcGVnIGltcGxlbWVudGF0aW9uIHVzaW5nIGV4dF9mbXQsIGFuZCBpdCBtYWtlcyBp
dAo+IGdlbmVyaWMuCj4KPiA+Cj4gPiBPbiBEUk0gc2lkZSwgbmV3IGZvdXJjYyB3YXMgbm90IGNy
ZWF0ZSBmb3IgTlYxMittb2RpZmllciwgSSBkb24ndCBzZWUKPiA+IHdoeSBwbGFuYXIgWVVWNDIw
IGhhcyB0byBiZSBkaWZmZXJlbnQsIHdpdGggb3Igd2l0aG91dCBleHRfZm10Lgo+Cj4gVGhlc2Ug
VjRMMl9QSVhfRk1UX1lVVjQyMF84QklUL18xMEJJVCB3ZXJlIGFkZGVkIGJlY2F1c2Ugb2YgdGhl
IGNvbXByZXNzZWQgbmF0dXJlCj4gb2YgYnVmZmVycy4gSXQncyBub3QgYmVjYXVzZSBvZiB0aGUg
bW9kaWZpZXJzLCBtb2RpZmllcnMgY2FuIGJlIHVzZWQgd2UgYW55IGZvdXJjYwo+IHRvIGRlZmlu
ZSB2ZW5kb3Igc3BlY2lmaWMgbGF5b3V0IHJlcXVpcmVtZW50cyBvciBjaGFuZ2VzLCBidXQgZm9y
IGNvbXByZXNzZWQgdGhlCj4gdW5kZXJseWluZyBZVVYgYnVmZmVyIGNhbm5vdCBiZSBwaHlzaWNh
bGx5IGRlc2NyaWJlZCBieSBhbnkgWVVWNDIwIGZvdXJjYywgc28KPiBBUk0gaW50cm9kdWNlZCB0
aGVzZSBmb3VyY2MgdG8gZGVzY3JpYmUgYSB2aXJ0dWFsIFlVVjQyMCA4IG9yIDEwYml0IGJ1ZmZl
ciB3aGljaAo+IHBoeXNpY2FsIGxheW91dCBpcyBkZWZpbmVkIGJ5IHRoZSBtb2RpZmllci4KPiBU
aGV5IGNvdWxkIGhhdmUgcmUtdXNlZCBEUk1fRk9STUFUX1lVVjQyMCwgYnV0IGl0J3MgYSAyIHBs
YW5lIGZvdXJjYywgYW5kIHRoZSBvdGhlcgo+IGRlc2NyaWJlIGEgdHJ1ZSBzaW5nbGUgb3IgbXVs
dGlwbGUgcGxhbmUgbGF5b3V0IHdoaWNoIGFyZSBzaW1wbHkgbm90IHRydWUgd2l0aAo+IEFSTSBB
RkJDIG9yIEFtbG9naWMgRkJDLgo+Cj4gTmVpbAo+Cj4gPgo+ID4gTmljb2xhcwo+ID4KPiA+Pgo+
ID4+IFJlZ2FyZHMsCj4gPj4KPiA+PiAgICAgIEhhbnMKPiA+Pgo+ID4+PiBOZWlsCj4gPj4+Cj4g
Pj4+PiBJIGJlbGlldmUgd2UgcmVhbGx5IG5lZWQgdGhpcyBzaW5jZSB2NGwyX2J1ZmZlciBhbmQg
djRsMl9mb3JtYXQgYXJlIGEgcmVhbCBtZXNzLgo+ID4+Pj4KPiA+Pj4+IFJlZ2FyZHMsCj4gPj4+
Pgo+ID4+Pj4gICAgSGFucwo+ID4+Pj4KPiA+Pj4+Pj4+ICAgICAgICAgICAgICAgICBkZWZhdWx0
Ogo+ID4+Pj4+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgaWYgKGZtdC0+ZGVzY3JpcHRpb25b
MF0pCj4gPj4+Pj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybjsKPiA+
Pj4+Pj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvbGludXgvdmlkZW9kZXYyLmggYi9pbmNs
dWRlL3VhcGkvbGludXgvdmlkZW9kZXYyLmgKPiA+Pj4+Pj4+IGluZGV4IGMzYTFjZjFjNTA3Zi4u
OTBiOTk0OWFjYjhhIDEwMDY0NAo+ID4+Pj4+Pj4gLS0tIGEvaW5jbHVkZS91YXBpL2xpbnV4L3Zp
ZGVvZGV2Mi5oCj4gPj4+Pj4+PiArKysgYi9pbmNsdWRlL3VhcGkvbGludXgvdmlkZW9kZXYyLmgK
PiA+Pj4+Pj4+IEBAIC03MDUsNiArNzA1LDE1IEBAIHN0cnVjdCB2NGwyX3BpeF9mb3JtYXQgewo+
ID4+Pj4+Pj4gICNkZWZpbmUgVjRMMl9QSVhfRk1UX0ZXSFQgICAgIHY0bDJfZm91cmNjKCdGJywg
J1cnLCAnSCcsICdUJykgLyogRmFzdCBXYWxzaCBIYWRhbWFyZCBUcmFuc2Zvcm0gKHZpY29kZWMp
ICovCj4gPj4+Pj4+PiAgI2RlZmluZSBWNEwyX1BJWF9GTVRfRldIVF9TVEFURUxFU1MgICAgIHY0
bDJfZm91cmNjKCdTJywgJ0YnLCAnVycsICdIJykgLyogU3RhdGVsZXNzIEZXSFQgKHZpY29kZWMp
ICovCj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gKy8qCj4gPj4+Pj4+PiArICogQ29tcHJlc3NlZCBMdW1p
bmFuY2UrQ2hyb21pbmFuY2UgbWV0YS1mb3JtYXRzCj4gPj4+Pj4+PiArICogSW4gdGhlc2UgZm9y
bWF0cywgdGhlIGNvbXBvbmVudCBvcmRlcmluZyBpcyBzcGVjaWZpZWQgKFksIGZvbGxvd2VkIGJ5
IFUKPiA+Pj4+Pj4+ICsgKiB0aGVuIFYpLCBidXQgdGhlIGV4YWN0IExpbmVhciBsYXlvdXQgaXMg
dW5kZWZpbmVkLgo+ID4+Pj4+Pj4gKyAqIFRoZXNlIGZvcm1hdHMgY2FuIG9ubHkgYmUgdXNlZCB3
aXRoIGEgbm9uLUxpbmVhciBtb2RpZmllci4KPiA+Pj4+Pj4+ICsgKi8KPiA+Pj4+Pj4+ICsjZGVm
aW5lIFY0TDJfUElYX0ZNVF9ZVVY0MjBfOEJJVCAgICAgICB2NGwyX2ZvdXJjYygnWScsICdVJywg
JzAnLCAnOCcpIC8qIDEtcGxhbmUgWVVWIDQ6MjowIDgtYml0ICovCj4gPj4+Pj4+PiArI2RlZmlu
ZSBWNEwyX1BJWF9GTVRfWVVWNDIwXzEwQklUICAgICAgdjRsMl9mb3VyY2MoJ1knLCAnVScsICcx
JywgJzAnKSAvKiAxLXBsYW5lIFlVViA0OjI6MCAxMC1iaXQgKi8KPiA+Pj4+Pj4+ICsKPiA+Pj4+
Pj4+ICAvKiAgVmVuZG9yLXNwZWNpZmljIGZvcm1hdHMgICAqLwo+ID4+Pj4+Pj4gICNkZWZpbmUg
VjRMMl9QSVhfRk1UX0NQSUExICAgIHY0bDJfZm91cmNjKCdDJywgJ1AnLCAnSScsICdBJykgLyog
Y3BpYTEgWVVWICovCj4gPj4+Pj4+PiAgI2RlZmluZSBWNEwyX1BJWF9GTVRfV05WQSAgICAgdjRs
Ml9mb3VyY2MoJ1cnLCAnTicsICdWJywgJ0EnKSAvKiBXaW5ub3YgaHcgY29tcHJlc3MgKi8KPiA+
Pj4+Pgo+ID4+Pj4+IFsxXSBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVz
LzczNzIyLyNyZXY3Cj4gPj4+Pj4KPiA+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
