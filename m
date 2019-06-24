Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C0E51C4C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 22:29:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U7QwsSrvrhp693Y/v72zNq9jj4oQ3XQchmMTmFP/Uo8=; b=ISnWhHCXz1AC7V
	N8mrr+ckqG4ML+qtEdcRJLQ4vyZAiitgWRqlNRmSA1lnqksQPB7vUWUx3h5NGQj/4VvPOf5/jHDF2
	tBg+KBFn03UFR4g8al9pHckyCVosEv8/P+R2Y2J5zzAkcwBXHbJQUPfYbW4LHqZ5D5lphnvkRwGwm
	MvHYh1S35Sd3paEAse8HK+hTH1EKUIb3ffXh2DxdWlUmqC/h3MvoXQZb53MYUfQeEsFHSwp359Y7R
	5TRN+ezcUNURqZSiGx/KjEn0PZRY5+KsxuWpRcglTwO8MYEPJTKFafgJ9aRex7d7e69hArAJiZtlz
	pbwBGv6vbk5iGCrrHl9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfVaR-0005sl-JW; Mon, 24 Jun 2019 20:29:11 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfVaF-0005ro-0s
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 20:29:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1561408136; bh=ebij2iMd2+jfNT2RnrG0rfsvu6bgvrUaIhcBD+2uT8k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ez2ClL820tax9ruDyvFd7tjrHWXeaFMT3WQ70YRkAuZXuooYJaI0bHitWPVD4PtYk
 crqCMMgvP5GhR51NkheM4lNM8F0KrnDcTmtkA5LgSRKjeMhAxcb0fGDyr5mOsWO3XB
 s/6tcRDgFEoJpxyemaGnaucncUPtp060iDqxi4N0=
Date: Mon, 24 Jun 2019 22:28:56 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: David Miller <davem@davemloft.net>
Subject: Re: [PATCH v7 0/6] Add support for Orange Pi 3
Message-ID: <20190624202856.ij4ujey2z6j5doxj@core.my.home>
Mail-Followup-To: David Miller <davem@davemloft.net>,
 linux-sunxi@googlegroups.com, maxime.ripard@bootlin.com,
 wens@csie.org, robh+dt@kernel.org, jernej.skrabec@gmail.com,
 airlied@linux.ie, daniel@ffwll.ch, mark.rutland@arm.com,
 peppe.cavallaro@st.com, alexandre.torgue@st.com,
 joabreu@synopsys.com, mcoquelin.stm32@gmail.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com
References: <20190620134748.17866-1-megous@megous.com>
 <20190624.102927.1268781741493594465.davem@davemloft.net>
 <20190624174637.6sznc5ifiuh4c3sm@core.my.home>
 <20190624.132456.2013417744691373807.davem@davemloft.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624.132456.2013417744691373807.davem@davemloft.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_132859_403750_3D92FA88 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, joabreu@synopsys.com, alexandre.torgue@st.com,
 devicetree@vger.kernel.org, maxime.ripard@bootlin.com, netdev@vger.kernel.org,
 wens@csie.org, jernej.skrabec@gmail.com, linux-kernel@vger.kernel.org,
 airlied@linux.ie, linux-sunxi@googlegroups.com, robh+dt@kernel.org,
 dri-devel@lists.freedesktop.org, daniel@ffwll.ch, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, mcoquelin.stm32@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBKdW4gMjQsIDIwMTkgYXQgMDE6MjQ6NTZQTSAtMDcwMCwgRGF2aWQgTWlsbGVyIHdy
b3RlOgo+IEZyb206IE9uZMWZZWogSmlybWFuIDxtZWdvdXNAbWVnb3VzLmNvbT4KPiBEYXRlOiBN
b24sIDI0IEp1biAyMDE5IDE5OjQ2OjM3ICswMjAwCj4gCj4gPiBUaGlzIHNlcmllcyB3YXMgZXZl
biBsb25nZXIgYmVmb3JlLCB3aXRoIHBhdGNoZXMgYWxsIGFyb3VuZCBmb3IgdmFyaW91cwo+ID4g
bWFpbnRhaW5lcnMuIEknZCBleHBlY3QgdGhhdCByZWxldmFudCBtYWludGFpbmVycyBwaWNrIHRo
ZSByYW5nZSBvZiBwYXRjaGVzCj4gPiBtZWFudCBmb3IgdGhlbS4gSSBkb24ndCBrbm93IHdobydz
IGV4YWN0bHkgcmVzcG9uc2libGUgZm9yIHdoYXQsIGJ1dCBJIHRoaW5rLAo+ID4gdGhpcyBzaG91
bGQgd29yazoKPiA+IAo+ID4gLSAyIHN0bW1hYyBwYXRjaGVzIHNob3VsZCBnbyB0b2dldGhlciB2
aWEgc29tZSBuZXR3b3JraW5nIHRyZWUgKGlzIHRoZXJlCj4gPiAgIHNvbWV0aGluZyBzcGVjaWZp
YyBmb3Igc3RtbWFjPykKPiA+IC0gYWxsIERUUyBwYXRjaGVzIHNob3VsZCBnbyB2aWEgc3VueGkK
PiA+IC0gaGRtaSBwYXRjaGVzIHZpYSBzb21lIGRybSB0cmVlCj4gCj4gVGhhbmsgeW91LiAgU28g
SSdsbCBtZXJnZSB0aGUgZmlyc3QgdHdvIHBhdGNoZXMgdGhhdCB0b3VjaCB0aGUgc3RtbWFjCj4g
ZHJpdmVyIHZpYSBteSBuZXQtbmV4dCB0cmVlLgoKVGhhbmsgeW91LgoKcmVnYXJkcywKCU9uZHJl
agoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
