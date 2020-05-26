Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA18B1E1C44
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 09:27:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wbpJrM6b+6QvfO7GpPeMvet2e8olOHnlq/7JDrfdGtk=; b=TdLnYA4mjiHZk4
	SgSsiE9GT2dqw6xAlQWJiSNK8mOY4fAkbxb3b/b2xBnBytwbY87La3W15gypmaZoT5uKHH/bhpCMo
	io35GISEYsbpSzInVfuD4C/0OSH8EkqIsEb1dOOmh9GRl+hdE1vxnf070PO6sF0sd6ses9YkWh5lf
	mQJf5G2sZa5UK/suyKPehRao0yhprl8/jboyid4VJZX9pN0GAgrDyc3aWkIiZHfCBr8B659Eo/C1b
	sM0gGbu+G8D+vXJ2F+kYcnfcvI7Msze7PHmNuKm8xDkXrCJNu6/StTuFyBm6CNQtuPAcfhxthVSFE
	9xuc0bJ3VnD6guiKiTgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdTzc-0006ba-K2; Tue, 26 May 2020 07:27:20 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdTzT-0006bE-EL
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 07:27:12 +0000
Received: by mail-wm1-x341.google.com with SMTP id u13so2153448wml.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 00:27:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=oX55DFCRlmwUFoRiiZXdIvxn1mRyrzPHH9QEEJ6CBmY=;
 b=Kc3UNpgCAQCZwq59P+VNL4aP6xlmDJ4FdAVbs8uqXEEBgNPCq2jjHYuGlkgm92U2OG
 89HbEnXOxA27+S97lV+X4TCgDXvI1yfSKHyPoKkZm7fIzgmz4rAtcHqnbC9b5SW3ZVXV
 G9BPXvYCLxv7MkeZdJpW/Rj8B3sNnCGsBMyvAuirbFCj1Smanz5e5D3s/6PupULXi0du
 f01uI7+NUqkmUFapg0KKOc0fcrMwK2xYYj5ixWR7VjGi70o1PXtkIGf3r9geNikqewOm
 +TnjHnVj+pz3WRmG0Z/HTPCzh+OPykxtbcUvEhw0VpfvEoN1x+l+g3iZBrpO/4AsdrQz
 cBlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=oX55DFCRlmwUFoRiiZXdIvxn1mRyrzPHH9QEEJ6CBmY=;
 b=IvqeMmnfd4AaCJgT9UPF5bq/DG3huuvPcTIst2qqR0A/RM6GKT2cJLtCkCuKIj8x3Z
 /2nN5D6yOzce7XEtddSaDMfxnPe846xQ4UGYwzo8lwjOR8XBsa+wmwFPm71q9pzewSEf
 qW0cs58ZXhehwJs3nYdwtQhFLh6xAm8Dp8JNfDXDy8REvIkR8NdNXus5Dkj1a5LLtzso
 jHr6gt9j8LhPhqzk3zUrMc0XV2yDUbJ4MILDcTbEFl2XqQUV+6G8nywq3i2xIqhHjulv
 6sQ5TghZms44N4199kNfDUkjFI5qeQOhccsGhgn1+VHzL44XL8I5ligk8K08Co6sjDz7
 uLHA==
X-Gm-Message-State: AOAM531yDXXn0QW+eFSj6f32iShU8u/D0/q9FmbW9DeIdp7luw9lqnhF
 kg2VmnO9xFYPAK1kgkRxxqVAKQ==
X-Google-Smtp-Source: ABdhPJzsqSQTVxDxq/52LQzAHWkQZWp3IEWvhukr2JFWOmsvjry6+PnvlzbFLZ6ileXrEqAAzFlW7g==
X-Received: by 2002:a7b:c207:: with SMTP id x7mr47969wmi.79.1590478030278;
 Tue, 26 May 2020 00:27:10 -0700 (PDT)
Received: from dell ([95.149.164.102])
 by smtp.gmail.com with ESMTPSA id x10sm21466135wrn.54.2020.05.26.00.27.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 00:27:09 -0700 (PDT)
Date: Tue, 26 May 2020 08:27:08 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Amelie DELAUNAY <amelie.delaunay@st.com>
Subject: Re: [PATCH 0/3] STMFX power related fixes
Message-ID: <20200526072708.GD3628@dell>
References: <20200422090833.9743-1-amelie.delaunay@st.com>
 <f5b3df45-a01a-7cb6-c158-e6edc0117f0f@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f5b3df45-a01a-7cb6-c158-e6edc0117f0f@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_002711_483012_98497B21 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAyNSBNYXkgMjAyMCwgQW1lbGllIERFTEFVTkFZIHdyb3RlOgoKPiBIaSwKPiAKPiBH
ZW50bGUgcmVtaW5kZXIgcmVnYXJkaW5nIHRoaXMgc2VyaWVzIHNlbnQgb25lIG1vbnRoIGFnby4K
CkFwb2xvZ2llcyBBbWVsaWUsIHRoaXMgZmVsbCB0aHJvdWdoIHRoZSBnYXBzLgoKSWYgdGhpcyBo
YXBwZW5zIGluIHRoZSBmdXR1cmUganVzdCBzdWJtaXQgYSBbUkVTRU5EXS4KCkknbGwgdGFrZSBh
IGxvb2sgYXQgdGhpcywgdGhpcyB0aW1lIGhvd2V2ZXIuCgo+IE9uIDQvMjIvMjAgMTE6MDggQU0s
IEFtZWxpZSBEZWxhdW5heSB3cm90ZToKPiA+IFdpdGggc3VzcGVuZC9yZXN1bWUgdGVzdHMgb24g
U1RNMzJNUDE1N0MtRVYxIGJvYXJkLCBvbiB3aGljaCBTVE1GWCBpcyB1c2VkIGJ5Cj4gPiBzZXZl
cmFsIGRldmljZXMsIHNvbWUgZXJyb3JzIGNvdWxkIG9jY3VycmVkOiAtNiB3aGVuIHRyeWluZyB0
byByZXN0b3JlIFNUTUZYCj4gPiByZWdpc3RlcnMsIHNwdXJpb3VzIGludGVycnVwdHMgYWZ0ZXIg
ZGlzYWJsaW5nIHN1cHBseS4uLgo+ID4gVGhpcyBwYXRjaHNldCBmaXhlcyBhbGwgdGhlc2UgaXNz
dWVzIGFuZCBjbGVhbnMgSVJRIGluaXQgZXJyb3IgcGF0aC4KPiA+IAo+ID4gQW1lbGllIERlbGF1
bmF5ICgzKToKPiA+ICAgIG1mZDogc3RtZng6IHJlc2V0IGNoaXAgb24gcmVzdW1lIGFzIHN1cHBs
eSB3YXMgZGlzYWJsZWQKPiA+ICAgIG1mZDogc3RtZng6IGZpeCBzdG1meF9pcnFfaW5pdCBlcnJv
ciBwYXRoCj4gPiAgICBtZmQ6IHN0bWZ4OiBkaXNhYmxlIGlycSBpbiBzdXNwZW5kIHRvIGF2b2lk
IHNwdXJpb3VzIGludGVycnVwdAo+ID4gCj4gPiAgIGRyaXZlcnMvbWZkL3N0bWZ4LmMgICAgICAg
fCAyMiArKysrKysrKysrKysrKysrKysrKy0tCj4gPiAgIGluY2x1ZGUvbGludXgvbWZkL3N0bWZ4
LmggfCAgMSArCj4gPiAgIDIgZmlsZXMgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKPiA+IAoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMg
VGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFS
TSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
