Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1579115FE7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 10:58:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l9U0C1qTShPBc+e4Gnnjg+3VWWGDTg9VPxN5LhKfylg=; b=LUq5xnmSLT4Uw1
	r7SxcI4vQaCuP/H3JnHW3ivUa8DUnEQnTtXK0pNlMz/+uUo4BUrGMcuN44xUvwOARriv+yuCc7xiL
	J9zoL/eNu2htFV4iSK9qX2lwYW9ffgAe6BLJQz5fGDOYKvtFrZgIUd5tdysTUI0L8wboZBnNvG9z8
	49xbJKBqcUtMfAsNXZmF+tF93G/iXrXTq8KJM7DxhCW7z49E3Kt0OIxOT+B8mvaTfiNyewAYEWaY+
	KQq6OOuDFUoKVNnHrEWvzqtCnpsARnVAxBBcwF3m64rc4HCRE12DFA54U0hIQpKGx/S3BKCfhrciB
	PvrDpOhv6dMzceFwrJGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNvva-0006gd-VP; Tue, 07 May 2019 08:58:22 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNvvU-0006ej-0k
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 08:58:17 +0000
Received: by mail-qt1-x844.google.com with SMTP id f24so7687655qtk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 01:58:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=bgt65WYUyh4keq60HSFM9ou9BWNsxqpsxUheEsmJ/Ps=;
 b=LFXHlmUi0/8ulUeaMb6kFoZgCQOYaGhjD0Rv5sOqvJAdFWnGFpVQ9T+NX2HpuBvduI
 C14vwFf0hjhSV2f2O2geQK9TiX/sTj5gFNlhRPzsoJh5tR6YgCfF2VtBRUQjbjagINNw
 +fcIApgzTmb4yoNs2rPZdhdJuD4mwJN06wYHM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=bgt65WYUyh4keq60HSFM9ou9BWNsxqpsxUheEsmJ/Ps=;
 b=JLjD3La06Igg7Bxj0HT+PtJMAbLZGc4EgREvRNnixE3+D+pbBrWAL41oqaCgryiaod
 PbC9qM62O6epGCwFCuAEJbKZ2II5f22HQdUHHauDCShMl+C54SGEDSobfk8Yh7hsCEz2
 8kZ7AJ4FSxNYrFaQx3Q8SCU00HYXR4Qp0h9pODALbnEZGlYGvqKGfbustE1lrcTNvzIJ
 brUWAWWtaabgKeVCmcuat+Fat1njcWKlYPWupHEN0a9ptYRznwFdQxvUbNhGrGypxvk2
 nsedTR7lylYi8kDeGtDjJ5xC5wDE+mVlwiAMNkjdSTMizqXnQkR93DU53rQIMlCfDew8
 FPaQ==
X-Gm-Message-State: APjAAAUWtwr9Z5aHJI6jSStS/wTHzsUEoGjCQ+3VqkUQHC0aEvC6NCib
 bROMgOoq0H9zfkyq7XRbNGNAh7mzT0Zf2zj7r+Jo3Q==
X-Google-Smtp-Source: APXvYqxRKpUMVzA6AG7GCIY/+g/BwxuTBk4WFdQofQEHMln8CxbzW33eb9ZBrRV8Z4nlMUPH71Flva1Aw5lznF2Ik9Q=
X-Received: by 2002:ac8:2963:: with SMTP id z32mr25699870qtz.236.1557219493495; 
 Tue, 07 May 2019 01:58:13 -0700 (PDT)
MIME-Version: 1.0
References: <1556793795-25204-1-git-send-email-michael.kao@mediatek.com>
 <1556793795-25204-5-git-send-email-michael.kao@mediatek.com>
In-Reply-To: <1556793795-25204-5-git-send-email-michael.kao@mediatek.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Tue, 7 May 2019 16:57:47 +0800
Message-ID: <CAJMQK-i===iehSxLky1rZMnYhZfrnAJzWtDxT2OLOwRnKwaZoA@mail.gmail.com>
Subject: Re: [PATCH 4/8] arm64: dts: mt8183: Configure CPU cooling
To: "michael.kao" <michael.kao@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_015816_084237_63F75E10 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, jamesjj.liao@mediatek.com,
 devicetree@vger.kernel.org, louis.yu@mediatek.com, dawei.chien@mediatek.com,
 linux-pm@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 roger.lu@mediatek.com, linux-kernel@vger.kernel.org,
 Eduardo Valentin <edubezval@gmail.com>, fan.chen@mediatek.com,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXkgMiwgMjAxOSBhdCAxMDo0MyBBTSBtaWNoYWVsLmthbyA8bWljaGFlbC5rYW9A
bWVkaWF0ZWsuY29tPiB3cm90ZToKPgo+IEZyb206IE1hdHRoaWFzIEthZWhsY2tlIDxta2FAY2hy
b21pdW0ub3JnPgo+Cj4gQWRkIHR3byBwYXNzaXZlIHRyaXAgcG9pbnRzIGF0IDY4wrBDIGFuZCA4
NcKwQyBmb3IgdGhlIENQVSB0ZW1wZXJhdHVyZS4KPgo+IFNpZ25lZC1vZmYtYnk6IE1hdHRoaWFz
IEthZWhsY2tlIDxta2FAY2hyb21pdW0ub3JnPgo+IFNpZ25lZC1vZmYtYnk6IE1pY2hhZWwgS2Fv
IDxtaWNoYWVsLmthb0BtZWRpYXRlay5jb20+Cj4gLS0tCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMv
bWVkaWF0ZWsvbXQ4MTgzLmR0c2kgfCA1NSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
Kwo+ICAxIGZpbGUgY2hhbmdlZCwgNTUgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ4MTgzLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL21lZGlhdGVrL210ODE4My5kdHNpCj4gaW5kZXggOTVmMWQ3Yi4uMGIzMjk0YiAxMDA2NDQK
PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210ODE4My5kdHNpCj4gKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDgxODMuZHRzaQo+IEBAIC0zNzUsNiArMzc1
LDYxIEBACj4KPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHRoZXJtYWwtc2Vuc29y
cyA9IDwmdGhlcm1hbCAwPjsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN1c3Rh
aW5hYmxlLXBvd2VyID0gPDE1MDA+Owo+ICsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHRyaXBzIHsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdGhy
ZXNob2xkOiB0cmlwLXBvaW50QDAgewo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHRlbXBlcmF0dXJlID0gPDY4MDAwPjsKPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBoeXN0ZXJlc2lzID0gPDIwMDA+Owo+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHR5cGUgPSAicGFz
c2l2ZSI7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIH07Cj4gKwo+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0YXJnZXQ6IHRyaXAtcG9p
bnRAMSB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
dGVtcGVyYXR1cmUgPSA8ODUwMDA+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGh5c3RlcmVzaXMgPSA8MjAwMD47Cj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdHlwZSA9ICJwYXNzaXZlIjsKPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfTsKPiArCj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGNwdV9jcml0OiBjcHUtY3JpdCB7Cj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdGVtcGVyYXR1cmUgPSA8MTE1
MDAwPjsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBo
eXN0ZXJlc2lzID0gPDIwMDA+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHR5cGUgPSAiY3JpdGljYWwiOwo+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB9Owo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfTsK
PiArCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb29saW5nLW1hcHMgewo+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBtYXAwIHsKPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0cmlwID0gPCZ0YXJnZXQ+Owo+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvb2xpbmct
ZGV2aWNlID0gPCZjcHUwCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBUSEVSTUFMX05PX0xJTUlUCj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBUSEVSTUFMX05PX0xJTUlUPiwKPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIDwmY3B1MQo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgVEhFUk1BTF9OT19MSU1JVAo+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgVEhFUk1BTF9OT19MSU1JVD4sCj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICA8JmNwdTIKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIFRIRVJNQUxfTk9fTElNSVQKPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFRIRVJNQUxfTk9fTElNSVQ+LAo+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgPCZjcHUzCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBUSEVSTUFMX05PX0xJTUlUCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBUSEVSTUFMX05PX0xJTUlUPjsKPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb250cmlidXRpb24gPSA8
MzA3Mj47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIH07Cj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG1hcDEgewo+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHRyaXAgPSA8JnRhcmdldD47Cj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29vbGluZy1k
ZXZpY2UgPSA8JmNwdTQKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIFRIRVJNQUxfTk9fTElNSVQKPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFRIRVJNQUxfTk9fTElNSVQ+LAo+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgPCZjcHU1Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBUSEVSTUFMX05PX0xJTUlUCj4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBUSEVSTUFMX05PX0xJTUlUPiwKPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIDwmY3B1Ngo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgVEhFUk1BTF9OT19MSU1JVAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgVEhFUk1BTF9OT19MSU1JVD4sCj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICA8JmNwdTcKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIFRIRVJNQUxfTk9fTElNSVQKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIFRIRVJNQUxfTk9fTElNSVQ+Owo+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnRyaWJ1dGlvbiA9IDwx
MDI0PjsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfTsKPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIH07Cj4gICAgICAgICAgICAgICAgICAgICAgICAg
fTsKPgo+ICAgICAgICAgICAgICAgICAgICAgICAgIHR6dHMxOiB0enRzMSB7CgpUZXN0ZWQtYnk6
IEhzaW4tWWkgV2FuZyA8aHNpbnlpQGNocm9taXVtLm9yZz4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
