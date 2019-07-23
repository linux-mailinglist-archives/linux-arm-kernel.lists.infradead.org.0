Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89BD7712C8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 09:24:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TbfA1oHbq1YXwUX4T4I6iixBaKz/bv4+gAIsTuRqcg8=; b=dKgUfKxQaGApgO
	xnnj06q5YVpmCKTugr9ifv9R9Aj+AseVnu7H/jQZ0M0dgFkua4uBocJ8lV0ftpyKaGodhzWkqkdhH
	Z16+xRUDzFgQTOBLyTnEhm3t5zPtHPJ28LCbE3V2CyHDBJTohtwgVJDouM175Ug4yk+s+0DO9bTvq
	36xPq/M5qrAy4uFngnKAuReHee96qgPwUXwQ/S6AfMr8D33Ox6YEgfxgIbFfuyhQvhDd0Svgm7iOW
	9HwL5NJvkAFRx08vAOScslSlQ1VGfZ9lGqsX/2YG+stPTWTkMmraobFXR0wqQltHm/BKJ+udeKeHs
	63bI+XFDG+zJsGj1IfKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hppA3-0000nB-Ui; Tue, 23 Jul 2019 07:24:36 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpp8z-0000Ze-PV
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 07:23:35 +0000
Received: by mail-wm1-f65.google.com with SMTP id w9so30420542wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 00:23:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=oy5KGqrsqT4B9H/f34qwXCnVMYFxOh3uTjd2Vo0pdtA=;
 b=aLCMqqXURNoQFvrtw06lycGGtExj9FHz600kovXelNFGlmk9VhfhVjQk4p+lylBe9k
 +HjZ/NvITPEhZBwAApQNspMIr8c+41U9vMzNVdBTl0Pk+qpkq9vRz9oZmG7tN/RnBze3
 c4t3BltkJnHC2izZgPeOwHfg+0oRZfmLagjaaTWdUWFtmlDxtF6cffvRspqUVcua74kM
 q0xr/Q/Y5hSEx/wIm7i60Vj+bzOjV55grzaxA6GKzghWBmgwb11uBwVeabN6y4YhYUZr
 zUlU3bDQbOo3bttoIQJS2AuCXxCSoiqOB2wY+9XSoHlKbsKSSISqsUg9T+R2K7Cyw96p
 D2lA==
X-Gm-Message-State: APjAAAVAhOD8vlzL9tQUf8HceNrwNlx/nnRlqGxCiLHwBgH5uJ5fYPaA
 kcZWCBK0MW4X42ICL5NP8cE62Q==
X-Google-Smtp-Source: APXvYqxWldJbxq1K+XIwuoZA5QjggN18UavMMzAAJR8lSW8vn9fsDUnMI2/5vRNFf2W6MAv/+2bbtg==
X-Received: by 2002:a1c:ed09:: with SMTP id l9mr15886118wmh.58.1563866607208; 
 Tue, 23 Jul 2019 00:23:27 -0700 (PDT)
Received: from redhat.com ([185.120.125.30])
 by smtp.gmail.com with ESMTPSA id f204sm61496509wme.18.2019.07.23.00.23.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 00:23:26 -0700 (PDT)
Date: Tue, 23 Jul 2019 03:23:20 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Jason Wang <jasowang@redhat.com>
Subject: Re: WARNING in __mmdrop
Message-ID: <20190723032024-mutt-send-email-mst@kernel.org>
References: <0000000000008dd6bb058e006938@google.com>
 <000000000000964b0d058e1a0483@google.com>
 <20190721044615-mutt-send-email-mst@kernel.org>
 <20190721081447-mutt-send-email-mst@kernel.org>
 <85dd00e2-37a6-72b7-5d5a-8bf46a3526cf@redhat.com>
 <20190722040230-mutt-send-email-mst@kernel.org>
 <4bd2ff78-6871-55f2-44dc-0982ffef3337@redhat.com>
 <20190723010019-mutt-send-email-mst@kernel.org>
 <b4696f2e-678a-bdb2-4b7c-fb4ce040ec2a@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b4696f2e-678a-bdb2-4b7c-fb4ce040ec2a@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_002330_450134_46868273 
X-CRM114-Status: GOOD (  37.53  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [185.120.125.30 listed in dnsbl.sorbs.net]
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

T24gVHVlLCBKdWwgMjMsIDIwMTkgYXQgMDE6NDc6MDRQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90
ZToKPiAKPiBPbiAyMDE5LzcvMjMg5LiL5Y2IMTowMSwgTWljaGFlbCBTLiBUc2lya2luIHdyb3Rl
Ogo+ID4gT24gVHVlLCBKdWwgMjMsIDIwMTkgYXQgMTI6MDE6NDBQTSArMDgwMCwgSmFzb24gV2Fu
ZyB3cm90ZToKPiA+ID4gT24gMjAxOS83LzIyIOS4i+WNiDQ6MDgsIE1pY2hhZWwgUy4gVHNpcmtp
biB3cm90ZToKPiA+ID4gPiBPbiBNb24sIEp1bCAyMiwgMjAxOSBhdCAwMToyNDoyNFBNICswODAw
LCBKYXNvbiBXYW5nIHdyb3RlOgo+ID4gPiA+ID4gT24gMjAxOS83LzIxIOS4i+WNiDg6MTgsIE1p
Y2hhZWwgUy4gVHNpcmtpbiB3cm90ZToKPiA+ID4gPiA+ID4gT24gU3VuLCBKdWwgMjEsIDIwMTkg
YXQgMDY6MDI6NTJBTSAtMDQwMCwgTWljaGFlbCBTLiBUc2lya2luIHdyb3RlOgo+ID4gPiA+ID4g
PiA+IE9uIFNhdCwgSnVsIDIwLCAyMDE5IGF0IDAzOjA4OjAwQU0gLTA3MDAsIHN5emJvdCB3cm90
ZToKPiA+ID4gPiA+ID4gPiA+IHN5emJvdCBoYXMgYmlzZWN0ZWQgdGhpcyBidWcgdG86Cj4gPiA+
ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+IGNvbW1pdCA3ZjQ2NjAzMmRjOWU1YTYxMjE3ZjIy
ZWEzNGIyZGY5MzI3ODZiYmZjCj4gPiA+ID4gPiA+ID4gPiBBdXRob3I6IEphc29uIFdhbmc8amFz
b3dhbmdAcmVkaGF0LmNvbT4KPiA+ID4gPiA+ID4gPiA+IERhdGU6ICAgRnJpIE1heSAyNCAwODox
MjoxOCAyMDE5ICswMDAwCj4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+ICAgICAgICB2
aG9zdDogYWNjZXNzIHZxIG1ldGFkYXRhIHRocm91Z2gga2VybmVsIHZpcnR1YWwgYWRkcmVzcwo+
ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiBiaXNlY3Rpb24gbG9nOmh0dHBzOi8vc3l6
a2FsbGVyLmFwcHNwb3QuY29tL3gvYmlzZWN0LnR4dD94PTE0OWE4YTIwNjAwMDAwCj4gPiA+ID4g
PiA+ID4gPiBzdGFydCBjb21taXQ6ICAgNmQyMWE0MWIgQWRkIGxpbnV4LW5leHQgc3BlY2lmaWMg
ZmlsZXMgZm9yIDIwMTkwNzE4Cj4gPiA+ID4gPiA+ID4gPiBnaXQgdHJlZTogICAgICAgbGludXgt
bmV4dAo+ID4gPiA+ID4gPiA+ID4gZmluYWwgY3Jhc2g6aHR0cHM6Ly9zeXprYWxsZXIuYXBwc3Bv
dC5jb20veC9yZXBvcnQudHh0P3g9MTY5YThhMjA2MDAwMDAKPiA+ID4gPiA+ID4gPiA+IGNvbnNv
bGUgb3V0cHV0Omh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL3gvbG9nLnR4dD94PTEyOWE4
YTIwNjAwMDAwCj4gPiA+ID4gPiA+ID4gPiBrZXJuZWwgY29uZmlnOmh0dHBzOi8vc3l6a2FsbGVy
LmFwcHNwb3QuY29tL3gvLmNvbmZpZz94PTM0MzBhMTUxZTE0NTIzMzEKPiA+ID4gPiA+ID4gPiA+
IGRhc2hib2FyZCBsaW5rOmh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL2J1Zz9leHRpZD1l
NTgxMTJkNzFmNzcxMTNkZGI3Ygo+ID4gPiA+ID4gPiA+ID4gc3l6IHJlcHJvOmh0dHBzOi8vc3l6
a2FsbGVyLmFwcHNwb3QuY29tL3gvcmVwcm8uc3l6P3g9MTAxMzllNjg2MDAwMDAKPiA+ID4gPiA+
ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gUmVwb3J0ZWQtYnk6c3l6Ym90K2U1ODExMmQ3MWY3NzEx
M2RkYjdiQHN5emthbGxlci5hcHBzcG90bWFpbC5jb20KPiA+ID4gPiA+ID4gPiA+IEZpeGVzOiA3
ZjQ2NjAzMmRjOWUgKCJ2aG9zdDogYWNjZXNzIHZxIG1ldGFkYXRhIHRocm91Z2gga2VybmVsIHZp
cnR1YWwKPiA+ID4gPiA+ID4gPiA+IGFkZHJlc3MiKQo+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4g
PiA+ID4gPiBGb3IgaW5mb3JtYXRpb24gYWJvdXQgYmlzZWN0aW9uIHByb2Nlc3Mgc2VlOmh0dHBz
Oi8vZ29vLmdsL3Rwc21FSiNiaXNlY3Rpb24KPiA+ID4gPiA+ID4gPiBPSyBJIHBva2VkIGF0IHRo
aXMgZm9yIGEgYml0LCBJIHNlZSBzZXZlcmFsIHRoaW5ncyB0aGF0Cj4gPiA+ID4gPiA+ID4gd2Ug
bmVlZCB0byBmaXgsIHRob3VnaCBJJ20gbm90IHlldCBzdXJlIGl0J3MgdGhlIHJlYXNvbiBmb3IK
PiA+ID4gPiA+ID4gPiB0aGUgZmFpbHVyZXM6Cj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4g
Cj4gPiA+ID4gPiA+ID4gMS4gbW11X25vdGlmaWVyX3JlZ2lzdGVyIHNob3VsZG4ndCBiZSBjYWxs
ZWQgZnJvbSB2aG9zdF92cmluZ19zZXRfbnVtX2FkZHIKPiA+ID4gPiA+ID4gPiAgICAgICBUaGF0
J3MganVzdCBhIGJhZCBoYWNrLCBpbiBwYXJ0aWN1bGFyIEkgZG9uJ3QgdGhpbmsgZGV2aWNlCj4g
PiA+ID4gPiA+ID4gICAgICAgbXV0ZXggaXMgdGFrZW4gYW5kIHNvIHBva2luZyBhdCB0d28gVlFz
IHdpbGwgY29ycnVwdAo+ID4gPiA+ID4gPiA+ICAgICAgIG1lbW9yeS4KPiA+ID4gPiA+ID4gPiAg
ICAgICBTbyB3aGF0IHRvIGRvPyBIb3cgYWJvdXQgYSBwZXIgdnEgbm90aWZpZXI/Cj4gPiA+ID4g
PiA+ID4gICAgICAgT2YgY291cnNlIHdlIGFsc28gaGF2ZSBzeW5jaHJvbml6ZV9yY3UKPiA+ID4g
PiA+ID4gPiAgICAgICBpbiB0aGUgbm90aWZpZXIgd2hpY2ggaXMgc2xvdyBhbmQgaXMgbm93IGdv
aW5nIHRvIGJlIGNhbGxlZCB0d2ljZS4KPiA+ID4gPiA+ID4gPiAgICAgICBJIHRoaW5rIGNhbGxf
cmN1IHdvdWxkIGJlIG1vcmUgYXBwcm9wcmlhdGUgaGVyZS4KPiA+ID4gPiA+ID4gPiAgICAgICBX
ZSB0aGVuIG5lZWQgcmN1X2JhcnJpZXIgb24gbW9kdWxlIHVubG9hZC4KPiA+ID4gPiA+ID4gPiAg
ICAgICBPVE9IIGlmIHdlIG1ha2UgcGFnZXMgbGluZWFyIHdpdGggbWFwIHRoZW4gd2UgYXJlIGdv
b2QKPiA+ID4gPiA+ID4gPiAgICAgICB3aXRoIGtmcmVlX3JjdSB3aGljaCBpcyBldmVuIG5pY2Vy
Lgo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IDIuIERvZXNuJ3QgbWFwIGxlYWsgYWZ0ZXIg
dmhvc3RfbWFwX3VucHJlZmV0Y2g/Cj4gPiA+ID4gPiA+ID4gICAgICAgQW5kIHdoeSBkb2VzIGl0
IHBva2UgYXQgY29udGVudHMgb2YgdGhlIG1hcD8KPiA+ID4gPiA+ID4gPiAgICAgICBObyBvbmUg
c2hvdWxkIHVzZSBpdCByaWdodD8KPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiAzLiBub3Rp
ZmllciB1bnJlZ2lzdGVyIGhhcHBlbnMgbGFzdCBpbiB2aG9zdF9kZXZfY2xlYW51cCwKPiA+ID4g
PiA+ID4gPiAgICAgICBidXQgcmVnaXN0ZXIgaGFwcGVucyBmaXJzdC4gVGhpcyBsb29rcyB3cm9u
ZyB0byBtZS4KPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA0LiBPSyBzbyB3ZSB1c2UgdGhl
IGludmFsaWRhdGUgY291bnQgdG8gdHJ5IGFuZCBkZXRlY3QgdGhhdAo+ID4gPiA+ID4gPiA+ICAg
ICAgIHNvbWUgaW52YWxpZGF0ZSBpcyBpbiBwcm9ncmVzcy4KPiA+ID4gPiA+ID4gPiAgICAgICBJ
IGFtIG5vdCAxMDAlIHN1cmUgd2h5IGRvIHdlIGNhcmUuCj4gPiA+ID4gPiA+ID4gICAgICAgQXNz
dW1pbmcgd2UgZG8sIHVhZGRyIGNhbiBjaGFuZ2UgYmV0d2VlbiBzdGFydCBhbmQgZW5kCj4gPiA+
ID4gPiA+ID4gICAgICAgYW5kIHRoZW4gdGhlIGNvdW50ZXIgY2FuIGdldCBuZWdhdGl2ZSwgb3Ig
Z2VuZXJhbGx5Cj4gPiA+ID4gPiA+ID4gICAgICAgb3V0IG9mIHN5bmMuCj4gPiA+ID4gPiA+ID4g
Cj4gPiA+ID4gPiA+ID4gU28gd2hhdCB0byBkbyBhYm91dCBhbGwgdGhpcz8KPiA+ID4gPiA+ID4g
PiBJIGFtIGluY2xpbmVkIHRvIHNheSBsZXQncyBqdXN0IGRyb3AgdGhlIHVhZGRyIG9wdGltaXph
dGlvbgo+ID4gPiA+ID4gPiA+IGZvciBub3cuIEUuZy4ga3ZtIGludmFsaWRhdGVzIHVuY29uZGl0
aW9uYWxseS4KPiA+ID4gPiA+ID4gPiAzIHNob3VsZCBiZSBmaXhlZCBpbmRlcGVuZGVudGx5Lgo+
ID4gPiA+ID4gPiBBYm92ZSBpbXBsZW1lbnRzIHRoaXMgYnV0IGlzIG9ubHkgYnVpbGQtdGVzdGVk
Lgo+ID4gPiA+ID4gPiBKYXNvbiwgcGxzIHRha2UgYSBsb29rLiBJZiB5b3UgbGlrZSB0aGUgYXBw
cm9hY2ggZmVlbAo+ID4gPiA+ID4gPiBmcmVlIHRvIHRha2UgaXQgZnJvbSBoZXJlLgo+ID4gPiA+
ID4gPiAKPiA+ID4gPiA+ID4gT25lIHRoaW5nIHRoZSBiZWxvdyBkb2VzIG5vdCBoYXZlIGlzIGFu
eSBraW5kIG9mIHJhdGUtbGltaXRpbmcuCj4gPiA+ID4gPiA+IEdpdmVuIGl0J3Mgc28gZWFzeSB0
byByZXN0YXJ0IEknbSB0aGlua2luZyBpdCBtYWtlcyBzZW5zZQo+ID4gPiA+ID4gPiB0byBhZGQg
YSBnZW5lcmljIGluZnJhc3RydWN0dXJlIGZvciB0aGlzLgo+ID4gPiA+ID4gPiBDYW4gYmUgYSBz
ZXBhcmF0ZSBwYXRjaCBJIGd1ZXNzLgo+ID4gPiA+ID4gSSBkb24ndCBnZXQgd2h5IG11c3QgdXNl
IGtmcmVlX3JjdSgpIGluc3RlYWQgb2Ygc3luY2hyb25pemVfcmN1KCkgaGVyZS4KPiA+ID4gPiBz
eW5jaHJvbml6ZV9yY3UgaGFzIHZlcnkgaGlnaCBsYXRlbmN5IG9uIGJ1c3kgc3lzdGVtcy4KPiA+
ID4gPiBJdCBpcyBub3Qgc29tZXRoaW5nIHRoYXQgc2hvdWxkIGJlIHVzZWQgb24gYSBzeXNjYWxs
IHBhdGguCj4gPiA+ID4gS1ZNIGhhZCB0byBzd2l0Y2ggdG8gU1JDVSB0byBrZWVwIGl0IHNhbmUu
Cj4gPiA+ID4gT3RoZXJ3aXNlIG9uZSBndWVzdCBjYW4gdHJpdmlhbGx5IHNsb3cgZG93biBhbm90
aGVyIG9uZS4KPiA+ID4gCj4gPiA+IEkgdGhpbmsgeW91IG1lYW4gdGhlIHN5bmNocm9uaXplX3Jj
dV9leHBlZGl0ZWQoKT8gUmV0aGluayBvZiB0aGUgY29kZSwgdGhlCj4gPiA+IHN5bmNocm9uaXpl
X3JjdSgpIGluIGlvY3RsKCkgY291bGQgYmUgcmVtb3ZlZCwgc2luY2UgaXQgd2FzIHNlcmlhbGl6
ZWQgd2l0aAo+ID4gPiBtZW1vcnkgYWNjZXNzb3IuCj4gPiAKPiA+IFJlYWxseSBsZXQncyBqdXN0
IHVzZSBrZnJlZV9yY3UuIEl0J3Mgd2F5IGNsZWFuZXI6IGZpcmUgYW5kIGZvcmdldC4KPiAKPiAK
PiBMb29rcyBub3QsIHlvdSBuZWVkIHJhdGUgbGltaXQgdGhlIGZpcmUgYXMgeW91J3ZlIGZpZ3Vy
ZWQgb3V0PwoKU2VlIHRoZSBkaXNjdXNzaW9uIHRoYXQgZm9sbG93ZWQuIEJhc2ljYWxseSBubywg
aXQncyBnb29kIGVub3VnaAphbHJlYWR5IGFuZCBpcyBvbmx5IGdvaW5nIHRvIGJlIGJldHRlci4K
Cj4gQW5kIGluIGZhY3QsCj4gdGhlIHN5bmNocm9uaXphdGlvbiBpcyBub3QgZXZlbiBuZWVkZWQs
IGRvZXMgaXQgaGVscCBpZiBJIGxlYXZlIGEgY29tbWVudCB0bwo+IGV4cGxhaW4/CgpMZXQncyB0
cnkgdG8gZmlndXJlIGl0IG91dCBpbiB0aGUgbWFpbCBmaXJzdC4gSSdtIHByZXR0eSBzdXJlIHRo
ZQpjdXJyZW50IGxvZ2ljIGlzIHdyb25nLgoKPiAKPiA+IAo+ID4gPiBCdHcsIGZvciBrdm0gaW9j
dGwgaXQgc3RpbGwgdXNlcyBzeW5jaHJvbml6ZV9yY3UoKSBpbiBrdm1fdmNwdV9pb2N0bCgpLAo+
ID4gPiAoanVzdCBhIGxpdHRsZSBiaXQgbW9yZSBoYXJkIHRvIHRyaWdnZXIpOgo+ID4gCj4gPiBB
RkFJSyB0aGVzZSBuZXZlciBydW4gaW4gcmVzcG9uc2UgdG8gZ3Vlc3QgZXZlbnRzLgo+ID4gU28g
dGhleSBjYW4gdGFrZSB2ZXJ5IGxvbmcgYW5kIGd1ZXN0cyBzdGlsbCB3b24ndCBjcmFzaC4KPiAK
PiAKPiBXaGF0IGlmIGd1ZXN0IG1hbmFnZXMgdG8gZXNjYXBlIHRvIHFlbXU/Cj4gCj4gVGhhbmtz
CgpUaGVuIGl0J3MgZ29pbmcgdG8gYmUgc2xvdy4gV2h5IGRvIHdlIGNhcmU/CldoYXQgd2UgZG8g
bm90IHdhbnQgaXMgc3luY2hyb25pemVfcmN1IHRoYXQgZ3Vlc3QgaXMgYmxvY2tlZCBvbi4KCj4g
Cj4gPiAKPiA+IAo+ID4gPiAgwqDCoMKgIGNhc2UgS1ZNX1JVTjogewo+ID4gPiAuLi4KPiA+ID4g
IMKgwqDCoCDCoMKgwqAgaWYgKHVubGlrZWx5KG9sZHBpZCAhPSB0YXNrX3BpZChjdXJyZW50KSkp
IHsKPiA+ID4gIMKgwqDCoCDCoMKgwqAgwqDCoMKgIC8qIFRoZSB0aHJlYWQgcnVubmluZyB0aGlz
IFZDUFUgY2hhbmdlZC4gKi8KPiA+ID4gIMKgwqDCoCDCoMKgwqAgwqDCoMKgIHN0cnVjdCBwaWQg
Km5ld3BpZDsKPiA+ID4gCj4gPiA+ICDCoMKgwqAgwqDCoMKgIMKgwqDCoCByID0ga3ZtX2FyY2hf
dmNwdV9ydW5fcGlkX2NoYW5nZSh2Y3B1KTsKPiA+ID4gIMKgwqDCoCDCoMKgwqAgwqDCoMKgIGlm
IChyKQo+ID4gPiAgwqDCoMKgIMKgwqDCoCDCoMKgwqAgwqDCoMKgIGJyZWFrOwo+ID4gPiAKPiA+
ID4gIMKgwqDCoCDCoMKgwqAgwqDCoMKgIG5ld3BpZCA9IGdldF90YXNrX3BpZChjdXJyZW50LCBQ
SURUWVBFX1BJRCk7Cj4gPiA+ICDCoMKgwqAgwqDCoMKgIMKgwqDCoCByY3VfYXNzaWduX3BvaW50
ZXIodmNwdS0+cGlkLCBuZXdwaWQpOwo+ID4gPiAgwqDCoMKgIMKgwqDCoCDCoMKgwqAgaWYgKG9s
ZHBpZCkKPiA+ID4gIMKgwqDCoCDCoMKgwqAgwqDCoMKgIMKgwqDCoCBzeW5jaHJvbml6ZV9yY3Uo
KTsKPiA+ID4gIMKgwqDCoCDCoMKgwqAgwqDCoMKgIHB1dF9waWQob2xkcGlkKTsKPiA+ID4gIMKg
wqDCoCDCoMKgwqAgfQo+ID4gPiAuLi4KPiA+ID4gIMKgwqDCoCDCoMKgwqAgYnJlYWs7Cj4gPiA+
IAo+ID4gPiAKPiA+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogTWljaGFlbCBTLiBUc2lya2luPG1z
dEByZWRoYXQuY29tPgo+ID4gPiA+ID4gTGV0IG1lIHRyeSB0byBmaWd1cmUgb3V0IHRoZSByb290
IGNhdXNlIHRoZW4gZGVjaWRlIHdoZXRoZXIgb3Igbm90IHRvIGdvIGZvcgo+ID4gPiA+ID4gdGhp
cyB3YXkuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IFRoYW5rcwo+ID4gPiA+IFRoZSByb290IGNhdXNl
IG9mIHRoZSBjcmFzaCBpcyByZWxldmFudCwgYnV0IHdlIHN0aWxsIG5lZWQKPiA+ID4gPiB0byBm
aXggaXNzdWVzIDEtNC4KPiA+ID4gPiAKPiA+ID4gPiBNb3JlIGlzc3VlcyAobXkgcGF0Y2ggdHJp
ZXMgdG8gZml4IHRoZW0gdG9vKToKPiA+ID4gPiAKPiA+ID4gPiA1LiBwYWdlIG5vdCBkaXJ0aWVk
IHdoZW4gbWFwcGluZ3MgYXJlIHRvcm4gZG93biBvdXRzaWRlCj4gPiA+ID4gICAgICBvZiBpbnZh
bGlkYXRlIGNhbGxiYWNrCj4gPiA+IAo+ID4gPiBZZXMuCj4gPiA+IAo+ID4gPiAKPiA+ID4gPiA2
LiBwb3RlbnRpYWwgY3Jvc3MtVk0gRE9TIGJ5IG9uZSBndWVzdCBrZWVwaW5nIHN5c3RlbSBidXN5
Cj4gPiA+ID4gICAgICBhbmQgaW5jcmVhc2luZyBzeW5jaHJvbml6ZV9yY3UgbGF0ZW5jeSB0byB0
aGUgcG9pbnQgd2hlcmUKPiA+ID4gPiAgICAgIGFub3RoZXIgZ3Vlc3Qgc3RhcnMgdGltaW5nIG91
dCBhbmQgY3Jhc2hlcwo+ID4gPiA+IAo+ID4gPiA+IAo+ID4gPiA+IAo+ID4gPiBUaGlzIHdpbGwg
YmUgYWRkcmVzc2VkIGFmdGVyIEkgcmVtb3ZlIHRoZSBzeW5jaHJvbml6ZV9yY3UoKSBmcm9tIGlv
Y3RsIHBhdGguCj4gPiA+IAo+ID4gPiBUaGFua3MKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
