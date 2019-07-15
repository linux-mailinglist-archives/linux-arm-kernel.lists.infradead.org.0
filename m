Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8766684C9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 10:02:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=16UdxXDIseqbd4deL14MVdTMDFDwefggY/dSWrlOf64=; b=i+32QACMiDC6XE
	5vfLGuMxnmOptgtIPkIdHRWTay4n/+OtYSWCiPZxEsnUG3FHKMzJ8Hf8LLtDZODXPRKMwWPE8xeZq
	u9Xtub4BzJsPFGSj6qfLPIQWJCtURDYNxb4jWK7nKAkji1dn3bQjbxSw2QSEluUC00qdwkssra7Ak
	LEQFj30t9wYcT7xKolgMF1cRyrenzSB2v2CYAZfO7oZntrA/VLsOs/dn7FdYRIOAGPl8+BZcOHWee
	hG8rhkcRM5/qe9hzdIXL5TaG8l+cMJ9bwKyQGEhkR6A73bfLdk1UNzSP0gAgclyOg7WGSz9aVvrmk
	XOFf/QqPy4PvcMM1PMSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmvwf-0002DP-0J; Mon, 15 Jul 2019 08:02:49 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmvwS-00029x-6U
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 08:02:37 +0000
Received: by mail-vs1-xe42.google.com with SMTP id 2so10731405vso.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 01:02:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=iuvLGLsstyrfvORfrha76hOJIbaEdkc5waXCSHT3U28=;
 b=oIEVkRA2iKUiSROtP71CyA8BYybIftJW4gJE9GU+nIJm0SBaF5fp5l5vvUbNiXyw60
 42SCo5/Nj3mgoSpXo0t4tGsWjSAW6ZqxeyHcTbzvWydbI/DniEzHsE5m2ZfW9OVRxThJ
 olOiag19xKLJz6CAhLt0oqgOwCp+NPFNmlqkZABFsPn0/vI3LVKcjknVz0RiR+Ywltsi
 wjVCMktkiUC+J8Fq+C3nNKI6uC1eTZDxPosS7z6OSwCED1MM4Yy/n1MC/pBaR9kCd4I6
 k6qrMdPKcCGxS8Zp4Roi//B1ZYvQqxBCF2Ht+8BYpRW1an4f+rYdKo98YdHSoAFUX1hZ
 9LlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=iuvLGLsstyrfvORfrha76hOJIbaEdkc5waXCSHT3U28=;
 b=XhKULR4ztpXs8Aao/LO8gnkGCABpuUR8i1Wvwkffnd61tZvv/YGgQWYtIjRGZecDfb
 v1TbKucaBJm5WHrKWrLFEJye4qvqqGOMmXl+T3fRq4P/9OxqazJYCmplVqkceXHx1qYC
 GwezV1ojmBZCdQ/zlzcHsccuwbCLBc9qbvA0YI6v/VN+iwfnSM8h+aWIsKa/0w5K/tXg
 dU1AG1LmEmUBm7kUP3Uovj+94k4866ZJ9AEVttewyto+spfoj+VkIovC2kaqaaWjzssy
 NBguMb9S8NFMJlu2IHQ2KnbJ1Rs9AvqNHPv2OWnth3SFewbT73khq9P0v/OMvGjPTELj
 J1ng==
X-Gm-Message-State: APjAAAUB73v1t2n7CQ5mQAX584zL2RRFUY82qeGrOFu06yAATM87iQRW
 9BZBs/x1hQ8riUodsEHME7ITA902esCfu/jRDC4bfQ==
X-Google-Smtp-Source: APXvYqz9I5YBxjFFkO53VilAz3vY9qzYuKTKMoBVSx7wkqVdfBCSqxzgYb9P6olM18c/3fom7byG6FaKIJC0UxNoLH4=
X-Received: by 2002:a67:7a90:: with SMTP id
 v138mr15572454vsc.200.1563177754346; 
 Mon, 15 Jul 2019 01:02:34 -0700 (PDT)
MIME-Version: 1.0
References: <1559577325-19266-1-git-send-email-ludovic.Barre@st.com>
 <5b7e1ae5-c97e-5a21-fc3e-7cc328087f04@st.com>
 <CAPDyKFrULRk=cHzVodU9aa6LDX9ip-VPHNwG7QXhmNZrMpPjGw@mail.gmail.com>
 <CAPDyKFr_KNpNY-xgGdKXdAnmmD5OD1=wxgs2LmBAUJOn0mZwqg@mail.gmail.com>
 <1563176363071.36427@st.com>
In-Reply-To: <1563176363071.36427@st.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 15 Jul 2019 10:01:58 +0200
Message-ID: <CAPDyKFpLoqZxX=nnivt-8zF_Azen+Vyf6vE4acB+r=LGOcz=5Q@mail.gmail.com>
Subject: Re: [PATCH V3 0/3] mmc: mmci: add busy detect for stm32 sdmmc variant
To: Ludovic BARRE <ludovic.barre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_010236_247355_48CF71E4 
X-CRM114-Status: GOOD (  20.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: DTML <devicetree@vger.kernel.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAxNSBKdWwgMjAxOSBhdCAwOTozOSwgTHVkb3ZpYyBCQVJSRSA8bHVkb3ZpYy5iYXJy
ZUBzdC5jb20+IHdyb3RlOgo+Cj4gSGkgVWxmCj4KPiBsaWtlIHNjaGVkdWxlZCwgSSBzZW5kIHlv
dSBhICJnZW50bGVtYW4gcGluZyIgYWJvdXQgdGhpcyBzZXJpZXMuCgpUaGFua3MsIEkgYW0ganVz
dCBsb29raW5nIGF0IGl0LCBhZ2Fpbi4KCktpbmQgcmVnYXJkcwpVZmZlCgo+Cj4gUmVnYXJkcywK
PiBMdWRvCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IERlIDog
VWxmIEhhbnNzb24gPHVsZi5oYW5zc29uQGxpbmFyby5vcmc+Cj4gRW52b3nDqSA6IGpldWRpIDIw
IGp1aW4gMjAxOSAxNTo1MAo+IMOAIDogTHVkb3ZpYyBCQVJSRQo+IENjIDogUm9iIEhlcnJpbmc7
IFNyaW5pdmFzIEthbmRhZ2F0bGE7IE1heGltZSBDb3F1ZWxpbjsgQWxleGFuZHJlIFRPUkdVRTsg
TGludXggQVJNOyBMaW51eCBLZXJuZWwgTWFpbGluZyBMaXN0OyBEVE1MOyBsaW51eC1tbWNAdmdl
ci5rZXJuZWwub3JnOyBsaW51eC1zdG0zMkBzdC1tZC1tYWlsbWFuLnN0b3JtcmVwbHkuY29tCj4g
T2JqZXQgOiBSZTogW1BBVENIIFYzIDAvM10gbW1jOiBtbWNpOiBhZGQgYnVzeSBkZXRlY3QgZm9y
IHN0bTMyIHNkbW1jIHZhcmlhbnQKPgo+IEhpIEx1ZG92aWMsCj4KPiBPbiBUaHUsIDEzIEp1biAy
MDE5IGF0IDE1OjEzLCBVbGYgSGFuc3NvbiA8dWxmLmhhbnNzb25AbGluYXJvLm9yZz4gd3JvdGU6
Cj4gPgo+ID4gT24gVGh1LCAxMyBKdW4gMjAxOSBhdCAxNTowMiwgTHVkb3ZpYyBCQVJSRSA8bHVk
b3ZpYy5iYXJyZUBzdC5jb20+IHdyb3RlOgo+ID4gPgo+ID4gPiBoaSBVbGYKPiA+ID4KPiA+ID4g
SnVzdCBhICJnZW50bGVtYW4gcGluZyIgYWJvdXQgdGhpcyBzZXJpZXMuCj4gPiA+IEkga25vdyB5
b3UgYXJlIGJ1c3ksIGl0J3MganVzdCB0byBiZSBzdXJlIHlvdSBkbyBub3QgZm9yZ2V0IG1lIDot
KQo+ID4KPiA+IFRoYW5rcyEgSSBzdGFydGVkIGJyaWVmbHkgdG8gcmV2aWV3LCBidXQgZ290IGRp
c3RyYWN0ZWQgYWdhaW4uIEkgd2lsbAo+ID4gY29tZSB0byBpdCwgYnV0IGl0IGp1c3Qgc2VlbXMg
dG8gdGFrZSBtb3JlIHRpbWUgdGhhbiBpdCBzaG91bGQsIG15Cj4gPiBhcG9sb2dpZXMuCj4KPiBB
bHJpZ2h0LCBzbyBJIHBsYW5uZWQgdG8gcmV2aWV3IHRoaXMgdGhpcyB3ZWVrIC0gYnV0IGZhaWxl
ZC4gSSBoYXZlCj4gYmVlbiBvdmVyd2hlbG1lZCB3aXRoIHdvcmsgbGF0ZWx5IChhcyB1c3VhbCB3
aGVuIHZhY2F0aW9uIGlzIGdldHRpbmcKPiBjbG9zZXIpLgo+Cj4gSSBuZWVkIHRvIGdlbnRseSBy
ZXF1ZXN0IHRvIGNvbWUgYmFjayB0byB0aGlzIGFzIG9mIHdlZWsgMjgsIHdoZW4gSQo+IHdpbGwg
Z2l2ZSB0aGlzIHRoZSBoaWdoZXN0IHByaW8uIEFnYWluIGFwb2xvZ2l6ZSBmb3IgdGhlIGRlbGF5
cyEKPgo+IEtpbmQgcmVnYXJkcwo+IFVmZmUKPgo+ID4KPiA+IEJyCj4gPiBVZmZlCj4gPgo+ID4g
Pgo+ID4gPiBSZWdhcmRzCj4gPiA+IEx1ZG8KPiA+ID4KPiA+ID4gT24gNi8zLzE5IDU6NTUgUE0s
IEx1ZG92aWMgQmFycmUgd3JvdGU6Cj4gPiA+ID4gRnJvbTogTHVkb3ZpYyBCYXJyZSA8bHVkb3Zp
Yy5iYXJyZUBzdC5jb20+Cj4gPiA+ID4KPiA+ID4gPiBUaGlzIHBhdGNoIHNlcmllcyBhZGRzIGJ1
c3kgZGV0ZWN0IGZvciBzdG0zMiBzZG1tYyB2YXJpYW50Lgo+ID4gPiA+IFNvbWUgYWRhcHRhdGlv
bnMgYXJlIHJlcXVpcmVkOgo+ID4gPiA+IC1DbGVhciBidXN5IHN0YXR1cyBiaXQgaWYgYnVzeV9k
ZXRlY3RfZmxhZyBhbmQgYnVzeV9kZXRlY3RfbWFzayBhcmUKPiA+ID4gPiAgIGRpZmZlcmVudC4K
PiA+ID4gPiAtQWRkIGhhcmR3YXJlIGJ1c3kgdGltZW91dCB3aXRoIE1NQ0lEQVRBVElNRVIgcmVn
aXN0ZXIuCj4gPiA+ID4KPiA+ID4gPiBWMzoKPiA+ID4gPiAtcmViYXNlIG9uIGxhdGVzdCBtbWMg
bmV4dAo+ID4gPiA+IC1yZXBsYWNlIHJlLXJlYWQgYnkgc3RhdHVzIHBhcmFtZXRlci4KPiA+ID4g
Pgo+ID4gPiA+IFYyOgo+ID4gPiA+IC1tbWNpX2NtZF9pcnEgY2xlYW51cCBpbiBzZXBhcmF0ZSBw
YXRjaC4KPiA+ID4gPiAtc2ltcGxpZnkgdGhlIGJ1c3lfZGV0ZWN0X2ZsYWcgZXhjbHVkZQo+ID4g
PiA+IC1yZXBsYWNlIHNkbW1jIHNwZWNpZmljIGNvbW1lbnQgaW4KPiA+ID4gPiAibW1jOiBtbWNp
OiBhdm9pZCBmYWtlIGJ1c3kgcG9sbGluZyBpbiBtbWNpX2lycSIKPiA+ID4gPiB0byBmb2N1cyBv
biBjb21tb24gYmVoYXZpb3IKPiA+ID4gPgo+ID4gPiA+IEx1ZG92aWMgQmFycmUgKDMpOgo+ID4g
PiA+ICAgIG1tYzogbW1jaTogZml4IHJlYWQgc3RhdHVzIGZvciBidXN5IGRldGVjdAo+ID4gPiA+
ICAgIG1tYzogbW1jaTogYWRkIGhhcmR3YXJlIGJ1c3kgdGltZW91dCBmZWF0dXJlCj4gPiA+ID4g
ICAgbW1jOiBtbWNpOiBhZGQgYnVzeSBkZXRlY3QgZm9yIHN0bTMyIHNkbW1jIHZhcmlhbnQKPiA+
ID4gPgo+ID4gPiA+ICAgZHJpdmVycy9tbWMvaG9zdC9tbWNpLmMgfCA0OSArKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tCj4gPiA+ID4gICBkcml2ZXJzL21t
Yy9ob3N0L21tY2kuaCB8ICAzICsrKwo+ID4gPiA+ICAgMiBmaWxlcyBjaGFuZ2VkLCA0NCBpbnNl
cnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQo+ID4gPiA+CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
