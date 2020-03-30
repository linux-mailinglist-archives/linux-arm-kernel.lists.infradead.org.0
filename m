Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61EF619832F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 20:16:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ytJWW8o9beaxpZKHZUu7mDe20XO+uTFkQekHj1hyMk=; b=BFZ+JBmRw8jzfm
	i5S9DdhO2qJGWfRYzPHKAPeOobo/iR2IhDUEmSajgr+eEAin5xNr/01vAlnpiIbV8cocYBh4ItIGd
	G17vszmFZwODg/k88o+kZWHyJgEDWxwTajBwzl1NgtA+hP12PfCYZOCnfxc21GYODyKluxAPKKR6N
	4Hho60M8C1YCmuVZIqMuy3mmQ2Lm12CqNHOfUsmfbUU6GcFTcNGw6QHsrTeCuuUYx+AKkYYCQ5quR
	VwktNVyD/tiCXE7F0GaOuhXN4usP9eMllY7nOZx/2QpNIN2DCncm00Yi1wqM1e2U1SHjV8AabczNC
	huo3qbmDPNN4VktGdaaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIyxX-0001l0-Vp; Mon, 30 Mar 2020 18:16:28 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIyxP-0001kf-Iw
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 18:16:21 +0000
Received: by mail-ot1-x341.google.com with SMTP id 22so19143575otf.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 11:16:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=hc3WCyyOJyVb1bVm2+erTwMdDqb8JOvqNVevK3r7VwI=;
 b=ai6wI+ycqrkzpl/S2YJzZdSui/OqHxW+zs9NCXGh7U6Ao8RzV+b6ZH92pP+mJSeMDg
 3zFsBbaW5dHtjdptA2ZKynOAnrY/IFF/rbTO3di295t+BhXrNfSP1TZfcKFLzaaoOfUV
 bVKuFgdn0MvaqJSHswPZS+XldoySduiB80LONN0NvR4dSXufP5iF9jGiXSGWYDD9cBxG
 xAJILj6xA/q3qaZGqm/kdv34TUUojc70Ogmsn38uo995wLI4LwNDS5srJoxLtqNTnQ0w
 U9IlzFhfaJqL2AEjBt3teQ6hoVJOurZOyN+6s5i5g5RZL39LrAlRA3Usk0jJOm4IPLXJ
 aPDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=hc3WCyyOJyVb1bVm2+erTwMdDqb8JOvqNVevK3r7VwI=;
 b=JFBt5B+YHYM6t5r+IiPLjdYSeQqbsvxWWpwpy55rRZB7vKD+GzFQcEDQU3ZhAaQ4a3
 +1cyEbfBv+qFe/2Ui7sFsRIvHn6/C44usWNAbbg2FdsngM2qc8tx20ngtQ2Dx72MI4jk
 ly2uMTQxQSACFTm2/xC6U1cR6dkrFCnodYz9szMtdXvZ4AIDuZSThEyAOEOCFIk32MP8
 bDi15aBpqpeFnwVlS6Fa2B+jw0jIOJnzQsnImc9wgIxulqstCs/LYvlnRRw2thAX4VJY
 YDlSm8awFH0Bi3yi/j4LWZ79tU38SmlNbBytyWr+I/aRvYAlXy/RBK96hMaUxcgYnYxu
 DiOA==
X-Gm-Message-State: ANhLgQ0c1mMBkeYHVV6YIlXJZCzN1gDAh7wbZBs8PwVchv5nyHqzT+bQ
 KN9GTv5zHay7u4cym4vR0KU=
X-Google-Smtp-Source: ADFU+vvlSpRwHKn4r6g703Ne60gh2l2x19YSD2cUdpHUPeweDs5ZyHaHm8b4wc+Bl5wfRYsNGn1JCA==
X-Received: by 2002:a05:6830:10a:: with SMTP id
 i10mr10498831otp.190.1585592178291; 
 Mon, 30 Mar 2020 11:16:18 -0700 (PDT)
Received: from andrews-mbp-2.attlocal.net
 ([2600:1700:19e0:3310:81db:d33f:7ec:a679])
 by smtp.gmail.com with ESMTPSA id o1sm4480246otl.49.2020.03.30.11.16.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 30 Mar 2020 11:16:17 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
Subject: Re: [PATCH 2/2] ARM: dts: aspeed: zaius: Add gpio line names
From: Andrew Geissler <geissonator@gmail.com>
In-Reply-To: <294a52cd-2f60-41e5-a58f-a74151a83b08@www.fastmail.com>
Date: Mon, 30 Mar 2020 13:16:16 -0500
Message-Id: <9360D2B2-8242-4BA1-BF06-8916E87EDE67@gmail.com>
References: <20200306170218.79698-1-geissonator@yahoo.com>
 <20200306170218.79698-2-geissonator@yahoo.com>
 <294a52cd-2f60-41e5-a58f-a74151a83b08@www.fastmail.com>
To: Andrew Jeffery <andrew@aj.id.au>
X-Mailer: Apple Mail (2.3608.60.0.2.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_111619_650717_0B9A7330 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geissonator[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 WEIRD_QUOTING          BODY: Weird repeated double-quotation marks
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree <devicetree@vger.kernel.org>, linux-aspeed@lists.ozlabs.org,
 openbmc@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, Joel Stanley <joel@jms.id.au>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IE9uIE1hciAyNiwgMjAyMCwgYXQgNjoyMCBQTSwgQW5kcmV3IEplZmZlcnkgPGFuZHJld0Bh
ai5pZC5hdT4gd3JvdGU6Cj4gCj4gCj4gCj4gT24gU2F0LCA3IE1hciAyMDIwLCBhdCAwMzozMiwg
QW5kcmV3IEdlaXNzbGVyIHdyb3RlOgo+PiBOYW1lIHRoZSBHUElPcyB0byBoZWxwIHVzZXJzcGFj
ZSB3b3JrIHdpdGggdGhlbS4gVGhlIG5hbWVzIGRlc2NyaWJlIHRoZQo+PiBmdW5jdGlvbmFsaXR5
IHRoZSBsaW5lcyBwcm92aWRlLCBub3QgdGhlIG5ldCBvciBiYWxsIG5hbWUuIFRoaXMgbWFrZXMg
aXQKPj4gZWFzaWVyIHRvIHNoYXJlIHVzZXJzcGFjZSBjb2RlIGFjcm9zcyBkaWZmZXJlbnQgc3lz
dGVtcyBhbmQgbWFrZXMgdGhlCj4+IHVzZSBvZiB0aGUgbGluZXMgbW9yZSBvYnZpb3VzLgo+PiAK
Pj4gU2lnbmVkLW9mZi1ieTogQW5kcmV3IEdlaXNzbGVyIDxnZWlzc29uYXRvckB5YWhvby5jb20+
Cj4gCj4gU28gd2UncmUgY3JlYXRpbmcgYSBiaXQgb2YgYW4gYWQtaG9jIEFCSSBoZXJlIGJldHdl
ZW4gdGhlIERUIGFuZCB1c2Vyc3BhY2UuCj4gCj4gV2hlcmUgYXJlIHdlIGRvY3VtZW50aW5nIGl0
PwoKWWVhaCwgc28gZmFyIGl04oCZcyBiYXNpY2FsbHkgZGVzaWduIGJ5IHByZWNlZGVudC4gSWYg
eW91IHdhbnQgeW91ciBPcGVuQk1DCmZ1bmN0aW9uIHRvIHdvcmsgdGhlbiBmb2xsb3cgdGhlIHN0
YW5kYXJkcyB3ZSdyZSBzZXR0aW5nIGluIG90aGVyIGR0c+KAmXMuCgpJcyB0aGVyZSBhIGdvb2Qg
cGxhY2UgdG8gZG9jdW1lbnQgdGhpcz8gSSBjb3VsZCBjcmVhdGUgYSBPcGVuQk1DIGRlc2lnbgpk
b2MgYnV0IHRoYXQgd291bGQgbm90IGFkZHJlc3Mgbm9uLU9wZW5CTUMgYXJlYXMuCgo+IAo+IEdl
bmVyYWxseSBJIHRoaW5rIHRoZSBpZGVhIGlzIGdvb2QgdGhvdWdoLCBzbzoKPiAKPiBBY2tlZC1i
eTogQW5kcmV3IEplZmZlcnkgPGFuZHJld0Bhai5pZC5hdT4KClRoYW5rcwoKPiAKPj4gLS0tCj4+
IGFyY2gvYXJtL2Jvb3QvZHRzL2FzcGVlZC1ibWMtb3BwLXphaXVzLmR0cyB8IDM3ICsrKysrKysr
KysrKysrKysrKystLS0KPj4gMSBmaWxlIGNoYW5nZWQsIDMzIGluc2VydGlvbnMoKyksIDQgZGVs
ZXRpb25zKC0pCj4+IAo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvYXNwZWVkLWJt
Yy1vcHAtemFpdXMuZHRzIAo+PiBiL2FyY2gvYXJtL2Jvb3QvZHRzL2FzcGVlZC1ibWMtb3BwLXph
aXVzLmR0cwo+PiBpbmRleCBiYzYwZWMyOTE2ODEuLjRiY2M4MjA0NjM2MiAxMDA2NDQKPj4gLS0t
IGEvYXJjaC9hcm0vYm9vdC9kdHMvYXNwZWVkLWJtYy1vcHAtemFpdXMuZHRzCj4+ICsrKyBiL2Fy
Y2gvYXJtL2Jvb3QvZHRzL2FzcGVlZC1ibWMtb3BwLXphaXVzLmR0cwo+PiBAQCAtNDc4LDMyICs0
NzgsNjEgQEAKPj4gCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+IAlwaW5jdHJsLTAgPSA8
JnBpbmN0cmxfZ3Bpb2hfdW5iaWFzZWQ+Owo+PiAKPj4gKwlncGlvLWxpbmUtbmFtZXMgPQo+PiAr
CS8qQTAtQTcqLwkiIiwiY2ZhbS1yZXNldCIsIiIsIiIsIiIsIiIsIiIsIiIsCj4+ICsJLypCMC1C
NyovCSIiLCIiLCIiLCIiLCIiLCIiLCIiLCIiLAo+PiArCS8qQzAtQzcqLwkiIiwiIiwiIiwiIiwi
IiwiIiwiIiwiIiwKPj4gKwkvKkQwLUQ3Ki8JImZzaS1lbmFibGUiLCIiLCIiLCIiLCIiLCJsZWQt
c3lzLWJvb3Qtc3RhdHVzIiwibGVkLWF0dGVudGlvbiIsCj4+ICsJCQkJImxlZC1mYXVsdCIsCj4+
ICsJLypFMC1FNyovCSIiLCIiLCIiLCIiLCIiLCIiLCIiLCJwcmVzZW5jZS1wY2llLWUyYiIsCj4+
ICsJLypGMC1GNyovCSIiLCIiLCIiLCIiLCIiLCIiLCIiLCJjaGVja3N0b3AiLAo+PiArCS8qRzAt
RzcqLwkiZnNpLWNsb2NrIiwiZnNpLWRhdGEiLCIiLCIiLCIiLCIiLCIiLCIiLAo+PiArCS8qSDAt
SDcqLwkib25ld2lyZTAiLCJvbmV3aXJlMSIsIm9uZXdpcmUyIiwib25ld2lyZTMiLCIiLCIiLCIi
LCIiLAo+PiArCS8qSTAtSTcqLwkiIiwiIiwiIiwicG93ZXItYnV0dG9uIiwiIiwiIiwiIiwiIiwK
Pj4gKwkvKkowLUo3Ki8JIiIsIiIsIiIsIiIsIiIsIiIsIiIsIiIsCj4+ICsJLypLMC1LNyovCSIi
LCIiLCIiLCIiLCIiLCIiLCIiLCIiLAo+PiArCS8qTDAtTDcqLwkiIiwiIiwiIiwiIiwiIiwiIiwi
IiwiIiwKPj4gKwkvKk0wLU03Ki8JIiIsIiIsIiIsIiIsIiIsIiIsIiIsIiIsCj4+ICsJLypOMC1O
NyovCSIiLCIiLCIiLCIiLCIiLCIiLCIiLCIiLAo+PiArCS8qTzAtTzcqLwkiIiwiIiwiIiwiIiwi
aXNvX3UxNjRfZW4iLCIiLCJmc2ktdHJhbnMiLCIiLAo+PiArCS8qUDAtUDcqLwkibmNzaV9tdXhf
ZW5fbiIsImJtY19pMmMyX3N3X3JzdF9uIiwiIiwiYm1jX2kyYzVfc3dfcnN0X24iLCIiLAo+PiAr
CQkJCSIiLCJmc2ktbXV4IiwiIiwKPj4gKwkvKlEwLVE3Ki8JIiIsIiIsIiIsIiIsIiIsIiIsIiIs
IiIsCj4+ICsJLypSMC1SNyovCSIiLCIiLCIiLCIiLCIiLCIiLCIiLCIiLAo+PiArCS8qUzAtUzcq
LwkiIiwiIiwiIiwiIiwiIiwiIiwiIiwiIiwKPj4gKwkvKlQwLVQ3Ki8JIiIsIiIsIiIsIiIsIiIs
IiIsIiIsIiIsCj4+ICsJLypVMC1VNyovCSIiLCIiLCIiLCIiLCIiLCIiLCIiLCIiLAo+PiArCS8q
VjAtVjcqLwkiIiwiIiwiIiwiIiwiIiwiIiwiIiwiIiwKPj4gKwkvKlcwLVc3Ki8JIiIsIiIsIiIs
IiIsIiIsIiIsIiIsIiIsCj4+ICsJLypYMC1YNyovCSIiLCIiLCIiLCIiLCIiLCIiLCIiLCIiLAo+
PiArCS8qWTAtWTcqLwkiIiwiIiwiIiwiIiwiIiwiIiwiIiwiIiwKPj4gKwkvKlowLVo3Ki8JIiIs
IiIsIiIsIiIsIiIsIiIsIiIsIiIsCj4+ICsJLypBQTAtQUE3Ki8JIiIsIiIsImxlZC1oZGQtZmF1
bHQiLCIiLCIiLCIiLCIiLCIiLAo+PiArCS8qQUIwLUFCNyovCSIiLCIiLCIiLCIiLCIiLCIiLCIi
LCIiLAo+PiArCS8qQUMwLUFDNyovCSIiLCIiLCIiLCIiLCIiLCIiLCIiLCIiOwo+PiArCj4+IAls
aW5lX2lzb191MTQ2X2VuIHsKPj4gCQlncGlvLWhvZzsKPj4gCQlncGlvcyA9IDxBU1BFRURfR1BJ
TyhPLCA0KSBHUElPX0FDVElWRV9ISUdIPjsKPj4gCQlvdXRwdXQtaGlnaDsKPj4gLQkJbGluZS1u
YW1lID0gImlzb191MTY0X2VuIjsKPj4gCX07Cj4+IAo+PiAJbmNzaV9tdXhfZW5fbiB7Cj4+IAkJ
Z3Bpby1ob2c7Cj4+IAkJZ3Bpb3MgPSA8QVNQRUVEX0dQSU8oUCwgMCkgR1BJT19BQ1RJVkVfSElH
SD47Cj4+IAkJb3V0cHV0LWxvdzsKPj4gLQkJbGluZS1uYW1lID0gIm5jc2lfbXV4X2VuX24iOwo+
PiAJfTsKPj4gCj4+IAlsaW5lX2JtY19pMmMyX3N3X3JzdF9uIHsKPj4gCQlncGlvLWhvZzsKPj4g
CQlncGlvcyA9IDxBU1BFRURfR1BJTyhQLCAxKSBHUElPX0FDVElWRV9ISUdIPjsKPj4gCQlvdXRw
dXQtaGlnaDsKPj4gLQkJbGluZS1uYW1lID0gImJtY19pMmMyX3N3X3JzdF9uIjsKPj4gCX07Cj4+
IAo+PiAJbGluZV9ibWNfaTJjNV9zd19yc3RfbiB7Cj4+IAkJZ3Bpby1ob2c7Cj4+IAkJZ3Bpb3Mg
PSA8QVNQRUVEX0dQSU8oUCwgMykgR1BJT19BQ1RJVkVfSElHSD47Cj4+IAkJb3V0cHV0LWhpZ2g7
Cj4+IC0JCWxpbmUtbmFtZSA9ICJibWNfaTJjNV9zd19yc3RfbiI7Cj4+IAl9Owo+PiB9Owo+PiAK
Pj4gLS0gCj4+IDIuMjEuMCAoQXBwbGUgR2l0LTEyMikKPj4gCj4+IAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
