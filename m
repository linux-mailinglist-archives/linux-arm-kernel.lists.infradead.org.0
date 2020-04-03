Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0155119DB4C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 18:19:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L+TyxGHfy5Nw8U2MEfYbhIz1f+DX2CtEfozOaPvieUk=; b=EVtv1ZirrzE3jw
	BYgE/1MgO0CZQGwn3SsxjX6FCzTVSIrfsXi/OnM9NwAd+8CJQbOn7pvnqQbhl8kSdZcnEufCC9/bv
	WTKwxUqKI6uHMVPthfy5eqeWFhrAIIG4hu7zMXwjuDLcy7xA7vTO75p9DTm3NNFY+3iSzksgI4L7w
	M0Rg1Fh2WwvVsWjedj/910TkpI9LoyunQkUeizyuR/EVrVptJymTZ4GR0pyAc7bAe3xTcu7sC4Ng/
	vNw4krDmTFtwIV5oq8d6880PfWfWkqOAjp3Q/E6eZlY0E9Nuwshkx9tSTE731e4jJIk8wIVEYtK6N
	uBZ7qiX3ZCJfZFceYt7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKP2E-0007Mm-Op; Fri, 03 Apr 2020 16:19:10 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKP29-0007MB-H7
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 16:19:07 +0000
Received: by mail-oi1-x241.google.com with SMTP id y71so6558681oia.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 09:19:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=vfUcEFpIecfa5phk+Cj5BK1agH676+gFMqNkyPySnNU=;
 b=DdFDFz2q+lRpwrK421yRNEfez1sLOWU8raR7jvvY4t65RJ615jwCRUugHdjp3QECXD
 9DA4Q0scR3LkOWuReNJy0sSDlq9CWoI18F15XqJHgA70pA1+vTdRwywrhjpQRrvnTi0W
 IsQZLbSGEOkB3r/mu/JNCjQJwqxdRjSP3UmWlPvEsjpKiZNL4QZVA/QzaCYZlzKMoqQj
 4/O4fPQ/pFvR9y6uWk5Fj92HR/5uCnjXe1t/LJkam4NgoHlgStWB5nFZNvr1zb3oBQHD
 3GMW3cwIyHjpFgV3PIVkl2+JjMM+p0s5BnOQtUVxsUYiruJU44hwkraKGaiurzcYL47T
 ljsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=vfUcEFpIecfa5phk+Cj5BK1agH676+gFMqNkyPySnNU=;
 b=SG1UyqnOS8916aGoXEHX3Kt/mM5u7ugPuQAB8dLyzG1jlXkbsLpnIXF+4HLREigmfl
 GR/wBpBOSAiuJsGTEX451lpc8OCpfjJ+4TmofBmIrtxfCxIIwEmFBxWc2vLZhDzQMbaw
 3+cMfQGQhkl1PhkQIQvV3CaluMa/JMoLj0AG+JWClo3m0hz0nxHowImxWO7qnMLT3fXj
 eRPnJAyUWhJj6V/+ZR/K+OzisEbZ3k3Na5BPhujGioTWm6tfF2OvypUf/KKN9BcH33qc
 3GbysDIJ3EDu/EsfK5wHF3aRZgHDrqOLyBIzdhWL4LKx2utqieHgDHWiuiCY3/Oi+hLc
 DgUg==
X-Gm-Message-State: AGi0PuZLkFwWxhr2xQCouOlTTS+f0mwS1sec/LQzHb6hOthNDgRonYtH
 Tkfxv3eaI6uqY0AjFikG7Vo=
X-Google-Smtp-Source: APiQypLdIe/bnR5Sgh9v1UByIaBo9hKSJA7hdJa7okRoa7dJKQmZWyXte4DCMLxfGDR33+o59+3cYw==
X-Received: by 2002:aca:acc2:: with SMTP id v185mr3748001oie.27.1585930744166; 
 Fri, 03 Apr 2020 09:19:04 -0700 (PDT)
Received: from andrews-mbp-2.attlocal.net
 ([2600:1700:19e0:3310:4ee:b6ec:777a:fdfb])
 by smtp.gmail.com with ESMTPSA id i17sm2193668otc.16.2020.04.03.09.19.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 Apr 2020 09:19:03 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: [PATCH 2/2] ARM: dts: aspeed: zaius: Add gpio line names
From: Andrew Geissler <geissonator@gmail.com>
In-Reply-To: <48c9bd0e-3b5c-4f76-830f-4b0bd962148b@www.fastmail.com>
Date: Fri, 3 Apr 2020 11:19:02 -0500
Message-Id: <270714A1-2910-4B84-86B6-46177F439A52@gmail.com>
References: <20200306170218.79698-1-geissonator@yahoo.com>
 <20200306170218.79698-2-geissonator@yahoo.com>
 <294a52cd-2f60-41e5-a58f-a74151a83b08@www.fastmail.com>
 <9360D2B2-8242-4BA1-BF06-8916E87EDE67@gmail.com>
 <48c9bd0e-3b5c-4f76-830f-4b0bd962148b@www.fastmail.com>
To: Andrew Jeffery <andrew@aj.id.au>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_091905_566697_1394738C 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: 0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org] 1.1 PDS_OTHER_BAD_TLD      Untrustworthy TLDs
 [URI: gerrit.openbmc-project.xyz] [(xyz)]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geissonator[at]gmail.com]
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IE9uIEFwciAyLCAyMDIwLCBhdCA3OjUxIFBNLCBBbmRyZXcgSmVmZmVyeSA8YW5kcmV3QGFq
LmlkLmF1PiB3cm90ZToKPiAKPiAKPiAKPiBPbiBUdWUsIDMxIE1hciAyMDIwLCBhdCAwNDo0Niwg
QW5kcmV3IEdlaXNzbGVyIHdyb3RlOgo+PiAKPj4gCj4+PiBPbiBNYXIgMjYsIDIwMjAsIGF0IDY6
MjAgUE0sIEFuZHJldyBKZWZmZXJ5IDxhbmRyZXdAYWouaWQuYXU+IHdyb3RlOgo+Pj4gCj4+PiAK
Pj4+IAo+Pj4gT24gU2F0LCA3IE1hciAyMDIwLCBhdCAwMzozMiwgQW5kcmV3IEdlaXNzbGVyIHdy
b3RlOgo+Pj4+IE5hbWUgdGhlIEdQSU9zIHRvIGhlbHAgdXNlcnNwYWNlIHdvcmsgd2l0aCB0aGVt
LiBUaGUgbmFtZXMgZGVzY3JpYmUgdGhlCj4+Pj4gZnVuY3Rpb25hbGl0eSB0aGUgbGluZXMgcHJv
dmlkZSwgbm90IHRoZSBuZXQgb3IgYmFsbCBuYW1lLiBUaGlzIG1ha2VzIGl0Cj4+Pj4gZWFzaWVy
IHRvIHNoYXJlIHVzZXJzcGFjZSBjb2RlIGFjcm9zcyBkaWZmZXJlbnQgc3lzdGVtcyBhbmQgbWFr
ZXMgdGhlCj4+Pj4gdXNlIG9mIHRoZSBsaW5lcyBtb3JlIG9idmlvdXMuCj4+Pj4gCj4+Pj4gU2ln
bmVkLW9mZi1ieTogQW5kcmV3IEdlaXNzbGVyIDxnZWlzc29uYXRvckB5YWhvby5jb20+Cj4+PiAK
Pj4+IFNvIHdlJ3JlIGNyZWF0aW5nIGEgYml0IG9mIGFuIGFkLWhvYyBBQkkgaGVyZSBiZXR3ZWVu
IHRoZSBEVCBhbmQgdXNlcnNwYWNlLgo+Pj4gCj4+PiBXaGVyZSBhcmUgd2UgZG9jdW1lbnRpbmcg
aXQ/Cj4+IAo+PiBZZWFoLCBzbyBmYXIgaXTigJlzIGJhc2ljYWxseSBkZXNpZ24gYnkgcHJlY2Vk
ZW50LiBJZiB5b3Ugd2FudCB5b3VyIE9wZW5CTUMKPj4gZnVuY3Rpb24gdG8gd29yayB0aGVuIGZv
bGxvdyB0aGUgc3RhbmRhcmRzIHdlJ3JlIHNldHRpbmcgaW4gb3RoZXIgZHRz4oCZcy4KPj4gCj4+
IElzIHRoZXJlIGEgZ29vZCBwbGFjZSB0byBkb2N1bWVudCB0aGlzPyBJIGNvdWxkIGNyZWF0ZSBh
IE9wZW5CTUMgZGVzaWduCj4+IGRvYyBidXQgdGhhdCB3b3VsZCBub3QgYWRkcmVzcyBub24tT3Bl
bkJNQyBhcmVhcy4KPiAKPiBEb24ndCBsZXQgcGVyZmVjdCBiZSB0aGUgZW5lbXkgb2YgZ29vZCBl
bm91Z2ggOikgTGV0cyBkb2N1bWVudCBpdCBpbiBPcGVuQk1DCj4gYW5kIHRoZW4gbG9vayBhdCBh
bHRlcm5hdGl2ZXMgaWYgd2UgZmluZCBpdCdzIG5lY2Vzc2FyeS4gSSBkb24ndCB0aGluayB3ZSB3
aWxsIGdpdmVuCj4gdGhhdCB0aGUgY29udHJhY3QgaXMgYmV0d2VlbiB0aGUga2VybmVsIGFuZCBP
cGVuQk1DIHVzZXJzcGFjZS4KCk9rLCBJIHB1dCBhIGRvYyB1cCBmb3IgcmV2aWV3IGhlcmU6Cmh0
dHBzOi8vZ2Vycml0Lm9wZW5ibWMtcHJvamVjdC54eXovYy9vcGVuYm1jL2RvY3MvKy8zMDk4OAoK
PiAKPiBBbmRyZXcKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
