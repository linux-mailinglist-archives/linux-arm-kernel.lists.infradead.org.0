Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB24085A03
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 07:49:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=17xXGb9zT4KvTGg5rZbsFylU+FVCDNroS8qJ3OZRXTA=; b=qnq/8Tv861uhXq
	OBVSB1OzIrsR1DoUPJkYXfBfpmmbwXRc5Ki5eknJAFCq2vlXPugkOj73w1NZ21VPaB/b3kayyY76V
	bK1MsNBGhR4dWHygQVSKRuq+mR1n1+SN0n30z7VfGRu2TZjZ/rW5HB27UhU5v4A1gBCyrc/LJc3rN
	brweSedh6LGaMS2f/ePOBRGYikwOcN9H/QjmMPrVp+E6hniyWD/C42hBZftkvhB7uC41SQ6hTNrgO
	Do3CSIUqsD1HX7INUAypmFLFN43nYA7d5EY8a2rFKnJnsj2IKlUpatysi0+8UTT9c/tJrN/RKWTxO
	0greS0IMM7y9xuRaLu2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvbIn-0000wk-Jm; Thu, 08 Aug 2019 05:49:29 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvbIX-0000w3-QW
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 05:49:15 +0000
Received: by mail-ed1-f65.google.com with SMTP id w5so562493edl.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 22:49:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=hJnMSCAXvPmR1BZ+8zibfYrH0y/pT73eVvDwjd3Lsw8=;
 b=t/hz81HCWKjHiAYX118dFfXUeafhshJmmrJyn3bgIAl6ppqyC6LetDNhL6+mrMspoj
 +9GXFvawRIzooRLGuqvpNroXM4g19P5aZSdhXLNl9/QZ9PsCFqXw+hRVjIWTuG63edFM
 ER//lMf08iawE16CGI0y5vjMDKHQkk7Q9cnJhHJgOCZn3jXR4w10r2epAhmu5ZGHcpbR
 YbbAj4pC9RRin616+ReH0GTzHEWxb2kH0td2ZL6jQUuJJrKtP8oaLi7Q3DtpaeJSfkY2
 KAjGZQYBjalziFDqw93IZTYF/75h4QnmIUbaeWrmncT20xwodcg43BycgDaUBKu0gnrU
 aHHQ==
X-Gm-Message-State: APjAAAUpsyndQFiCV8pCNUk+0CtB4P48Lal898ksqDutiRZJYqjxULhq
 RsM0LouoNSr5pO2JCHoMGvuGCbxEYS0=
X-Google-Smtp-Source: APXvYqxYdDUMqzVZSdIyGIeLbZzL0eIrD0l9vx7cXDtB0QbsjJi9/V2qWhuk3IjCAqzjzfJEqD5K0Q==
X-Received: by 2002:a17:906:340e:: with SMTP id
 c14mr11989439ejb.170.1565243349572; 
 Wed, 07 Aug 2019 22:49:09 -0700 (PDT)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com.
 [209.85.128.53])
 by smtp.gmail.com with ESMTPSA id d4sm21210183edb.4.2019.08.07.22.49.08
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 07 Aug 2019 22:49:09 -0700 (PDT)
Received: by mail-wm1-f53.google.com with SMTP id s3so1090174wms.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 22:49:08 -0700 (PDT)
X-Received: by 2002:a05:600c:292:: with SMTP id
 18mr1427274wmk.51.1565243348647; 
 Wed, 07 Aug 2019 22:49:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190412120730.473-1-megous@megous.com>
 <CAGb2v66cbpsoHJoiFJkBwhZ5SbO+uO+Kf6gtnA3kPFQZq0329Q@mail.gmail.com>
 <20190806183045.edhm3qzpegscf2z7@core.my.home>
 <20190807105502.GK3600@piout.net>
In-Reply-To: <20190807105502.GK3600@piout.net>
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu, 8 Aug 2019 13:48:55 +0800
X-Gmail-Original-Message-ID: <CAGb2v64y+iUknG=h6NC_16JsiBXATim4PpX6g3OVg3G0vDjBwA@mail.gmail.com>
Message-ID: <CAGb2v64y+iUknG=h6NC_16JsiBXATim4PpX6g3OVg3G0vDjBwA@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 0/3] Add basic support for RTC on Allwinner
 H6 SoC
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_224913_869156_CF4668A9 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Alessandro Zummo <a.zummo@towertech.it>,
 devicetree <devicetree@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBBdWcgNywgMjAxOSBhdCA2OjU1IFBNIEFsZXhhbmRyZSBCZWxsb25pCjxhbGV4YW5k
cmUuYmVsbG9uaUBib290bGluLmNvbT4gd3JvdGU6Cj4KPiBIaSwKPgo+IE9uIDA2LzA4LzIwMTkg
MjA6MzA6NDUrMDIwMCwgT25kxZllaiBKaXJtYW4gd3JvdGU6Cj4gPiBNYXliZSB3aGV0aGVyIFhP
IG9yIERDWE8gaXMgdXNlZCBhbHNvIG1hdHRlcnMgaWYgeW91IHdhbnQgdG8gZG8gc29tZSBmaW5l
Cj4gPiB0dW5uaW5nIG9mIERDWE8gKGNvbnRyb2wgcmVnaXN0ZXIgaGFzIHBsZXRueSBvZiBvcHRp
b25zKSwgYnV0IHRoYXQncyBwcm9iYWJseQo+ID4gYmV0dGVyIGRvbmUgaW4gdS1ib290LiBBbmQg
dGhlcmUncyBzdGlsbCBubyBuZWVkIHRvIHJlYWQgSE9TQyBzb3VyY2UgZnJvbSBEVC4KPiA+IFRo
ZSBkcml2ZXIgY2FuIGp1c3QgY2hlY2sgY29tcGF0aWJsZSwgYW5kIGlmIGl0IGlzIEg2IGFuZCBP
U0NfQ0xLX1NSQ19TRUwgaXMgMSwKPiA+IGl0IGNhbiBkbyBpdCdzIERDWE8gdHVubmluZywgb3Ig
d2hhdGV2ZXIuIEJ1dCBuZWl0aGVyIE9TIG5vciBib290bG9hZGVyIHdpbGwKPiA+IGJlIHVzaW5n
IHRoaXMgaW5mbyB0byBnYXRlL2Rpc2FibGUgdGhlIG9zY2lhbGxhdG9yLgo+ID4KPgo+IEl0IGlz
IGFjdHVhbGx5IHVzZWZ1bCB0byBiZSBhYmxlIHRvIHR3ZWFrIHRoZSBjcnlzdGFsIHR1bmluZyBh
dAo+IHJ1bnRpbWUgdG8gYmUgYWJsZSB0byByZWR1Y2UgY2xvY2sgZHJpZnQgYW5kIGNvbXBhcmUg
d2l0aCBhIHJlbGlhYmxlCj4gc291cmNlIChlLmcuIE5UUCkuCj4gSSdtIGN1cmlvdXMsIHdoYXQg
a2luZCBvZiBvcHRpb25zIGRvZXMgdGhpcyBSVEMgaGF2ZT8KCkl0IGhhcyBvcHRpb25zIHRvIHNl
dCB0aGUgY3VycmVudCwgdHJpbSBjYXAgdmFsdWUsIGJhbmQgZ2FwIHZvbHRhZ2UsIGFuZCBhbHNv
CmNoYW5nZSB0aGUgbW9kZSB0byBqdXN0IGFjY2VwdCBhbiBleHRlcm5hbCBjbG9jayBzaWduYWws
IGluc3RlYWQgb2YgZHJpdmluZwphIGNyeXN0YWwuIFRoZSBzZXR0aW5ncyBmb3IgdGhlIGZvcm1l
ciBwYXJhbWV0ZXJzIGFyZSBub3QgZXhwbGFpbmVkIHRob3VnaC4KClNlZSBwYWdlIDM2NCBvZgpo
dHRwOi8vbGludXgtc3VueGkub3JnL0ZpbGU6QWxsd2lubmVyX0g2X1YyMDBfVXNlcl9NYW51YWxf
VjEuMS5wZGYKCkNoZW5ZdQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
