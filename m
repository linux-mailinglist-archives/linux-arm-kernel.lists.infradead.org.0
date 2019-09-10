Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D71AEF76
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 18:21:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bMU7nhJS7NjbQYZxCtYv1dEBPUEhxes0naqD+5UlJ4Q=; b=AbJ9n7aul9R5bq
	v3UjgZNP+eHJa31HBbUWKiNEEbSfFl+gm1aCvivwnDSqPsEwJD/LXEkMipVUss10Qa/ifpeRCO56d
	TQ+RbXB+cZLTF6zvU+UarAsYU+2hCrxhB/fa8i18TghBv2ospPzqNVkZ3uTrUJ9lqOpr7tfHSsDty
	hCfNYpfLLIRYvQ5KxN8M2NnKigBALwomd5whzHAYPbzmxnVQP4V5meKSg/gRf3afqIWjHGaehRFw0
	UVImVPRBIFbq+7ETF3L8i4dQ0K5WNPm2W71KQk8LeXRb747KROyA6ZAFsoaLFsgj/iKiYcyz8vZKa
	fXiX0U0F8J2dnm6zJaOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7itx-0002h3-Ln; Tue, 10 Sep 2019 16:21:57 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7itn-0002gd-Qr
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 16:21:49 +0000
Received: by mail-io1-xd41.google.com with SMTP id j4so38858652iog.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 09:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=zfak0oamvqR0wlkWdro1v2MEWig7UToX5bvVAqdDtOo=;
 b=bmHftRBVG3UesIvZiqDbiuOA72BylSogyhaiKS/wsP0AEjtZYtvMHOLsoute6sQZ5m
 xIpo4gwZiwWDF9NooW5VDBFoxQRjUbyuPu83ukqlsJCxANwMV2lX6+qwjxFIUr6BKnq3
 NfSd+thBNxcRljHIBEfSFJfnX7Q/CYPMHBuJo7QT+nvrZD7tMejiXPX4Zs/CkfDsqBOY
 LGQ4DWvRummpLuvyn5+fQh6ES61QTQ1cEyqouvQ1C/hgnOdTAA8wQ5nVUanyJCpycTeh
 pUe2RixtytadF7XaVfarQuRIZRWLNta0DZH6FwCIudQOeAh9XLLfxyWfqlD0aJ0kin47
 bl5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=zfak0oamvqR0wlkWdro1v2MEWig7UToX5bvVAqdDtOo=;
 b=Lgjw0hCnEQGTbHmyQildEgnDaUjGIz/gJ50P086CI4DiMlYtCjWx8Unn5q/K+3HREX
 NScXTAKSkSsbg604aDsnZfAgLljQJBuYWLbehu0REb+vRZDyZBS2KSDCpM7KrehQqiJb
 e9EqecAAPQ/r0eTkT5bMSiv57HO8wtLoI2wRsQBRhu8zSkVxsNJkzLj1Yfbb9Wa4Qmty
 Zf5uIQC4fjhmOCOAFkD6lU8U7Oobwic2Qvwep6/TEiFMwfQhBdJKVAgg2VJ3Zwx63iV8
 hCAtpymSoBtf5+XSuPx+zkCJCqOSSFpBk1Gd4qR7pLLYGxR9XQp92uV5JFenyO26BdvE
 C7rQ==
X-Gm-Message-State: APjAAAUq/wcZbHloFyRp6WLIiEH/ntfcgvZV6SRVxC7zinibV3WnRp9u
 YlVoVUyKag7SzTfGf9JAHf0DpT6HMtWba+HDuQw=
X-Google-Smtp-Source: APXvYqzn3tHPt7okLee/JSPLqAibKWmQEQwC+Yi3HLUftPevSq/bxBvLHOKp4243JzzRNVWIktQJsyVQUxI79CU3IR4=
X-Received: by 2002:a5e:de47:: with SMTP id e7mr1078126ioq.127.1568132506319; 
 Tue, 10 Sep 2019 09:21:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190828150037.2640-1-aford173@gmail.com>
 <20190905230443.GA52127@atomide.com>
 <CAHCN7xL0fbr=Sv+b=0AuGB1PPhAAFdAFLEd_iBM+ZMTkUw5sHQ@mail.gmail.com>
 <CAHCN7xL-Gfxe0qF5w7BUsHnyhcNNpmCnchdKErnmiqggXfsLWw@mail.gmail.com>
 <20190909134033.s26eiurpat3iekse@pali> <20190909163543.GQ52127@atomide.com>
 <CAHCN7x+t-OVRE7pVM4V87_YMWpgO+_Vashfn1s5msoqC5eiwTg@mail.gmail.com>
In-Reply-To: <CAHCN7x+t-OVRE7pVM4V87_YMWpgO+_Vashfn1s5msoqC5eiwTg@mail.gmail.com>
From: Adam Ford <aford173@gmail.com>
Date: Tue, 10 Sep 2019 11:21:34 -0500
Message-ID: <CAHCN7xLaGQMM67VC-2_G8XC7UuG4c+TbbYb4z=ibJwZsQF4YVw@mail.gmail.com>
Subject: Re: [RFC] ARM: omap3: Enable HWMODS for HW Random Number Generator
To: Tony Lindgren <tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_092147_898329_037B78C5 
X-CRM114-Status: GOOD (  25.43  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Paul Walmsley <paul@pwsan.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali.rohar@gmail.com>,
 Linux-OMAP <linux-omap@vger.kernel.org>, Adam Ford <adam.ford@logicpd.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBTZXAgMTAsIDIwMTkgYXQgMTA6NDggQU0gQWRhbSBGb3JkIDxhZm9yZDE3M0BnbWFp
bC5jb20+IHdyb3RlOgo+Cj4gT24gTW9uLCBTZXAgOSwgMjAxOSBhdCAxMTozNSBBTSBUb255IExp
bmRncmVuIDx0b255QGF0b21pZGUuY29tPiB3cm90ZToKPiA+Cj4gPiAqIFBhbGkgUm9ow6FyIDxw
YWxpLnJvaGFyQGdtYWlsLmNvbT4gWzE5MDkwOSAxMzo0MV06Cj4gPiA+IE9uIE1vbmRheSAwOSBT
ZXB0ZW1iZXIgMjAxOSAwODozNzowOSBBZGFtIEZvcmQgd3JvdGU6Cj4gPiA+ID4gSSBhcHBsaWVk
IHRoaXMgb24gNS4zIGFuZCBpdCBpcyB3b3JraW5nLiAgSSBhc3N1bWUgdGhlIHNhbWUgaXMgdHJ1
ZSBpbiBmb3ItbmV4dC4KPiA+Cj4gPiBIbW0gSSBub3RpY2VkIEkgc3RvcHBlZCBnZXR0aW5nIFJO
RyBkYXRhIGFmdGVyIHNldmVyYWwgcm1tb2QgbW9kcHJvYmUKPiA+IGN5Y2xlcywgb3Igc2V2ZXJh
bCBoZCAvZGV2L3JhbmRvbSByZWFkcy4gQW55Ym9keSBlbHNlIHNlZWluZyB0aGF0Pwo+ID4KPiA+
ID4gPiBEbyB5b3Ugd2FudCB0byBzdWJtaXQgYSBmb3JtYWwgcGF0Y2g/ICBJICBjYW4gbWFyayBp
dCBhcyAndGVzdGVkLWJ5Jwo+ID4gPiA+IFRoaXMgcmVhbGx5IGhlbHBzIHNwZWVkIHVwIHRoZSBz
dGFydHVwIHNlcXVlbmNlIG9uIGJvYXJkcyB3aXRoIHNzaGQKPiA+ID4gPiBiZWNhdXNlIGl0IGRl
bGF5cyBmb3IgbmVhcmx5IDgwIHNlY29uZHMgd2FpdGluZyBmb3IgZW50cm9weSB3aXRob3V0Cj4g
PiA+ID4gdGhlIGh3cm5nLgo+ID4gPgo+ID4gPiBIaSEgV2hlbiBhcHBseWluZyBhIHBhdGNoLCBj
b3VsZCB5b3UgcGxlYXNlIGRpc2FibGUgdGhpcyBybmcgZm9yIG45MDA/Cj4gPiA+Cj4gPiA+IElu
IG9tYXAzLW45MDAuZHRzIGZvciBybmcgc2hvdWxkIGJlIHN0YXR1cyA9ICJkaXNhYmxlZCIgKGFz
IFRvbnkgYWxyZWFkeQo+ID4gPiB3cm90ZSksIHNpbWlsYXJseSBsaWtlIGZvciBhZXMuCj4gPgo+
ID4gWWVhaCBJJ2xsIHBvc3QgYSBwcm9wZXIgcGF0Y2ggYWZ0ZXIgLXJjMS4KPgo+IEZZSSwKPgo+
IEJ5IHB1dHRpbmcgeW91ciBub2RlIGludG8gb21hcDM0eHguZHRzaSBhbmQgb21hcDM2eHguZHRz
aSBhbG9uZyB3aXRoCj4gdGhlIGZvbGxvd2luZywgSSBjYW4gZ2V0IHRoZSBSTkcgdG8gd29yayBv
biBhbiBPTUFQMzUzMCBhbmQgYSBETTM3MzAuCj4KPgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9i
b290L2R0cy9vbWFwMzR4eC1vbWFwMzZ4eC1jbG9ja3MuZHRzaQo+IGIvYXJjaC9hcm0vYm9vdC9k
dHMvb21hcDM0eHgtb21hcDM2eHgtY2xvY2tzLmR0c2kKPiBpbmRleCA1ZTlkMWFmY2Q0MjIuLjcz
ZjM1MWU2ZDEzMiAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9vbWFwMzR4eC1vbWFw
MzZ4eC1jbG9ja3MuZHRzaQo+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL29tYXAzNHh4LW9tYXAz
Nnh4LWNsb2Nrcy5kdHNpCj4gQEAgLTI1OSw3ICsyNTksNyBAQAo+ICAgICAgICAgICAgICAgICAg
ICAgICAgICA8JmkyYzFfaWNrPiwgPCZ1YXJ0Ml9pY2s+LCA8JnVhcnQxX2ljaz4sIDwmZ3B0MTFf
aWNrPiwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgPCZncHQxMF9pY2s+LCA8Jm1jYnNwNV9p
Y2s+LCA8Jm1jYnNwMV9pY2s+LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICA8Jm9tYXBjdHJs
X2ljaz4sIDwmYWVzMl9pY2s+LCA8JnNoYTEyX2ljaz4sIDwmaWNyX2ljaz4sCj4gLSAgICAgICAg
ICAgICAgICAgICAgICAgIDwmZGVzMl9pY2s+LCA8Jm1zcHJvX2ljaz4sIDwmbWFpbGJveGVzX2lj
az4sCj4gKyAgICAgICAgICAgICAgICAgICAgICAgIDwmZGVzMl9pY2s+LCA8Jm1zcHJvX2ljaz4s
IDwmbWFpbGJveGVzX2ljaz4sCj4gPCZybmdfaWNrPiwKPiAgICAgICAgICAgICAgICAgICAgICAg
ICAgPCZtc3Byb19mY2s+Owo+ICAgICAgICAgfTsKPiAgfTsKPgo+IEkgdHJpZWQgZG9pbmcgdGhl
IHNhbWUgZm9yIGFtMzUxNywgYnV0IGl0IGRvZXNuJ3QgYXBwZWFyIHRvIHdvcmsuICBJbgo+IGZh
Y3QsIHRoZSBib2FyZCBoYW5ncyBhdCBib290IHdpdGggbm8gc3BsYXQsIHNvIEkgYXNzdW1lIHRo
YXQgc29tZQo+IGNsb2NrIGlzbid0IHJ1bm5pbmcgYW5kIGNhdXNpbmcgYSBoYW5nLiAgRmlndXJl
IDQtNTAgaW4gdGhlIEFNMzUxNyBUUk0KPiBzaG93cyB0aGUgc2VjdXJpdHlfbDRfaWNsazIsIHNv
IEkgd29uZGVyIGlmIHRoZSBIVyBtb2RzIGZvciBBRVMsIFNIQSwKPiBldGMgYXJlIGRvaW5nIHNv
bWV0aGluZyB0byBlbmFibGUgdGhpcyBjbG9jay4gIFRob3NlIEhXbW9kcyBhcmUKPiBkaXNhYmxl
ZCBvbiBBTTM1MTcuICBJIHRyaWVkIHR1cm5pbmcgb24gdGhlIGh3bW9kcyBmb3IgdGhlbSBiZWZv
cmUKPiB3aXRob3V0IHN1Y2Nlc3MsIGJ1dCBJJ2xsIHRyeSBpdCBhZ2Fpbi4KCkFjY29yZGluZyB0
byBhIG5vdGUgaW4gb21hcF9od21vZF8zeHh4X2RhdGEuYywKCi8qCiAqIEFwcGFyZW50bHkgdGhl
IFNIQS9NRDUgYW5kIEFFUyBhY2NlbGVyYXRvciBJUCBibG9ja3MgYXJlCiAqIG9ubHkgcHJlc2Vu
dCBvbiBzb21lIEFNMzV4eCBjaGlwcywgYW5kIG5vIG9uZSBrbm93cyB3aGljaAogKiBvbmVzLiAg
U2VlCiAqIGh0dHA6Ly93d3cuc3Bpbmljcy5uZXQvbGlzdHMvYXJtLWtlcm5lbC9tc2cyMTU0NjYu
aHRtbCBTbwogKiBpZiB5b3UgbmVlZCB0aGVzZSBJUCBibG9ja3Mgb24gYW4gQU0zNXh4LCB0cnkg
dW5jb21tZW50aW5nCiAqIHRoZSBmb2xsb3dpbmcgbGluZXMuCiAqLwoKSSBkZWNpZGVkIHRvIHVu
Y29tbWVudCB0aGUgaHdtb2QgZW50cmllcywgYW5kIEkgZ290IHRoZSBmb2xsb3dpbmc6CgpbICAg
IDAuMjYzMjIyXSBvbWFwX2h3bW9kOiBzaGFtOiBfd2FpdF90YXJnZXRfcmVhZHkgZmFpbGVkOiAt
MTYKWyAgICAwLjI2MzI0OF0gb21hcF9od21vZDogc2hhbTogY2Fubm90IGJlIGVuYWJsZWQgZm9y
IHJlc2V0ICgzKQpbICAgIDAuMjY1ODM3XSBvbWFwX2h3bW9kOiBhZXM6IF93YWl0X3RhcmdldF9y
ZWFkeSBmYWlsZWQ6IC0xNgpbICAgIDAuMjY1ODUxXSBvbWFwX2h3bW9kOiBhZXM6IGNhbm5vdCBi
ZSBlbmFibGVkIGZvciByZXNldCAoMykKWyAgICA2LjIwODg2Nl0gb21hcF9od21vZDogc2hhbTog
X3dhaXRfdGFyZ2V0X3JlYWR5IGZhaWxlZDogLTE2ClsgICAgNi4yODc3MzJdIG9tYXBfaHdtb2Q6
IGFlczogX3dhaXRfdGFyZ2V0X3JlYWR5IGZhaWxlZDogLTE2CgpCYXNlZCBvbiB0aGlzLCBJIHdv
bmRlciBpZiB0aGUgc2hhbSBhbmQgYWVzIG1vZHVsZXMgYXJlIG5vdCBwcmVzZW50LgpJZiB0aGlz
IGlzIHRoZSBjYXNlLCBpdCBtaWdodCBleHBsYWluIHdoeSBJIGNhbm5vdCB1c2UgdGhlIHJuZyBl
aXRoZXIuCgphZGFtCj4KPiBhZGFtCj4gPgo+ID4gUmVnYXJkcywKPiA+Cj4gPiBUb255CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
