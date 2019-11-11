Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6338F75EF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 15:05:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/NpEw+Ar1O7D+vtBRms2jIFa9qzqyPsguQR56UZKIIw=; b=CmiYf15DAfTXs0
	8d5zfa/tnNVbgwYfO2x7dKRCGQd5ObgGk6ZoEsdxr65UzqiwEmb+xHsmH8Utaw8FK4laU2GnDMpuX
	WfkEaCQCXSOeyXOGZ4yR1gcVP7CkiROHL7jp+Ka50Oq8LOXHrP3UT2rFwzr2eJ0sJuvn1r8CB3BiF
	qpHOq+vaFF6dnfbfrrFag1qKLHc7TbF7vrxU9JEPYWf+UF4+7G0Pwby78aTMSLwL33Vv4BLwB87nQ
	WHOdS3FO5W/7XYboMRSMPqRQEguSCBlU/owc6yEsSwSZuT2YeSx7yIdGWPyN4tbbQhZERAbDa54YV
	QYe93h5FcW9T4dRnd6VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUAKE-0001ce-Cy; Mon, 11 Nov 2019 14:05:50 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUAK4-0001as-UL; Mon, 11 Nov 2019 14:05:42 +0000
Received: by mail-ot1-x342.google.com with SMTP id n23so11290797otr.13;
 Mon, 11 Nov 2019 06:05:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=hkWWZbsPhAe/B+lg1NTrPkrZfdIPdtnDPLZ91eTI/hg=;
 b=lwVw/MSbrrSR96HQiTRGjp4qyBLP9BUVvOJ7zUjQCJ+Bl51zdrH0ZeOYPfQadmnrQv
 LC5pnKVzGGUcbXy6983YIevobRGuUKI8LfdKq87vJVZ+tQLGuXqUNjr6WV+SKGRZeNG5
 SAUmQffDJJdfo3GY1YHH0dmHFc7/IFMLCI++HYj0MOvgYZwynSc8XJ58ylbJ0pq+J+3d
 tw4DkYPn71ln2qqUxDBP/pCGu2ZTb0zVjMcLZjiGi/NSbiSK3er1e+4bLrJoUjs79t5Q
 XRTuWN3LbqzYx5ByPRiLLGnmUAIv/qwtEknadUJmdAlv4XPahOJY0XdT9crvnySe5hmr
 KWJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=hkWWZbsPhAe/B+lg1NTrPkrZfdIPdtnDPLZ91eTI/hg=;
 b=lHbJZyTKNEjbN9dPt2mTtf0smfnYANBwK07HoMJCFgWAj8zsVCGDD7NjwczuwRFN1U
 YXggJltNcknOU9XOyZvq1+HwpkhhtpLGRqFkuHCpS+1DIKQnqVPKJYSt+y6ATfAXCcKa
 lkfY7UlL4DVm1dmtaL4Y4JTq0UJnASth7VT2KcmCenFf6xm/IaxtsWF+ET7X8KpBbXcE
 SDME+suKTjUCBbuW11IvW0QPnGXapbaVd8WtMXjfJZKEo/5FiZjICO1cy5FreHBqr6bG
 80ron4XCuudHA2okpxwceZ4fLD14vHXVcykH78+kOwzUUwQJV6igFoG8HJIG/u5yTobr
 T0RA==
X-Gm-Message-State: APjAAAVF0BFnrmn74SgbkHWBuy78CeUeFtzCdESt8cNFAGvHHoZSxTQM
 ceH0wZGMmIy9VXic94eYWyefVooVnCcsK0evPaA=
X-Google-Smtp-Source: APXvYqwKDHSLwIppJngXejpzqHPV4YxZhwzU8jDUQEbttYpesGP+AXtsC0jFnvcDk5ZDCNQNKmxcyJVC4p07NzbkNRQ=
X-Received: by 2002:a05:6830:3:: with SMTP id c3mr8817650otp.15.1573481138383; 
 Mon, 11 Nov 2019 06:05:38 -0800 (PST)
MIME-Version: 1.0
References: <20191014141718.22603-1-narmstrong@baylibre.com>
 <20191014141718.22603-2-narmstrong@baylibre.com>
 <20191023201141.GA21235@bogus>
 <CA+3zgmsJPsvXgsjDQKKrSG+UNdY3SK+hKCTD2X3hGG+OXejHig@mail.gmail.com>
 <CAKgpwJWU3jB0DWEKE09TOV+YLceBFJ75ZirAXQbuhj8v3FwjXg@mail.gmail.com>
In-Reply-To: <CAKgpwJWU3jB0DWEKE09TOV+YLceBFJ75ZirAXQbuhj8v3FwjXg@mail.gmail.com>
From: Tim <elatllat@gmail.com>
Date: Mon, 11 Nov 2019 09:05:27 -0500
Message-ID: <CA+3zgmtJqN-3Q-kjMhh58B+T7z_1TA-C6be7+UP6nuQb7eq=8A@mail.gmail.com>
Subject: Re: [PATCH 1/3] doc: dt: bindings: usb: dwc3: Update entries for
 disabling SS instances in park mode
To: Jun Li <lijun.kernel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_060540_980274_FAA0A78B 
X-CRM114-Status: GOOD (  19.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (elatllat[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Felipe Balbi <balbi@kernel.org>, Jianxin Pan <jianxin.pan@amlogic.com>,
 devicetree@vger.kernel.org, khilman@baylibre.com, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 Dongjin Kim <tobetter@gmail.com>, linux-amlogic@lists.infradead.org,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U3BlY3VsYXRpb247CgpNYXliZSB0aGUga2VybmVsIG1haW50YWluZXJzIHByZWZlciB0byBvcHRp
bWlzdGljYWxseSBwZXJtaXQgZnV0dXJlCnByb2R1Y3RzIHRvIGVhc2lseSByZW1vdmUgd29ya2Fy
b3VuZHMgdmlhIHF1aXJrIGZsYWdzLgpFdmVuIGlmIGRhdGEgZnJvbSB0ZXN0aW5nIHdlcmUgc2hv
d24sIGFuZCBpdCBkaWQgbm90IGltcGFjdApwZXJmb3JtYW5jZSwgY29kZSByZWR1Y3Rpb24gYW5k
IGNsYXJpdHkgYXJlIGRlc2lyYWJsZS4KCk9uIFN1biwgTm92IDEwLCAyMDE5IGF0IDg6NTggUE0g
SnVuIExpIDxsaWp1bi5rZXJuZWxAZ21haWwuY29tPiB3cm90ZToKPgo+IEhpIE5laWwKPgo+IEFz
IEkgZ290IHRoZSBpbmZvcm1hdGlvbiBmcm9tIFN5bm9wc3lzLCB0aGlzIGJ1ZyBleGlzdHMgb24g
Y3VycmVudCBJUCB2ZXJzaW9ucywKPiBhbmQgcGVyIG15IHRlc3RzIHdpdGggZXh0ZXJuYWwgVVNC
MyBodWIgKyAyIFN1cGVyIHNwZWVkIHVkaXNrcyBvbiBkYXRhCj4gcmVhZCBieSBkZCwgSSBjYW4g
cmVwcm9kdWNlIHRoaXMgaXNzdWUgd2l0aCBkaWZmZXJlbnQga2VybmVsIHZlcnNpb25zLCBhbHNv
IEkKPiBkaWRuJ3Qgc2VlIG9idmlvdXMgcGVyZm9ybWFuY2UgZHJvcCBieSBkZCB0ZXN0cyBhZnRl
ciBkaXNhYmxlIHBhcmsgbW9kZSBmb3IKPiBzdXBlciBzcGVlZCwgc28gc2hvdWxkIHdlIGp1c3Qg
ZGlzYWJsZSBpdCBieSBkZWZhdWx0IHNvIG5vIG5lZWQgYSBxdWlyaz8KPgo+IExpIEp1bgo+Cj4g
VGltIDxlbGF0bGxhdEBnbWFpbC5jb20+IOS6jjIwMTnlubQxMeaciDEx5pel5ZGo5LiAIOS4iuWN
iDg6NDLlhpnpgZPvvJoKPiA+Cj4gPiBUaGFua3MgZm9yIHdvcmtpbmcgb24gdGhpcyBOZWlsLAo+
ID4gSXMgdGhlcmUgc29tZXRoaW5nIHRoYXQgbmVlZHMgZG9pbmcgZm9yIHRoaXMgcGF0Y2ggdG8g
bWFrZSBpdCBpbnRvIDUuMyBvciA1LjQ/Cj4gPiBBcyBwcmV2aW91c2x5IG1lbnRpb25lZCB0aGUg
cGF0Y2ggc2V0IGZpeGVzIHRoZSBpc3N1ZSBvbiBhZmZlY3RlZCBoYXJkd2FyZTsKPiA+ICAgICBo
dHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzExMTY0NTE1Lwo+ID4KPiA+Cj4gPgo+
ID4gT24gV2VkLCBPY3QgMjMsIDIwMTkgYXQgNDoxMSBQTSBSb2IgSGVycmluZyA8cm9iaEBrZXJu
ZWwub3JnPiB3cm90ZToKPiA+ID4KPiA+ID4gT24gTW9uLCBPY3QgMTQsIDIwMTkgYXQgMDQ6MTc6
MTZQTSArMDIwMCwgTmVpbCBBcm1zdHJvbmcgd3JvdGU6Cj4gPiA+ID4gVGhpcyBwYXRjaCB1cGRh
dGVzIHRoZSBkb2N1bWVudGF0aW9uIHdpdGggdGhlIGluZm9ybWF0aW9uIHJlbGF0ZWQKPiA+ID4g
PiB0byB0aGUgcXVpcmtzIHRoYXQgbmVlZHMgdG8gYmUgYWRkZWQgZm9yIGRpc2FibGluZyBhbGwg
U3VwZXJTcGVlZCBYSENpCj4gPiA+ID4gaW5zdGFuY2VzIGluIHBhcmsgbW9kZS4KPiA+ID4gPgo+
ID4gPiA+IENDOiBEb25namluIEtpbSA8dG9iZXR0ZXJAZ21haWwuY29tPgo+ID4gPiA+IENjOiBK
aWFueGluIFBhbiA8amlhbnhpbi5wYW5AYW1sb2dpYy5jb20+Cj4gPiA+ID4gUmVwb3J0ZWQtYnk6
IFRpbSA8ZWxhdGxsYXRAZ21haWwuY29tPgo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IE5laWwgQXJt
c3Ryb25nIDxuYXJtc3Ryb25nQGJheWxpYnJlLmNvbT4KPiA+ID4gPiAtLS0KPiA+ID4gPiAgRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9kd2MzLnR4dCB8IDIgKysKPiA+ID4g
PiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+ID4gPgo+ID4gPiBTaWdoLCB3aGF0
J3Mgb25lIG1vcmUgdG8gdGhlIG5ldmVyIGVuZGluZyBsaXN0IG9mIHF1aXJrcy4uLgo+ID4gPgo+
ID4gPiBBY2tlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
