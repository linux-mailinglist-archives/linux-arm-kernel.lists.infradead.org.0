Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C8616F00E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 21:28:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o2Nzk9pJ9mpx8Mc/s9Oo4YJMnH3kdcOvf4t/fRF8xUE=; b=Kih/i+1tneWZdf
	bts6IcvAbxiCYIp5ZYn6SdlO8DOS2ifTvekeAPeUzzs/bVsBIG1lNpTaRR7VyJUFleP9RUH0S3KjZ
	rcVYXQXealjv6BPQ6NKannw7rSCZulHximLmd8SSytJRkwr+GxCU9EVN4edtYipw7GTCd4gSDbA8A
	mpr8qWgWIrWY+4oofyXZUJ45oWP2uYgmm0cPjrRKH2bJTtvcK0zCI34jQHrsVU36iKfpfUN/0upLO
	1LY8aUE9yVYkq5ojy0TXgF6r8B5yBp+u5zZKy3MKSKdGB8KdD4TR0IFOnrOOyq6zMuNyWyQRgLUhu
	sP5hAiYRGKAzdxCCR6hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6go0-0003n0-Nz; Tue, 25 Feb 2020 20:27:48 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6gnq-0003mC-66
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 20:27:40 +0000
Received: by mail-pl1-x643.google.com with SMTP id q4so279331pls.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 12:27:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=tC1nYodbnDy4sNWTsQPnUP+L2m/IgHaO+SrkamcIlsk=;
 b=oQT+43q3D+8T41Mpemu9+X53sapJF0IHwLEc9L+FuS5/HlEBDG7zUG2peHu7RCbCFX
 3pJ3BjSWCv7it39emB95HfdmNyR7IGcpn0AC1H1S290CgXqUTInO0RCeGZu36ul0e3VL
 M7Ly5QgUxI+sOeP3Nf8hzYQsZ7nGoftgc7yU9qf5DratzhkyvLaNTwwlZB57u1a0CDEN
 Y71BUDUuEqQ9SGBNbtBo78gppwNr0snZJDHVHdUddePa+3m7/AjcuSQ1SdxMjT6zgjNu
 leZGSn4T1Yq6ZDNT5uYua+rarYsCu+9WtySmu6MLGNaw7pNTSZ2NOPAk/1Kw91beV9pD
 hOlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=tC1nYodbnDy4sNWTsQPnUP+L2m/IgHaO+SrkamcIlsk=;
 b=HYzWtEDsrgBXCXWxsSEzoAKx8OeS0sh71B+kncU3NhyON12C5ooYERIYYKujARgNQE
 i5XT3j2XkPVofXUxIJ8WNFrfI2CzkA+qoreuo1syHrujDhzxq3rVbjaMbdznRnW/4WlN
 8tVsFrWO80CapG7xKITSXZQugPWcFksxBABnKheR4ul02zMJ5UuFCmkN7ddsfGGAB7mf
 c5oWLdxc5FHpp+KILUsupGxQpmVm4D6/EIgaOJCBMlDamO1XHtP73evarHgRAVlopTk0
 IvcnC1u3753TPYNsL0QXGXGmT3syaEi+R0t+9h3fSGWOJEg76WZchuYI+Xam/Jiq9F7e
 xo2w==
X-Gm-Message-State: APjAAAVybOcNHRk8bGCKWIThi9xu9y3tGxHysFfuIBwnszYT07uwWC4u
 zEqskQaq97IAyTvqpzv0NvKB03/HUGl3vOcFShSG3w==
X-Google-Smtp-Source: APXvYqwrT1jWL23GcqOoBUpV9rRsfvah/lMSQBrLZVT+2C5s6EqpIgbcdTCSSFlue2SZ4I4hbt/KInrtlkGuBJongyY=
X-Received: by 2002:a17:902:8a88:: with SMTP id
 p8mr269035plo.179.1582662457264; 
 Tue, 25 Feb 2020 12:27:37 -0800 (PST)
MIME-Version: 1.0
References: <8bb16ac4b15a7e28a8e819ef9aae20bfc3f75fbc.1582266841.git.stefan@agner.ch>
 <CAKwvOdmV80xgvBnhB6ZpqYaqkxKi-_p+StnMojwNnf3kdxTT1A@mail.gmail.com>
 <CAKv+Gu881ZSwvuACmsbBnpfdeJpNYsEQxLSoepJBbZ=O6D6Rcg@mail.gmail.com>
In-Reply-To: <CAKv+Gu881ZSwvuACmsbBnpfdeJpNYsEQxLSoepJBbZ=O6D6Rcg@mail.gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 25 Feb 2020 12:27:26 -0800
Message-ID: <CAKwvOd=9WaeVjvgkkLf5scFaNTpx28d4FAse62vv4X_mEwqRJA@mail.gmail.com>
Subject: Re: [PATCH] ARM: use assembly mnemonics for VFP register access
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_122738_255051_196F3965 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Arnd Bergmann <arnd@arndb.de>, LKML <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>, Jian Cai <jiancai@google.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Manoj Gupta <manojgupta@google.com>, Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBGZWIgMjUsIDIwMjAgYXQgMTE6MzMgQU0gQXJkIEJpZXNoZXV2ZWwKPGFyZC5iaWVz
aGV1dmVsQGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4gT24gVHVlLCAyNSBGZWIgMjAyMCBhdCAyMDox
MCwgTmljayBEZXNhdWxuaWVycyA8bmRlc2F1bG5pZXJzQGdvb2dsZS5jb20+IHdyb3RlOgo+ID4g
QWgsIHRoaXMgaXMgb25seSB3aGVuIHN0cmVhbWluZyB0byBhc3NlbWJseS4gTG9va3MgbGlrZSB0
aGV5IGhhdmUgdGhlCj4gPiBzYW1lIGVuY29kaW5nLCBhbmQgcHJvZHVjZSB0aGUgc2FtZSBkaXNh
c3NlbWJseS4gKEdvZGJvbHQgZW1pdHMKPiA+IGFzc2VtYmx5IGJ5IGRlZmF1bHQsIGFuZCBoYXMg
dGhlIG9wdGlvbiB0byBjb21waWxlLCB0aGVuIGRpc2Fzc2VtYmxlKS4KPiA+IElmIEkgdGFrZSBt
eSBjYXNlIGZyb20gZ29kYm9sdCBhYm92ZToKPiA+Cj4gPiDinpwgIC90bXAgYXJtLWxpbnV4LWdu
dWVhYmloZi1nY2MgLU8yIC1jIHguYwo+ID4g4p6cICAvdG1wIGxsdm0tb2JqZHVtcCAtZHIgeC5v
Cj4gPgo+ID4geC5vOiBmaWxlIGZvcm1hdCBlbGYzMi1hcm0tbGl0dGxlCj4gPgo+ID4KPiA+IERp
c2Fzc2VtYmx5IG9mIHNlY3Rpb24gLnRleHQ6Cj4gPgo+ID4gMDAwMDAwMDAgYmFyOgo+ID4gICAg
ICAgIDA6IGYxIGVlIDEwIDBhICAgICAgICAgICAgICAgICAgdm1ycyByMCwgZnBzY3IKPiA+ICAg
ICAgICA0OiA3MCA0NyAgICAgICAgICAgICAgICAgICAgICAgIGJ4IGxyCj4gPiAgICAgICAgNjog
MDAgYmYgICAgICAgICAgICAgICAgICAgICAgICBub3AKPiA+Cj4gPiAwMDAwMDAwOCBiYXo6Cj4g
PiAgICAgICAgODogZjEgZWUgMTAgMGEgICAgICAgICAgICAgICAgICB2bXJzIHIwLCBmcHNjcgo+
ID4gICAgICAgIGM6IDcwIDQ3ICAgICAgICAgICAgICAgICAgICAgICAgYnggbHIKPiA+ICAgICAg
ICBlOiAwMCBiZiAgICAgICAgICAgICAgICAgICAgICAgIG5vcAo+ID4KPiA+IFNvIGluZGVlZCBh
IHNpbWlsYXIgZW5jb2RpbmcgZXhpc3RzIGZvciB0aGUgdHdvIGRpZmZlcmVudCBhc3NlbWJsZXIK
PiA+IGluc3RydWN0aW9ucy4KPgo+IERvZXMgdGhhdCBob2xkIGZvciBBUk0gKEEzMikgaW5zdHJ1
Y3Rpb25zIGFzIHdlbGw/CgpUSUwgLW10aHVtYiBpcyB0aGUgZGVmYXVsdCBmb3IgYXJtLWxpbnV4
LWdudWVhYmloZi1nY2MgLU8yLgoK4p6cICAvdG1wIGFybS1saW51eC1nbnVlYWJpaGYtZ2NjIC1P
MiAtYyB4LmMgLW1hcm0K4p6cICAvdG1wIGxsdm0tb2JqZHVtcCAtZHIgeC5vCgp4Lm86IGZpbGUg
Zm9ybWF0IGVsZjMyLWFybS1saXR0bGUKCgpEaXNhc3NlbWJseSBvZiBzZWN0aW9uIC50ZXh0OgoK
MDAwMDAwMDAgYmFyOgogICAgICAgMDogMTAgMGEgZjEgZWUgICAgICAgICAgICAgICAgICB2bXJz
IHIwLCBmcHNjcgogICAgICAgNDogMWUgZmYgMmYgZTEgICAgICAgICAgICAgICAgICBieCBscgoK
MDAwMDAwMDggYmF6OgogICAgICAgODogMTAgMGEgZjEgZWUgICAgICAgICAgICAgICAgICB2bXJz
IHIwLCBmcHNjcgogICAgICAgYzogMWUgZmYgMmYgZTEgICAgICAgICAgICAgICAgICBieCBscgoK
XiBKdXN0IHRvIHNob3cgdGhlIG1hdGNoaW5nIGVuY29kaW5nLgotLSAKVGhhbmtzLAp+TmljayBE
ZXNhdWxuaWVycwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
