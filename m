Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7946C11A02A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 01:46:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lf5Rsa43ynggExhVmLkScnwS1fsHLvOPlnAMnmjg118=; b=FT7hhiYDb4HKcu
	/VwxJEKe073/ank080mCUr906jOFiVgjI7oa5tW6mR4NXLdCEaJLpEGDUHMO42ORxdmTvKfiVNvw/
	Im7tmZWu1Y+uUYlehuQh1SkkLqfgJu7ugK10Wk16UM1o6Oatrlv4kmkY2eu749qi70DyVB0xl/76R
	6iV/ISn9qJYNv/FUpSDOz9x8DFP/JljOFEFS3VzH9ocTdOvAI/YEoVKrquJ6XFhpdGbVqVl59ELyZ
	nBW2cyp15Z1bcts/5DvF88Kw9tN4Ukcu29XZfEAEHOlxUneZ+bXutdi/u1804SQC1wT123+wh5/Jj
	jvE1BB5VeC2otZ19Mp5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieq8z-0000nX-Ac; Wed, 11 Dec 2019 00:46:21 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieq8m-0000mG-0D; Wed, 11 Dec 2019 00:46:09 +0000
Received: by mail-ot1-x344.google.com with SMTP id h20so17314008otn.5;
 Tue, 10 Dec 2019 16:46:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=dNo8gQB2Lns6lssefACZcuCEFfgXMn9otoHM3Ump6ZU=;
 b=MSQi9449EbBVtE8SBD/GOeFr9lc1VEeadwIPv0OUHQIqzCemeFd7M/BqaTHJH2HbFC
 VyC2WdGAJ0Oy7BMvm6c+VXsJmVA9T5O44nKl/i7bv6PirSOnQbfzSRo6tWVFKd5w1Tzp
 EM+9Ny2MRBFb5NHvtnHw5Dye3NOTdNk7MqGkiIxyjoSL4Fv19pYxLtPnlF66mlPaY0BU
 ccadh1t27sktMAwSiei7ID54Jtbum+31GKoG2tV0xt3XzxvvBIYyHzo1sRSy99F1emGF
 BpQeZnZqYUN6v+/AO5QZoW5U5JqSERSUYzkuCLqTi/DD2JIqIxn8V8guYI5nTfJyhAcF
 Toaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=dNo8gQB2Lns6lssefACZcuCEFfgXMn9otoHM3Ump6ZU=;
 b=bpsvLKRVANYUJZltFrnyRnSqPi6Ly0eTdrR687bGwLMhdGpIaATXqhoj8EHfwjPhhC
 7c5reKVTcB/VY9ycvPwLTZg7OjrsRZhT5nKH5VAfF4k9mC3zPmIxmReM+etJN3RPML3z
 3YUvn8RT1djyINVRNIsmW0GioUebCm/qsxh3nDlvVGkcVhPppffDzC1t/ZjdHXC5+OzF
 Daw9p3yDQGMfwTjdiCFED5mC1hkmyF0ZIsdZlLhxgvoMTI1i+Uf9SnAe+0e7YNXcNyDH
 mMXwt8wmHu7CmZKFurRn/wBYlwZIPhLijvaO9XARp2SwmgNNHEsvZzhUCgfGbLa/a5g7
 8cMg==
X-Gm-Message-State: APjAAAXkSz3ZQ0adgfRHAZzuNVgvzIXMc0ZQkN1veHJmgRMWLHEq3J9I
 msnpQMV93LbfGyAaBBXUCSllZPxDeUzL+ttp/oysgkvUwd0=
X-Google-Smtp-Source: APXvYqxlHTr1UZyzC6aCajvAM4W2Nsg3YlT+KI7UUGo3jxS4zv5rW02mvvBuzLyLP3MDtSmh3sJHzcCwjpOwaw6OzaY=
X-Received: by 2002:a9d:4f0e:: with SMTP id d14mr452420otl.90.1576025165539;
 Tue, 10 Dec 2019 16:46:05 -0800 (PST)
MIME-Version: 1.0
References: <20191014141718.22603-1-narmstrong@baylibre.com>
 <20191014141718.22603-2-narmstrong@baylibre.com>
 <20191023201141.GA21235@bogus>
 <CA+3zgmsJPsvXgsjDQKKrSG+UNdY3SK+hKCTD2X3hGG+OXejHig@mail.gmail.com>
 <CAKgpwJWU3jB0DWEKE09TOV+YLceBFJ75ZirAXQbuhj8v3FwjXg@mail.gmail.com>
 <c32007f5-88b9-45c5-b542-b1dc4dbc76ea@baylibre.com>
 <CAKgpwJVHF6Ytdt9kq5SwiixFDLym_UPG51aXag1nVVay0pzofQ@mail.gmail.com>
 <45212db9-e366-2669-5c0a-3c5bd06287f6@synopsys.com>
 <ce35b6d2-7ed1-be2d-6e38-4c6e89340a40@baylibre.com>
In-Reply-To: <ce35b6d2-7ed1-be2d-6e38-4c6e89340a40@baylibre.com>
From: Tim <elatllat@gmail.com>
Date: Tue, 10 Dec 2019 19:45:54 -0500
Message-ID: <CA+3zgmtWQwdJG5NT-t7__Mqt5u_U3m4+HEL6p4PWxx5NES7_AQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] doc: dt: bindings: usb: dwc3: Update entries for
 disabling SS instances in park mode
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_164608_070566_044A7B44 
X-CRM114-Status: GOOD (  24.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (elatllat[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Jianxin Pan <jianxin.pan@amlogic.com>, Felipe Balbi <balbi@kernel.org>,
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jun Li <lijun.kernel@gmail.com>, "khilman@baylibre.com" <khilman@baylibre.com>,
 Dongjin Kim <tobetter@gmail.com>,
 "linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>,
 Rob Herring <robh@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SnVzdCB3cml0aW5nIHRvIHNheTsKdGhpcyBwYXRjaCBpcyBzdGlsbCBwZXJmb3JtaW5nIHdlbGwg
b24gNS41LjAtcmMxLCBhbmQKdGhlcmUgaXMgbm8gc3BlZWQgaW1wcm92ZW1lbnQgYnkgYWRkaW5n
IERXQzNfR1VDVExfTkFLX1BFUl9FTkhfSFMgQklUKDE3KQogICAgSSBnZXQgdXAgdG8gMzg5MCBt
cyBzZWNvbmQgbGFnIHdpdGggInBpbmcgLXMgNTEyMCAkSVAiIHdoZW4KY29weWluZyBiZXR3ZWVu
IFVTQiBIRERzIGVpdGhlciB3YXksIGJ1dCBhdCBsZWFzdCB0aGlzIHBhdGNoIHN0b3BzIHRoZQpj
cmFzaGluZy4KCgpPbiBUdWUsIERlYyAxMCwgMjAxOSBhdCAzOjU1IEFNIE5laWwgQXJtc3Ryb25n
IDxuYXJtc3Ryb25nQGJheWxpYnJlLmNvbT4gd3JvdGU6Cj4KPiBIaSwKPgo+IE9uIDEyLzExLzIw
MTkgMjE6MDMsIFRoaW5oIE5ndXllbiB3cm90ZToKPiA+IEhpLAo+ID4KPiA+IEp1biBMaSB3cm90
ZToKPiA+PiBUaGlzIGJ1ZyBleGlzdHMgb24gYWxsIGN1cnJlbnQgdmVyc2lvbnMgcGVyIGluZm9y
bWF0aW9uIEkgZ290IGZyb20gU3lub3BzeXMuCj4gPj4gKyBUaGluaCBOZ3V5ZW4gPHRoaW5obkBz
eW5vcHN5cy5jb20+Lgo+ID4+Cj4gPj4gTGkgSnVuCj4gPgo+ID4gVGhlIEdVQ1RMMS5QQVJLTU9E
RV9ESVNBQkxFX1NTIGlzIG9ubHkgYXZhaWxhYmxlIGluIGR3Y191c2IzIGNvbnRyb2xsZXIKPiA+
IHJ1bm5pbmcgaW4gaG9zdCBtb2RlLiBUaGlzIHNob3VsZCBub3QgYmUgc2V0IGZvciBvdGhlciBJ
UHMuCj4gPgo+ID4gVGhpcyBjYW4gYmUgZGlzYWJsZWQgYnkgZGVmYXVsdCBiYXNlZCBvbiBJUCwg
YnV0IEkgcmVjb21tZW5kIHRvIGhhdmUgYQo+ID4gcHJvcGVydHkgdG8gZW5hYmxlIHRoaXMgZmVh
dHVyZSBmb3IgZGV2aWNlcyB0aGF0IG5lZWQgdGhpcy4KPgo+IFRoYW5rcywgc28gdGhpcyBwYXRj
aHNldCBpcyB0aGUgcmlnaHQgd2F5IHRvIHNvbHZlIHRoaXMuCj4KPiBGZWxpcGUsIHdvdWxkIGl0
IGJlIHBvc3NpYmxlIHRvIGhhdmUgaXQgbWVyZ2VkIGZvciBuZXh0IHJlbGVhc2UgPwo+IFNob3Vs
ZCBJIHJlc2VuZCBpdCA/Cj4KPiBUaGFua3MsCj4gTmVpbAo+Cj4gPgo+ID4KPiA+Pgo+ID4+IE5l
aWwgQXJtc3Ryb25nIDxuYXJtc3Ryb25nQGJheWxpYnJlLmNvbT4g5LqOMjAxOeW5tDEx5pyIMTLm
l6Xlkajkuowg5LiL5Y2INTowMOWGmemBk++8mgo+ID4+PiBIaSBMaSwKPiA+Pj4KPiA+Pj4gT24g
MTEvMTEvMjAxOSAwMjo1OCwgSnVuIExpIHdyb3RlOgo+ID4+Pj4gSGkgTmVpbAo+ID4+Pj4KPiA+
Pj4+IEFzIEkgZ290IHRoZSBpbmZvcm1hdGlvbiBmcm9tIFN5bm9wc3lzLCB0aGlzIGJ1ZyBleGlz
dHMgb24gY3VycmVudCBJUCB2ZXJzaW9ucywKPiA+Pj4+IGFuZCBwZXIgbXkgdGVzdHMgd2l0aCBl
eHRlcm5hbCBVU0IzIGh1YiArIDIgU3VwZXIgc3BlZWQgdWRpc2tzIG9uIGRhdGEKPiA+Pj4+IHJl
YWQgYnkgZGQsIEkgY2FuIHJlcHJvZHVjZSB0aGlzIGlzc3VlIHdpdGggZGlmZmVyZW50IGtlcm5l
bCB2ZXJzaW9ucywgYWxzbyBJCj4gPj4+PiBkaWRuJ3Qgc2VlIG9idmlvdXMgcGVyZm9ybWFuY2Ug
ZHJvcCBieSBkZCB0ZXN0cyBhZnRlciBkaXNhYmxlIHBhcmsgbW9kZSBmb3IKPiA+Pj4+IHN1cGVy
IHNwZWVkLCBzbyBzaG91bGQgd2UganVzdCBkaXNhYmxlIGl0IGJ5IGRlZmF1bHQgc28gbm8gbmVl
ZCBhIHF1aXJrPwo+ID4+PiBJIGRvbid0IGhhdmUgYW55IG9waW5pb24gb24gdGhpcywgSSB0aGlu
ayB0aGUgVVNCICYgRFdDMyBtYWludGFpbmVycyBzaG91bGQgZGVjaWRlCj4gPj4+IGhvdyB0byBo
YW5kbGUgdGhpcy4KPiA+Pj4KPiA+Pj4gRGlkIFN5bm9wc3lzIHNwZWNpZmllZCBhIHJhbmdlIG9m
IGFmZmVjdGVkIElQIHZlcnNpb24gPwo+ID4+Pgo+ID4+PiBOZWlsCj4gPj4+Cj4gPj4+PiBMaSBK
dW4KPiA+Pj4+Cj4gPj4+PiBUaW0gPGVsYXRsbGF0QGdtYWlsLmNvbT4g5LqOMjAxOeW5tDEx5pyI
MTHml6XlkajkuIAg5LiK5Y2IODo0MuWGmemBk++8mgo+ID4+Pj4+IFRoYW5rcyBmb3Igd29ya2lu
ZyBvbiB0aGlzIE5laWwsCj4gPj4+Pj4gSXMgdGhlcmUgc29tZXRoaW5nIHRoYXQgbmVlZHMgZG9p
bmcgZm9yIHRoaXMgcGF0Y2ggdG8gbWFrZSBpdCBpbnRvIDUuMyBvciA1LjQ/Cj4gPj4+Pj4gQXMg
cHJldmlvdXNseSBtZW50aW9uZWQgdGhlIHBhdGNoIHNldCBmaXhlcyB0aGUgaXNzdWUgb24gYWZm
ZWN0ZWQgaGFyZHdhcmU7Cj4gPj4+Pj4gICAgICBodHRwczovL3VybGRlZmVuc2UucHJvb2Zwb2lu
dC5jb20vdjIvdXJsP3U9aHR0cHMtM0FfX3BhdGNod29yay5rZXJuZWwub3JnX3BhdGNoXzExMTY0
NTE1XyZkPUR3SUZhUSZjPURQTDZfWF82SmtYRng3QVhXcUIwdGcmcj11OUZZb3hLdHloanJHRmN5
aXhGWXFUancxWlgwVnNHMmQ4RkNtemtUWS13Jm09QkNmUkhNOWU4NjAzOVN1MC1RdktfeVVqTm5Z
cm5sX0JjdnhUdFZpeXBUOCZzPWFWNXU3dXhOWDZvVExCM18tcU51enJOdnlpcXhfclBDNlA5VE1x
Ry1MTkUmZT0KPiA+Pj4+Pgo+ID4+Pj4+Cj4gPj4+Pj4KPiA+Pj4+PiBPbiBXZWQsIE9jdCAyMywg
MjAxOSBhdCA0OjExIFBNIFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4+
Pj4+PiBPbiBNb24sIE9jdCAxNCwgMjAxOSBhdCAwNDoxNzoxNlBNICswMjAwLCBOZWlsIEFybXN0
cm9uZyB3cm90ZToKPiA+Pj4+Pj4+IFRoaXMgcGF0Y2ggdXBkYXRlcyB0aGUgZG9jdW1lbnRhdGlv
biB3aXRoIHRoZSBpbmZvcm1hdGlvbiByZWxhdGVkCj4gPj4+Pj4+PiB0byB0aGUgcXVpcmtzIHRo
YXQgbmVlZHMgdG8gYmUgYWRkZWQgZm9yIGRpc2FibGluZyBhbGwgU3VwZXJTcGVlZCBYSENpCj4g
Pj4+Pj4+PiBpbnN0YW5jZXMgaW4gcGFyayBtb2RlLgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IENDOiBE
b25namluIEtpbSA8dG9iZXR0ZXJAZ21haWwuY29tPgo+ID4+Pj4+Pj4gQ2M6IEppYW54aW4gUGFu
IDxqaWFueGluLnBhbkBhbWxvZ2ljLmNvbT4KPiA+Pj4+Pj4+IFJlcG9ydGVkLWJ5OiBUaW0gPGVs
YXRsbGF0QGdtYWlsLmNvbT4KPiA+Pj4+Pj4+IFNpZ25lZC1vZmYtYnk6IE5laWwgQXJtc3Ryb25n
IDxuYXJtc3Ryb25nQGJheWxpYnJlLmNvbT4KPiA+Pj4+Pj4+IC0tLQo+ID4+Pj4+Pj4gICBEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL2R3YzMudHh0IHwgMiArKwo+ID4+Pj4+
Pj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4gPj4+Pj4+IFNpZ2gsIHdoYXQn
cyBvbmUgbW9yZSB0byB0aGUgbmV2ZXIgZW5kaW5nIGxpc3Qgb2YgcXVpcmtzLi4uCj4gPj4+Pj4+
Cj4gPj4+Pj4+IEFja2VkLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgo+ID4KPiA+
IEJSLAo+ID4gVGhpbmgKPiA+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
