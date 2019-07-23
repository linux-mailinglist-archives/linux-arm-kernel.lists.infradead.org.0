Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49AF8712CD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 09:25:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=stWx+9LPRYhEBVyChaACF4EqcWyzKqRkSeH/Tvc9ISY=; b=mp4/PAQdHE5C3y
	Ddmp25gapPbBfhxGPrp/berNskJP3BPStc1gk5RWgN6o7g7jWNG5R8O9YqkzkcbFX+ZpBcDENKrxR
	w0WDakLoO4CK1bfPgfHE85U5O0VX0s3mxLv4GKbkkd6l1RCV5YdjeNtJQXJNiO1wSBmqkmdXlGi70
	WoQOEZdpYeIDuw5xTlSV5WfoK7CCQhRJtYP1yP4K0d1aWAkvRhgLNfpdDddSBMyVhNIfiGthSENoY
	zdFFNIVQzbxmFc+zTm+q79aNfa6TkPzt7AQ10zCdTlilmb5VYzOvO5kq1Ce+H0ZmRwpXxAjG481Wl
	BM817HYD1fZ1NixLGqRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hppB1-0002ZY-7s; Tue, 23 Jul 2019 07:25:35 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hppAk-0002Yl-W9
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 07:25:20 +0000
Received: by mail-wr1-f67.google.com with SMTP id r1so41945151wrl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 00:25:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=sHDKTXWU/xgPgNMn/V0t0D27DplpYbCWQ39JljnO3KE=;
 b=TdhCqcfc6PRsTgB5zNAmjDLiZb18jNR/LbZbLVqVMgqMa4INzyD/o1vsvt4c0JvGyB
 V2/rbLwasr/bZJbJAISIjjGuUL9Dq7cZRqfMpielOVejgX3twWC5foKvXcUVO+j+buLc
 ATTUTkwCV5OHotww5QzphHZ9pqfDbe/dn4AlCQ+UF/54PhWHi0EaRdEQ4SxPR05c5PvK
 rnk9hYHZ06sGSgmQuz+yS7/AZCbqMt4ncPJC5xPa+zfvwHYoa64ZDegI1nAH43i5+WxH
 KNgnMbQqgokGyJtEbMqlqR5YOupPYWekMOAcg8+XkCx++9v8pvw1KX5dpc5vGJLZo6Qf
 AUTQ==
X-Gm-Message-State: APjAAAWFF8hi+bCtUR2GYh/WArbgTmiaKgC5P836/T8sGmCvNTFiWO0U
 yzUcA9N4ufHO1xJFa4yz19vykg==
X-Google-Smtp-Source: APXvYqz0SPP0qiQDLODbbW9L0gpUYgqPP98ti5rIHlXdUIG862jf2lYb199jfwAb8HW5mBizFMj7ug==
X-Received: by 2002:adf:dd03:: with SMTP id a3mr33103542wrm.87.1563866717486; 
 Tue, 23 Jul 2019 00:25:17 -0700 (PDT)
Received: from redhat.com ([185.120.125.30])
 by smtp.gmail.com with ESMTPSA id o7sm36354317wmf.43.2019.07.23.00.25.13
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 00:25:16 -0700 (PDT)
Date: Tue, 23 Jul 2019 03:25:11 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Jason Wang <jasowang@redhat.com>
Subject: Re: WARNING in __mmdrop
Message-ID: <20190723032346-mutt-send-email-mst@kernel.org>
References: <0000000000008dd6bb058e006938@google.com>
 <000000000000964b0d058e1a0483@google.com>
 <20190721044615-mutt-send-email-mst@kernel.org>
 <75c43998-3a1c-676f-99ff-3d04663c3fcc@redhat.com>
 <20190722035657-mutt-send-email-mst@kernel.org>
 <cfcd330d-5f4a-835a-69f7-c342d5d0d52d@redhat.com>
 <20190723010156-mutt-send-email-mst@kernel.org>
 <124be1a2-1c53-8e65-0f06-ee2294710822@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <124be1a2-1c53-8e65-0f06-ee2294710822@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_002519_036785_E68892D0 
X-CRM114-Status: GOOD (  23.11  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [185.120.125.30 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
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
Cc: mhocko@suse.com, peterz@infradead.org, ldv@altlinux.org,
 james.bottomley@hansenpartnership.com, linux-mm@kvack.org, namit@vmware.com,
 mingo@kernel.org, elena.reshetova@intel.com, keescook@chromium.org,
 aarcange@redhat.com, davem@davemloft.net, hch@infradead.org,
 christian@brauner.io,
 syzbot <syzbot+e58112d71f77113ddb7b@syzkaller.appspotmail.com>,
 syzkaller-bugs@googlegroups.com, jglisse@redhat.com, viro@zeniv.linux.org.uk,
 linux-arm-kernel@lists.infradead.org, wad@chromium.org,
 linux-parisc@vger.kernel.org, linux-kernel@vger.kernel.org,
 luto@amacapital.net, ebiederm@xmission.com, akpm@linux-foundation.org,
 guro@fb.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKdWwgMjMsIDIwMTkgYXQgMDE6NDg6NTJQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90
ZToKPiAKPiBPbiAyMDE5LzcvMjMg5LiL5Y2IMTowMiwgTWljaGFlbCBTLiBUc2lya2luIHdyb3Rl
Ogo+ID4gT24gVHVlLCBKdWwgMjMsIDIwMTkgYXQgMTE6NTU6MjhBTSArMDgwMCwgSmFzb24gV2Fu
ZyB3cm90ZToKPiA+ID4gT24gMjAxOS83LzIyIOS4i+WNiDQ6MDIsIE1pY2hhZWwgUy4gVHNpcmtp
biB3cm90ZToKPiA+ID4gPiBPbiBNb24sIEp1bCAyMiwgMjAxOSBhdCAwMToyMTo1OVBNICswODAw
LCBKYXNvbiBXYW5nIHdyb3RlOgo+ID4gPiA+ID4gT24gMjAxOS83LzIxIOS4i+WNiDY6MDIsIE1p
Y2hhZWwgUy4gVHNpcmtpbiB3cm90ZToKPiA+ID4gPiA+ID4gT24gU2F0LCBKdWwgMjAsIDIwMTkg
YXQgMDM6MDg6MDBBTSAtMDcwMCwgc3l6Ym90IHdyb3RlOgo+ID4gPiA+ID4gPiA+IHN5emJvdCBo
YXMgYmlzZWN0ZWQgdGhpcyBidWcgdG86Cj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gY29t
bWl0IDdmNDY2MDMyZGM5ZTVhNjEyMTdmMjJlYTM0YjJkZjkzMjc4NmJiZmMKPiA+ID4gPiA+ID4g
PiBBdXRob3I6IEphc29uIFdhbmcgPGphc293YW5nQHJlZGhhdC5jb20+Cj4gPiA+ID4gPiA+ID4g
RGF0ZTogICBGcmkgTWF5IDI0IDA4OjEyOjE4IDIwMTkgKzAwMDAKPiA+ID4gPiA+ID4gPiAKPiA+
ID4gPiA+ID4gPiAgICAgICAgdmhvc3Q6IGFjY2VzcyB2cSBtZXRhZGF0YSB0aHJvdWdoIGtlcm5l
bCB2aXJ0dWFsIGFkZHJlc3MKPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiBiaXNlY3Rpb24g
bG9nOiAgaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC9iaXNlY3QudHh0P3g9MTQ5YThh
MjA2MDAwMDAKPiA+ID4gPiA+ID4gPiBzdGFydCBjb21taXQ6ICAgNmQyMWE0MWIgQWRkIGxpbnV4
LW5leHQgc3BlY2lmaWMgZmlsZXMgZm9yIDIwMTkwNzE4Cj4gPiA+ID4gPiA+ID4gZ2l0IHRyZWU6
ICAgICAgIGxpbnV4LW5leHQKPiA+ID4gPiA+ID4gPiBmaW5hbCBjcmFzaDogICAgaHR0cHM6Ly9z
eXprYWxsZXIuYXBwc3BvdC5jb20veC9yZXBvcnQudHh0P3g9MTY5YThhMjA2MDAwMDAKPiA+ID4g
PiA+ID4gPiBjb25zb2xlIG91dHB1dDogaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC9s
b2cudHh0P3g9MTI5YThhMjA2MDAwMDAKPiA+ID4gPiA+ID4gPiBrZXJuZWwgY29uZmlnOiAgaHR0
cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC8uY29uZmlnP3g9MzQzMGExNTFlMTQ1MjMzMQo+
ID4gPiA+ID4gPiA+IGRhc2hib2FyZCBsaW5rOiBodHRwczovL3N5emthbGxlci5hcHBzcG90LmNv
bS9idWc/ZXh0aWQ9ZTU4MTEyZDcxZjc3MTEzZGRiN2IKPiA+ID4gPiA+ID4gPiBzeXogcmVwcm86
ICAgICAgaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC9yZXByby5zeXo/eD0xMDEzOWU2
ODYwMDAwMAo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IFJlcG9ydGVkLWJ5OiBzeXpib3Qr
ZTU4MTEyZDcxZjc3MTEzZGRiN2JAc3l6a2FsbGVyLmFwcHNwb3RtYWlsLmNvbQo+ID4gPiA+ID4g
PiA+IEZpeGVzOiA3ZjQ2NjAzMmRjOWUgKCJ2aG9zdDogYWNjZXNzIHZxIG1ldGFkYXRhIHRocm91
Z2gga2VybmVsIHZpcnR1YWwKPiA+ID4gPiA+ID4gPiBhZGRyZXNzIikKPiA+ID4gPiA+ID4gPiAK
PiA+ID4gPiA+ID4gPiBGb3IgaW5mb3JtYXRpb24gYWJvdXQgYmlzZWN0aW9uIHByb2Nlc3Mgc2Vl
OiBodHRwczovL2dvby5nbC90cHNtRUojYmlzZWN0aW9uCj4gPiA+ID4gPiA+IE9LIEkgcG9rZWQg
YXQgdGhpcyBmb3IgYSBiaXQsIEkgc2VlIHNldmVyYWwgdGhpbmdzIHRoYXQKPiA+ID4gPiA+ID4g
d2UgbmVlZCB0byBmaXgsIHRob3VnaCBJJ20gbm90IHlldCBzdXJlIGl0J3MgdGhlIHJlYXNvbiBm
b3IKPiA+ID4gPiA+ID4gdGhlIGZhaWx1cmVzOgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gCj4g
PiA+ID4gPiA+IDEuIG1tdV9ub3RpZmllcl9yZWdpc3RlciBzaG91bGRuJ3QgYmUgY2FsbGVkIGZy
b20gdmhvc3RfdnJpbmdfc2V0X251bV9hZGRyCj4gPiA+ID4gPiA+ICAgICAgIFRoYXQncyBqdXN0
IGEgYmFkIGhhY2ssCj4gPiA+ID4gPiBUaGlzIGlzIHVzZWQgdG8gYXZvaWQgaG9sZGluZyBsb2Nr
IHdoZW4gY2hlY2tpbmcgd2hldGhlciB0aGUgYWRkcmVzc2VzIGFyZQo+ID4gPiA+ID4gb3Zlcmxh
cHBlZC4gT3RoZXJ3aXNlIHdlIG5lZWQgdG8gdGFrZSBzcGlubG9jayBmb3IgZWFjaCBpbnZhbGlk
YXRpb24gcmVxdWVzdAo+ID4gPiA+ID4gZXZlbiBpZiBpdCB3YXMgdGhlIHZhIHJhbmdlIHRoYXQg
aXMgbm90IGludGVyZXN0ZWQgZm9yIHVzLiBUaGlzIHdpbGwgYmUgdmVyeQo+ID4gPiA+ID4gc2xv
dyBlLmcgZHVyaW5nIGd1ZXN0IGJvb3QuCj4gPiA+ID4gS1ZNIHNlZW1zIHRvIGRvIGV4YWN0bHkg
dGhhdC4KPiA+ID4gPiBJIHRyaWVkIGFuZCBndWVzdCBkb2VzIG5vdCBzZWVtIHRvIGJvb3QgYW55
IHNsb3dlci4KPiA+ID4gPiBEbyB5b3Ugb2JzZXJ2ZSBhbnkgc2xvd2Rvd24/Cj4gPiA+IAo+ID4g
PiBZZXMgSSBkby4KPiA+ID4gCj4gPiA+IAo+ID4gPiA+IE5vdyBJIHRvb2sgYSBoYXJkIGxvb2sg
YXQgdGhlIHVhZGRyIGhhY2tlcnkgaXQgcmVhbGx5IG1ha2VzCj4gPiA+ID4gbWUgbmVydmlvdXMu
IFNvIEkgdGhpbmsgZm9yIHRoaXMgcmVsZWFzZSB3ZSB3YW50IHNvbWV0aGluZwo+ID4gPiA+IHNh
ZmUsIGFuZCBvcHRpbWl6YXRpb25zIG9uIHRvcC4gQXMgYW4gYWx0ZXJuYXRpdmUgcmV2ZXJ0IHRo
ZQo+ID4gPiA+IG9wdGltaXphdGlvbiBhbmQgdHJ5IGFnYWluIGZvciBuZXh0IG1lcmdlIHdpbmRv
dy4KPiA+ID4gCj4gPiA+IFdpbGwgcG9zdCBhIHNlcmllcyBvZiBmaXhlcywgbGV0IG1lIGtub3cg
aWYgeW91J3JlIG9rIHdpdGggdGhhdC4KPiA+ID4gCj4gPiA+IFRoYW5rcwo+ID4gSSdkIHByZWZl
ciB5b3UgdG8gdGFrZSBhIGhhcmQgbG9vayBhdCB0aGUgcGF0Y2ggSSBwb3N0ZWQKPiA+IHdoaWNo
IG1ha2VzIGNvZGUgY2xlYW5lciwKPiAKPiAKPiBJIGRpZC4gQnV0IGl0IGxvb2tzIHRvIG1lIGEg
c2VyaWVzIHRoYXQgaXMgb25seSBhYm91dCA2MCBsaW5lcyBvZiBjb2RlIGNhbgo+IGZpeCBhbGwg
dGhlIGlzc3VlcyB3ZSBmb3VuZCB3aXRob3V0IHJldmVydGluZyB0aGUgdWFkZHIgb3B0aW1pemF0
aW9uLgo+IAo+IAo+ID4gICBhbmQgYWQgb3B0aW1pemF0aW9ucyBvbiB0b3AuCj4gPiBCdXQgb3Ro
ZXIgd2F5cyBjb3VsZCBiZSBvayB0b28uCj4gCj4gCj4gSSdtIHdhaXRpbmcgZm9yIHRoZSB0ZXN0
IHJlc3VsdCBmcm9tIHN5emJvdCBhbmQgd2lsbCBwb3N0LiBMZXQncyBzZWUgaWYgeW91Cj4gYXJl
IE9LIHdpdGggdGhhdC4KPiAKPiBUaGFua3MKCk9oIEkgZGlkbid0IGtub3cgb25lIGNhbiBwdXNo
IGEgdGVzdCB0byBzeXpib3QgYW5kIGdldCBiYWNrCmEgcmVzdWx0LiBIb3cgZG9lcyBvbmUgZG8g
dGhhdD8KCgo+IAo+ID4gPiA+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
