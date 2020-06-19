Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D918720020D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 08:42:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MyyIRhH/KzW1+9zqs8iCKBDdBgO974niAJmUkupBA14=; b=iuc0yOui+RdanY
	p9VagxV8vE9Y4/2J786CpEQVy2VYYIdu9CBWPvJ8ZBCr9ciB3+kruieYg6w2bbbgN+N5fTTtIU0Jh
	QBgwp9JzUonsLSxaaoZZcMtt+REwFUqswZG2mRSlNgosw40ZJseRn3I1u+oyXONcisPcQCjOcCWnR
	RhXAkPCBuVtY72Gp8gl1ycehBr+hnrXSVw33oSUVJtD0lSZ0mYvPVElkUNo+DgaE9RutwHK76qPzS
	AAYMlQYdvIoIsEYHmbBrDBLeaqlzzQNuNNenlgBSunJ+HGf67APu5eOsGY1pfa2dmZbPC2xA7vdAm
	DV0Iey9mYjyuDweakQ2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmAiq-0003HK-Dz; Fri, 19 Jun 2020 06:41:56 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmAih-0003Gx-0C
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 06:41:48 +0000
Received: by mail-wm1-x342.google.com with SMTP id f185so8035386wmf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 23:41:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=zjTgpvlZoTMqly8ZeswQThHMqwpruwtDmzNEvVZw/qQ=;
 b=vqnt56rMvv8CFA31p493VSrcPev/9lBxJ3mwGDNEJqQ+Q69v+8vNZw5F8G7bzOo7Kg
 rlOqJYsSlI/Cu98RDZCPCxqTCaGNDdGEGEOvLAOdQF6juGmAxXhjvsJUkhC0rjBMZJPn
 YEpxOrDp8z7X1s/bGM8yYn89B2lnKhUh3aCXBe8RsevQ1AyrZ2KfOdvIm/NL7zi5DNW1
 vk7ymnv5xLKTPW8MeoDMv+rmL6wC6QSu7SxTSllIltkBT3dqCkBZZTdniAYENrNMQsTg
 L/4FghH8cUAe7L2LnvldLWprP8X1EOwrJuPRPykpeUK6xwEzr43RCrU0h1dm46SvwR2V
 f50w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=zjTgpvlZoTMqly8ZeswQThHMqwpruwtDmzNEvVZw/qQ=;
 b=TLa7PwLTbMxkLTlkMuN2y6uYbizOTe6lhVy3W42gd5h4hFg3qZSLhWWwkhjABqX51r
 Onvzt2xHTbEyKVhOsmNsZFe8anSd1ZSR2lyNyHTncCUT9I0OXd3XdMjU9zGHrZtZeAYt
 bRJgVIVB1GV54hDuGohR53mnAz0EtzM07zG4Ajxr1BPMOs6baZ9jyl8kPBw8eBKqiA5Z
 UwjgbGFFfiNYceLhOgf2fHBoJ62deDEuZmXfGm1vLriEF4NBDcjaf4d03srnQ21to6R5
 wAxV1moUV2S0SOzksJr+mZ/QwhOhEzzr/fJAVh7wH3WPZbqcrkMqAP/Db62lZoG2XF4n
 aZYg==
X-Gm-Message-State: AOAM533emClaKhQAwtGA8BmHCxEQMSV33GA0tC1E6lUrbFMN0e0l2IFb
 uGhyw0LFRU2DbQE5vI2xC/LuHw==
X-Google-Smtp-Source: ABdhPJxLzoPL6ztzrQ12+0O9ZkYOHQowqhk0hClejeA2lTwZpJsYkV7bKmLIgtLySZqrkaKQ6wd8Ng==
X-Received: by 2002:a1c:4189:: with SMTP id o131mr2164427wma.110.1592548903958; 
 Thu, 18 Jun 2020 23:41:43 -0700 (PDT)
Received: from dell ([2.27.35.144])
 by smtp.gmail.com with ESMTPSA id f11sm6157182wrj.2.2020.06.18.23.41.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 23:41:43 -0700 (PDT)
Date: Fri, 19 Jun 2020 07:41:41 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH v3 1/1] mfd: Add I2C based System Configuaration (SYSCON)
 access
Message-ID: <20200619064141.GK954398@dell>
References: <20200618080223.951737-1-lee.jones@linaro.org>
 <CAK8P3a3iRmXC2jDj92QHKqyD+x_UJ7rWU_KcGt=MFOD9UW38RA@mail.gmail.com>
 <20200618100704.GC954398@dell>
 <CAGb2v67GJUzomptOzzvafcQ-wAqrJvNNeEZsY7gVQ_kByqBT8w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGb2v67GJUzomptOzzvafcQ-wAqrJvNNeEZsY7gVQ_kByqBT8w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_234147_076224_9C062E36 
X-CRM114-Status: GOOD (  28.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: DTML <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 gregkh <gregkh@linuxfoundation.org>, Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, michael@walle.cc,
 Mark Brown <broonie@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAxOSBKdW4gMjAyMCwgQ2hlbi1ZdSBUc2FpIHdyb3RlOgoKPiBPbiBUaHUsIEp1biAx
OCwgMjAyMCBhdCA2OjA3IFBNIExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+IHdyb3Rl
Ogo+ID4KPiA+IE9uIFRodSwgMTggSnVuIDIwMjAsIEFybmQgQmVyZ21hbm4gd3JvdGU6Cj4gPgo+
ID4gPiBPbiBUaHUsIEp1biAxOCwgMjAyMCBhdCAxMDowMyBBTSBMZWUgSm9uZXMgPGxlZS5qb25l
c0BsaW5hcm8ub3JnPiB3cm90ZToKPiA+ID4gPgo+ID4gPiA+IFRoZSBleGlzdGluZyBTWVNDT04g
aW1wbGVtZW50YXRpb24gb25seSBzdXBwb3J0cyBNTUlPIChtZW1vcnkgbWFwcGVkKQo+ID4gPiA+
IGFjY2Vzc2VzLCBmYWNpbGl0YXRlZCBieSBSZWdtYXAuICBUaGlzIGV4dGVuZHMgc3VwcG9ydCBm
b3IgcmVnaXN0ZXJzCj4gPiA+ID4gaGVsZCBiZWhpbmQgSTJDIGJ1c3Nlcy4KPiA+ID4gPgo+ID4g
PiA+IFNpZ25lZC1vZmYtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+Cj4gPiA+
Cj4gPiA+IFRoZSBpbXBsZW1lbnRhdGlvbiBsb29rcyBmaW5lIHRvIG1lLCBidXQgY2FuIHlvdSBl
eHBsYWluIGhvdyB0aGlzIGlzIGdvaW5nIHRvCj4gPiA+IGJlIHVzZWQsIGFuZCB3aGF0IHRoZSBh
ZHZhbnRhZ2UgaXMgb3ZlciBvcGVuLWNvZGluZyB0aGUgZGV2bV9yZWdtYXBfaW5pdF9pMmMoKQo+
ID4gPiBpbiBlYWNoIGRyaXZlciB0aGF0IHdvdWxkIHVzZSB0aGlzPwo+ID4KPiA+IERvZXMgUmVn
bWFwIGxldCB5b3UgcmVnaXN0ZXIvaW5pdGlhbGlzZSBhbiBJMkMgYWRkcmVzcyBtb3JlIHRoYW4g
b25jZT8KPiA+Cj4gPiBXaGVuIEkgYXR0ZW1wdCBpdCwgSSBnZXQ6Cj4gPgo+ID4gWyAgICAwLjUy
Mjk4OF0gaTJjIGkyYy0wOiBGYWlsZWQgdG8gcmVnaXN0ZXIgaTJjIGNsaWVudCB0bXAxMDUgYXQg
MHgzMiAoLTE2KQo+ID4gWyAgICAwLjUyMzM0MV0gaTJjIGkyYy0wOiBvZl9pMmM6IEZhaWx1cmUg
cmVnaXN0ZXJpbmcgL2J1c0A0MDAwMDAwL21vdGhlcmJvYXJkL2lvZnBnYUA3LDAwMDAwMDAwL2ky
Y0AxNjAwMC90ZW1wQDMyCj4gPiBbICAgIDAuNTIzNjkxXSBpMmMgaTJjLTA6IEZhaWxlZCB0byBj
cmVhdGUgSTJDIGRldmljZSBmb3IgL2J1c0A0MDAwMDAwL21vdGhlcmJvYXJkL2lvZnBnYUA3LDAw
MDAwMDAwL2kyY0AxNjAwMC90ZW1wQDMyCj4gPgo+ID4gPiBJcyB0aGlzIGFib3V0IHVzaW5nIHBy
b3BlciBsb2NraW5nIHRocm91Z2ggdGhlIHJlZ21hcCBmcmFtZXdvcmsgZm9yCj4gPiA+IHNoYXJl
ZCBpMmMgY2xpZW50cywgb3IgdG8gcmVkdWNlIG1lbW9yeSBjb25zdW1wdGlvbiB3aGVuIGxvdHMg
b2YgZHJpdmVycwo+ID4gPiBhY2Nlc3MgdGhlIHNhbWUgcmVnbWFwPwo+ID4KPiA+IEFsbCBvZiB0
aG9zZSB0aGluZ3MgYXJlIHZhbGlkLgo+ID4KPiA+IE15IHVzZS1jYXNlIGlzIHJlZ2FyZGluZyBN
RkRzIHNoYXJpbmcgYW4gSTJDIGludGVyZmFjZWQgYWRkcmVzcyBzcGFjZQo+ID4gd2l0aCB0aGVp
ciBjaGlsZHJlbi4KPiAKPiBJcyB0aGF0IGFuIGlzc3VlIHdpdGggdGhlIHN0YW5kYXJkIG1mZCAr
IHJlZ21hcCBwYXR0ZXJuPwoKVGhlcmUgaXMgbm8gcmVsYXRpb25zaGlwIGJldHdlZW4gTUZEIGFu
ZCBSZWdtYXAuICBJdCBpcyBub3QgbW9yZQpjbG9zZWx5IHJlbGF0ZWQgdG8gUmVnbWFwIHRoYW4g
aXQgaXMgYW55IG90aGVyIHB1YmxpYyBBUEkgcHJvdmlkZWQKd2l0aGluIHRoZSBrZXJuZWwuICAq
U29tZSogcGFyZW50IGRyaXZlcnMgaW5pdGlhbGlzZSBvbmUgbGFyZ2UsCmVuY29tcGFzc2luZyBS
ZWdtYXAgYWRkcmVzcyBzcGFjZSBhbmQgcGFzcyBpdCB0byB0aGVpciBjaGlsZHJlbiwgYnV0CnRo
aXMgaXNuJ3Qgc3VpdGFibGUgaW4gYWxsIGNhc2VzLgoKPiBGb3IgdGhlIEFYUDIweCBQTUlDcywg
d2UgcmVnaXN0ZXIgdGhlIHJlZ21hcCBpbiB0aGUgcGFyZW50IG1mZCBkcml2ZXIgWzFdLAo+IGFu
ZCBzdG9yZSB0aGF0IGluIGRldl9kYXRhIGZvciBjaGlsZCBkcml2ZXJzIHRvIGZldGNoIFsyXS4g
WW91IGNvdWxkCj4gZWFzaWx5IGp1c3QgZmV0Y2ggdGhlIHJlZ21hcCB3aXRoIGRldl9nZXRfcmVn
bWFwKCkgYW5kIGEgcG9pbnRlciB0byB0aGUKPiBwYXJlbnQgZGV2aWNlLgoKUmVtZW1iZXIsIG5v
dCBhbGwgdXNlLWNhc2VzIGFyZSB0aGUgc2FtZS4gIEp1c3QgYmVjYXVzZSB5b3VyIEgvVyBmaXRz
CndlbGwgd2l0aGluIHRoZSBjdXJyZW50IGZyYW1ld29yaywgZG9lc24ndCBtZWFuIGFsbCB3aWxs
LgoKSW5pdGlhbGlzaW5nIGluIHRoZSBwYXJlbnQgaXMgbm8gcHJvYmxlbSBpZiB0aGUgZHJpdmVy
IGlzIG1lYW5pbmdmdWwKaW4gb3RoZXIgd2F5cywgYnV0IHdoYXQgaWYgdGhhdCdzIGFsbCB0aGUg
cGFyZW50IGRyaXZlciBkb2VzPyAgSW4KdGhlc2UgY2FzZXMgU3lzY29uIGNhbiBiZSB1c2VkIGlu
c3RlYWQsIHJlbmRlcmluZyB0aGUgZHJpdmVyCnN1cGVyZmx1b3VzLiBNZWFuaW5nIGl0IGNhbiAo
YW5kICpzaG91bGQqKSB0aGVuIGJlIG9taXR0ZWQuCgo+ID4gPiBNeSBpbXByZXNzaW9uIG9mIHRo
ZSBleGlzdGluZyBzeXNjb24gY29kZSBpcyB0aGF0IHRoZSBtYWluIHZhbHVlLWFkZCBvdmVyCj4g
PiA+IG90aGVyIHdheXMgb2YgZG9pbmcgdGhlIHNhbWUgaXMgdGhlIHN5c2Nvbl9yZWdtYXBfbG9v
a3VwX2J5X3BoYW5kbGUoKQo+ID4gPiBpbnRlcmZhY2UgdGhhdCBnaXZlcyBvdGhlciBkcml2ZXJz
IGEgbXVjaCBzaW1wbGVyIHdheSBvZiBnZXR0aW5nIHRoZQo+ID4gPiByZWdtYXAganVzdCBiYXNl
ZCBvbiB0aGUgRFQgbm9kZS4gQXJlIHlvdSBwbGFubmluZyB0byBhZGQgc29tZXRoaW5nCj4gPiA+
IGxpa2UgdGhhdCBoZXJlIGFzIHdlbGw/IEFuIGlkZWFsIGRyaXZlciBpbnRlcmZhY2UgbWlnaHQg
YWxsb3cKPiA+ID4gc3lzY29uX3JlZ21hcF9sb29rdXBfYnlfcGhhbmRsZSgpIHRvIHdvcmsgZm9y
IGJvdGggbW1pbyBhbmQgaTJjCj4gPiA+IGJhc2VkIHN5c2NvbnMsIG9yIGFkZGl0aW9uYWwgb25l
cyBhcyB3ZWxsLCBidXQgaW1wbGVtZW50aW5nIHRoaXMgd291bGQKPiA+ID4gYmUgcmF0aGVyIHRy
aWNreSB3aGVuIHRoZSBpMmMgY29yZSBpcyBhIGxvYWRhYmxlIG1vZHVsZS4KPiAKPiBUaGUgY3Vy
cmVudCBNTUlPIHN5c2NvbiBpcyBkZWNvdXBsZWQgZnJvbSB0aGUgRE0sIGFuZCB0aGVyZSBpcyBu
byB3YXkKPiBmb3IgZHJpdmVycyB0byBleHBvcnQgb3IgcmVnaXN0ZXIgYSBzeXNjb24sIG1lYW5p
bmcgSSBoYXZlIHRvIG9wZW4gY29kZQo+IHN5c2Nvbl9yZWdtYXBfbG9va3VwX2J5X3BoYW5kbGUo
KSBbM10gaWYgSSB3YW50IHRvIG9ubHkgZXhwb3NlIGNlcnRhaW4KPiByZWdpc3RlcnMgYW5kIG5v
dCB0aGUgZnVsbCBhZGRyZXNzIHJhbmdlLCBvciBpZiBJIHdhbnQgdG8gc2hhcmUgdGhlCj4gcmVn
bWFwIHdpdGggdGhlIGV4aXN0aW5nIGRyaXZlciAoZm9yIGxvY2tpbmcgcHVycG9zZXMpLCBvciBi
b3RoIFs0XS4KCk5vdCBzdXJlIEkgdW5kZXJzdGFuZCB0aGUgcHJvYmxlbS4KCkNvdWxkIHlvdSBl
eHBsYWluIHdoeSB0aGUgY3VycmVudCBpbXBsZW1lbnRhdGlvbiBkb2Vzbid0IHdvcmsgZm9yIHlv
dT8KCk9wZW4gY29kaW5nIHlvdXIgb3duIGltcGxlbWVudGF0aW9uIG9mIFN5c2NvbiBpcyBub24t
b3B0aW1hbC4KCj4gTWF5YmUgdGhlcmUncyByb29tIGZvciBpbXByb3ZlbWVudCBoZXJlPyBUaGUg
c2FtZSBhcHBsaWVzIHRvIHRoZSBuZXcKPiBJMkMgY2FzZSwgYW5kIGxpa2VseSBhbnkgb3RoZXIg
ZnV0dXJlIHN5c2NvbiB2YXJpYW50cy4KPiAKPiBJTUhPIHBlb3BsZSBhcmUgZ2V0dGluZyBpdCB3
cm9uZyBpZiB0aGV5IGhhdmUgYm90aCBhIHN5c2NvbiBhbmQgYSBkcml2ZXIKPiBmb3IgdGhlIHNh
bWUgZGV2aWNlLgoKU3lzY29uIGlzIGp1c3QgYSBtZWFucyB0byBvYnRhaW4gYSBncm91cCBvZiBy
ZWdpc3RlcnMgZWl0aGVyIGEpCndpdGhvdXQgYSBkZWRpY2F0ZWQgZHJpdmVyIE9SIGIpIHRvIHNo
YXJlIGFtb25nc3QgbW9yZSB0aGFuIDEsCnBvdGVudGlhbGx5IHVucmVsYXRlZCwgdXNlci4gIFNv
IGluIHRoZSBjYXNlIG9mIGEpIHdoaWNoIGFwcGVhcnMgdG8Kc2l0IHdlbGwgd2l0aC1pbiB5b3Vy
IHVzZS1jYXNlIGFuZCBleHBlY3RhdGlvbnMsIHlvdSBhcmUgY29ycmVjdC4KV2hlcmVhcyBpbiB0
aGUgY2FzZSBvZiBiKSB5b3UgYXJlIG5vdC4KCkkgaG9wZSB0aGF0IGhlbHBzIGNsYXJpdHkgdGhl
IHNpdHVhdGlvbiBzb21ld2hhdC4KCj4gPiBJIGV4cGVjdCB0aGUgQVBJIHdvdWxkIGJlIGV4cGFu
ZGVkIHRvIGNvdmVyIG90aGVyIHVzZS1jYXNlcy4gIFRoaXMgaXMKPiA+IGEgYmFyZSBib25lcyBp
bXBsZW1lbnRhdGlvbiB3aGljaCBoYXMgYmVlbiBrZXB0IGFzIGF0b21pYyBhcyBwb3NzaWJsZQo+
ID4gZm9yIGVhc2Ugb2YgcmV2aWV3Lgo+IAo+IFJlZ2FyZHMKPiBDaGVuWXUKPiAKPiBbMV0gaHR0
cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvbGF0ZXN0L3NvdXJjZS9kcml2ZXJzL21mZC9h
eHAyMHgtaTJjLmMjTDQzCj4gWzJdIGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L2xh
dGVzdC9zb3VyY2UvZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtYXhwMjA5LmMjTDQzMwo+IFszXSBo
dHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC9sYXRlc3Qvc291cmNlL2RyaXZlcnMvbmV0
L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL2R3bWFjLXN1bjhpLmMjTDEwOTMKPiBbNF0gaHR0cHM6
Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvbGF0ZXN0L3NvdXJjZS9kcml2ZXJzL2Nsay9zdW54
aS1uZy9jY3Utc3VuOGktcjQwLmMjTDEzMzMKCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KU2Vu
aW9yIFRlY2huaWNhbCBMZWFkIC0gRGV2ZWxvcGVyIFNlcnZpY2VzCkxpbmFyby5vcmcg4pSCIE9w
ZW4gc291cmNlIHNvZnR3YXJlIGZvciBBcm0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8
IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
