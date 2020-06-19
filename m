Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1352004AC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 11:08:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZdwmZ4OmzlqYHTfPmD2ydk+d/TPmOe0r6w/0vM7XsDM=; b=DYB60ke6XvHZgv
	+ZbSK+hPmh9ieLZzVnyifpKNAW5Q7yRibEIA/q/OmixzKjSIWW74yb1XPUUUbG3TgwAOS4YBXar2m
	GGw2JePXiQWwt4cOhGij5Y5bi6BFaIoBUOBaVpqj40/9uVPKSFwa1Os7snD8APGJ3uHwObWYaGeSf
	0EOVkySqb+PHPWvjmpYH1kITO9sdw5tSZPIefshTujpr+B5CJcL2DIEGGuKr7jxFsEuhOO8E/hT1F
	7KHhHNplLmSrkPggdMFQP+17l3YigGtuG69O+90QP66589Xa8h7YAaSlTE5sjN0INpJgVCO1bdOoy
	vER+o/UUmqWuXpY62XjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmD0U-0004pg-Am; Fri, 19 Jun 2020 09:08:18 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmCzG-0003rs-Nh
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 09:07:05 +0000
Received: by mail-wr1-x444.google.com with SMTP id b6so8905921wrs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 02:07:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=An0/1Yz6hizQTR4fj1ifS1TO4fEjpitZbgWOcyK/IZY=;
 b=xoWK/3kNajghFrZozDbLkZ+9+1h4rMZRk4i/g1WFQfGERECbt04srXH5UJiGrrbyKu
 h9LnBp9ynJIbsmyXcVy6mZmjnjmoawF0OI4WWZTtX7qllMcrF1Q82TpgA9Ldf0b9TY54
 PCEtzLpxZsJSzyvXo5nZIzHAW+IT0av9VSakipBADy4JSffgRW7dlODsp4Ipw9fSjPHz
 Zlft2GrVjOwhXt3+if3NEAqx/2zfC8NPd2shaYvo5p8c3MRL/WQH9t9UBCHdNshXkpsm
 IBMT/ylXZAGudAqfbOO7vXR6sQBQ49XrgUHCZ/r3uZ+Dx3iBfk8YDVKK97nveHNxpcUo
 iw8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=An0/1Yz6hizQTR4fj1ifS1TO4fEjpitZbgWOcyK/IZY=;
 b=YDWP5kUV2izXIJBR6lS34LJFkruFMDiHu+kdNYMTUsMHi4Me7ajKgQTphZ4KnzfBWD
 E95k6gmVKOyy0dYewcxAuC7hLEfoDt8NLT8Mrd4We1Zd3ZAzoZBcnPbcpM9cDflJh+sJ
 LOg2l+LrRvix9PRAYGPrAlf5m6hDkdbFs6CtArCgnFYoCNv73lnaLhcVAahDaojrBLqR
 jcxKyX8fTZm9EI+Tx48b7tByovFF4Fpy3NwkaGkvo/+lDUMqU+M9yY0GCFfjS0FrcPeE
 TsgUEDKp5Fs9wZmhhbU99VP5I64tYXDlOzLBU+VU+zxlrydsdAKVEqPArmhDWhAXKB8T
 DVuw==
X-Gm-Message-State: AOAM531hjGvuHYYlXD026oF1Ucpgc6qyy3mmXsog1Am/rDhDJh1AcHRc
 yCBgJCSRENh3UvJCfFc3oDs/BQ==
X-Google-Smtp-Source: ABdhPJya5CT4h4LEpPiFHKoiDP1NdZBtAKWO81GUFvApmmIdbuZgnssYXSgixGojtFmF7wmOkDbpXA==
X-Received: by 2002:a5d:4a8a:: with SMTP id o10mr2934774wrq.222.1592557620112; 
 Fri, 19 Jun 2020 02:07:00 -0700 (PDT)
Received: from dell ([2.27.35.144])
 by smtp.gmail.com with ESMTPSA id b18sm6376150wrn.88.2020.06.19.02.06.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 02:06:59 -0700 (PDT)
Date: Fri, 19 Jun 2020 10:06:57 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH v3 1/1] mfd: Add I2C based System Configuaration (SYSCON)
 access
Message-ID: <20200619090657.GL954398@dell>
References: <20200618080223.951737-1-lee.jones@linaro.org>
 <CAK8P3a3iRmXC2jDj92QHKqyD+x_UJ7rWU_KcGt=MFOD9UW38RA@mail.gmail.com>
 <20200618100704.GC954398@dell>
 <CAGb2v67GJUzomptOzzvafcQ-wAqrJvNNeEZsY7gVQ_kByqBT8w@mail.gmail.com>
 <20200619064141.GK954398@dell>
 <CAGb2v65aAAegOCdMYF=VkTT8pWwuT9d=mhVKCSwztecMJa-ung@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGb2v65aAAegOCdMYF=VkTT8pWwuT9d=mhVKCSwztecMJa-ung@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_020702_840669_28490082 
X-CRM114-Status: GOOD (  37.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

T24gRnJpLCAxOSBKdW4gMjAyMCwgQ2hlbi1ZdSBUc2FpIHdyb3RlOgoKPiBPbiBGcmksIEp1biAx
OSwgMjAyMCBhdCAyOjQxIFBNIExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+IHdyb3Rl
Ogo+ID4KPiA+IE9uIEZyaSwgMTkgSnVuIDIwMjAsIENoZW4tWXUgVHNhaSB3cm90ZToKPiA+Cj4g
PiA+IE9uIFRodSwgSnVuIDE4LCAyMDIwIGF0IDY6MDcgUE0gTGVlIEpvbmVzIDxsZWUuam9uZXNA
bGluYXJvLm9yZz4gd3JvdGU6Cj4gPiA+ID4KPiA+ID4gPiBPbiBUaHUsIDE4IEp1biAyMDIwLCBB
cm5kIEJlcmdtYW5uIHdyb3RlOgo+ID4gPiA+Cj4gPiA+ID4gPiBPbiBUaHUsIEp1biAxOCwgMjAy
MCBhdCAxMDowMyBBTSBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPiB3cm90ZToKPiA+
ID4gPiA+ID4KPiA+ID4gPiA+ID4gVGhlIGV4aXN0aW5nIFNZU0NPTiBpbXBsZW1lbnRhdGlvbiBv
bmx5IHN1cHBvcnRzIE1NSU8gKG1lbW9yeSBtYXBwZWQpCj4gPiA+ID4gPiA+IGFjY2Vzc2VzLCBm
YWNpbGl0YXRlZCBieSBSZWdtYXAuICBUaGlzIGV4dGVuZHMgc3VwcG9ydCBmb3IgcmVnaXN0ZXJz
Cj4gPiA+ID4gPiA+IGhlbGQgYmVoaW5kIEkyQyBidXNzZXMuCj4gPiA+ID4gPiA+Cj4gPiA+ID4g
PiA+IFNpZ25lZC1vZmYtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+Cj4gPiA+
ID4gPgo+ID4gPiA+ID4gVGhlIGltcGxlbWVudGF0aW9uIGxvb2tzIGZpbmUgdG8gbWUsIGJ1dCBj
YW4geW91IGV4cGxhaW4gaG93IHRoaXMgaXMgZ29pbmcgdG8KPiA+ID4gPiA+IGJlIHVzZWQsIGFu
ZCB3aGF0IHRoZSBhZHZhbnRhZ2UgaXMgb3ZlciBvcGVuLWNvZGluZyB0aGUgZGV2bV9yZWdtYXBf
aW5pdF9pMmMoKQo+ID4gPiA+ID4gaW4gZWFjaCBkcml2ZXIgdGhhdCB3b3VsZCB1c2UgdGhpcz8K
PiA+ID4gPgo+ID4gPiA+IERvZXMgUmVnbWFwIGxldCB5b3UgcmVnaXN0ZXIvaW5pdGlhbGlzZSBh
biBJMkMgYWRkcmVzcyBtb3JlIHRoYW4gb25jZT8KPiA+ID4gPgo+ID4gPiA+IFdoZW4gSSBhdHRl
bXB0IGl0LCBJIGdldDoKPiA+ID4gPgo+ID4gPiA+IFsgICAgMC41MjI5ODhdIGkyYyBpMmMtMDog
RmFpbGVkIHRvIHJlZ2lzdGVyIGkyYyBjbGllbnQgdG1wMTA1IGF0IDB4MzIgKC0xNikKPiA+ID4g
PiBbICAgIDAuNTIzMzQxXSBpMmMgaTJjLTA6IG9mX2kyYzogRmFpbHVyZSByZWdpc3RlcmluZyAv
YnVzQDQwMDAwMDAvbW90aGVyYm9hcmQvaW9mcGdhQDcsMDAwMDAwMDAvaTJjQDE2MDAwL3RlbXBA
MzIKPiA+ID4gPiBbICAgIDAuNTIzNjkxXSBpMmMgaTJjLTA6IEZhaWxlZCB0byBjcmVhdGUgSTJD
IGRldmljZSBmb3IgL2J1c0A0MDAwMDAwL21vdGhlcmJvYXJkL2lvZnBnYUA3LDAwMDAwMDAwL2ky
Y0AxNjAwMC90ZW1wQDMyCj4gPiA+ID4KPiA+ID4gPiA+IElzIHRoaXMgYWJvdXQgdXNpbmcgcHJv
cGVyIGxvY2tpbmcgdGhyb3VnaCB0aGUgcmVnbWFwIGZyYW1ld29yayBmb3IKPiA+ID4gPiA+IHNo
YXJlZCBpMmMgY2xpZW50cywgb3IgdG8gcmVkdWNlIG1lbW9yeSBjb25zdW1wdGlvbiB3aGVuIGxv
dHMgb2YgZHJpdmVycwo+ID4gPiA+ID4gYWNjZXNzIHRoZSBzYW1lIHJlZ21hcD8KPiA+ID4gPgo+
ID4gPiA+IEFsbCBvZiB0aG9zZSB0aGluZ3MgYXJlIHZhbGlkLgo+ID4gPiA+Cj4gPiA+ID4gTXkg
dXNlLWNhc2UgaXMgcmVnYXJkaW5nIE1GRHMgc2hhcmluZyBhbiBJMkMgaW50ZXJmYWNlZCBhZGRy
ZXNzIHNwYWNlCj4gPiA+ID4gd2l0aCB0aGVpciBjaGlsZHJlbi4KPiA+ID4KPiA+ID4gSXMgdGhh
dCBhbiBpc3N1ZSB3aXRoIHRoZSBzdGFuZGFyZCBtZmQgKyByZWdtYXAgcGF0dGVybj8KPiA+Cj4g
PiBUaGVyZSBpcyBubyByZWxhdGlvbnNoaXAgYmV0d2VlbiBNRkQgYW5kIFJlZ21hcC4gIEl0IGlz
IG5vdCBtb3JlCj4gPiBjbG9zZWx5IHJlbGF0ZWQgdG8gUmVnbWFwIHRoYW4gaXQgaXMgYW55IG90
aGVyIHB1YmxpYyBBUEkgcHJvdmlkZWQKPiA+IHdpdGhpbiB0aGUga2VybmVsLiAgKlNvbWUqIHBh
cmVudCBkcml2ZXJzIGluaXRpYWxpc2Ugb25lIGxhcmdlLAo+ID4gZW5jb21wYXNzaW5nIFJlZ21h
cCBhZGRyZXNzIHNwYWNlIGFuZCBwYXNzIGl0IHRvIHRoZWlyIGNoaWxkcmVuLCBidXQKPiA+IHRo
aXMgaXNuJ3Qgc3VpdGFibGUgaW4gYWxsIGNhc2VzLgo+ID4KPiA+ID4gRm9yIHRoZSBBWFAyMHgg
UE1JQ3MsIHdlIHJlZ2lzdGVyIHRoZSByZWdtYXAgaW4gdGhlIHBhcmVudCBtZmQgZHJpdmVyIFsx
XSwKPiA+ID4gYW5kIHN0b3JlIHRoYXQgaW4gZGV2X2RhdGEgZm9yIGNoaWxkIGRyaXZlcnMgdG8g
ZmV0Y2ggWzJdLiBZb3UgY291bGQKPiA+ID4gZWFzaWx5IGp1c3QgZmV0Y2ggdGhlIHJlZ21hcCB3
aXRoIGRldl9nZXRfcmVnbWFwKCkgYW5kIGEgcG9pbnRlciB0byB0aGUKPiA+ID4gcGFyZW50IGRl
dmljZS4KPiA+Cj4gPiBSZW1lbWJlciwgbm90IGFsbCB1c2UtY2FzZXMgYXJlIHRoZSBzYW1lLiAg
SnVzdCBiZWNhdXNlIHlvdXIgSC9XIGZpdHMKPiA+IHdlbGwgd2l0aGluIHRoZSBjdXJyZW50IGZy
YW1ld29yaywgZG9lc24ndCBtZWFuIGFsbCB3aWxsLgo+ID4KPiA+IEluaXRpYWxpc2luZyBpbiB0
aGUgcGFyZW50IGlzIG5vIHByb2JsZW0gaWYgdGhlIGRyaXZlciBpcyBtZWFuaW5nZnVsCj4gPiBp
biBvdGhlciB3YXlzLCBidXQgd2hhdCBpZiB0aGF0J3MgYWxsIHRoZSBwYXJlbnQgZHJpdmVyIGRv
ZXM/ICBJbgo+ID4gdGhlc2UgY2FzZXMgU3lzY29uIGNhbiBiZSB1c2VkIGluc3RlYWQsIHJlbmRl
cmluZyB0aGUgZHJpdmVyCj4gPiBzdXBlcmZsdW91cy4gTWVhbmluZyBpdCBjYW4gKGFuZCAqc2hv
dWxkKikgdGhlbiBiZSBvbWl0dGVkLgo+IAo+IEknbSBndWVzc2luZyBpbiB5b3VyIHVzZSBjYXNl
IHRoZXJlIGlzbid0IGEgbmVlZCBmb3IgYSBwYXJlbnQgZHJpdmVyLAo+IGFuZCB5b3UgYXJlIGxv
b2tpbmcgZm9yIHNvbWV0aGluZyBsaWtlICJzaW1wbGUtbWZkIiwgYnV0IGZvciBsaXN0aW5nCj4g
c3ViLWRldmljZXMgd2l0aGluIGFuIEkyQyBzbGF2ZSBkZXZpY2U/IEluIHRoYXQgY2FzZSBJIHVu
ZGVyc3RhbmQuCgpCaW5nbyEKCkFjdHVhbGx5IHRoaXMgd2lsbCBiZSB1c2VkICp3aXRoKiAic2lt
cGxlLW1mZCIuICAic2ltcGxlLW1mZCIgd2lsbAplbnN1cmUgdGhlIHN1Yi1kZXZpY2VzIGFyZSBw
cm9iZWQgYW5kICJzeXNjb24iIHdpbGwgYWxsb3cgdGhlbSB0bwpzaGFyZSBhbiBhZGRyZXNzIHNw
YWNlLiAgVGhpcyBpcyBjdXJyZW50bHkgcG9zc2libGUgZm9yIE1NSU8sIGJ1dCBub3QKc28gZm9y
IHJlZ2lzdGVyIG1hcHMgbG9jYXRlZCBiZWhpbmQgYW4gSTJDIGludGVyZmFjZS4KCj4gPiA+ID4g
PiBNeSBpbXByZXNzaW9uIG9mIHRoZSBleGlzdGluZyBzeXNjb24gY29kZSBpcyB0aGF0IHRoZSBt
YWluIHZhbHVlLWFkZCBvdmVyCj4gPiA+ID4gPiBvdGhlciB3YXlzIG9mIGRvaW5nIHRoZSBzYW1l
IGlzIHRoZSBzeXNjb25fcmVnbWFwX2xvb2t1cF9ieV9waGFuZGxlKCkKPiA+ID4gPiA+IGludGVy
ZmFjZSB0aGF0IGdpdmVzIG90aGVyIGRyaXZlcnMgYSBtdWNoIHNpbXBsZXIgd2F5IG9mIGdldHRp
bmcgdGhlCj4gPiA+ID4gPiByZWdtYXAganVzdCBiYXNlZCBvbiB0aGUgRFQgbm9kZS4gQXJlIHlv
dSBwbGFubmluZyB0byBhZGQgc29tZXRoaW5nCj4gPiA+ID4gPiBsaWtlIHRoYXQgaGVyZSBhcyB3
ZWxsPyBBbiBpZGVhbCBkcml2ZXIgaW50ZXJmYWNlIG1pZ2h0IGFsbG93Cj4gPiA+ID4gPiBzeXNj
b25fcmVnbWFwX2xvb2t1cF9ieV9waGFuZGxlKCkgdG8gd29yayBmb3IgYm90aCBtbWlvIGFuZCBp
MmMKPiA+ID4gPiA+IGJhc2VkIHN5c2NvbnMsIG9yIGFkZGl0aW9uYWwgb25lcyBhcyB3ZWxsLCBi
dXQgaW1wbGVtZW50aW5nIHRoaXMgd291bGQKPiA+ID4gPiA+IGJlIHJhdGhlciB0cmlja3kgd2hl
biB0aGUgaTJjIGNvcmUgaXMgYSBsb2FkYWJsZSBtb2R1bGUuCj4gPiA+Cj4gPiA+IFRoZSBjdXJy
ZW50IE1NSU8gc3lzY29uIGlzIGRlY291cGxlZCBmcm9tIHRoZSBETSwgYW5kIHRoZXJlIGlzIG5v
IHdheQo+ID4gPiBmb3IgZHJpdmVycyB0byBleHBvcnQgb3IgcmVnaXN0ZXIgYSBzeXNjb24sIG1l
YW5pbmcgSSBoYXZlIHRvIG9wZW4gY29kZQo+ID4gPiBzeXNjb25fcmVnbWFwX2xvb2t1cF9ieV9w
aGFuZGxlKCkgWzNdIGlmIEkgd2FudCB0byBvbmx5IGV4cG9zZSBjZXJ0YWluCj4gPiA+IHJlZ2lz
dGVycyBhbmQgbm90IHRoZSBmdWxsIGFkZHJlc3MgcmFuZ2UsIG9yIGlmIEkgd2FudCB0byBzaGFy
ZSB0aGUKPiA+ID4gcmVnbWFwIHdpdGggdGhlIGV4aXN0aW5nIGRyaXZlciAoZm9yIGxvY2tpbmcg
cHVycG9zZXMpLCBvciBib3RoIFs0XS4KPiA+Cj4gPiBOb3Qgc3VyZSBJIHVuZGVyc3RhbmQgdGhl
IHByb2JsZW0uCj4gPgo+ID4gQ291bGQgeW91IGV4cGxhaW4gd2h5IHRoZSBjdXJyZW50IGltcGxl
bWVudGF0aW9uIGRvZXNuJ3Qgd29yayBmb3IgeW91Pwo+ID4KPiA+IE9wZW4gY29kaW5nIHlvdXIg
b3duIGltcGxlbWVudGF0aW9uIG9mIFN5c2NvbiBpcyBub24tb3B0aW1hbC4KPiAKPiBGb3IgdGhl
IERXTUFDIEV0aGVybmV0IGNvbnRyb2xsZXJzLCB0aGUgcGxhdGZvcm0gZ2x1ZSBhbG1vc3QgYWx3
YXlzIGhhcwo+IGEgcmVnaXN0ZXIgZm9yIHR1bmluZyB0aGUgZGVsYXlzIG9mIHRoZSBUWCBhbmQg
UlggY2xvY2tzLiBJbiBhbG1vc3QgYWxsCj4gbGF0ZXIgQWxsd2lubmVyIGNoaXBzLCB0aGlzIGlz
IGluIGEgc2VwYXJhdGUgYXJlYSwgd2hpY2ggd2UgdXNlIGEgc3lzY29uCj4gZm9yLiBIb3dldmVy
IGluIG9uZSBoeWJyaWQgY2hpcCwgdGhpcyBpcyBsb2NhdGVkIGluIHRoZSBjbG9jayBjb250cm9s
bGVyLgo+IFdlIGRlZW1lZCBpdCByaXNreSB0byBhbHNvIGhhdmUgdGhlIHdob2xlIGNsb2NrIGNv
bnRyb2xsZXIgYWRkcmVzcyByYW5nZQo+IG1hcHBlZCBhcyBhIHN5c2NvbiwgYW5kIHNvIHdlIGV4
cG9ydCBhIGN1c3RvbSByZWdtYXAuCj4gCj4gVGhlIEV0aGVybmV0IGRyaXZlciBoYXMgdG8gZGVh
bCB3aXRoIGJvdGggY2FzZXMuCj4gCj4gTG9va2luZyBhdCBpdCBhZ2Fpbiwgc2luY2Ugc3lzY29u
IHN0aWxsIGhhcyBhIHBsYXRmb3JtIGRyaXZlciwgbWF5YmUgSQo+IHNob3VsZCBqdXN0IHVzZSB0
aGUgZGV2X2dldF9yZWdtYXAoKSByb3V0ZSBmb3IgYm90aCBjYXNlcy4KPiAKPiA+ID4gTWF5YmUg
dGhlcmUncyByb29tIGZvciBpbXByb3ZlbWVudCBoZXJlPyBUaGUgc2FtZSBhcHBsaWVzIHRvIHRo
ZSBuZXcKPiA+ID4gSTJDIGNhc2UsIGFuZCBsaWtlbHkgYW55IG90aGVyIGZ1dHVyZSBzeXNjb24g
dmFyaWFudHMuCj4gPiA+Cj4gPiA+IElNSE8gcGVvcGxlIGFyZSBnZXR0aW5nIGl0IHdyb25nIGlm
IHRoZXkgaGF2ZSBib3RoIGEgc3lzY29uIGFuZCBhIGRyaXZlcgo+ID4gPiBmb3IgdGhlIHNhbWUg
ZGV2aWNlLgo+ID4KPiA+IFN5c2NvbiBpcyBqdXN0IGEgbWVhbnMgdG8gb2J0YWluIGEgZ3JvdXAg
b2YgcmVnaXN0ZXJzIGVpdGhlciBhKQo+ID4gd2l0aG91dCBhIGRlZGljYXRlZCBkcml2ZXIgT1Ig
YikgdG8gc2hhcmUgYW1vbmdzdCBtb3JlIHRoYW4gMSwKPiA+IHBvdGVudGlhbGx5IHVucmVsYXRl
ZCwgdXNlci4gIFNvIGluIHRoZSBjYXNlIG9mIGEpIHdoaWNoIGFwcGVhcnMgdG8KPiA+IHNpdCB3
ZWxsIHdpdGgtaW4geW91ciB1c2UtY2FzZSBhbmQgZXhwZWN0YXRpb25zLCB5b3UgYXJlIGNvcnJl
Y3QuCj4gPiBXaGVyZWFzIGluIHRoZSBjYXNlIG9mIGIpIHlvdSBhcmUgbm90Lgo+ID4KPiA+IEkg
aG9wZSB0aGF0IGhlbHBzIGNsYXJpdHkgdGhlIHNpdHVhdGlvbiBzb21ld2hhdC4KPiAKPiBUaGUg
Y29uY2VybiB3YXMgbW9zdGx5IGR1ZSB0byB0aGUgY29tbWl0IG1lc3NhZ2Ugb2YKPiAKPiAgICAg
YmRiMDA2NmRmOTZlIG1mZDogc3lzY29uOiBEZWNvdXBsZSBzeXNjb24gaW50ZXJmYWNlIGZyb20g
cGxhdGZvcm0gZGV2aWNlcwo+IAo+IHdoaWNoIG1lbnRpb25zCj4gCj4gICAgdGhlcmUgaXMgYSBu
ZWVkIHRvIGhhdmUgYSBkZWRpY2F0ZWQgZHJpdmVyIGZvciBzdWNoIHN5c3RlbSBjb250cm9sbGVy
Cj4gICAgYnV0IGFsc28gc2hhcmUgcmVnaXN0ZXJzIHdpdGggb3RoZXIgZHJpdmVycy4gVGhlIGxh
dHRlciBpcyB3aGVyZSB0aGUKPiAgICBzeXNjb24gaW50ZXJmYWNlIGlzIGhlbHBmdWwuCj4gCj4g
QnV0IGRvZXMgbm90IHByb3ZpZGUgYW55IHNvcnQgb2YgY29vcmRpbmF0aW9uIGJldHdlZW4gdGhl
IGRlZGljYXRlZCBkcml2ZXIKPiBhbmQgdGhlIHN5c2Nvbi4gSSBzdXBwb3NlIHRoZSBpbnRlbnRp
b24gbWlnaHQgaGF2ZSBiZWVuIHRoYXQgdGhlIGRyaXZlcgo+IHdvdWxkIGdldCBhIHN5c2NvbiB1
c2luZyBpdHMgb3duIGRldmljZSBub2RlLiBXZSBhdm9pZGVkIHRoYXQgYnV0IEkgd29uZGVyCj4g
aWYgdGhlIGV4dHJhIGNvZGUgaXMgd29ydGggaXQgb3Igbm90LiBPdGhlciBwbGF0Zm9ybXMgc2Vl
bSB0byBkbyBvay4KCldoYXQgc29ydCBvZiBjby1vcmRpbmF0aW9uIGRvIHlvdSByZXF1aXJlIGJl
eW9uZCB3aGF0IGlzIG9mZmVyZWQ/Cgo+IFRoYW5rIHlvdSBmb3IgaGVscGluZyBtZSBjbGVhciB0
aGluZ3MgdXAuCgpOZXZlciBhIHByb2JsZW0uCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dClNl
bmlvciBUZWNobmljYWwgTGVhZCAtIERldmVsb3BlciBTZXJ2aWNlcwpMaW5hcm8ub3JnIOKUgiBP
cGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQXJtIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sg
fCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
