Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0FC01FF0CA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 13:38:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=etsM6ssFfgMOAC5LMfiF0N8nFU599u9pBmwgb08+F+A=; b=Nwx5WivhmWdKcP
	eEZUdhDSbkJxLY1cd3XJlE2lNwdpwfLqwFeNJDF3Cu5BHdtFvXUwHzSLBlcDcC578vscX0z7orHqr
	Nhd18WRXP4wM4fS5seDE27IPEOHv0ddXr5kBnmJsAzfM/p8bjHoi9sBrCSaLMUPfBNFBqzGQPh7a1
	JlLRAPe9K2vuN7Xp6I1Y+tG+rmHGwHHkn86fpeshDrhhO1LqXcKVkAOreYF5EUHhmYAT4bUqq3UVz
	t37+pYzuMaX2USfLLQhmwwy0aB8AuMkzpKnk7Cleqer9NNwJjFAHky8eCeWj4RpVGQMN2eEOzpOPD
	bwBkUfAoo9ewJnBOVCTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlssS-0003pN-OS; Thu, 18 Jun 2020 11:38:40 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlssF-0003p0-CL; Thu, 18 Jun 2020 11:38:28 +0000
Received: by mail-il1-x143.google.com with SMTP id h3so5376128ilh.13;
 Thu, 18 Jun 2020 04:38:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=HnqZ825QaUjHcFcUoPVeekIL3cloh6uSJswdCHcGNMU=;
 b=XbgW/1mXE4RlRrvQUAPe6piL/vvN9pMY8TMFHLIfTTurGrvqjI7qc00i30vHQLli1M
 OGqVPPM3Bo/wUZ51cib1et1xvfLqpJePfWs6ULwM7yUhrWpn8C7Sac8BAMpXhofGttKG
 Y95mEIZ2YSDycjFQJ74N0d76rpEVaUYI/EY2uB8A5dYu9ESLVf+txrJJWMU6LuUZtCQI
 Z8jHEAo1nZ2VxW46rH5fBN+YuoGUgGb3KCzBbqMqL8EOF5vtWajx0+Z653kWkLAHd7VT
 vc77SbsNaeagrUdkcUWyF3dv85R1qPMtVwc7YkUwJwkzmo11StWyebx5iSysmHeKqFOp
 Sseg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=HnqZ825QaUjHcFcUoPVeekIL3cloh6uSJswdCHcGNMU=;
 b=D9xZAXKE8u2UP1EPI7GAhYAk6Y9Y0lVVeMO1WzyD6sAZkz0zolzDBqRxyR4/nZWcZi
 1vuU+oZ1UO7PrpWgsuGjPY5kYmiPP7bsrssBD7nQ9OVZHUs3h6pglu2hbYy282PnxfJy
 SkVSSWeZ0voR1BQCVplzvbll1OAlenxSaup+PkIMtv2R65krQCJQdYHZ4BoR4xV+OztJ
 bmpdN8LnN94rNRjWGC9qrqlN7jeqk8x0aWhAMineNrVyvPl0CvoETTGnITauZV2zjy8C
 QbqvQ4RdBPUdtQIjs1sNDDm5dUlPCFVrUqOGjKAOodnLm4WRXue5eLQhSRRsoJ2qYtLt
 jVCw==
X-Gm-Message-State: AOAM531aJ2Syl8E0MPY7ZDDk80o42K0n3gB05YX4NsXpfexSt2Z99X77
 9XxlxK2T40R2FLOjF3D0ERaei4cogy4UrcnJtr0=
X-Google-Smtp-Source: ABdhPJxcR9iEAJokjPMB/KxunZWalwUdWYUL4oPT1aiima67yngP6LTlhi+OnZVtLJNI8vSsb2FTq1BpSc6gS0vdZiI=
X-Received: by 2002:a05:6e02:92:: with SMTP id
 l18mr1254204ilm.212.1592480306512; 
 Thu, 18 Jun 2020 04:38:26 -0700 (PDT)
MIME-Version: 1.0
References: <1591254387-10304-1-git-send-email-gene.chen.richtek@gmail.com>
 <4135d264-6758-301a-0f19-ba2f229301c3@infradead.org>
In-Reply-To: <4135d264-6758-301a-0f19-ba2f229301c3@infradead.org>
From: Gene Chen <gene.chen.richtek@gmail.com>
Date: Thu, 18 Jun 2020 19:38:14 +0800
Message-ID: <CAE+NS360B8S6sDNPSwEOFWoEDLwtYKxf96M5wdu1brKtMD-Nvg@mail.gmail.com>
Subject: Re: [PATCH] regulator: mt6360: Add support for MT6360 regulator
To: Randy Dunlap <rdunlap@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_043827_419331_C6BF9AAB 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gene.chen.richtek[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Gene Chen <gene_chen@richtek.com>, lgirdwood@gmail.com,
 linux-kernel@vger.kernel.org, cy_huang@richtek.com, benjamin.chao@mediatek.com,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, Wilma.Wu@mediatek.com,
 linux-arm-kernel@lists.infradead.org, shufan_lee@richtek.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UmFuZHkgRHVubGFwIDxyZHVubGFwQGluZnJhZGVhZC5vcmc+IOaWvCAyMDIw5bm0NuaciDTml6Ug
6YCx5ZubIOS4i+WNiDExOjA25a+r6YGT77yaCj4KPiBPbiA2LzQvMjAgMTI6MDYgQU0sIEdlbmUg
Q2hlbiB3cm90ZToKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3JlZ3VsYXRvci9LY29uZmlnIGIv
ZHJpdmVycy9yZWd1bGF0b3IvS2NvbmZpZwo+ID4gaW5kZXggZjRiNzJjYi4uMDVhM2IxNCAxMDA2
NDQKPiA+IC0tLSBhL2RyaXZlcnMvcmVndWxhdG9yL0tjb25maWcKPiA+ICsrKyBiL2RyaXZlcnMv
cmVndWxhdG9yL0tjb25maWcKPiA+IEBAIC02ODAsNiArNjgwLDE2IEBAIGNvbmZpZyBSRUdVTEFU
T1JfTVQ2MzU4Cj4gPiAgICAgICAgIFRoaXMgZHJpdmVyIHN1cHBvcnRzIHRoZSBjb250cm9sIG9m
IGRpZmZlcmVudCBwb3dlciByYWlscyBvZiBkZXZpY2UKPiA+ICAgICAgICAgdGhyb3VnaCByZWd1
bGF0b3IgaW50ZXJmYWNlLgo+ID4KPiA+ICtjb25maWcgUkVHVUxBVE9SX01UNjM2MAo+ID4gKyAg
ICAgdHJpc3RhdGUgIk1UNjM2MCBTdWJQTUlDIFJlZ3VsYXRvciIKPiA+ICsgICAgIGRlcGVuZHMg
b24gTUZEX01UNjM2MAo+ID4gKyAgICAgc2VsZWN0IENSQzgKPiA+ICsgICAgIGhlbHAKPiA+ICsg
ICAgICAgU2F5IFkgaGVyZSB0byBlbmFibGUgTVQ2MzYwIHJlZ3VsYXRvciBzdXBwb3J0Lgo+ID4g
KyAgICAgICBUaGlzIGlzIHN1cHBvcnQgTVQ2MzYwIFBNSUMvTERPIHBhcnQgaW5jbHVkZQo+Cj4g
ICAgICAgICAgIFRoaXMgc3VwcG9ydHMgdGhlIE1UNjMwMCBQTUlDL0xETyBwYXJ0LCB3aGljaCBp
bmNsdWRlcwo+Cj4gPiArICAgICAgIDItY2hhbm5lbCBidWNrIHdpdGggVGhlcm1hbCBTaHV0ZG93
biBhbmQgT3ZlcmxvcmQgUHJvdGVjdGlvbgo+Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBpcyB0aGF0ICAgICAgT3ZlcmxvYWQgID8KPiBZZXMsIGl0IGNvdWxkIGJlIE92
ZXJsb3JkLgo+Cgp0eXBvLCBvdmVybG9hZCBpcyBzdWl0YWJsZSwgdGhhbmtzCgo+ID4gKyAgICAg
ICA2LWNoYW5uZWwgSGlnaCBQU1JSIGFuZCBMb3cgRHJvcG91dCBMRE8uCj4gPiArCj4gPiAgY29u
ZmlnIFJFR1VMQVRPUl9NVDYzODAKPiA+ICAgICAgIHRyaXN0YXRlICJNZWRpYVRlayBNVDYzODAg
UE1JQyIKPiA+ICAgICAgIGRlcGVuZHMgb24gTVRLX1BNSUNfV1JBUAo+Cj4KPiAtLQo+IH5SYW5k
eQo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
