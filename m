Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99595B3B19
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 15:16:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k/kP9RlL/H7gUtKkBLnl/xF0FwZgAtiebCE/hwn9R6E=; b=l7ER9Zakikh8sH
	0XnHRToh4z2HVdBml7a3xslaHR15ouqnedH7kPkT5OiXhrvucGujwSmzknaSl2NOjPJC0c5AS2n7o
	Vu/FG3e9vAtFDShyztxY4/miVCX4h4Hg7udGfzYKFusdgxZHlzraeLv3I7C1CQN0Al0pQHM0VGJlg
	7Hnvk+o3Kq4adZRXJw3Nby3YbTW4E54m8e38CPwsqWVmrburarZeggDzYvZLIr/dcfVylom61/Dy1
	JpPl0sx02RX7nYnNEmHJZDbRlBEYoiTF2FzTXc8OnVF9VcOHMmu3j5p+j2cE6+4y8501v3WO++2VE
	+RLaWf0QMC2hQcarVClA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9qrp-0006U6-61; Mon, 16 Sep 2019 13:16:33 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9qra-0006T9-5r
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 13:16:19 +0000
Received: by mail-qk1-x741.google.com with SMTP id w2so13440251qkf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 06:16:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=p8H14b8QOC7xyThE796vVQTVHwHGb7hWB3A0YDyKzi8=;
 b=vZIYuwEiPxNk76J3bqFOPMb7hAUUS/X0U7oo+vJzdyuvvkHgRlmK3AFwdDGKPHgJce
 jraHYg6hm4koJfMvBz5DtqLV9BOB7NXmHwMzOsoPDSPJ2BbT6sCeyUTeB2VnjPGQaw9c
 /C3Y8Gj3E9j44l1WvkOQqemf+GvIOoW3kJyNE8cwCp+WdtC/MgML25kVKfu2GzTpy9Ep
 LSSJKi299lQyNl1R5e6sCkvdIo4VuUlksmvaX9lLO6AgoW5olf2/1pn30OOp8TtUdqBC
 wNqvxSVlu5yEmm2Tr9kSx7x+3rWq34rVq3sncVuIm64rI8+cYHjcHPKTDCpW9j0pVOMW
 tuVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=p8H14b8QOC7xyThE796vVQTVHwHGb7hWB3A0YDyKzi8=;
 b=eeTRibb48gVppjQYOIdgS/Oa+LucKwMT2VricVSr3mCDW4Bl9uzueqj9V6+/lqCeAb
 flH2rPu5cIikEn7v4qisv8S0yxo8Ivchf/ekIpaguTmzw7rvXud38Ye6CxOn/FCzjde+
 IcKrPlOoy3imfYL0f6k1xcNII9vp+CMTaDD/JrBWzxLZDxXcMRo0SXacRnFK+AG/zL6N
 umjzDlM/iw/aRXTgDakH6XPvl0CO5xGjDd2axvzYZUYOvEM8O5SOFv3AQUscvZg+rJtw
 5hohezwRANPWO65pA33tW1hJ4Q68pM4KVXJCBTKA3HkVZleW+smWaF6YkKApQvVdrJ8C
 dRag==
X-Gm-Message-State: APjAAAUfMYnaTOW5LIsP3egjBxvLLvWArcaREZue2WKH9IVSCK3svDi4
 iBvg1p1qhKtbRpxJwzMT1VILkHziyUZb5gZiKMBr3g==
X-Google-Smtp-Source: APXvYqw2JIJaTfERF5pMhfhzLnLH23suF9vY3fd49RTGa+0vQVfMcg4dlOfYT6eDDrXzOlwQxh/GlMpqslbpzY+szUQ=
X-Received: by 2002:a05:620a:16d2:: with SMTP id
 a18mr29075565qkn.104.1568639776108; 
 Mon, 16 Sep 2019 06:16:16 -0700 (PDT)
MIME-Version: 1.0
References: <1568278589-20400-1-git-send-email-yannick.fertre@st.com>
In-Reply-To: <1568278589-20400-1-git-send-email-yannick.fertre@st.com>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Mon, 16 Sep 2019 15:16:05 +0200
Message-ID: <CA+M3ks56v__Lef4wN8KthoLoJ_yYYou8u+-PsJXSUVJQHaimdA@mail.gmail.com>
Subject: Re: [PATCH] drm/stm: dsi: higher pll out only in video burst mode
To: =?UTF-8?Q?Yannick_Fertr=C3=A9?= <yannick.fertre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_061618_353515_4A987E14 
X-CRM114-Status: GOOD (  14.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 Philippe Cornu <philippe.cornu@st.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Vincent Abriou <vincent.abriou@st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgamV1LiAxMiBzZXB0LiAyMDE5IMOgIDEwOjU3LCBZYW5uaWNrIEZlcnRyw6kgPHlhbm5pY2su
ZmVydHJlQHN0LmNvbT4gYSDDqWNyaXQgOgo+Cj4gSW4gb3JkZXIgdG8gYmV0dGVyIHN1cHBvcnQg
dmlkZW8gbm9uLWJ1cnN0IG1vZGVzLAo+IHRoZSArMjAlIG9uIHBsbCBvdXQgaXMgYWRkZWQgb25s
eSBpbiBidXJzdCBtb2RlLgo+Cj4gU2lnbmVkLW9mZi1ieTogUGhpbGlwcGUgQ29ybnUgPHBoaWxp
cHBlLmNvcm51QHN0LmNvbT4KPiBSZXZpZXdlZC1ieTogWWFubmljayBGRVJUUkUgPHlhbm5pY2su
ZmVydHJlQHN0LmNvbT4KCkFwcGxpZWQgb24gZHJtLW1pc2MtbmV4dCwKVGhhbmtzLApCZW5qYW1p
bgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL3N0bS9kd19taXBpX2RzaS1zdG0uYyB8IDUgKysr
Ky0KPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Cj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9zdG0vZHdfbWlwaV9kc2ktc3RtLmMgYi9kcml2
ZXJzL2dwdS9kcm0vc3RtL2R3X21pcGlfZHNpLXN0bS5jCj4gaW5kZXggYTAzYTY0Mi4uNTE0ZWZl
ZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vc3RtL2R3X21pcGlfZHNpLXN0bS5jCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL3N0bS9kd19taXBpX2RzaS1zdG0uYwo+IEBAIC0yNjAsOCAr
MjYwLDExIEBAIGR3X21pcGlfZHNpX2dldF9sYW5lX21icHModm9pZCAqcHJpdl9kYXRhLCBjb25z
dCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSwKPiAgICAgICAgIC8qIENvbXB1dGUgcmVx
dWVzdGVkIHBsbCBvdXQgKi8KPiAgICAgICAgIGJwcCA9IG1pcGlfZHNpX3BpeGVsX2Zvcm1hdF90
b19icHAoZm9ybWF0KTsKPiAgICAgICAgIHBsbF9vdXRfa2h6ID0gbW9kZS0+Y2xvY2sgKiBicHAg
LyBsYW5lczsKPiArCj4gICAgICAgICAvKiBBZGQgMjAlIHRvIHBsbCBvdXQgdG8gYmUgaGlnaGVy
IHRoYW4gcGl4ZWwgYncgKGJ1cnN0IG1vZGUgb25seSkgKi8KPiAtICAgICAgIHBsbF9vdXRfa2h6
ID0gKHBsbF9vdXRfa2h6ICogMTIpIC8gMTA7Cj4gKyAgICAgICBpZiAobW9kZV9mbGFncyAmIE1J
UElfRFNJX01PREVfVklERU9fQlVSU1QpCj4gKyAgICAgICAgICAgICAgIHBsbF9vdXRfa2h6ID0g
KHBsbF9vdXRfa2h6ICogMTIpIC8gMTA7Cj4gKwo+ICAgICAgICAgaWYgKHBsbF9vdXRfa2h6ID4g
ZHNpLT5sYW5lX21heF9rYnBzKSB7Cj4gICAgICAgICAgICAgICAgIHBsbF9vdXRfa2h6ID0gZHNp
LT5sYW5lX21heF9rYnBzOwo+ICAgICAgICAgICAgICAgICBEUk1fV0FSTigiV2FybmluZyBtYXgg
cGh5IG1icHMgaXMgdXNlZFxuIik7Cj4gLS0KPiAyLjcuNAo+Cj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4g
ZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
