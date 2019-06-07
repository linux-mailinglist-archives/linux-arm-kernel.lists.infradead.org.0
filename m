Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A58A39945
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 01:02:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j06sNaHelAzTfJi0Dgl+72iYyQhlf6P7z3GjHy8GWHM=; b=rSHlpMWcqWJEdK
	kaydjXo18l4PgG1VSYYRYjx7R7VaCQPA6L9vv1Jv/7dIGGOZOABZXMEHugKkKqIsRngNc4cb8b+KI
	R0Bg/bsI5MqlM4/SUJ3FO+lZg+JH8axsA8Irc/hAcfGmqWPB8/Vzk4pvg9FxILkE6JVF2rDacrp0x
	svtxZTbcVjI5om1FxTP+NkpadSrKErivtJ0D/cgyq60+1qQMlZAL8/dHOkN/YXD3O3hRxCEYCh70Q
	tToXMjEcSZT8RXPucaPHONQT5Z1s01M90BUUyY94QDGjHplRNxdV/Mxp8MTC1l47IdY3um5yptPnc
	9yjfViCvJ6UKVWknVMnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZNsS-0005r8-GU; Fri, 07 Jun 2019 23:02:28 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZNsK-0005qG-DZ
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 23:02:21 +0000
Received: by mail-lf1-x142.google.com with SMTP id j29so2757351lfk.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 16:02:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=5xFvF+4uJK8Lh2AsjRCLimxFRPpGedGu0+ViCBhUWR4=;
 b=H5gdtMARqwXZeZeFjKwNuxbqV7Ma28Zy+ksL8TIwffhROYWLRyFUstv2pLeZRXOtVI
 fAhShFz/IZuaKEtFrFCylwW+MoCj5faYUez2qq2xt7Fy22nACsumSyiw4RjiAz8FnrXC
 7GtI0/gcBjnuD3WLTh0f4i+ovxk/37NSTnaGr+rNE28cNDK9nt51/7yY0bnDcrQYbwEJ
 hr/PnOIYlRhZoIZbhsi7K73CA5EyoPpIoef1Vzg9WAzleef10NaCpIn1AMsr/JMWRfWX
 hHz1RCfhhjKHLMy9rsvhEyACNYumCq+iakbKsRoDM2vq4izlpoylJdu1CyzZEmCTFnZ/
 T44A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=5xFvF+4uJK8Lh2AsjRCLimxFRPpGedGu0+ViCBhUWR4=;
 b=iWr4DjghFh6loQ9Nqiimy5WV7ZOvkc7gXpuIPdC4GcWhlIyGQkfgSGXI9DLGPP8XmJ
 p+NE5VdWdCcbU3fVFuKOh80DOJ2JvZMVsDqsCdxoZjQ4Dw09pQpfnoutGw3RsGeS7YIl
 NQYlmzFqUQDjqFYJRlp1xlBwGH17KzYAQOagGcdXkWCMsdY7yz4L4ndT8r+WT6lcFPni
 y0ak7wltNHrBDhR8TczA5DK/RNOsVyJLhdQvyOzBqd4PaQ2HF7A3FfteUnltXsQZY5XE
 +kaU9JSmaJ2GMoQ1ufNXw5xA9vl0aQM8iviI+NCfaRTetq4NhrkkMZXl2P52/eaBAhrQ
 4+HQ==
X-Gm-Message-State: APjAAAX6Ho6aFgrjWiFeaCZ4uaU010/bDa1jUoPOj43QmF/xpyM+VsPA
 uYDRlmc3+GC46eAFYMFW5t9jClKz9sRD5/wKHBrcuA==
X-Google-Smtp-Source: APXvYqxzX4pBaF3Caq1oDbU7bQ+/NcABw//1thgHYHWRKTRFjeHnAO7VM0FJu2uXV21zUNtbO89kZJkPdws6UI2If2A=
X-Received: by 2002:ac2:50c4:: with SMTP id h4mr14517898lfm.61.1559948536365; 
 Fri, 07 Jun 2019 16:02:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190605114302.22509-1-lee.jones@linaro.org>
 <20190605114302.22509-3-lee.jones@linaro.org>
In-Reply-To: <20190605114302.22509-3-lee.jones@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 8 Jun 2019 01:02:09 +0200
Message-ID: <CACRpkdaEe3uKAsSuhbToevXH1cMsuMUvwaopLPuD+JkDTnuEnQ@mail.gmail.com>
Subject: Re: [PATCH 3/8] pinctrl: msm: Add ability for drivers to supply a
 reserved GPIO list
To: Lee Jones <lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_160220_472833_F7CB5ED3 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Felipe Balbi <balbi@kernel.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Greg KH <gregkh@linuxfoundation.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-usb@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Brown <david.brown@linaro.org>, alokc@codeaurora.org,
 linux-i2c@vger.kernel.org, MSM <linux-arm-msm@vger.kernel.org>,
 Andy Gross <andy.gross@linaro.org>, jlhugo@gmail.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKdW4gNSwgMjAxOSBhdCAxOjQzIFBNIExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFy
by5vcmc+IHdyb3RlOgoKPiBXaGVuIGJvb3RpbmcgTVNNIGJhc2VkIHBsYXRmb3JtcyB3aXRoIERl
dmljZSBUcmVlIG9yIHNvbWUgQUNQSQo+IGltcGxlbWVudGF0aW9ucywgaXQgaXMgcG9zc2libGUg
dG8gcHJvdmlkZSBhIGxpc3Qgb2YgcmVzZXJ2ZWQgcGlucwo+IHZpYSB0aGUgJ2dwaW8tcmVzZXJ2
ZWQtcmFuZ2VzJyBhbmQgJ2dwaW9zJyBwcm9wZXJ0aWVzIHJlc3BlY3RpdmVseS4KPiBIb3dldmVy
IHNvbWUgQUNQSSB0YWJsZXMgYXJlIG5vdCBwb3B1bGF0ZWQgd2l0aCB0aGlzIGluZm9ybWF0aW9u
LAo+IHRodXMgaXQgaGFzIHRvIGNvbWUgZnJvbSBhIGtub3dsZWRnYWJsZSBkZXZpY2UgZHJpdmVy
IGluc3RlYWQuCj4KPiBIZXJlIHdlIHByb3ZpZGUgdGhlIE1TTSBjb21tb24gZHJpdmVyIHdpdGgg
YWRkaXRpb25hbCBzdXBwb3J0IHRvCj4gcGFyc2UgdGhpcyBpbmZvcm10aW9uIGFuZCBjb3JyZWN0
bHkgcG9wdWxhdGUgdGhlIHdpZGVseSB1c2VkCj4gJ3ZhbGlkX21hc2snLgo+Cj4gU2lnbmVkLW9m
Zi1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KCkV4YWN0bHkgaG93IHdlIHNo
b3VsZCB1c2Ugb2YgdGhlIEFQSSwgc28gaWYgQmrDtnJuIGNhbiBzdXBwbHkgYW4KQUNLIHRvIHBh
dGNoZXMgMyBhbmQgNCBJJ20gaGFwcHkgdG8gYXBwbHkgdGhlbS4KCkJqw7Zybj8KCllvdXJzLApM
aW51cyBXYWxsZWlqCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
