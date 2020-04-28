Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C531BB94B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 10:56:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PLNmeEROhnumkFAhgMfouWLz+WkivtNc7XcStNIyA9c=; b=KuJyyskhh/tehQ
	QOpqhPx5J3O8VxuQ5azQLHPeSTwSc7ZCqFZ5vIfQDag8+J5OEu+SLPy3yMSORxkzKm210oa93ZzUu
	6p+z8c/1vhGrEcQyuA+Ndw6CRpUriWFGMfro0ScpE4dzNgyyqIpkPvq7EQFtYtvZcLtZEyc7jOCz+
	mqf5cJQcqrpTK+34xX4ftRkCd5cPrCjfUrwM1TCyEAMw765WxVaK5oMAGlky30lg9VOzhagrpvoq9
	FuhlBDX8njwZzSv+FpODP2u2/1RgAq/LAus8+/Y8FqM3Z1QbstuipPEDXcsbrZt7+mj4T8zzusP6j
	Uo4rNgXfIajsQUfnf/+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTM2F-0006wE-Cr; Tue, 28 Apr 2020 08:56:11 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTM24-0006vn-6f
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 08:56:01 +0000
Received: by mail-il1-x144.google.com with SMTP id w6so19548707ilg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 01:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=TD/lnuFC44QRgJpTGVlf3YDYyxHlyiyz2n23ed9C6mM=;
 b=X0C8oWWC7HBDefztnjqwVNF6CUzQX/XKsvz0/P0Gpxoi0RAKyYdc6pLqlm3Sv5rTOc
 36wrzvNTFC0VZMEIMnFqljO0jppeodCMx+v4ENiTI6GsS3IAOG/gkYK3ur+tQu9hpI0H
 Llm1dng014acptPeaRWLEthJwG5SKroInUG102Tsw37ySBPxiywhJGk6ajpZEz6IvS+l
 qaTqCJu93AB0A2gA2juzpeIyyFVvQ1RyVc9+2IaBbzDpF2G4ZO4oUWfGYp4V+wPkcO7V
 B/JD9Gds7XvfEJZ/qqi9XGjaYOhC8gtnZffMIwTGX2G01fGDH5pEjf/OXAs0tUjTo2eT
 yKsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=TD/lnuFC44QRgJpTGVlf3YDYyxHlyiyz2n23ed9C6mM=;
 b=Zc3SwqxecN/JQVm87N/xmDK4+qSLJArvHtDvuTVYqH+fhoPaKJah0ussedZsCXzYOt
 R4f/JYWp59TmecCPOTYa5P/x1R+1V20hVs9c2MJ9SGQ1s4ifCDmAIdw4/F+tpqk70Jn1
 3mHdKUrXMEAFa+c+wlt7dwxBbGcsrZMnDhuaidMBwuwjPXU4Q41OfJxTGTwHcpU5YeoM
 ULaU5BZro44OFt4Ls1/mSdve97T5KQD8Np0WgwSMqdVBoUgbsGtpJHiON9y5lbDwOaIW
 2S1owBeYABLXKJ7r8SJbN0I+p5OGkHXq/IWOdQ7SuV6/Uh61KqZwqhxmhNT3qjux5CXb
 +S+w==
X-Gm-Message-State: AGi0PuYI3mGEBAVIoHTBNHibQFl9TqtSfU9kKcf1T2SwuyxeefKFx5xp
 gbe4dyuEoSfDn7CFSsYHxtzvI1r14Md3j7Zkumg=
X-Google-Smtp-Source: APiQypI1+9N3ua5Z1bos34+qF798abCjulu/oQUQazj2tzQmHK/vdQIdGibMX1aIFSQg6JHmO/7h5kDmFG/UmZPLrC0=
X-Received: by 2002:a05:6e02:111:: with SMTP id
 t17mr23768711ilm.59.1588064158991; 
 Tue, 28 Apr 2020 01:55:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200426104115.22630-1-peron.clem@gmail.com>
 <20200426104115.22630-4-peron.clem@gmail.com>
 <20200428081321.ht3el26yqhsnyfm4@gilmour.lan>
In-Reply-To: <20200428081321.ht3el26yqhsnyfm4@gilmour.lan>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Tue, 28 Apr 2020 10:55:47 +0200
Message-ID: <CAJiuCcdVs_drs40Q6537BYfz24F7NmC6B8S5-Lt4V4ggs-FXWA@mail.gmail.com>
Subject: Re: [PATCH v3 3/7] ASoC: sun4i-i2s: Add support for H6 I2S
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_015600_247906_24915873 
X-CRM114-Status: GOOD (  24.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Takashi Iwai <tiwai@suse.com>,
 Rob Herring <robh+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Marcus Cooper <codekipper@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF4aW1lLAoKT24gVHVlLCAyOCBBcHIgMjAyMCBhdCAxMDoxMywgTWF4aW1lIFJpcGFyZCA8
bWF4aW1lQGNlcm5vLnRlY2g+IHdyb3RlOgo+Cj4gSGksCj4KPiBPbiBTdW4sIEFwciAyNiwgMjAy
MCBhdCAxMjo0MToxMVBNICswMjAwLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gPiBGcm9tOiBK
ZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+Cj4gPgo+ID4gSDYgSTJTIGlz
IHZlcnkgc2ltaWxhciB0byB0aGF0IGluIEgzLCBleGNlcHQgaXQgc3VwcG9ydHMgdXAgdG8gMTYK
PiA+IGNoYW5uZWxzLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEplcm5laiBTa3JhYmVjIDxqZXJu
ZWouc2tyYWJlY0BzaW9sLm5ldD4KPiA+IFNpZ25lZC1vZmYtYnk6IE1hcmN1cyBDb29wZXIgPGNv
ZGVraXBwZXJAZ21haWwuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxw
ZXJvbi5jbGVtQGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gIHNvdW5kL3NvYy9zdW54aS9zdW40aS1p
MnMuYyB8IDIyNyArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiA+ICAxIGZp
bGUgY2hhbmdlZCwgMjI3IGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvc291bmQv
c29jL3N1bnhpL3N1bjRpLWkycy5jIGIvc291bmQvc29jL3N1bnhpL3N1bjRpLWkycy5jCj4gPiBp
bmRleCA0MTk4YTU0MTBiZjkuLmEyM2M5ZjJhM2Y4YyAxMDA2NDQKPiA+IC0tLSBhL3NvdW5kL3Nv
Yy9zdW54aS9zdW40aS1pMnMuYwo+ID4gKysrIGIvc291bmQvc29jL3N1bnhpL3N1bjRpLWkycy5j
Cj4gPiBAQCAtMTI0LDYgKzEyNCwyMSBAQAo+ID4gICNkZWZpbmUgU1VOOElfSTJTX1JYX0NIQU5f
U0VMX1JFRyAgICAweDU0Cj4gPiAgI2RlZmluZSBTVU44SV9JMlNfUlhfQ0hBTl9NQVBfUkVHICAg
IDB4NTgKPiA+Cj4gPiArLyogRGVmaW5lcyByZXF1aXJlZCBmb3Igc3VuNTBpLWg2IHN1cHBvcnQg
Ki8KPiA+ICsjZGVmaW5lIFNVTjUwSV9INl9JMlNfVFhfQ0hBTl9TRUxfT0ZGU0VUX01BU0sgICAg
ICAgIEdFTk1BU0soMjEsIDIwKQo+ID4gKyNkZWZpbmUgU1VONTBJX0g2X0kyU19UWF9DSEFOX1NF
TF9PRkZTRVQob2Zmc2V0KSAgICAgKChvZmZzZXQpIDw8IDIwKQo+ID4gKyNkZWZpbmUgU1VONTBJ
X0g2X0kyU19UWF9DSEFOX1NFTF9NQVNLICAgICAgICAgICAgICAgR0VOTUFTSygxOSwgMTYpCj4g
PiArI2RlZmluZSBTVU41MElfSDZfSTJTX1RYX0NIQU5fU0VMKGNoYW4pICAgICAgICAgICAgICAo
KGNoYW4gLSAxKSA8PCAxNikKPiA+ICsjZGVmaW5lIFNVTjUwSV9INl9JMlNfVFhfQ0hBTl9FTl9N
QVNLICAgICAgICAgICAgICAgIEdFTk1BU0soMTUsIDApCj4gPiArI2RlZmluZSBTVU41MElfSDZf
STJTX1RYX0NIQU5fRU4obnVtX2NoYW4pICAgKCgoMSA8PCBudW1fY2hhbikgLSAxKSkKPiA+ICsK
PiA+ICsjZGVmaW5lIFNVTjUwSV9INl9JMlNfVFhfQ0hBTl9NQVAwX1JFRyAgICAgICAweDQ0Cj4g
PiArI2RlZmluZSBTVU41MElfSDZfSTJTX1RYX0NIQU5fTUFQMV9SRUcgICAgICAgMHg0OAo+ID4g
Kwo+ID4gKyNkZWZpbmUgU1VONTBJX0g2X0kyU19SWF9DSEFOX1NFTF9SRUcgICAgICAgIDB4NjQK
PiA+ICsjZGVmaW5lIFNVTjUwSV9INl9JMlNfUlhfQ0hBTl9NQVAwX1JFRyAgICAgICAweDY4Cj4g
PiArI2RlZmluZSBTVU41MElfSDZfSTJTX1JYX0NIQU5fTUFQMV9SRUcgICAgICAgMHg2Qwo+ID4g
Kwo+ID4gIHN0cnVjdCBzdW40aV9pMnM7Cj4gPgo+ID4gIC8qKgo+ID4gQEAgLTQ2OSw2ICs0ODQs
NjUgQEAgc3RhdGljIGludCBzdW44aV9pMnNfc2V0X2NoYW5fY2ZnKGNvbnN0IHN0cnVjdCBzdW40
aV9pMnMgKmkycywKPiA+ICAgICAgIHJldHVybiAwOwo+ID4gIH0KPiA+Cj4gPiArc3RhdGljIGlu
dCBzdW41MGlfaTJzX3NldF9jaGFuX2NmZyhjb25zdCBzdHJ1Y3Qgc3VuNGlfaTJzICppMnMsCj4g
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb25zdCBzdHJ1Y3Qgc25kX3BjbV9o
d19wYXJhbXMgKnBhcmFtcykKPiA+ICt7Cj4gPiArICAgICB1bnNpZ25lZCBpbnQgY2hhbm5lbHMg
PSBwYXJhbXNfY2hhbm5lbHMocGFyYW1zKTsKPiA+ICsgICAgIHVuc2lnbmVkIGludCBzbG90cyA9
IGNoYW5uZWxzOwo+ID4gKyAgICAgdW5zaWduZWQgaW50IGxyY2tfcGVyaW9kOwo+ID4gKwo+ID4g
KyAgICAgaWYgKGkycy0+c2xvdHMpCj4gPiArICAgICAgICAgICAgIHNsb3RzID0gaTJzLT5zbG90
czsKPiA+ICsKPiA+ICsgICAgIC8qIE1hcCB0aGUgY2hhbm5lbHMgZm9yIHBsYXliYWNrIGFuZCBj
YXB0dXJlICovCj4gPiArICAgICByZWdtYXBfd3JpdGUoaTJzLT5yZWdtYXAsIFNVTjUwSV9INl9J
MlNfVFhfQ0hBTl9NQVAxX1JFRywgMHg3NjU0MzIxMCk7Cj4gPiArICAgICByZWdtYXBfd3JpdGUo
aTJzLT5yZWdtYXAsIFNVTjUwSV9INl9JMlNfUlhfQ0hBTl9NQVAxX1JFRywgMHg3NjU0MzIxMCk7
Cj4gPiArCj4gPiArICAgICAvKiBDb25maWd1cmUgdGhlIGNoYW5uZWxzICovCj4gPiArICAgICBy
ZWdtYXBfdXBkYXRlX2JpdHMoaTJzLT5yZWdtYXAsIFNVTjhJX0kyU19UWF9DSEFOX1NFTF9SRUcs
Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgU1VONTBJX0g2X0kyU19UWF9DSEFOX1NFTF9N
QVNLLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgIFNVTjUwSV9INl9JMlNfVFhfQ0hBTl9T
RUwoY2hhbm5lbHMpKTsKPiA+ICsgICAgIHJlZ21hcF91cGRhdGVfYml0cyhpMnMtPnJlZ21hcCwg
U1VONTBJX0g2X0kyU19SWF9DSEFOX1NFTF9SRUcsCj4gPiArICAgICAgICAgICAgICAgICAgICAg
ICAgU1VONTBJX0g2X0kyU19UWF9DSEFOX1NFTF9NQVNLLAo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgIFNVTjUwSV9INl9JMlNfVFhfQ0hBTl9TRUwoY2hhbm5lbHMpKTsKPiA+ICsKPiA+ICsg
ICAgIHJlZ21hcF91cGRhdGVfYml0cyhpMnMtPnJlZ21hcCwgU1VOOElfSTJTX0NIQU5fQ0ZHX1JF
RywKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICBTVU44SV9JMlNfQ0hBTl9DRkdfVFhfU0xP
VF9OVU1fTUFTSywKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICBTVU44SV9JMlNfQ0hBTl9D
RkdfVFhfU0xPVF9OVU0oY2hhbm5lbHMpKTsKPiA+ICsgICAgIHJlZ21hcF91cGRhdGVfYml0cyhp
MnMtPnJlZ21hcCwgU1VOOElfSTJTX0NIQU5fQ0ZHX1JFRywKPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgICBTVU44SV9JMlNfQ0hBTl9DRkdfUlhfU0xPVF9OVU1fTUFTSywKPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgICBTVU44SV9JMlNfQ0hBTl9DRkdfUlhfU0xPVF9OVU0oY2hhbm5lbHMp
KTsKPiA+ICsKPiA+ICsgICAgIHN3aXRjaCAoaTJzLT5mb3JtYXQgJiBTTkRfU09DX0RBSUZNVF9G
T1JNQVRfTUFTSykgewo+ID4gKyAgICAgY2FzZSBTTkRfU09DX0RBSUZNVF9EU1BfQToKPiA+ICsg
ICAgIGNhc2UgU05EX1NPQ19EQUlGTVRfRFNQX0I6Cj4gPiArICAgICBjYXNlIFNORF9TT0NfREFJ
Rk1UX0xFRlRfSjoKPiA+ICsgICAgIGNhc2UgU05EX1NPQ19EQUlGTVRfUklHSFRfSjoKPiA+ICsg
ICAgICAgICAgICAgbHJja19wZXJpb2QgPSBwYXJhbXNfcGh5c2ljYWxfd2lkdGgocGFyYW1zKSAq
IHNsb3RzOwo+ID4gKyAgICAgICAgICAgICBicmVhazsKPiA+ICsKPiA+ICsgICAgIGNhc2UgU05E
X1NPQ19EQUlGTVRfSTJTOgo+ID4gKyAgICAgICAgICAgICBscmNrX3BlcmlvZCA9IHBhcmFtc19w
aHlzaWNhbF93aWR0aChwYXJhbXMpOwo+ID4gKyAgICAgICAgICAgICBicmVhazsKPiA+ICsKPiA+
ICsgICAgIGRlZmF1bHQ6Cj4gPiArICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+ID4gKyAg
ICAgfQo+ID4gKwo+ID4gKyAgICAgaWYgKGkycy0+c2xvdF93aWR0aCkKPiA+ICsgICAgICAgICAg
ICAgbHJja19wZXJpb2QgPSBpMnMtPnNsb3Rfd2lkdGg7Cj4gPiArCj4gPiArICAgICByZWdtYXBf
dXBkYXRlX2JpdHMoaTJzLT5yZWdtYXAsIFNVTjRJX0kyU19GTVQwX1JFRywKPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgICBTVU44SV9JMlNfRk1UMF9MUkNLX1BFUklPRF9NQVNLLAo+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgIFNVTjhJX0kyU19GTVQwX0xSQ0tfUEVSSU9EKGxyY2tfcGVy
aW9kKSk7Cj4gPiArCj4gPiArICAgICByZWdtYXBfdXBkYXRlX2JpdHMoaTJzLT5yZWdtYXAsIFNV
TjhJX0kyU19UWF9DSEFOX1NFTF9SRUcsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgU1VO
NTBJX0g2X0kyU19UWF9DSEFOX0VOX01BU0ssCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAg
U1VONTBJX0g2X0kyU19UWF9DSEFOX0VOKGNoYW5uZWxzKSk7Cj4gPiArCj4gPiArICAgICByZXR1
cm4gMDsKPiA+ICt9Cj4gPiArCj4gPiAgc3RhdGljIGludCBzdW40aV9pMnNfaHdfcGFyYW1zKHN0
cnVjdCBzbmRfcGNtX3N1YnN0cmVhbSAqc3Vic3RyZWFtLAo+ID4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBzdHJ1Y3Qgc25kX3BjbV9od19wYXJhbXMgKnBhcmFtcywKPiA+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgc3RydWN0IHNuZF9zb2NfZGFpICpkYWkpCj4gPiBAQCAtNjk0
LDYgKzc2OCwxMDggQEAgc3RhdGljIGludCBzdW44aV9pMnNfc2V0X3NvY19mbXQoY29uc3Qgc3Ry
dWN0IHN1bjRpX2kycyAqaTJzLAo+ID4gICAgICAgcmV0dXJuIDA7Cj4gPiAgfQo+ID4KPiA+ICtz
dGF0aWMgaW50IHN1bjUwaV9pMnNfc2V0X3NvY19mbXQoY29uc3Qgc3RydWN0IHN1bjRpX2kycyAq
aTJzLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGludCBmbXQp
Cj4KPiBUaGUgYWxpZ25tZW50IGlzIG9mZiBoZXJlCj4KPiA+ICt7Cj4gPiArICAgICB1MzIgbW9k
ZSwgdmFsOwo+ID4gKyAgICAgdTggb2Zmc2V0Owo+ID4gKwo+ID4gKyAgICAgLyoKPiA+ICsgICAg
ICAqIERBSSBjbG9jayBwb2xhcml0eQo+ID4gKyAgICAgICoKPiA+ICsgICAgICAqIFRoZSBzZXR1
cCBmb3IgTFJDSyBjb250cmFkaWN0cyB0aGUgZGF0YXNoZWV0LCBidXQgdW5kZXIgYQo+ID4gKyAg
ICAgICogc2NvcGUgaXQncyBjbGVhciB0aGF0IHRoZSBMUkNLIHBvbGFyaXR5IGlzIHJldmVyc2Vk
Cj4gPiArICAgICAgKiBjb21wYXJlZCB0byB0aGUgZXhwZWN0ZWQgcG9sYXJpdHkgb24gdGhlIGJ1
cy4KPiA+ICsgICAgICAqLwo+Cj4gRGlkIHlvdSBjaGVjayB0aGlzIG9yIGhhcyBpdCBiZWVuIGNv
cHktcGFzdGVkPwoKY29weS1wYXN0ZWQsIEkgd2lsbCBjaGVjayB0aGlzLgoKVGhhbmtzLApDbGVt
ZW50Cgo+Cj4gVGhhbmtzIQo+IE1heGltZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
