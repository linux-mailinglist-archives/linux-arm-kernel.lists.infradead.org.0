Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3E62ABB8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 May 2019 21:00:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8SzvtXdm8TEEoOBcqN8+IaCJRnLu3XqhZ0TRuCrICaI=; b=rZ8MbZ4UUTYcAZ
	LIB3i3mlJxZzmySfPZPXhUVjQ+y/wEzwiAoUwCXyiM5xVQSSVyhFbxTAp2JXIS6OMkq63bZCl1vUT
	PJhTso35xymrGJB5RYAoLqM0YGYzFvDcQO4nwmjXHWLCx6uQMMHFO0RKeX8U0YWNnSglaTGjn9/9/
	+bKxvLDw9SE2+cCeE6+hboPjaM0U+4jI5caRu1PJUc3zHCJCVh/27pOj64IhxUnmuHN6V+KeOTjJt
	MWYe6tqU0+PBU76eEtxcmYtBGJOwG6w/cj9oTUSnHIEIL2clReTI8UJTJBMnUyU5g4wPE78omjpmr
	Xs2mOS7cuQjRh7Tpwr5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUyO3-0000ZL-63; Sun, 26 May 2019 19:00:51 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUyNu-0000Yc-O0
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 19:00:44 +0000
Received: by mail-yw1-xc44.google.com with SMTP id t5so5803899ywf.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 May 2019 12:00:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ozbpBHH7tRCrsdtMEQjsQDlxSXHNruEgExveiJhJ0fo=;
 b=Xkg3tPCAZXTRWbYvkia1rPlSLig1Y7GQZ4mFLN0JUZWf8a7xttjpv80JLmoXWsOBbI
 0z5tsEfJ5nw5U0tJswI6KRnYhiqLRxuwKaeoE6H4UWUH/smXoDXabl5oLPh2ynvTLh8c
 wnqxAo2TCmsdS+P71y14Di7yBEB7eOjOMPlaJWe9hUW39slwAWULG8sF7qwmdNQWv/sj
 HzjypXp6N0DZ270bB+5GuMoPT4yQI8gq860sBzESkWOj82dBBSZ2n+2pp8Heap0BI9u7
 dzm4duCz3dWwXIQ5z/MCEiOFu/09RivNT5GdjFnr2W5UnUxoBL2neIt5NZ8/hy8oXPRy
 i2Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ozbpBHH7tRCrsdtMEQjsQDlxSXHNruEgExveiJhJ0fo=;
 b=OXE0OktEWvUTEqZIsMbOWeH5GowU67yhaibXzvyEU3eSN/bSww589CMQ2Deq0vPCIN
 1AjZl7mtZfu6btpLftwMWSo7NbKrYYJMne2+WE14ggw4s8Vl2P7JBtno0lHlosbYNfZa
 8XHckHkIKTee7HVxWvzoQWfJh0Q8D6TIEWH2fvWoQvKMePsBGUh2mYP2wGAhGymkKFCn
 LzZyVFMuEa4aQkO2VSyOImw4N/cTVPlAmbsZJuDDGCsmbGoRmorX3srImgdxcku7hDtI
 LCq5pOosNSawkArOjiPVBTFAkvR6yLu4mY3j5UTj4bJ7EVItXeNSSPwl9PTad56D4Db3
 5krg==
X-Gm-Message-State: APjAAAWzYY84/DLRs0eibEDBoIUhALh/bH3p+UZ406LL4d1U+6I4PtWH
 LT4qJFRzmPfiZnLrro2Jw0wyeVhhASvNG7C8pmQ=
X-Google-Smtp-Source: APXvYqwkYlyYZ5uwbz25lwZOwmW3dEb1r4wBA/RfRkCDhUCYp59oYMFH5GkzlWv0BwlS71J2R9iK0ZxtOpmwQ6F8a0g=
X-Received: by 2002:a81:997:: with SMTP id 145mr7897486ywj.457.1558897241180; 
 Sun, 26 May 2019 12:00:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190525162323.20216-1-peron.clem@gmail.com>
 <20190525162323.20216-4-peron.clem@gmail.com>
 <20190526182410.soqb6bne6w66d5j6@flea>
In-Reply-To: <20190526182410.soqb6bne6w66d5j6@flea>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Sun, 26 May 2019 21:00:30 +0200
Message-ID: <CAJiuCce8UNbA+Ljkbw92ZJu3Ni6N9ciFKGsLtBYJ0_J8E1Gi2g@mail.gmail.com>
Subject: Re: [PATCH v3 3/7] ASoC: sun4i-spdif: Add TX fifo bit flush quirks
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_120042_801718_AEB24463 
X-CRM114-Status: GOOD (  19.19  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF4aW1lLAoKT24gU3VuLCAyNiBNYXkgMjAxOSBhdCAyMDoyNCwgTWF4aW1lIFJpcGFyZCA8
bWF4aW1lLnJpcGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4KPiBPbiBTYXQsIE1heSAyNSwgMjAx
OSBhdCAwNjoyMzoxOVBNICswMjAwLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gPiBBbGx3aW5u
ZXIgSDYgaGFzIGEgZGlmZmVyZW50IGJpdCB0byBmbHVzaCB0aGUgVFggRklGTy4KPiA+Cj4gPiBB
ZGQgYSBxdWlya3MgdG8gcHJlcGFyZSBpbnRyb2R1Y3Rpb24gb2YgSDYgU29DLgo+ID4KPiA+IFNp
Z25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Cj4gPiAt
LS0KPiA+ICBzb3VuZC9zb2Mvc3VueGkvc3VuNGktc3BkaWYuYyB8IDExICsrKysrKysrKystCj4g
PiAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+Cj4g
PiBkaWZmIC0tZ2l0IGEvc291bmQvc29jL3N1bnhpL3N1bjRpLXNwZGlmLmMgYi9zb3VuZC9zb2Mv
c3VueGkvc3VuNGktc3BkaWYuYwo+ID4gaW5kZXggYjZjNjZhNjJlOTE1Li44MzE3YmJlZTA3MTIg
MTAwNjQ0Cj4gPiAtLS0gYS9zb3VuZC9zb2Mvc3VueGkvc3VuNGktc3BkaWYuYwo+ID4gKysrIGIv
c291bmQvc29jL3N1bnhpL3N1bjRpLXNwZGlmLmMKPiA+IEBAIC0xNjYsMTAgKzE2NiwxMiBAQAo+
ID4gICAqCj4gPiAgICogQHJlZ19kYWNfdHhfZGF0YTogVFggRklGTyBvZmZzZXQgZm9yIERNQSBj
b25maWcuCj4gPiAgICogQGhhc19yZXNldDogU29DIG5lZWRzIHJlc2V0IGRlYXNzZXJ0ZWQuCj4g
PiArICogQHJlZ19mY3RsX2Z0eDogVFggRklGTyBmbHVzaCBiaXRtYXNrLgo+Cj4gSXQncyBhIGJp
dCB3ZWlyZCB0byB1c2UgdGhlIHNhbWUgcHJlZml4IGZvciBhIHJlZ2lzdGVyIG9mZnNldAo+IChy
ZWdfZGFjX3R4X2RhdGEpIGFuZCBhIHZhbHVlIChyZWdfZmN0bF9mdHgpLgoKSSBqdXN0IGxvb2sg
YXQgc3VuNGktY29kZWMgYW5kIHRoZXkgdXNlIGEgcmVnbWFwLCBCdXQgSSB0aGluayBpdCdzIGEK
Yml0IG92ZXJraWxsIG5vPwoKV2hhdCBkbyB5b3UgdGhpbmsgYWJvdXQgdmFsX2ZjdGxfZnR4ID8K
ClRoYW5rcyBmb3IgeW91ciByZXZpZXcsCkNsw6ltZW50Cgo+Cj4gTWF4aW1lCj4KPiAtLQo+IE1h
eGltZSBSaXBhcmQsIEJvb3RsaW4KPiBFbWJlZGRlZCBMaW51eCBhbmQgS2VybmVsIGVuZ2luZWVy
aW5nCj4gaHR0cHM6Ly9ib290bGluLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
