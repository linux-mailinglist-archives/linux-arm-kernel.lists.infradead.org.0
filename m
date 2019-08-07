Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9BDC84BCE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 14:41:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=23GdWTo+jAdSifQMWYoCarGlj7SQpPyncLde7gaeHvQ=; b=X61k3BB07OPPSX
	nQGJPH6XLSCLwQeBjLy8Ar1S+MQLZuSYUrpQD0Eo6hGny7l/bUB0FYEXgcGqYnV+Lz1wbTiK9unu2
	tP/Rre2n6SYpOX1h2i7ScD9dTZPOcXYQO6V4oKkuXLjSmeS9w6p8lgYNs9nK1X64kZWFDIpRyQqxl
	FUzSUb6K8VJu77C2UsjO3BfyxxJKxz/wCfs1qdgI3SqA+dxVWzW38PXFNlb2zmq2VSs/1B4yYlQXO
	ASHSzhB1YirLVxjgyv20DpsYA23H+vZSVegZxGgN+xSA3Gq8RtRs5iu6DhL1vh6bJNe79FAZqvnbo
	lDw7Fxvb6/6epgl4+xag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvLG2-0002nm-Md; Wed, 07 Aug 2019 12:41:34 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvLFg-0002nR-Ew
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 12:41:14 +0000
Received: by mail-qk1-x743.google.com with SMTP id m2so1338193qkd.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 05:41:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:references:in-reply-to:subject:date:message-id
 :mime-version:content-transfer-encoding:thread-index;
 bh=Kxw/PthwM0V5SgCT4C0WA+Lzn4G8PUw9iBHuGebD5D8=;
 b=skPFpHdPosQJZLaZjk9Z8yN8pR0XlqCbvf3bWn1B+H67i96iFrGBaY29mElXUiEHbs
 /tRLJA0vJogmKhJl6aU3hRit82eCEAZEN3ECkCaM1Qjqapomg7iaOAtmhNjlus3Vs1P6
 NIg6o3/MDVLptmy3QlLUgHECXjJFwpLTU7Qa0kNUCe+lsVdEQ8NgvoKIOQSWO+vVQpHu
 d9C54E/0i9CECPnVcRmZgfBRUGnlp0S+gQWtKTLSMQLC7rhk73gvQQ59LFT344EBTF6J
 Rg9YkfVcJS7Q/Mc6Z7hm1s8/uXXoigrUweYLyJH2+RrjcT6R9OSXraEuwbQ5dIrUxi74
 XXxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:references:in-reply-to:subject:date
 :message-id:mime-version:content-transfer-encoding:thread-index;
 bh=Kxw/PthwM0V5SgCT4C0WA+Lzn4G8PUw9iBHuGebD5D8=;
 b=knl9R1nP8r9x4l3sUTAaZiZOkThZIZ7XEkNlceMnEqNUb1KtBJWOkqcqECStIRbOC0
 eX4Keodz0u3SolnHRHCFJ+PnHB7feRY/u3xs3FS3mtlbffgm4n8Fben/X4OyO+B0t25P
 E+LBTlUhrUfpqGFxeFERGAifVJJFJViQwqQGXqyCtFsKMJjwXTofu2rldIIh8drBIMmp
 rIfRSmFDbAUNuZ8o3cQJ32pCXGUKvIXr43kzRw2OUgToJfm8Yk+CgOjN9oJZTV0U69Rt
 P3nOVh8iClaoKE9YCD9Zw/DENkvpEwwj75ylDeldtZSctQ8dPxkUaMv815UbNWe7xVjv
 GWNQ==
X-Gm-Message-State: APjAAAUQ2mW94D+d4EIScRybGmlmo78ZQ0KwnIAOE1abXThVA3rE+uao
 oGsHGvb48i35szW39sthNad+cDAh
X-Google-Smtp-Source: APXvYqzT4MKWXd5sm8uT+6dE+3S317X3TdUqrbXpqCNgwuNraBwMlNDEhtZFGlNKtUoLkcM6TTrriA==
X-Received: by 2002:a37:5e04:: with SMTP id s4mr3873110qkb.268.1565181670919; 
 Wed, 07 Aug 2019 05:41:10 -0700 (PDT)
Received: from GirolesWin7 (magopq1505w-lp140-01-70-26-203-177.dsl.bell.ca.
 [70.26.203.177])
 by smtp.gmail.com with ESMTPSA id c5sm55589390qta.5.2019.08.07.05.41.09
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 07 Aug 2019 05:41:10 -0700 (PDT)
From: "Martin Ayotte" <martinayotte@gmail.com>
To: "'Chen-Yu Tsai'" <wens@csie.org>,
 "'Maxime Ripard'" <maxime.ripard@bootlin.com>
References: <20190727210307.17607-1-sunil@medhas.org>
 <CAGb2v66S1+CSn=CYwZQOP8V+ZL+D9ayf6cvidzK5ENXOqKRGew@mail.gmail.com>
 <CAKQ8BtjLmhDgA8woY5NqaifODLUh_w_K4QYOUuqc4Six5Amerg@mail.gmail.com>
 <fd19b2e3-e340-f4fd-a320-1cfc45964f5b@medhas.org>
 <CAGb2v66w6y_0NLcT=WminsgK=QXpUPVnMWdCotMmgM1vgPByxw@mail.gmail.com>
 <de875c31-6cb3-8975-ac3d-de4ab3a851bd@medhas.org>
 <1955D9AD572C4F57A2D66B15EB8CF79C@GirolesWin7>
 <CAGb2v67oT0OV9p+KffBDFGz5BN5zR7=DhYLStwkagY=TXkskQA@mail.gmail.com>
 <20190807120104.ssj5cvx4hwicufrv@flea>
 <CAGb2v66vcQxjoi-0hhCOesT59Loo7Bw5M9fX8eCBWv-wM1CnoA@mail.gmail.com>
In-Reply-To: <CAGb2v66vcQxjoi-0hhCOesT59Loo7Bw5M9fX8eCBWv-wM1CnoA@mail.gmail.com>
Subject: RE: [PATCH v2] arm64: dts: allwinner: a64: Enable eMMC on
 A64-OLinuXino
Date: Wed, 7 Aug 2019 08:41:09 -0400
Message-ID: <F2C9263C5392464CA8321B59236D3251@GirolesWin7>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdVNGPkJKAFcOr5cS2qIJVD38l3ziQABCxNQ
X-MIMEOLE: Produced By Microsoft MimeOLE V6.1.7601.24158
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_054112_530956_D445E471 
X-CRM114-Status: GOOD (  22.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martinayotte[at]gmail.com)
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
Cc: 'Sunil Mohan Adapa' <sunil@medhas.org>,
 'linux-arm-kernel' <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UmlnaHQgISAKSSd2ZSBldmVuIHN0dWZmZWQgdGhlIG1pc3NpbmcgU1BJTk9SIG9uIG15IGJvYXJk
IGFuZCB1c2VkIGFuIG92ZXJsYXkgdG8gYWNjZXNzIGl0IHdpdGhvdXQgYW55IGlzc3VlIC4uLgoK
LS0tLS1NZXNzYWdlIGQnb3JpZ2luZS0tLS0tCkRlIDogQ2hlbi1ZdSBUc2FpIFttYWlsdG86d2Vu
c0Bjc2llLm9yZ10gCkVudm95w6kgOiBXZWRuZXNkYXksIEF1Z3VzdCAwNywgMjAxOSA4OjA5IEFN
CsOAIDogTWF4aW1lIFJpcGFyZApDYyA6IE1hcnRpbiBBeW90dGU7IFN1bmlsIE1vaGFuIEFkYXBh
OyBsaW51eC1hcm0ta2VybmVsCk9iamV0IDogUmU6IFtQQVRDSCB2Ml0gYXJtNjQ6IGR0czogYWxs
d2lubmVyOiBhNjQ6IEVuYWJsZSBlTU1DIG9uIEE2NC1PTGludVhpbm8KCk9uIFdlZCwgQXVnIDcs
IDIwMTkgYXQgODowMSBQTSBNYXhpbWUgUmlwYXJkIDxtYXhpbWUucmlwYXJkQGJvb3RsaW4uY29t
PiB3cm90ZToKPgo+IE9uIFR1ZSwgQXVnIDA2LCAyMDE5IGF0IDAyOjI1OjE3UE0gKzA4MDAsIENo
ZW4tWXUgVHNhaSB3cm90ZToKPiA+IE9uIE1vbiwgQXVnIDUsIDIwMTkgYXQgODo1OCBQTSBNYXJ0
aW4gQXlvdHRlIDxtYXJ0aW5heW90dGVAZ21haWwuY29tPiB3cm90ZToKPiA+ID4KPiA+ID4gRmlu
ZSBmb3IgbWUgdG9vLgo+ID4gPgo+ID4gPiBUaGFua3MgLgo+ID4gPgo+ID4gPiAtLS0tLU1lc3Nh
Z2UgZCdvcmlnaW5lLS0tLS0KPiA+ID4gRGUgOiBTdW5pbCBNb2hhbiBBZGFwYSBbbWFpbHRvOnN1
bmlsQG1lZGhhcy5vcmddCj4gPiA+IEVudm95w6kgOiBNb25kYXksIEF1Z3VzdCAwNSwgMjAxOSAx
OjI1IEFNCj4gPiA+IMSEIDogQ2hlbi1ZdSBUc2FpCj4gPiA+IENjIDogTWF4aW1lIFJpcGFyZDsg
TWFydGluIEF5b3R0ZTsgbGludXgtYXJtLWtlcm5lbAo+ID4gPiBPYmpldCA6IFJlOiBbUEFUQ0gg
djJdIGFybTY0OiBkdHM6IGFsbHdpbm5lcjogYTY0OiBFbmFibGUgZU1NQyBvbgo+ID4gPiBBNjQt
T0xpbnVYaW5vCj4gPiA+Cj4gPiA+IE9uIDA0LzA4LzE5IDg6MzMgcG0sIENoZW4tWXUgVHNhaSB3
cm90ZToKPiA+ID4gPiBPbiBGcmksIEF1ZyAyLCAyMDE5IGF0IDI6NDcgQU0gU3VuaWwgTW9oYW4g
QWRhcGEgPHN1bmlsQG1lZGhhcy5vcmc+IHdyb3RlOgo+ID4gPiA+Pgo+ID4gPiA+PiBPbiAwMS8w
OC8xOSA2OjQ5IGFtLCBNYXJ0aW4gQXlvdHRlIHdyb3RlOgo+ID4gPiA+Pj4gSWYgbXkgU09CIGNv
dWxkIGhlbHAgaGVyZSwgSSBkb24ndCBtaW5kIHNpbmNlIEkndmUgZG9uZSB0aGUgY29tbWl0Cj4g
PiA+ID4+PiBtb3JlIHRoYW4gYSB5ZWFyIGFnbyBmb3IgQXJtYmlhbiAuLi4KPiA+ID4gPj4+Cj4g
PiA+ID4+PiBTaWduZWQtb2ZmLWJ5OiBNYXJ0aW4gQXlvdHRlIDxtYXJ0aW5heW90dGVAZ21haS5j
b20+Cj4gPiA+ID4+PiBUZXN0ZWQtYnk6IE1hcnRpbiBBeW90dGUgPG1hcnRpbmF5b3R0ZUBnbWFp
LmNvbT4KPiA+ID4gPj4gZ21haS5jb20gaXMgbGlrZWx5IGEgdHlwby4KPiA+ID4gPj4KPiA+ID4g
Pj4+IE9uIFdlZCwgSnVsIDMxLCAyMDE5IGF0IDEwOjQyIFBNIENoZW4tWXUgVHNhaSA8d2Vuc0Bj
c2llLm9yZwo+ID4gPiA+Pj4KPiA+ID4gPj4+PiBUaGFua3MuIFRoZSBwYXRjaCBsb29rcyBnb29k
IG92ZXJhbGwuIFRoZSBhdXRob3JzaGlwIGlzIGEgbGl0dGxlCj4gPiA+ID4+Pj4gY29uZnVzaW5n
IHRob3VnaC4gSWYgaXQgd2FzIGluaXRpYWxseSBkb25lIGJ5IE1hcnRpbiAoQ0MtZWQpLCB0aGVu
Cj4gPiA+ID4+Pj4gaGUgc2hvdWxkIGJlIHRoZSBhdXRob3IsIGFuZCB3ZSBzaG91bGQgZ2V0IGhp
cyBTaWduZWQtb2ZmLWJ5IGlmCj4gPiA+ID4+Pj4gcG9zc2libGUuCj4gPiA+ID4+Cj4gPiA+ID4+
IE1hcnRpbiBpcyBpbmRlZWQgdGhlIG9yaWdpbmFsIGF1dGhvciBvZiB0aGUgcGF0Y2guIFRoYW5r
IHlvdSBmb3IKPiA+ID4gcmV2aWV3aW5nLgo+ID4gPiA+Cj4gPiA+ID4gSSdkIGxpa2UgdG8gYXBw
bHkgdGhpcyBwYXRjaCB3aXRoIE1hcnRpbiBhcyB0aGUgYXV0aG9yLCBpZiB0aGF0J3MgT0sgd2l0
aAo+ID4gPiB5b3UKPiA+ID4gPiBib3RoPwo+ID4gPgo+ID4gPiBUaGF0IGlzIGNvbXBsZXRlbHkg
b2theSB3aXRoIG1lLgo+ID4KPiA+IEFwcGxpZWQgZm9yIDUuNC4KPiA+Cj4gPiBJIHJlb3JkZXJl
ZCB0aGUgdGFncyBzbyB0aGV5IG1ha2UgbW9yZSBzZW5zZToKPiA+Cj4gPiBodHRwczovL2dpdC5r
ZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9zdW54aS9saW51eC5naXQvY29tbWl0
Lz9oPXN1bnhpL2R0LWZvci01LjQmaWQ9MDgzNDg4NzczMmRmNWFmNDFiNTliMmU0ZDUzMGZjMWY1
NDc4OTY1Zgo+Cj4gU29ycnkgZm9yIGJlaW5nIGxhdGUgb24gdGhpcywgYnV0IGl0IGxvb2tzIGxp
a2UgdGhlIGVNTUMsIE5BTkQgYW5kIFNQSQo+IHBpbnMgYXJlIGNvbmZsaWN0aW5nIG9uIHRoZSBB
NjQtT2xpbnV4aW5vIGRlc2lnbi4KPgo+IFRoZXJlJ3Mgbm8gY29uZmlndXJhdGlvbiB3aXRoIGEg
TkFORCwgc28gd2UgZG9uJ3QgcmVhbGx5IG5lZWQgdG8gd29ycnkKPiBhYm91dCB0aGF0LCBidXQg
aWYgd2UgbWVyZ2UgdGhpcyBpbiB0aGUgbWFpbiBEVCwgd2UnbGwgcHJldmVudCBhbnlvbmUKPiBm
cm9tIHVzaW5nIHRoYXQgRFQgb24gYW4gb2xpbnV4aW5vIHdpdGggYSBTUEkgZmxhc2guCj4KPiBJ
IHRoaW5rIHdlIHNob3VsZCBqdXN0IGNyZWF0ZSBlbW1jIGFuZCBTUEktZmxhc2ggdmFyaWFudHMg
b2YgdGhhdCBEVC4KCkFjdHVhbGx5IHRoZXkgYXJlbid0LiBPbGltZXggc3BlY2lmaWNhbGx5IHVz
ZXMgZU1NQyBtb2R1bGVzIHRoYXQgZG9uJ3QKdXNlIHRoZSBkYXRhIHN0cm9iZSBsaW5lLCBzbyBT
UEkgY2FuIGJlIHVzZWQgdG9nZXRoZXIuCgpDaGVuWXUKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
