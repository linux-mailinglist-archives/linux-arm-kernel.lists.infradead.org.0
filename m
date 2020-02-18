Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 104D516276D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 14:52:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cromQKjoDKMy7lLpEcbNbz1Yc+yncDVg6CiOaDeXR04=; b=OGrg8lF2nzOGDG
	Jao97TVmJ3dQwYde2/M/PWxInV8NSQUOXt1kqlx/YKCFLsZDfad5UeGUVhlj5hDrhb+cdt5Bz1SFE
	MC/SrVUNtum8Yxz3VcO3LCCkU5uPUqI5Yf1+7IZpM45ZdbshY+ZaRHs5UnwySo7aY6JiNPYrWNguV
	s5BmtRpgIdQwhdMIZiLK9Ftr5aV1fSBAOmJ0nnx6AFJbMO/NQpBF66Zy3Ju5MQG9+bFcPXJhBoUpu
	3b/uc6MCcvEghYyBYrkOXZWo1GqbMKI/NKZaoVivmwhMXDnQCVd59ifO4CzCmJwR4TabruX4cImK6
	6N1V71y4+wg/DxfVJHTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j43IA-0007Ec-Id; Tue, 18 Feb 2020 13:52:02 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j43I2-0007E4-68
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 13:51:55 +0000
Received: by mail-wr1-x431.google.com with SMTP id c9so24051471wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 05:51:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=9p6OXHKsM023NhocmqOZnADdz+HERBrvBoyGsV+UlKE=;
 b=i+APoOGnnmlCIGHizJMEvzNQdV+k0wmdevVDYJirpQWMZ6wd1KbrIasKsmtHgrk8qy
 xKAxXUkz8FeK6SRZsVUAbXIouvTfpc49e/A82u4y6Qd5N2ZPkB3QCGJ/0/BZKkOvU5m1
 kd5GgA+mKNooGJf61agRotmNXxAFavcq+41qEYaPsAR1FYCqT2Hil8f5AfRwGR/a4xWh
 /XzkbvRNmkds4jezM25NtZGsCANvVSAakLvmx0PH1EmFnL23BDk81Kbd0//8rZ6bAoBQ
 JhnAnaB+l26mhKBL54I26Vq9om6erS/E+UosyCAs7BQqTeEikve34Fo7ns7nvVVYVuVJ
 BKnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=9p6OXHKsM023NhocmqOZnADdz+HERBrvBoyGsV+UlKE=;
 b=dgYNcRlqt+cyfEmtTKZ1TfwoUxSSGHodyH4NoyrzZIsyz7fdngP7uHR7JMjGJFWQ9D
 k0t0sekUrKaWAw0iImev2qOZj2gstcS3XmwDPENPSzc/onTrV+VqbdUNer1uQ4esRofV
 zoKZoBD+mKnN+Hv3/v0iyp3to2pkpD0wzaYV1jjXDMKriHRRVjYMyr9Rv3NfKqEi5Iis
 uQJl1etP0fuYjbv1RhFV7Ogl56rALikjNVHj8yCpOjd49Zh++a9HC0o5hrOVEKgSHKcd
 pWvIa7wD+CIabQfr+KDtZPAMUsepUMZ/5PbRNELm7KhsANtYS0fm6ZKbj4X8+CREWSlx
 48lw==
X-Gm-Message-State: APjAAAUvNmV8ITLWczp3tYJuZ2yF9uh0IaY/xB9N/3YDz0WDm5GlG203
 RjTaJgKtjxwGj6K/nBQouGvxtw==
X-Google-Smtp-Source: APXvYqwXJi+BRLCWb7f7jxO0dAGaoQy1ZP8L6u0Vtd85ei679by+qE09DpmnnIWAAebNG5Pv+P5d0A==
X-Received: by 2002:a5d:4c84:: with SMTP id z4mr30076715wrs.423.1582033911637; 
 Tue, 18 Feb 2020 05:51:51 -0800 (PST)
Received: from dell ([2.31.163.122])
 by smtp.gmail.com with ESMTPSA id w8sm3675899wmm.0.2020.02.18.05.51.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 05:51:51 -0800 (PST)
Date: Tue, 18 Feb 2020 13:52:19 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Pavel Machek <pavel@ucw.cz>
Subject: Re: LED backlight on Droid 4 and others
Message-ID: <20200218135219.GC3494@dell>
References: <20200105183202.GA17784@duo.ucw.cz> <20200106084549.GA14821@dell>
 <20200211172900.GH64767@atomide.com> <20200212201638.GB20085@amd>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200212201638.GB20085@amd>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_055154_289595_E8865616 
X-CRM114-Status: GOOD (  22.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:431 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: daniel.thompson@linaro.org, mpartap@gmx.net,
 Tony Lindgren <tony@atomide.com>, jingoohan1@gmail.com, merlijn@wizzup.org,
 martin_rysavy@centrum.cz, kernel list <linux-kernel@vger.kernel.org>,
 dri-devel@lists.freedesktop.org, sre@kernel.org, nekit1000@gmail.com,
 tomi.valkeinen@ti.com, jjhiblot@ti.com, linux-omap@vger.kernel.org,
 agx@sigxcpu.org, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAxMiBGZWIgMjAyMCwgUGF2ZWwgTWFjaGVrIHdyb3RlOgoKPiBIaSEKPiAKPiA+ID4g
PiBJdCB3b3VsZCBiZSBnb29kIHRvIGdldCBMRUQgYmFja2xpZ2h0IHRvIHdvcmsgaW4gY2xlYW4g
d2F5IGZvciA1LjYKPiA+ID4gPiBrZXJuZWwuCj4gPiAuLi4KPiA+ID4gPiBbSWYgeW91IGhhdmUg
YW4gaWRlYSB3aGF0IGVsc2UgaXMgbmVlZGVkLCBpdCB3b3VsZCBiZSB3ZWxjb21lOyBpdAo+ID4g
PiA+IHdvcmtzIGZvciBtZSBpbiBkZXZlbG9wbWVudCB0cmVlIGJ1dCBub3QgaW4gdHJlZSBJJ2Qg
bGlrZSB0bwo+ID4gPiA+IHVwc3RyZWFtLl0KPiA+ID4gPiAKPiA+ID4gPiBMZWUsIHdvdWxkIHlv
dSBiZSB3aWxsaW5nIHRvIHRha2UgImJhY2tsaWdodDogYWRkIGxlZC1iYWNrbGlnaHQKPiA+ID4g
PiBkcml2ZXIiPyBXb3VsZCBpdCBoZWxwIGlmIEkgZ290ICJsZWRzOiBBZGQgbWFuYWdlZCBBUEkg
dG8gZ2V0IGEgTEVECj4gPiA+ID4gZnJvbSBhIGRldmljZSBkcml2ZXIiIGFuZCAibGVkczogQWRk
IG9mX2xlZF9nZXQoKSBhbmQgbGVkX3B1dCgpIiBpbnRvCj4gPiA+ID4gZm9yX25leHQgdHJlZSBv
ZiB0aGUgTEVEIHN1YnN5c3RlbT8KPiA+ID4gCj4gPiA+IEl0IGxvb2tzIGxpa2UgeW91IGhhdmUg
YW4gb3BlbiBxdWVzdGlvbiBmcm9tIFRvbnkgb24gdjEwLgo+ID4gPiAKPiA+ID4gSXMgdGhhdCBw
YXRjaCBvcnRob2dvbmFsLCBvciBhcmUgdGhlcmUgZGVwZW5ke2FudHMsZW5jaWVzfT8KPiA+IAo+
ID4gVWhoIGxvb2tzIGxpa2Ugd2UgbWVzc2VkIHVwIGEgYml0IHdpdGggaW50ZWdyYXRpb24uIE5v
dyBkcm9pZDQKPiA+IExDRCBiYWNrbGlnaHQgY2FuIG5vIGxvbmdlciBiZSBlbmFibGVkIGF0IGFs
bCBtYW51YWxseSBpbiB2NS42LXJjMQo+ID4gd2l0aG91dCB0aGUgImFkZCBsZWQtYmFja2xpZ2h0
IGRyaXZlciIgcGF0Y2guLiBTaG91bGQgd2UganVzdAo+ID4gbWVyZ2UgaXQgdG8gZml4IGl0IHJh
dGhlciB0aGFuIHN0YXJ0IHNjcmFtYmxpbmcgd2l0aCBvdGhlcgo+ID4gdGVtcG9yYXJ5IGhhY2tz
Pwo+IAo+IFdlIHNob3VsZCBqdXN0IG1lcmdlIHRoZSAiYWRkIGxlZC1iYWNrbGlnaHQgZHJpdmVy
Ii4gRXZlcnl0aGluZyBzaG91bGQKPiBiZSByZWFkeSBmb3IgaXQuIEknbSBzb3JyeSBpZiBJIGJy
b2tlIHNvbWV0aGluZyB3b3JraW5nLCBJIHdhcyBub3QKPiBhd2FyZSBpdCB3b3JrZWQgYXQgYWxs
Lgo+IAo+IFVuZm9ydHVuYXRlbHksIHRoaXMgaXMgYmFja2xpZ2h0IGNvZGUsIG5vdCBMRUQsIHNv
IEkgY2FuJ3QganVzdCBtZXJnZSBpdC4KClBsZWFzZSBnbyBhaGVhZC4gIEFwcGx5IG15IEFja2Vk
LWJ5IGFuZCBtZXJnZSBhd2F5IEFTQVAuCgpBY2tlZC1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNA
bGluYXJvLm9yZz4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRl
Y2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0g
U29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
