Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8171448E6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 01:27:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nKPqP9A8OrYHhAQ/d8LuX+ZT+EIk/jDkQ4eaeOtLPTY=; b=oMXjuEpcD43zWD
	pU19ZHPwIg7Uatkt0AWhiFPu5GJdQuQxgDNaFtN6vCSaBTzR3dPiw14isedRVDzqr0u4jqNl4DMTB
	73XzgzKjS/hGA/I3XUVHHg9Xln9XsA6VdfgavHRBTd09/Xsb+fD5F4EbENrmzoo6Kk3/BUg/XdpPC
	Ige0CI7e0bbX2JmskA2t99arg0h7OOVaVrsCxv0JtBsKG7CO64EH8Kh/pU1QdxDsn+IYUzUG+Hgeg
	bDpKWd8N3sK6m673rj4CULDgMfnM8XW7NOgAH2REFNLzMrl4WVh/PXCk7xOP0Eyaf/Fh+wGh5w8MJ
	mw8/Guo0eLwWnyMotmLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu3rN-0004Mg-Ug; Wed, 22 Jan 2020 00:27:05 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu3r9-0004Lj-V4
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 00:26:53 +0000
Received: by mail-qt1-x843.google.com with SMTP id w47so4299278qtk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 16:26:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=UwmgdlKgjHnFDwXPHQDLPIyA4oIjjd9BxxZ8z8xhCpA=;
 b=eCc0tJA5csuUZzPSGPdjWmMJX0rRaY8x9WRKXujplY35imBuATdPOK5iz8g1Nsg5FH
 ecVDPh3N20JD8aMFdZ2cIYpQHV5ER8GjbJ0Sba7wV3YjJhCTFkF0V8B/evkJfxeHEkJY
 vWsTo+LO6vMvczAfqBQyp81H/80DDDo7xQEYM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=UwmgdlKgjHnFDwXPHQDLPIyA4oIjjd9BxxZ8z8xhCpA=;
 b=VJ/JsTENTfRJC19oHSDQPEZ0VAw8aI2jv8qZzvkpXS7hvyQYo5f6jY5MhUaq42xdch
 9OjdEO8SGlIjqGWE6Y/0eQjgLel1qcRk6vqQ0DOsMz5XoQ+psb/xQ4gOg/o1nfIUixlL
 uHeshR/Tg5eIEBJxIWJQvKQJ1gQzZeoEpKGMJgGSFIFvumRNMRSasUvv3OnldLWKtko6
 xaAUFW22a3MAolS6zn3defHZCfpTSU66H0NNz37gQ9bG/VmU0FGpN9eD2d9hBIyVqs3g
 1G8iR6sipndIxpEatt+iBemFdWol0G1KmcEDnGVesCCjtWoKxASkkpsF2JNfUxq0539z
 HLlA==
X-Gm-Message-State: APjAAAVdw0gO9GopMAv3fStqbNUnChaEbdIelXxfD52n+RkEwiGvxmSU
 3mCkqWtgJvYJCWJsKxpRfsHXfySunvaIA+l6Jpw=
X-Google-Smtp-Source: APXvYqwN5FQEcVX8mIhlSegiZeaAu5eJlYidrimv8ngT4f5S3vD71f0OFT/wRQkS6eo1g8RNHSwolhJUcxduZ04xsww=
X-Received: by 2002:ac8:1ac1:: with SMTP id h1mr820343qtk.255.1579652810173;
 Tue, 21 Jan 2020 16:26:50 -0800 (PST)
MIME-Version: 1.0
References: <1577350475-127530-1-git-send-email-pengms1@lenovo.com>
 <CACPK8XeY5dPHtRfFD55dLVHT0SF1gJEVf1DixsbJKpciLP2s5Q@mail.gmail.com>
 <85dc718f42f54d40ad50853c047ec3ae@lenovo.com>
In-Reply-To: <85dc718f42f54d40ad50853c047ec3ae@lenovo.com>
From: Joel Stanley <joel@jms.id.au>
Date: Wed, 22 Jan 2020 00:26:38 +0000
Message-ID: <CACPK8XctO0SraKF_0Z40S_bBjz_ooQacpej3tMxwTq6XD90DGg@mail.gmail.com>
Subject: Re: [External] Re: [PATCH v1 1/1] ARM: dts: aspeed: update Hr855xg2
 device tree
To: Andrew MS1 Peng <pengms1@lenovo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_162652_057587_7D78DFCE 
X-CRM114-Status: GOOD (  21.45  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Benjamin Fair <benjaminfair@google.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Andrew Jeffery <andrew@aj.id.au>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>, Harry Sung1 <hsung1@lenovo.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Derek Lin23 <dlin23@lenovo.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCA5IEphbiAyMDIwIGF0IDA4OjA3LCBBbmRyZXcgTVMxIFBlbmcgPHBlbmdtczFAbGVu
b3ZvLmNvbT4gd3JvdGU6Cj4KPiBIaSBKb2VsLAo+Cj4gUGxlYXNlIGhlbHAgdG8gY2hlY2sgYmVs
b3cgbXkgY29tbWVudHMuIFRoYW5rcy4KPgo+IFJlZ2FyZHMsCj4gQW5kcmV3IFBlbmcKPgo+ID4g
LS0tLS3pgq7ku7bljp/ku7YtLS0tLQo+ID4g5Y+R5Lu25Lq6OiBKb2VsIFN0YW5sZXkgPGpvZWxA
am1zLmlkLmF1Pgo+ID4g5Y+R6YCB5pe26Ze0OiAyMDIw5bm0MeaciDbml6UgMTQ6NDgKPiA+IOaU
tuS7tuS6ujogQW5kcmV3IE1TMSBQZW5nIDxwZW5nbXMxQGxlbm92by5jb20+Cj4gPiDmioTpgIE6
IFJvYiBIZXJyaW5nIDxyb2JoK2R0QGtlcm5lbC5vcmc+OyBNYXJrIFJ1dGxhbmQKPiA+IDxtYXJr
LnJ1dGxhbmRAYXJtLmNvbT47IEFuZHJldyBKZWZmZXJ5IDxhbmRyZXdAYWouaWQuYXU+OyBkZXZp
Y2V0cmVlCj4gPiA8ZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc+OyBMaW51eCBBUk0KPiA+IDxs
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc+OyBsaW51eC1hc3BlZWQKPiA+IDxs
aW51eC1hc3BlZWRAbGlzdHMub3psYWJzLm9yZz47IExpbnV4IEtlcm5lbCBNYWlsaW5nIExpc3QK
PiA+IDxsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnPjsgQmVuamFtaW4gRmFpciA8YmVuamFt
aW5mYWlyQGdvb2dsZS5jb20+Owo+ID4gT3BlbkJNQyBNYWlsbGlzdCA8b3BlbmJtY0BsaXN0cy5v
emxhYnMub3JnPjsgRGVyZWsgTGluMjMKPiA+IDxkbGluMjNAbGVub3ZvLmNvbT47IFlvbmdodWkg
WUgyMSBMaXUgPGxpdXloMjFAbGVub3ZvLmNvbT4KPiA+IOS4u+mimDogW0V4dGVybmFsXSBSZTog
W1BBVENIIHYxIDEvMV0gQVJNOiBkdHM6IGFzcGVlZDogdXBkYXRlIEhyODU1eGcyCj4gPiBkZXZp
Y2UgdHJlZQo+ID4KPiA+IE9uIFRodSwgMjYgRGVjIDIwMTkgYXQgMDg6NTQsIEFuZHJldyBQZW5n
IDxwZW5nbXMxQGxlbm92by5jb20+IHdyb3RlOgo+ID4gPgo+ID4KPiA+IFdoZW4geW91IGhhdmUg
YSBsaXN0IG9mIHRoaW5ncyBsaWtlIGJlbG93LCBpdCdzIHNvbWV0aW1lcyBhIGdvb2QgaGludCB0
aGF0IHlvdQo+ID4gc2hvdWxkIGJlIHNlbmRpbmcgb25lIHBhdGNoIGZvciBlYWNoIGJ1bGxldCBw
b2ludC4gVGhpcyBtYWtlcyBpdCBlYXNpZXIgdG8KPiA+IHJldmlldy4KPiA+Cj4KPiBTaG91bGQg
SSBzZXBhcmF0ZSBiZWxvdyBjaGFuZ2VzIHRvIHNpeCBwYXRjaGVzIGZvciBuZXh0IHBhdGNoIHZl
cnNpb24/Cj4gRm9yIGV4YW1wbGU6IFtQQVRDSCB2MiAwLzVdICBbUEFUQ0ggdjIgMS81XSAuLi5l
dGMKCkl0J3MgdXAgdG8geW91LgoKSSBkbyBub3QgcmVxdWlyZSBpdC4KCj4KPiA+ID4gVXBkYXRl
IGkyYyBhbGlhc2VzLgo+ID4gPiBDaGFuZ2UgZmxhc2hfbWVtb3J5IG1hcHBpbmcgYWRkcmVzcyBh
bmQgc2l6ZS4KPiA+ID4gQWRkIGluIGEgZ3Bpby1rZXlzIHNlY3Rpb24uCj4gPiA+IEVuYWJsZSB2
aHViLCB2dWFydCwgc3BpMSBhbmQgc3BpMi4KPiA+ID4gQWRkIHJhYTIyODAwNiwgaXIzODE2NCBh
bmQgc24xNzAxMDIyIGh3bW9uIHNlbnNvcnMuCj4gPiA+IFJlbW92ZSBzb21lIHVudXNlIGdwaW8g
ZnJvbSBncGlvIHNlY3Rpb24uCj4gPgo+ID4gdW51c2VkPwo+ID4KPgo+IEl0IHdhcyBteSBtaXN0
YWtlLCB0aGUgY29ycmVjdCBzZW50ZW5jZSBzaG91bGQgYmUgIlJlbW92ZSBncGlvIGZyb20gZ3Bp
byBzZWN0aW9uIHNpbmNlIGl0IGNvbnRyb2xsZWQgYnkgdXNlciBzcGFjZS4iCj4KPiA+ID4KPiA+
ID4gU2lnbmVkLW9mZi1ieTogQW5kcmV3IFBlbmcgPHBlbmdtczFAbGVub3ZvLmNvbT4KPiA+ID4g
U2lnbmVkLW9mZi1ieTogRGVyZWsgTGluIDxkbGluMjNAbGVub3ZvLmNvbT4KPiA+ID4gU2lnbmVk
LW9mZi1ieTogWW9uZ2h1aSBMaXUgPGxpdXloMjFAbGVub3ZvLmNvbT4KPiA+Cj4gPiBJIGdvdCB0
d28gY29waWVzIG9mIHRoaXMuIEkgdGhpbmsgdGhleSBhcmUgdGhlIHNhbWUuCj4gPgo+Cj4gSSBh
cG9sb2dpemUgdG8gc2VuZCB0d2ljZS4KPgo+ID4gPiAtLS0KPiA+ID4gdjE6IGluaXRpYWwgdmVy
c2lvbgo+ID4gPgo+ID4gPiAgYXJjaC9hcm0vYm9vdC9kdHMvYXNwZWVkLWJtYy1sZW5vdm8taHI4
NTV4ZzIuZHRzIHwgNTU3Cj4gPiA+ICsrKysrKysrKysrKysrKystLS0tLS0tCj4gPiA+ICAxIGZp
bGUgY2hhbmdlZCwgMzgyIGluc2VydGlvbnMoKyksIDE3NSBkZWxldGlvbnMoLSkKPiA+ID4KPiA+
ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2FzcGVlZC1ibWMtbGVub3ZvLWhyODU1
eGcyLmR0cwo+ID4gPiBiL2FyY2gvYXJtL2Jvb3QvZHRzL2FzcGVlZC1ibWMtbGVub3ZvLWhyODU1
eGcyLmR0cwo+ID4gPiBpbmRleCA4MTkzZmFkLi5lMTM4NmQ0IDEwMDY0NAo+ID4gPiAtLS0gYS9h
cmNoL2FybS9ib290L2R0cy9hc3BlZWQtYm1jLWxlbm92by1ocjg1NXhnMi5kdHMKPiA+ID4gKysr
IGIvYXJjaC9hcm0vYm9vdC9kdHMvYXNwZWVkLWJtYy1sZW5vdm8taHI4NTV4ZzIuZHRzCj4gPiA+
IEBAIC0xNSwxNCArMTUsMjEgQEAKPiA+ID4gICAgICAgICBjb21wYXRpYmxlID0gImxlbm92byxo
cjg1NXhnMi1ibWMiLCAiYXNwZWVkLGFzdDI1MDAiOwo+ID4gPgo+ID4KPiA+ID4gLSAgICAgICAg
ICAgICAgIGZsYXNoX21lbW9yeTogcmVnaW9uQDk4MDAwMDAwIHsKPiA+ID4gKyAgICAgICAgICAg
ICAgIGZsYXNoX21lbW9yeTogcmVnaW9uQDlFRkYwMDAwIHsKPiA+ID4gICAgICAgICAgICAgICAg
ICAgICAgICAgbm8tbWFwOwo+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MHg5
ODAwMDAwMCAweDAwMTAwMDAwPjsgLyogMU0gKi8KPiA+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgcmVnID0gPDB4OUVGRjAwMDAgMHgwMDAxMDAwMD47IC8qIDY0SyAqLwo+ID4KPiA+IERvIHlv
dSByZWFsbHkgdXNlIDY0SyBoZXJlLCBvciB3YXMgdGhpcyBhIHdvcmthcm91bmQgZm9yIHRoZSBs
cGMtY3RsciBkcml2ZXIKPiA+IHJlcXVpcmluZyBhIG1lbW9yeSByZWdpb24/Cj4gPgo+Cj4gV2Ug
cmVzZXJ2ZSA2NEsgZm9yIEwyQSBJbi1CYW5kIEZpcm13YXJlIFVwZGF0ZSAocGhvc3Bob3ItaXBt
aS1mbGFzaCkuCgpPa2F5LCB0aGFua3MgZm9yIGNsYXJpZnlpbmcuCgpJIGFtIGhhcHB5IHdpdGgg
cmVzdCBvZiB5b3VyIHJlc3BvbnNlcy4gUGxlYXNlIHNlbmQgdjIgd2l0aCB0aGVzZSB0aGluZ3Mg
Zml4ZWQuCgpDaGVlcnMsCgpKb2VsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
