Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F06C1658B4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 08:48:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cx79okDqdUltnP6NbxfJfX1uSex0iYsHQUszZiGAzSw=; b=ozTjT4mZ2wiXS4
	9R+GHgFnMxDu2WXiG2HY81UNx8rDeDbLpdlXme4Xw91pH2MWRQ9BG1/j4GKh/vR+R7HHxvTNQNAqy
	S7buHjihhi+OwLz0A1/zkqW3wEUb19bh5bSBjp9xhjXug2rt/L5R3PVvPUiYEnDAY+soLM3KWgJNJ
	gbeFVrD0f2vO3SRUKchM9QCLmiO0wWRrgC2Lguf0uHt8c6Q7aVX5TU07TlVfCdRpdQSVIqVEewCrJ
	CUCWGXopBayKSDU6PUWOpNlYdRWIVZKEs+SEvDyWo6qsZlXnVwkl6wk5F/HU3pxqJL/YtmvzQ48uR
	HNsPDp5XSzbcAGDKIFpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4gZg-00031X-UK; Thu, 20 Feb 2020 07:48:44 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4gZT-0002zL-0F
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 07:48:32 +0000
Received: by mail-wr1-x443.google.com with SMTP id c9so3435321wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 23:48:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=D7/ilOTv/yfu8Ewt4axgtGDzooZ+foxh4W/MQRjliDM=;
 b=jMbZPFgAztkpn/Loio4h8rIr0dDunFm7z6lTmGUQtV5OJrvz92wbttJ/+tMh8NowL2
 z1vThmc3N71RgnHF2+g5tJWWOdEsN4mp5kowlGnMiCD73SOu47thpDOMDGL701pUi5aP
 ryZN4nJLqy7fpegqQeTnLcP4zK0Nf8lysNGi6+569kWsh1Q4kXWMG5Ujv2+fD/U6sq3P
 hH5UD9uG3vxYW5fhUP7Ew97APi3TU6OakDzhqdgDf7ExXffBeuYg09pk5uXU6x26uAYX
 HeBk4GGYaDVxODy/6shfrytrKglqKSrWfHtdQGvW2lstWoKJApx+P3W5W9ayhiRUBZec
 kouw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=D7/ilOTv/yfu8Ewt4axgtGDzooZ+foxh4W/MQRjliDM=;
 b=T7rcU5L9M+43hlcj8I2OiCsxEa3u9kcRMwW7Q+/YCZ0K3kz2iTWi5tjB/FTQDCZp56
 75E4DjOdQ9MAbPTuDNLFzVbrjru01ebRWB8EPfJunY3OLWTGMRwXuExHQy3R4DprgCut
 4wQlZEyB3hMrsxyUP6ml/rx+VB7fr5gsJtjwbt17mUtGKFWrtYI8iULNW0drnDD+oFQ7
 ohJoSNN7TdMx2MZfa0fnztrDsfFsT3wBmlSffB+d+3R8UJLP+5L09tmkfzNztskiqJ4N
 QX55e2tIfknBkEWpIPUDdqQyX2vFTnLDYgqLq9PC2B+EEHiHCZCIBcUb0sEBk1bPPhAj
 m2oQ==
X-Gm-Message-State: APjAAAW1dsIZ5iaa8GsCHCWJncbCQCsNanUxlrcxjwfWA5alyHZhU7DR
 JRkBKLxIgZMDw2biqg8tJsfgzg==
X-Google-Smtp-Source: APXvYqzdP9CBfyqkStiBpbb7vc3kk+lFEglaLS3RelisPlykfjRR3shD5qopiw1lOITr4YUmZpWffw==
X-Received: by 2002:adf:f787:: with SMTP id q7mr40744149wrp.297.1582184902510; 
 Wed, 19 Feb 2020 23:48:22 -0800 (PST)
Received: from dell ([2.31.163.122])
 by smtp.gmail.com with ESMTPSA id t187sm3571099wmt.25.2020.02.19.23.48.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 23:48:21 -0800 (PST)
Date: Thu, 20 Feb 2020 07:48:49 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: [PATCH] backlight: add led-backlight driver
Message-ID: <20200220074849.GF3494@dell>
References: <20200219191412.GA15905@amd> <20200219194540.GD37466@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219194540.GD37466@atomide.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_234831_044723_6CA44FF5 
X-CRM114-Status: GOOD (  22.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: daniel.thompson@linaro.org, mpartap@gmx.net, jingoohan1@gmail.com,
 merlijn@wizzup.org, martin_rysavy@centrum.cz,
 kernel list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 sre@kernel.org, nekit1000@gmail.com, tomi.valkeinen@ti.com,
 Pavel Machek <pavel@ucw.cz>, jjhiblot@ti.com, linux-omap@vger.kernel.org,
 agx@sigxcpu.org, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAxOSBGZWIgMjAyMCwgVG9ueSBMaW5kZ3JlbiB3cm90ZToKCj4gKiBQYXZlbCBNYWNo
ZWsgPHBhdmVsQHVjdy5jej4gWzIwMDIxOSAxOToxNV06Cj4gPiBGcm9tOiBUb21pIFZhbGtlaW5l
biA8dG9taS52YWxrZWluZW5AdGkuY29tPgo+ID4gCj4gPiBUaGlzIHBhdGNoIGFkZHMgYSBsZWQt
YmFja2xpZ2h0IGRyaXZlciAobGVkX2JsKSwgd2hpY2ggaXMgc2ltaWxhciB0bwo+ID4gcHdtX2Js
IGV4Y2VwdCB0aGUgZHJpdmVyIHVzZXMgYSBMRUQgY2xhc3MgZHJpdmVyIHRvIGFkanVzdCB0aGUK
PiA+IGJyaWdodG5lc3MgaW4gdGhlIEhXLiBNdWx0aXBsZSBMRURzIGNhbiBiZSB1c2VkIGZvciBh
IHNpbmdsZSBiYWNrbGlnaHQuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IFRvbWkgVmFsa2VpbmVu
IDx0b21pLnZhbGtlaW5lbkB0aS5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKZWFuLUphY3F1ZXMg
SGlibG90IDxqamhpYmxvdEB0aS5jb20+Cj4gPiBBY2tlZC1ieTogUGF2ZWwgTWFjaGVrIDxwYXZl
bEB1Y3cuY3o+Cj4gPiBSZXZpZXdlZC1ieTogRGFuaWVsIFRob21wc29uIDxkYW5pZWwudGhvbXBz
b25AbGluYXJvLm9yZz4KPiA+IEFja2VkLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8u
b3JnPgo+ID4gQWNrZWQtYnk6IFRvbnkgTGluZGdyZW4gPHRvbnlAYXRvbWlkZS5jb20+Cj4gPiBU
ZXN0ZWQtYnk6IFRvbnkgTGluZGdyZW4gPHRvbnlAYXRvbWlkZS5jb20+Cj4gPiBTaWduZWQtb2Zm
LWJ5OiBQYXZlbCBNYWNoZWsgPHBhdmVsQHVjdy5jej4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvdmlk
ZW8vYmFja2xpZ2h0L0tjb25maWcgIHwgICA3ICsrCj4gPiAgZHJpdmVycy92aWRlby9iYWNrbGln
aHQvTWFrZWZpbGUgfCAgIDEgKwo+ID4gIGRyaXZlcnMvdmlkZW8vYmFja2xpZ2h0L2xlZF9ibC5j
IHwgMjYwICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ID4gIDMgZmls
ZXMgY2hhbmdlZCwgMjY4IGluc2VydGlvbnMoKykKPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJp
dmVycy92aWRlby9iYWNrbGlnaHQvbGVkX2JsLmMKPiA+IAo+ID4gSGkhCj4gPiAKPiA+IEhlcmUn
cyB0aGUgdmVyc2lvbiBvZiB0aGUgZHJpdmVyIEkgaGF2ZS4gQUZBSUNUCj4gPiBkZWZhdWx0LWJy
aWdodG5lc3MtbGV2ZWwgaGFuZGxpbmcgaXMgb2ssIHNvIGRvZXMgbm90IG5lZWQgdG8gYmUKPiA+
IGNoYW5nZWQuCj4gPiAKPiA+IExlZSwgaXQgd291bGQgYmUgZWFzaWVzdCBmb3IgbWUgaWYgeW91
IGNvdWxkIGFwcGx5IGl0IHRvIHlvdXIgdHJlZSBhbmQKPiA+IHB1c2gsIGJ1dCBnaXZlbiBlbm91
Z2ggdGltZSBJIGNhbiBwdXNoIGl0IHRvIExpbnVzLCB0b28uCj4gCj4gT2ggeW91J3JlIHVzaW5n
IHF1b3RlZC1wcmludGFibGUgZm9yIHBhdGNoZXMuLiBHb3QgaXQgYXBwbGllZCBub3csCj4gYW5k
IGl0IHN0aWxsIHdvcmtzLiBCZWxvdyBpcyBhbHNvIHRoZSByZWxhdGVkIGR0cyBjaGFuZ2UgdGhh
dAo+IEkgdGVzdGVkIHdpdGguCj4gCj4gRmVlbCBmcmVlIHRvIHBpY2sgdGhlIGR0cyBjaGFuZ2Ug
dG9vLCBuYXR1cmFsbHkgdGhhdCBzaG91bGQKPiBub3QgYmUgYXBwbGllZCBiZWZvcmUgdGhlIGRy
aXZlci4KPiAKPiBJZiB5b3UgZ3V5cyBpbnN0ZWFkIHdhbnQgbWUgdG8gcGljayB0aGVzZSBib3Ro
IGludG8gbXkgZml4ZXMKPiBicmFuY2gsIGp1c3QgbGV0IG1lIGtub3cgYW5kIEknbGwgZG8gdGhl
IGV4cGxhaW5pbmcgd2h5IHRoZXNlCj4gYXJlIG5lZWRlZCBhcyBmaXhlcy4gQmFzaWNhbGx5IHdl
IG5vIGxvbmdlciBoYXZlIGEgd2F5IHRvIGVuYWJsZQo+IHRoZSBMQ0QgYmFja2xpZ2h0IGZvciBk
cm9pZDQgbWFudWFsbHkgc3RhcnRpbmcgd2l0aCB2NS42LXJjMQo+IHVubGlrZSBlYXJsaWVyLgoK
UGxlYXNlIGRvLiAgWW91IGFscmVhZHkgaGF2ZSBteSBBY2suCgotLQpMZWUgSm9uZXMgW+adjueQ
vOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4g
c291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3
aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
