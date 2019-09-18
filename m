Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48253B5B0A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 07:47:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IXYAqeVqw6UgEXpw5Aeix9aY0944Chw0uIJWvkttjQk=; b=Q1OAy/qNHEOoiw
	0LcBQ2FodkNaFd9pIusrAC2qdyoorCLZxhcmF+VKfMyXePXzSLAEDqdOtvCDBj9C0iHm2il9hR+XU
	CLAM/0k0oJGxnBEX20NlDUUcVRneEu4Xt3iGyUVFNsn9ryFSVMFx/VmjvS8J4hQZQdUfLhI8BOZhW
	qP1aP0A/tsyBht4jOt/ky0aOkrTsNTju0m4ZiTWNq1kQHuahf2K3c/YD+9hDnvJkmoYNcN+vjrYZW
	94vJbTINwghNSR95Z/8uo/vTshiHzkf6yregdCMSOSJfUsEAKhKT5HR17v+SEnmSVxkZgbvQcczc/
	2Mvy5JU05p4/Tyse4YDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iASnu-00005o-Se; Wed, 18 Sep 2019 05:47:03 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iASnh-00005P-Q1
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 05:46:51 +0000
Received: by mail-ed1-f66.google.com with SMTP id r9so5425783edl.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Sep 2019 22:46:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=HottKLgy34W05WWcCdN3jQ7YYM/nB6BpbT/v5aKaaH4=;
 b=nB2ojxkoz/foszbQZm1WitK5uyDPZ79pM+m+z0tVDtD2Wl3m3IPyO8KU0q2+Ko/A0P
 1gJmRCw4reskVc3nxD23W/AGkg56n2YNgCugAhApssy36RROqgQ5Qm/uLi7J0zYwJgGA
 1/jeUE2shjGKmyaIDCdr04AV2S+u/gqS9d3hmCekWbK5z9NPlB/LIReAs2GlC6dRLqIe
 GdSw9QpyqBgsU20TkHaKHAaBTu2U03dTZxo7YvAuoUdj9qHe/tNYj85WPobZAetI7Y+R
 qAD0nRIuO1sQPwL69Hk4wwZtVRT59tuWbybhIsGACOQ3N/cjw4WzsVOowlvZf8Dw7Y25
 rmfw==
X-Gm-Message-State: APjAAAWB21kOJvSolvMzsA3RrBfohBhp00NVJGAlo/r/zdvTIb0WvEbj
 OvuJw+XnGnHLsHykaaQt14nNG8NaxLU=
X-Google-Smtp-Source: APXvYqxnG+QG3BhpsR4/S+Af+ZpcB/g1mw6DRyuTl9kE0Bk30EgO/VFQ8eElyNmKFireMxUyXtWNEQ==
X-Received: by 2002:a05:6402:150a:: with SMTP id
 f10mr8280533edw.110.1568785607616; 
 Tue, 17 Sep 2019 22:46:47 -0700 (PDT)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com.
 [209.85.128.51])
 by smtp.gmail.com with ESMTPSA id f4sm833067edf.47.2019.09.17.22.46.46
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Sep 2019 22:46:47 -0700 (PDT)
Received: by mail-wm1-f51.google.com with SMTP id t3so926885wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Sep 2019 22:46:46 -0700 (PDT)
X-Received: by 2002:a1c:a54a:: with SMTP id o71mr1236081wme.51.1568785606724; 
 Tue, 17 Sep 2019 22:46:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190914135100.327412-1-jernej.skrabec@siol.net>
 <CAGb2v640R7edA3EJvC=aJQZXGcfqot50O3-PFyrYj767pUEYrQ@mail.gmail.com>
 <8129141.yvSaxnLE4m@jernej-laptop>
In-Reply-To: <8129141.yvSaxnLE4m@jernej-laptop>
From: Chen-Yu Tsai <wens@csie.org>
Date: Wed, 18 Sep 2019 13:46:34 +0800
X-Gmail-Original-Message-ID: <CAGb2v65KQf_OX1sX9+4DAKKMKHP464cCZKjCRsn3LzTKRGLTcQ@mail.gmail.com>
Message-ID: <CAGb2v65KQf_OX1sX9+4DAKKMKHP464cCZKjCRsn3LzTKRGLTcQ@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH] clk: sunxi-ng: h6: Use sigma-delta
 modulation for audio PLL
To: Jernej Skrabec <jernej.skrabec@siol.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_224649_845521_D88708DD 
X-CRM114-Status: GOOD (  20.91  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBTZXAgMTgsIDIwMTkgYXQgMToyMSBQTSBKZXJuZWogxaBrcmFiZWMgPGplcm5lai5z
a3JhYmVjQHNpb2wubmV0PiB3cm90ZToKPgo+IERuZSB0b3JlaywgMTcuIHNlcHRlbWJlciAyMDE5
IG9iIDA4OjU0OjA4IENFU1QgamUgQ2hlbi1ZdSBUc2FpIG5hcGlzYWwoYSk6Cj4gPiBPbiBTYXQs
IFNlcCAxNCwgMjAxOSBhdCA5OjUxIFBNIEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0Bz
aW9sLm5ldD4KPiB3cm90ZToKPiA+ID4gQXVkaW8gZGV2aWNlcyBuZWVkcyBleGFjdCBjbG9jayBy
YXRlcyBpbiBvcmRlciB0byBjb3JyZWN0bHkgcmVwcm9kdWNlCj4gPiA+IHRoZSBzb3VuZC4gVW50
aWwgbm93LCBvbmx5IGludGVnZXIgZmFjdG9ycyB3ZXJlIHVzZWQgdG8gY29uZmlndXJlIEg2Cj4g
PiA+IGF1ZGlvIFBMTCB3aGljaCByZXN1bHRlZCBpbiBpbmV4YWN0IHJhdGVzLiBGaXggdGhhdCBi
eSBhZGRpbmcgc3VwcG9ydAo+ID4gPiBmb3IgZnJhY3Rpb25hbCBmYWN0b3JzIHVzaW5nIHNpZ21h
LWRlbHRhIG1vZHVsYXRpb24gbG9vay11cCB0YWJsZS4gSXQKPiA+ID4gY29udGFpbnMgdmFsdWVz
IGZvciB0d28gbW9zdCBjb21tb25seSB1c2VkIGF1ZGlvIGJhc2UgZnJlcXVlbmNpZXMuCj4gPiA+
Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BzaW9s
Lm5ldD4KPiA+ID4gLS0tCj4gPiA+Cj4gPiA+ICBkcml2ZXJzL2Nsay9zdW54aS1uZy9jY3Utc3Vu
NTBpLWg2LmMgfCAyMSArKysrKysrKysrKysrKystLS0tLS0KPiA+ID4gIDEgZmlsZSBjaGFuZ2Vk
LCAxNSBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+ID4gPgo+ID4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9jbGsvc3VueGktbmcvY2N1LXN1bjUwaS1oNi5jCj4gPiA+IGIvZHJpdmVycy9j
bGsvc3VueGktbmcvY2N1LXN1bjUwaS1oNi5jIGluZGV4IGQ4OTM1M2EzY2RlYy4uZWQ2MzM4ZDc0
NDc0Cj4gPiA+IDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL2Nsay9zdW54aS1uZy9jY3Utc3Vu
NTBpLWg2LmMKPiA+ID4gKysrIGIvZHJpdmVycy9jbGsvc3VueGktbmcvY2N1LXN1bjUwaS1oNi5j
Cj4gPiA+IEBAIC0yMDMsMTIgKzIwMywyMSBAQCBzdGF0aWMgc3RydWN0IGNjdV9ua21wIHBsbF9o
c2ljX2NsayA9IHsKPiA+ID4KPiA+ID4gICAqIGhhcmRjb2RlIGl0IHRvIG1hdGNoIHdpdGggdGhl
IGNsb2NrIG5hbWVzLgo+ID4gPiAgICovCj4gPiA+Cj4gPiA+ICAjZGVmaW5lIFNVTjUwSV9INl9Q
TExfQVVESU9fUkVHICAgICAgICAgICAgICAgIDB4MDc4Cj4gPiA+Cj4gPiA+ICsKPiA+ID4gK3N0
YXRpYyBzdHJ1Y3QgY2N1X3NkbV9zZXR0aW5nIHBsbF9hdWRpb19zZG1fdGFibGVbXSA9IHsKPiA+
ID4gKyAgICAgICB7IC5yYXRlID0gNTQxOTAwODAwLCAucGF0dGVybiA9IDB4YzAwMTI4OGQsIC5t
ID0gMSwgLm4gPSAyMiB9LAo+ID4gPiArICAgICAgIHsgLnJhdGUgPSA1ODk4MjQwMDAsIC5wYXR0
ZXJuID0gMHhjMDAxMjZlOSwgLm0gPSAxLCAubiA9IDI0IH0sCj4gPiA+ICt9Owo+ID4gPiArCj4g
PiA+Cj4gPiA+ICBzdGF0aWMgc3RydWN0IGNjdV9ubSBwbGxfYXVkaW9fYmFzZV9jbGsgPSB7Cj4g
PiA+Cj4gPiA+ICAgICAgICAgLmVuYWJsZSAgICAgICAgID0gQklUKDMxKSwKPiA+ID4gICAgICAg
ICAubG9jayAgICAgICAgICAgPSBCSVQoMjgpLAo+ID4gPiAgICAgICAgIC5uICAgICAgICAgICAg
ICA9IF9TVU5YSV9DQ1VfTVVMVF9NSU4oOCwgOCwgMTIpLAo+ID4gPiAgICAgICAgIC5tICAgICAg
ICAgICAgICA9IF9TVU5YSV9DQ1VfRElWKDEsIDEpLCAvKiBpbnB1dCBkaXZpZGVyICovCj4gPiA+
Cj4gPiA+ICsgICAgICAgLnNkbSAgICAgICAgICAgID0gX1NVTlhJX0NDVV9TRE0ocGxsX2F1ZGlv
X3NkbV90YWJsZSwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBCSVQoMjQpLCAweDE3OCwgQklUKDMxKSksCj4gPiA+Cj4gPiA+ICAgICAgICAgLmNvbW1vbiAg
ICAgICAgID0gewo+ID4gPgo+ID4gPiArICAgICAgICAgICAgICAgLmZlYXR1cmVzICAgICAgID0g
Q0NVX0ZFQVRVUkVfU0lHTUFfREVMVEFfTU9ELAo+ID4gPgo+ID4gPiAgICAgICAgICAgICAgICAg
LnJlZyAgICAgICAgICAgID0gMHgwNzgsCj4gPiA+ICAgICAgICAgICAgICAgICAuaHcuaW5pdCAg
ICAgICAgPSBDTEtfSFdfSU5JVCgicGxsLWF1ZGlvLWJhc2UiLCAib3NjMjRNIiwKPiA+ID4KPiA+
ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICZjY3Vfbm1f
b3BzLAo+ID4gPgo+ID4gPiBAQCAtNzUzLDEyICs3NjIsMTIgQEAgc3RhdGljIGNvbnN0IHN0cnVj
dCBjbGtfaHcgKmNsa19wYXJlbnRfcGxsX2F1ZGlvW10gPQo+ID4gPiB7Pgo+ID4gPiAgfTsKPiA+
ID4KPiA+ID4gIC8qCj4gPiA+Cj4gPiA+IC0gKiBUaGUgZGl2aWRlciBvZiBwbGwtYXVkaW8gaXMg
Zml4ZWQgdG8gOCBub3csIGFzIHBsbC1hdWRpby00eCBoYXMgYQo+ID4gPiAtICogZml4ZWQgcG9z
dC1kaXZpZGVyIDIuCj4gPiA+ICsgKiBUaGUgZGl2aWRlciBvZiBwbGwtYXVkaW8gaXMgZml4ZWQg
dG8gMjQgZm9yIG5vdywgc28gMjQ1NzYwMDAgYW5kCj4gPiA+IDIyNTc5MjAwICsgKiByYXRlcyBj
YW4gYmUgc2V0IGV4YWN0bHkgaW4gY29uanVuY3Rpb24gd2l0aCBzaWdtYS1kZWx0YQo+ID4gPiBt
b2R1bGF0aW9uLj4KPiA+ID4gICAqLwo+ID4gPgo+ID4gPiAgc3RhdGljIENMS19GSVhFRF9GQUNU
T1JfSFdTKHBsbF9hdWRpb19jbGssICJwbGwtYXVkaW8iLAo+ID4gPgo+ID4gPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgY2xrX3BhcmVudF9wbGxfYXVkaW8sCj4gPiA+Cj4gPiA+IC0gICAg
ICAgICAgICAgICAgICAgICAgICAgICA4LCAxLCBDTEtfU0VUX1JBVEVfUEFSRU5UKTsKPiA+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgIDI0LCAxLCBDTEtfU0VUX1JBVEVfUEFSRU5UKTsK
PiA+ID4KPiA+ID4gIHN0YXRpYyBDTEtfRklYRURfRkFDVE9SX0hXUyhwbGxfYXVkaW9fMnhfY2xr
LCAicGxsLWF1ZGlvLTJ4IiwKPiA+ID4KPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
IGNsa19wYXJlbnRfcGxsX2F1ZGlvLAo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
NCwgMSwgQ0xLX1NFVF9SQVRFX1BBUkVOVCk7Cj4gPgo+ID4gWW91IG5lZWQgdG8gZml4IHRoZSBm
YWN0b3JzIGZvciB0aGUgb3RoZXIgdHdvIG91dHB1dHMgYXMgd2VsbCwgc2luY2UgYWxsCj4gPiB0
aHJlZSBhcmUgZGVyaXZlZCBmcm9tIHBsbC1hdWRpby1iYXNlLgo+Cj4gRml4IGhvdz8gcGxsLWF1
ZGlvLTJ4IGFuZCBwbGwtYXVkaW8tNHggY2xvY2tzIGhhdmUgZml4ZWQgZGl2aWRlciBpbiByZWdh
cmRzIHRvCj4gcGxsLWF1ZGlvLWJhc2UsIHdoaWxlIHBsbC1hdWRpbyBoYXMgbm90LiBVbmxlc3Mg
eW91IG1lYW4gY2hhbmdpbmcgdGhlaXIgbmFtZT8KCkFyZ2guLi4gSSBnb3QgaXQgd3JvbmcuIEl0
IGxvb2tzIGdvb2QgYWN0dWFsbHkuCgpBY2tlZC1ieTogQ2hlbi1ZdSBUc2FpIDx3ZW5zQGNzaWUu
b3JnPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
