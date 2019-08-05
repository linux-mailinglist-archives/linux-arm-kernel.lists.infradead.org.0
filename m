Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1BFF81816
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 13:22:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Xbl63YzQm+SCP2vHYMaZv/iKd0oKpRND/nbHWpL2kxA=; b=c0wby0OLWyHqLzfTfjGMh0VhTd
	zIyquBPJWAlcDmq2qbkDQ46NYbYEttvtK+qgeCBmTHEz0ApP4TMWwMnyxQZvCADRR9KEOlJ0iusJy
	I2eSCsvZannQtjuoqk+c/ECZ90ZnikQnvTafgWgC5HRiHhsBF+1axxT/NTDGIUUSpxRzgTXTFJ5V7
	AHklum56JhqY9AlmCY47rNJFpkbMfcJDyCw1ri/w/FQ17DDR3tSZwAYyNdeqyjWg6oInBMZAc57Z0
	NmXySACIJWvX43l92j/M00sVfQBC1ztswXHV7NrxGf0sVzJmBBRLhLHrBj2sEyMVGtdu2lAFXMOZd
	lb8+O9Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hub4T-00021l-QJ; Mon, 05 Aug 2019 11:22:34 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hub4A-0001tX-5h
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 11:22:16 +0000
Received: by mail-ed1-f66.google.com with SMTP id r12so43513887edo.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 04:22:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=POTNxP3AjMTaPkdeyyx4Dxti+m69fQ7c9W1amjBaX2U=;
 b=LAD9jPkyJx4jmEHRcqCpNSfJKqgkGRd88uIX2yOSGgyEtzd47NKrF3tG2as7WYcbFS
 mnrjrMkXggoTLPd+pDjbK/Ezz/UHokfq5LtcsOAy43M/HL6tyfw2F4D2P2nlpBzq/4Er
 wgNxlBiAJNvyFpe/F0YtK52hz0UvCIAPPpO1XrRwmr6rrg/dbd60hLhGVbs01JDwH8sU
 YA7ukLF/RoUE3Ys3U7O9N9tnp8yPnoq5+N47syoNPthBERowxAKgDMiOHTp3NQ/K+mtE
 2A6dSoefQ6lDYoRfGWbzIz4q9g/LbEMN5yiZy3P+M7CB/rhPVFtVXjXMuYl4157SXjHo
 ZM9A==
X-Gm-Message-State: APjAAAXGFGL/jHqnjbSQEa1LXY+Y+k5PXceTAcQbIsjvgiXNWketx/On
 /7GBRteBhpp5UMMMXmJ/0+Kqpq1t8wk=
X-Google-Smtp-Source: APXvYqxFU3vKgDm+Gr29EHMnQKRhJtIcRuz/lxNmngxkb40lqf4bi2OaTnW/RT3BTvK34fA16GbinQ==
X-Received: by 2002:a17:906:914:: with SMTP id
 i20mr50374170ejd.213.1565004130347; 
 Mon, 05 Aug 2019 04:22:10 -0700 (PDT)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com.
 [209.85.128.47])
 by smtp.gmail.com with ESMTPSA id g3sm19715384edh.24.2019.08.05.04.22.09
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 04:22:09 -0700 (PDT)
Received: by mail-wm1-f47.google.com with SMTP id p74so74330143wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 04:22:09 -0700 (PDT)
X-Received: by 2002:a05:600c:21d4:: with SMTP id
 x20mr16976082wmj.61.1565004129249; 
 Mon, 05 Aug 2019 04:22:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190412120730.473-1-megous@megous.com>
 <20190412120730.473-3-megous@megous.com>
 <CAGb2v675j-aCLMgPJOzr9yx1XxsUvHRr_K7VnL=p8mSdwpu2jw@mail.gmail.com>
 <20190805104529.z3mex3m2tss7lzlr@core.my.home>
 <CAGb2v67pcxdxjdRX_HN4133A32eA566DDtUJUKV7pqzxDtOaeg@mail.gmail.com>
 <20190805111037.76vmanzcurffpbdf@core.my.home>
In-Reply-To: <20190805111037.76vmanzcurffpbdf@core.my.home>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 5 Aug 2019 19:21:55 +0800
X-Gmail-Original-Message-ID: <CAGb2v65vEK0k3grQyXzzJ0mTXNZZQxg1FPAES6x2z8ZhyhNftA@mail.gmail.com>
Message-ID: <CAGb2v65vEK0k3grQyXzzJ0mTXNZZQxg1FPAES6x2z8ZhyhNftA@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 2/3] rtc: sun6i: Add support for H6 RTC
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>, 
 Chen-Yu Tsai <wens@csie.org>, Alessandro Zummo <a.zummo@towertech.it>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-rtc@vger.kernel.org, devicetree <devicetree@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_042214_324666_E4736FC2 
X-CRM114-Status: GOOD (  39.43  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBBdWcgNSwgMjAxOSBhdCA3OjEwIFBNIE9uZMWZZWogSmlybWFuIDxtZWdvdXNAbWVn
b3VzLmNvbT4gd3JvdGU6Cj4KPiBPbiBNb24sIEF1ZyAwNSwgMjAxOSBhdCAwNjo1NDoxN1BNICsw
ODAwLCBDaGVuLVl1IFRzYWkgd3JvdGU6Cj4gPiBPbiBNb24sIEF1ZyA1LCAyMDE5IGF0IDY6NDUg
UE0gT25kxZllaiBKaXJtYW4gPG1lZ291c0BtZWdvdXMuY29tPiB3cm90ZToKPiA+ID4KPiA+ID4g
T24gTW9uLCBBdWcgMDUsIDIwMTkgYXQgMDY6MTY6MTRQTSArMDgwMCwgQ2hlbi1ZdSBUc2FpIHdy
b3RlOgo+ID4gPiA+IE9uIEZyaSwgQXByIDEyLCAyMDE5IGF0IDg6MDcgUE0gbWVnb3VzIHZpYSBs
aW51eC1zdW54aQo+ID4gPiA+IDxsaW51eC1zdW54aUBnb29nbGVncm91cHMuY29tPiB3cm90ZToK
PiA+ID4gPiA+Cj4gPiA+ID4gPiBGcm9tOiBPbmRyZWogSmlybWFuIDxtZWdvdXNAbWVnb3VzLmNv
bT4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBSVEMgb24gSDYgaXMgbW9zdGx5IHRoZSBzYW1lIGFzIG9u
IEg1IGFuZCBIMy4gSXQgaGFzIHNsaWdodCBkaWZmZXJlbmNlcwo+ID4gPiA+ID4gbW9zdGx5IGlu
IGZlYXR1cmVzIHRoYXQgYXJlIG5vdCB5ZXQgc3VwcG9ydGVkIGJ5IHRoaXMgZHJpdmVyLgo+ID4g
PiA+ID4KPiA+ID4gPiA+IFNvbWUgZGlmZmVyZW5jZXMgYXJlIGFscmVhZHkgc3RhdGVkIGluIHRo
ZSBjb21tZW50cyBpbiBleGlzdGluZyBjb2RlLgo+ID4gPiA+ID4gT25lIG90aGVyIGRpZmZlcmVu
Y2UgaXMgdGhhdCBINiBoYXMgZXh0cmEgYml0IGluIExPU0NfQ1RSTF9SRUcsIGNhbGxlZAo+ID4g
PiA+ID4gRVhUX0xPU0NfRU4gdG8gZW5hYmxlL2Rpc2FibGUgZXh0ZXJuYWwgbG93IHNwZWVkIGNy
eXN0YWwgb3NjaWxsYXRvci4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBJdCBhbHNvIGhhcyBiaXQgRVhU
X0xPU0NfU1RBIGluIExPU0NfQVVUT19TV1RfU1RBX1JFRywgdG8gY2hlY2sgd2hldGhlcgo+ID4g
PiA+ID4gZXh0ZXJuYWwgbG93IHNwZWVkIG9zY2lsbGF0b3IgaXMgd29ya2luZyBjb3JyZWN0bHku
Cj4gPiA+ID4gPgo+ID4gPiA+ID4gVGhpcyBwYXRjaCBhZGRzIHN1cHBvcnQgZm9yIGVuYWJsaW5n
IExPU0Mgd2hlbiBuZWNlc3Nhcnk6Cj4gPiA+ID4gPgo+ID4gPiA+ID4gLSBkdXJpbmcgcmVwYXJl
bnRpbmcKPiA+ID4gPiA+IC0gd2hlbiBwcm9iaW5nIHRoZSBjbG9jawo+ID4gPiA+ID4KPiA+ID4g
PiA+IEg2IGFsc28gaGFzIGNhcGFjYmlsaXR5IHRvIGF1dG9tYXRpY2FsbHkgcmVwYXJlbnQgUlRD
IGNsb2NrIGZyb20KPiA+ID4gPiA+IGV4dGVybmFsIGNyeXN0YWwgb3NjaWxsYXRvciwgdG8gaW50
ZXJuYWwgUkMgb3NjaWxsYXRvciwgaWYgZXh0ZXJuYWwKPiA+ID4gPiA+IG9zY2lsbGF0b3IgZmFp
bHMuIFRoaXMgaXMgZW5hYmxlZCBieSBkZWZhdWx0LiBEaXNhYmxlIGl0IGR1cmluZwo+ID4gPiA+
ID4gcHJvYmUuCj4gPiA+ID4gPgo+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogT25kcmVqIEppcm1h
biA8bWVnb3VzQG1lZ291cy5jb20+Cj4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+ICBkcml2ZXJzL3J0
Yy9ydGMtc3VuNmkuYyB8IDQwICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
LS0KPiA+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMzggaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkKPiA+ID4gPiA+Cj4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ydGMvcnRjLXN1
bjZpLmMgYi9kcml2ZXJzL3J0Yy9ydGMtc3VuNmkuYwo+ID4gPiA+ID4gaW5kZXggMTFmNTZkZTUy
MTc5Li43Mzc1YTUzMGM1NjUgMTAwNjQ0Cj4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL3J0Yy9ydGMt
c3VuNmkuYwo+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9ydGMvcnRjLXN1bjZpLmMKPiA+ID4gPiA+
IEBAIC00MSw5ICs0MSwxMSBAQAo+ID4gPiA+ID4gIC8qIENvbnRyb2wgcmVnaXN0ZXIgKi8KPiA+
ID4gPiA+ICAjZGVmaW5lIFNVTjZJX0xPU0NfQ1RSTCAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgMHgwMDAwCj4gPiA+ID4gPiAgI2RlZmluZSBTVU42SV9MT1NDX0NUUkxfS0VZICAgICAg
ICAgICAgICAgICAgICAoMHgxNmFhIDw8IDE2KQo+ID4gPiA+ID4gKyNkZWZpbmUgU1VONklfTE9T
Q19DVFJMX0FVVE9fU1dUX0JZUEFTUyAgICAgICAgICAgICAgICBCSVQoMTUpCj4gPiA+ID4KPiA+
ID4gPiBNYW51YWwgc2F5cyBiaXQgMTQ/IE9yIGlzIHRoaXMgZGlmZmVyZW50IGZyb20gTE9TQ19B
VVRPX1NXVF9FTj8KPiA+ID4gPgo+ID4gPiA+IFRoZSByZXN0IGxvb2tzIG9rLgo+ID4gPgo+ID4g
PiBUbyBnaXZlIHlvdSBtb3JlIGluZm9ybWF0aW9uLiBUaGlzIGlzIGEgbmV3IHRoaW5nIGluIEg2
IEJTUCwgY29tcGFyZWQKPiA+ID4gdG8gQlNQcyBmb3IgcHJldmlvdXMgU29DcyAoSDUvSDMpLgo+
ID4gPgo+ID4gPiAgMjAgI2RlZmluZSBSRUdfQ0xLMzJLX0FVVE9fU1dUX0VOICAgICAgICAgICAg
ICAgICAgQklUKDE0KQo+ID4gPiAgMjEgI2RlZmluZSBSRUdfQ0xLMzJLX0FVVE9fU1dUX0JZUEFT
UyAgICAgICAgICAgICAgQklUKDE1KQo+ID4gPgo+ID4gPiBJbml0IHNlcXVlbmNlIGNoYW5nZWQg
aW4gSDYgQlNQIHRvOgo+ID4gPgo+ID4gPiA2NDYgICAgICAgICAvKgo+ID4gPiA2NDcgICAgICAg
ICAgKiBTdGVwMTogc2VsZWN0IFJUQyBjbG9jayBzb3VyY2UKPiA+ID4gNjQ4ICAgICAgICAgICov
Cj4gPiA+IDY0OSAgICAgICAgIHRtcF9kYXRhID0gcmVhZGwoY2hpcC0+YmFzZSArIFNVTlhJX0xP
U0NfQ1RSTCk7Cj4gPiA+IDY1MCAgICAgICAgIHRtcF9kYXRhICY9ICh+UkVHX0NMSzMyS19BVVRP
X1NXVF9FTik7Cj4gPiA+IDY1MQo+ID4gPiA2NTIgICAgICAgICAvKiBEaXNhYmxlIGF1dG8gc3dp
dGNoIGZ1bmN0aW9uICovCj4gPiA+IDY1MyAgICAgICAgIHRtcF9kYXRhIHw9IFJFR19DTEszMktf
QVVUT19TV1RfQllQQVNTOwo+ID4gPiA2NTQgICAgICAgICB3cml0ZWwodG1wX2RhdGEsIGNoaXAt
PmJhc2UgKyBTVU5YSV9MT1NDX0NUUkwpOwo+ID4gPiA2NTUKPiA+ID4gNjU2ICAgICAgICAgdG1w
X2RhdGEgPSByZWFkbChjaGlwLT5iYXNlICsgU1VOWElfTE9TQ19DVFJMKTsKPiA+ID4gNjU3ICAg
ICAgICAgdG1wX2RhdGEgfD0gKFJUQ19TT1VSQ0VfRVhURVJOQUwgfCBSRUdfTE9TQ0NUUkxfTUFH
SUMpOwo+ID4gPiA2NTggICAgICAgICB3cml0ZWwodG1wX2RhdGEsIGNoaXAtPmJhc2UgKyBTVU5Y
SV9MT1NDX0NUUkwpOwo+ID4gPiA2NTkKPiA+ID4gNjYwICAgICAgICAgLyogV2UgbmVlZCB0byBz
ZXQgR1NNIGFmdGVyIGNoYW5nZSBjbG9jayBzb3VyY2UgKi8KPiA+ID4gNjYxICAgICAgICAgdWRl
bGF5KDEwKTsKPiA+ID4gNjYyICAgICAgICAgdG1wX2RhdGEgPSByZWFkbChjaGlwLT5iYXNlICsg
U1VOWElfTE9TQ19DVFJMKTsKPiA+ID4gNjYzICAgICAgICAgdG1wX2RhdGEgfD0gKEVYVF9MT1ND
X0dTTSB8IFJFR19MT1NDQ1RSTF9NQUdJQyk7Cj4gPiA+IDY2NCAgICAgICAgIHdyaXRlbCh0bXBf
ZGF0YSwgY2hpcC0+YmFzZSArIFNVTlhJX0xPU0NfQ1RSTCk7Cj4gPiA+IDY2NQo+ID4KPiA+IEkg
ZG9uJ3QgaGF2ZSB0aGlzIGluIG15IEg2IEJTUHMuIE9uZSBpcyBINiBMaWNoZWUgdjEuMSBkb3du
bG9hZGVkIGZyb20gUGluZTY0Lgo+ID4gVGhlIGxpbmsgd2FzIGZyb20gbGludXgtc3VueGkgd2lr
aSdzIEg2IHBhZ2UuCj4gPgo+ID4gVGhlIG90aGVyIGlzIGEgNC45IGtlcm5lbCB0cmVlLCB3aGlj
aCBJIGJlbGlldmUgaXMgZnJvbSBBbGx3aW5uZXIncyBnaXRodWI6Cj4gPgo+ID4gICAgIGh0dHBz
Oi8vZ2l0aHViLmNvbS9BbGx3aW5uZXItSG9tbGV0L0g2LUJTUDQuOS1saW51eAo+Cj4gSW50ZXJl
c3RpbmcuIDopIEkgaGF2ZSB0aGUgQlNQIEkgd2FzIHVzaW5nIHNhdmVkIGhlcmU6Cj4KPiBodHRw
czovL21lZ291cy5jb20vZ2l0L2xpbnV4L3RyZWUvZHJpdmVycy9ydGMvcnRjLXN1bnhpLmM/aD1o
Ni00LjktYnNwI242NDkKPgo+IEl0J3MgYmFzZWQgb2YgNC45LjExOQo+Cj4gaHR0cHM6Ly9tZWdv
dXMuY29tL2dpdC9saW51eC9sb2cvP2g9aDYtNC45LWJzcAo+Cj4gSSBkb24ndCByZW1lbWJlciB3
aGVyZSBJIGZvdW5kIGl0LiBCdXQgSSBpbXBvcnRlZCBpdCBmYWlybHkgcmVjZW50bHksIGFuZAo+
IHRoZSBjb2RlIHlvdSBwb2ludGVkIHRvIGxvb2tzIGxpa2UgYW4gb2xkZXIgdmVyc2lvbiB0aGF0
IEkgY2FuIGZvdW5kIGluIHNvbWUKPiBiZXRhIEg2IEJTUCwgdGhhdCBJIGltcG9ydGVkIHdheSBl
YXJsaWVyIGFuZCBpcyBiYXNlZCBvbiA0LjkuNTY6Cj4KPiBodHRwczovL21lZ291cy5jb20vZ2l0
L2xpbnV4L3RyZWUvZHJpdmVycy9ydGMvcnRjLXN1bnhpLmM/aD1saW51eC1oNgo+IGh0dHBzOi8v
bWVnb3VzLmNvbS9naXQvbGludXgvbG9nLz9oPWxpbnV4LWg2Cj4KPiBIbW0sIGFyY2hlb2xvZ3ku
IDopCgpUaGF0J3MgZ29vZCBlbm91Z2ggZm9yIG1lLiBJIHN1cHBvc2UgaWYgd2UgZG8gaGF2ZSBh
bnkgbW9yZSBkb3VidHMgd2UgY291bGQKYXNrIHRoZW0gZGlyZWN0bHkuCgoKUmV2aWV3ZWQtYnk6
IENoZW4tWXUgVHNhaSA8d2Vuc0Bjc2llLm9yZz4KCj4gPiA+IEZvciBvbGRlciBCU1BzLCB0aGUg
aW5pdCBzZXF1ZW5jZSBsb29rZWQgbGlrZSB0aGlzOgo+ID4gPgo+ID4gPiA0ODIgICAgICAgICAv
Kgo+ID4gPiA0ODMgICAgICAgICAgKiBTdGVwMTogc2VsZWN0IFJUQyBjbG9jayBzb3VyY2UKPiA+
ID4gNDg0ICAgICAgICAgICovCj4gPiA+IDQ4NSAgICAgICAgIHRtcF9kYXRhID0gc3VueGlfcnRj
X3JlYWQoU1VOWElfTE9TQ19DVFJMX1JFRyk7Cj4gPiA+IDQ4NiAgICAgICAgIHRtcF9kYXRhICY9
ICh+UkVHX0NMSzMyS19BVVRPX1NXVF9FTik7Cj4gPiA+IDQ4NyAgICAgICAgIHRtcF9kYXRhIHw9
IChSVENfU09VUkNFX0VYVEVSTkFMIHwgUkVHX0xPU0NDVFJMX01BR0lDKTsKPiA+ID4gNDg4ICAg
ICAgICAgdG1wX2RhdGEgfD0gKEVYVF9MT1NDX0dTTSk7Cj4gPiA+IDQ4OSAgICAgICAgIHN1bnhp
X3J0Y193cml0ZSh0bXBfZGF0YSwgU1VOWElfTE9TQ19DVFJMX1JFRyk7Cj4gPiA+IDQ5MAo+ID4g
Pgo+ID4gPiBFWFRfTE9TQ19HU00gaGFzIHZhbHVlcyA0IHZhbHVlcyBmcm9tIGxvdyB0byBoaWdo
LCBhbmQgSSBndWVzcyBpdCBjb25maWd1cmVzCj4gPiA+IGdhaW4gZm9yIHRoZSBvc2NpbGxhdG9y
J3MgYW1wbGlmaWVyIGluIHRoZSBmZWVkYmFjayBsb29wIG9mIHRoZSBjaXJjdWl0Lgo+ID4gPgo+
ID4gPiBTbyB0aGUgbmV3IGNvZGUsIGZvciBzb21lIHJlYXNvbiBjaGFuZ2VkIGZyb20gc2luZ2xl
IHdyaXRlIHRvIHNlcXVlbmNlCj4gPiA+IG9mIGluZGl2aWR1YWwgd3JpdGVzL2NvbmZpZyBzdGVw
czoKPiA+ID4KPiA+ID4gMSkgZGlzYWJsZSBhdXRvLXN3aXRjaCBhbmQgZW5hYmxlIGF1dG8tc3dp
dGNoIGJ5cGFzcwo+ID4gPiAyKSBzZWxlY3QgUlRDIGNsb2NrIHNvdXJjZSAodG8gTE9TQykKPiA+
ID4gICAod2FpdCkKPiA+Cj4gPiBNYXliZSBpdCdzIHBvc3NpYmxlIHRvIGdsaXRjaCBpZiB0aGVz
ZSB0d28gYXJlIGNvbWJpbmVkPwo+Cj4gVGhhdCdzIHdoYXQgSSB0aG91Z2h0IHRvby4gT3IgdGhl
IHByb2dyYW1tZXIgdGhvdWdodCBzbywgYW5kIHdhcyBqdXN0Cj4gcHJvZ3JhbW1pbmcgZGVmZW5z
aXZlbHksIGFuZCB0aGVyZSdzIG5vIHJlYWwgcHJvYmxlbSBpbiB0aGUgcHJhY3RpY2UuCj4KPiBC
dXQgdGhhdCBzcGVjaWZpYyBkZWxheSgpIHNlZW1zIGxpa2Ugc29tZW9uZSB0cnlpbmcgdG8gc29s
dmUgYSByZWFsIGlzc3VlLiBPZgo+IGNvdXJzZSB0aGVyZSdzIG5vIGtub3dpbmcgaWYgaXQgd2Fz
IG9uIEg2IG9yIG9uIHNvbWUgb3RoZXIgU29DLgoKSXQncyBwcm9iYWJseSBmb3IgdGhlIGNsb2Nr
IHdhdmVmb3JtIHRvIHN0YWJpbGl6ZS4gV2h5IHRoZXkgZG8gaXQgX2FmdGVyXwpzd2l0Y2hpbmcg
dG8gdGhlIGNsb2NrIGlzIHdlaXJkIHRob3VnaC4KCj4gcmVnYXJkcywKPiAgICAgICAgIG8uCj4K
PiA+Cj4gPiA+IDMpIGNvbmZpZ3VyZSBnYWluIG9uIHRoZSBMT1NDCj4gPiA+Cj4gPiA+IHJlZ2Fy
ZHMsCj4gPiA+ICAgICAgICAgby4KPiA+ID4KPiA+ID4gPiBDaGVuWXUKPiA+ID4KPiA+ID4gLS0K
PiA+ID4gWW91IHJlY2VpdmVkIHRoaXMgbWVzc2FnZSBiZWNhdXNlIHlvdSBhcmUgc3Vic2NyaWJl
ZCB0byB0aGUgR29vZ2xlIEdyb3VwcyAibGludXgtc3VueGkiIGdyb3VwLgo+ID4gPiBUbyB1bnN1
YnNjcmliZSBmcm9tIHRoaXMgZ3JvdXAgYW5kIHN0b3AgcmVjZWl2aW5nIGVtYWlscyBmcm9tIGl0
LCBzZW5kIGFuIGVtYWlsIHRvIGxpbnV4LXN1bnhpK3Vuc3Vic2NyaWJlQGdvb2dsZWdyb3Vwcy5j
b20uCj4gPiA+IFRvIHZpZXcgdGhpcyBkaXNjdXNzaW9uIG9uIHRoZSB3ZWIsIHZpc2l0IGh0dHBz
Oi8vZ3JvdXBzLmdvb2dsZS5jb20vZC9tc2dpZC9saW51eC1zdW54aS8yMDE5MDgwNTEwNDUyOS56
M21leDNtMnRzczdsemxyJTQwY29yZS5teS5ob21lLgo+Cj4gLS0KPiBZb3UgcmVjZWl2ZWQgdGhp
cyBtZXNzYWdlIGJlY2F1c2UgeW91IGFyZSBzdWJzY3JpYmVkIHRvIHRoZSBHb29nbGUgR3JvdXBz
ICJsaW51eC1zdW54aSIgZ3JvdXAuCj4gVG8gdW5zdWJzY3JpYmUgZnJvbSB0aGlzIGdyb3VwIGFu
ZCBzdG9wIHJlY2VpdmluZyBlbWFpbHMgZnJvbSBpdCwgc2VuZCBhbiBlbWFpbCB0byBsaW51eC1z
dW54aSt1bnN1YnNjcmliZUBnb29nbGVncm91cHMuY29tLgo+IFRvIHZpZXcgdGhpcyBkaXNjdXNz
aW9uIG9uIHRoZSB3ZWIsIHZpc2l0IGh0dHBzOi8vZ3JvdXBzLmdvb2dsZS5jb20vZC9tc2dpZC9s
aW51eC1zdW54aS8yMDE5MDgwNTExMTAzNy43NnZtYW56Y3VyZmZwYmRmJTQwY29yZS5teS5ob21l
LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
