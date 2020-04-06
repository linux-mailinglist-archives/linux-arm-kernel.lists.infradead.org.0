Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1F019F210
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 11:08:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=la4JSVPMXqKRTWIaoBE1kInzIGgPOyh9Q5wPyivuJ8I=; b=RaMrpTjOXdF477
	TRwlAzdCtwOQUo8ZlN83C6vuRb9mMn/a1z/R65OG+9p5rv1LEcH3PFXVjvptcoJviVBb9dERni5gW
	84tQkGW7jCi5kd4tUt/+hyckCyIQ3ezhRON0Pkj2yD/bQcynyhaWyIfMAfziBxSA4Sv8FYB956LIH
	37TToxURyspfe3f5Czi3tvqWacS6C0Rhmn5Fs2nnzEWcIroZw93KnzKgjPBbH32fWEbaUKtvsA8qg
	6A6Msj9nSRaqu5agx73/v/fn8zRyr52nk3gmljc3+XHXxlmY61UpgONTqP4/RHelbH9OwJt0exw4o
	WX2H08Rj6mhNWv9rAGhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLNjf-0003eO-I7; Mon, 06 Apr 2020 09:08:03 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLNjZ-0003de-Pa
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 09:07:59 +0000
Received: by mail-il1-x144.google.com with SMTP id x16so13904474ilp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 02:07:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=/9j8DdZJYyLVGpLvuhYgYAvXmfCc0kHfDTcnuG7viz0=;
 b=HNSAOniFzM6jm6vp0c57iOa9y0/X3uZ2z5tkjrwiIng1IfKsrxBzQ0hhjx3XuZZ/u2
 6hLtPhK9VhleZ1LllosidRlLXtoSbp6R7Vr3okE/i94RO7FVsmvnjqon+5zEYHwdYAeM
 Mk5i+86U7o50T/KDGfFAAeSlxyR6QwXvOyFrEOeJQKH4j7U5wUNtBfq4toVis7WZlTfA
 UwGyi5mXfJ/ZDv3sWnLbmiupP80JSFKlYxmq1PjyMUITzZwcxVW8Vv8ijJHF2kICYfc8
 C9IqSAekroHkP5mYGQDSXWbT9DOxRcpZt3aw9vEiPEiF9nfZKvo1BtNlUZleKXptI0sk
 kPKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=/9j8DdZJYyLVGpLvuhYgYAvXmfCc0kHfDTcnuG7viz0=;
 b=X2uivzkm8gi/PF98xUxRe3Ubg8BwDo9dpm2JfyCNwd75+6xxeI1iJGLM+WUgi1IhUm
 gS2c+sVwHn/GmLR61+LvjDiz8Ck7FMIXIHNuShXZZtMrizke/UfCGHv9ZAyhfwYOpmy+
 x7EPyCCFLlCBD5CkyFcMeI9ZK5LkOX9Vl1za3xt8lE/0Aus/97tzyiuYp1IpGbRc+59W
 wakiQdvAM044zhQQVjGIDB4mZT7Ub8dOgpbUbv5H1NDitgCA5W1gFe4x7U3glezSOfCj
 6TlEZUsYOYX/sbKHwnl6cq7ErgTJgS+Bsgvhgk+00BKaVWmUrSu29DAEbE3jEixjLO4i
 oy2Q==
X-Gm-Message-State: AGi0PubdjWh2Zsudwc+HlRE1wq9DSxH00VLpoASZdZNA7Hw9au63tKjj
 tnQTOqct44J0wCnI9X/2czXXOl9NGmStU5zaZHk=
X-Google-Smtp-Source: APiQypI5S4sx/nuC+BoUUIBngD3kJd8k+mZEAdHCy9UHtWhnWg7WVKqBk4l0p1gpmHZya6fVvlPa6dwh5Lw7jJAZmyc=
X-Received: by 2002:a92:5ccd:: with SMTP id d74mr18764377ilg.59.1586164076003; 
 Mon, 06 Apr 2020 02:07:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200405173601.24331-1-peron.clem@gmail.com>
 <20200406081007.k6wlaampgbe46yts@gilmour.lan>
In-Reply-To: <20200406081007.k6wlaampgbe46yts@gilmour.lan>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Mon, 6 Apr 2020 11:07:44 +0200
Message-ID: <CAJiuCccPxnW-YMjENr5-_XMMu_gs5pRnCtYvpXQtHTAVj1QQqw@mail.gmail.com>
Subject: Re: [PATCH v2 0/7] Add support for Allwinner H6 DVFS
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_020757_854402_2B5EA61D 
X-CRM114-Status: GOOD (  23.61  )
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree <devicetree@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF4aW1lLAoKT24gTW9uLCA2IEFwciAyMDIwIGF0IDEwOjEwLCBNYXhpbWUgUmlwYXJkIDxt
YXhpbWVAY2Vybm8udGVjaD4gd3JvdGU6Cj4KPiBIaSwKPgo+IE9uIFN1biwgQXByIDA1LCAyMDIw
IGF0IDA3OjM1OjU0UE0gKzAyMDAsIENsw6ltZW50IFDDqXJvbiB3cm90ZToKPiA+IE5vdyB0aGF0
IHJlcXVpcmVkIGRyaXZlcnMgYXJlIG1lcmdlZCB3ZSBjYW4gY29udGlidXRlIG9uIERWRlMKPiA+
IHN1cHBvcnQgZm9yIEFsbHdpbm5lciBINi4KPiA+Cj4gPiBUaGlzIHNlcmllIGlzIGJhc2VkIG9u
IFlhbmd0YW8gTGkgc2VyaWVbMF0gYW5kIE9uZMWZZWogSmlybWFuIHdvcmtbMV0uCj4gPgo+ID4g
TW9zdCBvZiB0aGUgT1BQIHRhYmxlcyBhcmUgdGFrZW4gZnJvbSBvcmlnaW5hbCB2ZW5kb3Iga2Vy
bmVsWzJdLgo+ID4gUGx1cyB0aGVyZSBpcyBhIG5ldyBDUFUgZnJlcXVlbmNpZXMgYXQgMS42R0h6
LCAxLjdHSHogYW5kIDEuOEdIei4KPiA+Cj4gPiBJIHdyb3RlIGEgc2ltcGxlIHNjcmlwdCB0byBy
YW5kb21seSBzZXQgYSBmcmVxdWVuY3kgZHVyaW5nCj4gPiBhIHJhbmRvbSB0aW1lWzNdLgo+Cj4g
SWYgeW91IGV2ZXIgbmVlZCB0byBkbyB0aGF0IGV2ZXIgYWdhaW4sIGNwdWZyZXEtbGp0LXN0cmVz
cy10ZXN0IChmb3VuZAo+IGhlcmUgaHR0cHM6Ly9naXRodWIuY29tL3NzdmIvY3B1YnVybi1hcm0p
IGhhcyBwcm92ZW4gdG8gYmUgdmVyeQo+IHJlbGlhYmxlIHRvIGRldGVjdCBjcHVmcmVxIHJlbGF0
ZWQgaXNzdWVzLiBzdHJlc3MtbmcgbWlnaHQgbm90IGJlCj4gZW5vdWdoIHNpbmNlIHRoZSAoYXQg
bGVhc3Qgb2xkZXIpIEFsbHdpbm5lciBTb0NzIHRlbmQgdG8gY3JlYXRlIGNhY2hlCj4gY29ycnVw
dGlvbiB3aGVuIHVuZGVydm9sdGVkLCBhbmQgdGhhdCBtaWdodCBub3QgYmUgdW5ub3RpY2VkIGJ5
Cj4gc3RyZXNzLW5nIGJ1dCB3aWxsIGJlIGNhdGNoZWQgYnkgY3B1ZnJlcS1sanQtc3RyZXNzLXRl
c3QuCgpUaGFua3MgZm9yIHRoZSB0b29sIGFuZCBleHBsYW5hdGlvbi4gSSB3aWxsIHRlc3QgdGhl
IHYzIHdpdGggdGhpcyBvbmUuCgo+Cj4gQWxzbywgaXQgd2lsbCB0ZXN0IGVhY2ggZnJlcXVlbmN5
LCB3aGlsZSByYW5kb20gZnJlcXVlbmNpZXMgbWlnaHQgc2tpcAo+IGEgZmV3LgoKSSBkaWRuJ3Qg
Y291bnQgdGhlbSBidXQgdGhlcmUgd2FzIG1vcmUgdGhhbiAyMDAwbGluZXMsIHByb2JhYmlsaXR5
IHRvIG1pc3MKYSBmcmVxdWVuY3kgaXMgcmVhbGx5IGxvdy4gQWxzbyBjaGFuZ2luZyBmcm9tIDUw
ME1IeiB0byAxLjhHSHogY291bGQgaGF2ZQp0cmlnZ2VyIHNvbWUgb3V0LW9mLXNwZWMgaXNzdWUu
CgpCdXQganVzdCB0byBiZSBzdXJlIEkgd2lsbCBhZGQgYW4gaW5pdCBwaGFzZSBiZWZvcmUgZG9p
bmcgcmFuZG9tIHN0dWZmLgoKPgo+ID4gV2l0aCB0aGlzIHNjcmlwdCBhbmQgdXNpbmcgc3RyZXNz
LW5nIGR1cmluZyBzZXZlcmFsIGhvdXJzLCBJIGRpZG4ndAo+ID4gc2VlIGFueSBpc3N1ZS4gTW9y
ZW92ZXIgSSBoYXZlIHRlc3RlZCBzcGVjaWZpY2FsbHkgdGhlIDEuOEdIeiBvbiBteQo+ID4gQmVl
bGluayBHUzEsIG1heCB0aGVybWFsIDg1wrBDIGlzIHJlYWNoZWQgdmVyeSBxdWlja2x5IGFuZCB0
aGVuIHRoZQo+ID4gU29DIG9zY2lsbGF0ZXMgcXVpY2tseSBiZXR3ZWVuIDEuNSBhbmQgMS44R0h6
LiBTbyBpIGhhdmUgYWRkZWQKPiA+IDEuNkdIeiBhbmQgMS43R0h6IG15IGJvYXJkIG5vdyBvc2Np
bGxhdGUgc2xvd2VyIGJldHdlZW4gMS41R0h6IGFuZAo+ID4gMS42R0h6IHN3YXBwaW5nIGV2ZXJ5
IHNlY29uZCBhbmQgdGVtcGVyYXR1cmUgaXMgYWxzbyBtb3Jlc3RhYmxlLgo+ID4KPiA+IEkgYWxz
byB0ZXN0IHRoYXQgdGhhdCBvZmZsaW5pbmcgQ1BVMCBhbmQgZG9pbmcgRFZGUyBvbiBvdGhlciBD
UFVzCj4gPiB3b3Jrcy4gQXMgQ1BVIHJlZ3VsYXRvciBpcyBvbmx5IHNldCBmb3IgQ1BVMC4KPiA+
Cj4gPiBCdXQgbWF5YmUgaXQgZG9lc24ndCBjb3N0IG11Y2ggdG8gc2V0IHRoZSByZWd1bGF0b3Ig
Zm9yIGFsbCB0aGUgQ1BVcz8KPiA+Cj4gPiBKZXJuZWogdGVzdCB0aGUgR1BVIGRldmZyZXEgb24g
c2V2ZXJhbCBINiBib2FyZCBwYXJ0aWN1bGFyeSB0aGUKPiA+IFRhbml4IFRYNiB3aGljaCBkb2Vz
bid0IGhhdmUgYSBwcm9wZXIgZGVkaWNhdGVkIFBNSUMgYW5kIGRvZXNuJ3QKPiA+IGhhZCBhbnkg
dHJvdWJsZSB3aXRoIGl0Lgo+ID4KPiA+IERvIHlvdSB0aGluayBJIGNhbiBlbmFibGUgR1BVIE9Q
UCBmb3IgYWxsIEg2IEJvYXJkcz8KPgo+IEl0IHNlZW1zIHlvdSdyZSBkb2luZyBpdD8KTm8gSSBk
b24ndCwgc2VlIG15IGFuc3dlciBvbiBwYXRjaCA0LzcuCgpUaGFua3MgZm9yIHlvdXIgcmV2aWV3
LApDbMOpbWVudAoKPgo+IE1heGltZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
