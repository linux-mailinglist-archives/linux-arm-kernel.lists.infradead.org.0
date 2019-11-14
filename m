Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9286DFC940
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 15:50:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uybo1mGPcJvJCm75twv3461aSyyjKymKVvB6QVFOXbA=; b=OvCGD+NK3R+Wqq
	Ps1TivqPWq10AEf69dGzgGrj+ptGdob7VG+9N4S6OfYnPhbK9YrQboz8tF1XQ5WjgMmeqgbGN/VIp
	i5Yd4qrm8JbRmMhzyR9JNmbi8qPxa9IdlE0zIBgMiacTpEqSejN9/uygF/W1Iyv19Sx/qO+9qooQd
	al2cT7HZVkFXo8TIi7k2JeXRO03xtoJ1kQdPWjHRAtt9FWg029YvrbHrO3GqZz6qqE6zktghijgWM
	WzzLbwqAp4r87Sig0Mfxw04oKf2nT0UIDm0+x8ZvGWM5YOH4mLNINRMWFNrlG3jKoHHi4aOwKi7wH
	CUFxori+GXCmSVxGTusQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVGRm-0002Z3-Be; Thu, 14 Nov 2019 14:50:10 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVGRb-0002Td-9V
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 14:50:00 +0000
Received: by mail-vs1-xe42.google.com with SMTP id a143so4004712vsd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 06:49:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=O7wapv4EE4G+0Gc1i2jjis8KTbTPULbvSuyjxNMdOtM=;
 b=AVxDQJqsoylkSQmx08lzQrUBZCxelJXskce1tNwhtJqrv1m/adiDXhfzeb/LLtfBmP
 9J1MdAGXQYOU9lve3TdlhlSPCWYIik4z3gbcbniH/2ZP/ZXc2kJetKj4I6hyBbDXALnt
 iKgDNTMw7gO1UcDjUwYeFQTYgymS3hwkbr6BYeprE9le1g2rtD7363gMpJaobyJD2GCh
 gPfFepXZyZOTSZe8PbbwFXolc3mrqQPUCjmh109X07tuR9ew5b1b8Jf0XUoKppFBALdL
 lykqOOtEIukCrxxKeAwPCpErBEAHgDQIf7n8jAKX4QF8oNgh1YmEKac+5Hot/3WZQEHA
 V5uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=O7wapv4EE4G+0Gc1i2jjis8KTbTPULbvSuyjxNMdOtM=;
 b=MUl4oY6jW/t243BLSZ1S4jmBPfSO0QZykIWXrzjJBT0GcYI3n7+J3QTe3XCBvOfzEp
 5oRITqaqmFUdFrYt0m/buC/arHuRvYsMq1mpnOZC53DT+X3/b1KOVgjo9IQhI4bEPR7k
 4NqdvD0RSBbYuuUF2NJ3OOHAePnYogJ4YfLMPAfqSXyEGPbIK2fhc64/S9r49O3xpzVR
 RLkMgQJ36mX5XX++IMi8VHqRhbbGLOXju9Py8NcFLakY3S9lyTzKEB1CAMIYuauNQb2E
 ZkkVlYkSCQqEIyIokmqhuib4RrQ1hG1SPdtLcc3hSrPS1RsaimqnFfZR72VBo5wOMiFk
 ZHXg==
X-Gm-Message-State: APjAAAW/KMp2/IjK4POeKGNLycD+vWIjoOIXPazGJP7uRITc/g3BPE2M
 bvoEQPa2ER7c3oticO/eQCMCkwwWyhDI5RmyAaXCrw==
X-Google-Smtp-Source: APXvYqzcyR0y7F+ha4XEbI+5EzDrdrJyK1AZpIJppA2pHa1tvpOnu8Gvhe0K17/wE+Byt8XJXfmdlVGMNecJ5wVu/x0=
X-Received: by 2002:a05:6102:36d:: with SMTP id
 f13mr6134394vsa.34.1573742998082; 
 Thu, 14 Nov 2019 06:49:58 -0800 (PST)
MIME-Version: 1.0
References: <20191011131502.29579-1-ludovic.Barre@st.com>
 <20191011131502.29579-2-ludovic.Barre@st.com>
 <CAPDyKFqE09nqdev_qewwNzjjUuhm0UUC03tgvY=ZukYY4az7wg@mail.gmail.com>
 <d8d82f39-319b-c8f8-255a-a02a81980671@st.com>
In-Reply-To: <d8d82f39-319b-c8f8-255a-a02a81980671@st.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 14 Nov 2019 15:49:21 +0100
Message-ID: <CAPDyKFpvOdwnwNa94ppF_Gum26ML52oeXDSeR1qKtSaH_wQU+g@mail.gmail.com>
Subject: Re: [PATCH 1/2] mmc: add unstuck function if host is in deadlock state
To: Ludovic BARRE <ludovic.barre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_064959_344636_EB877BB5 
X-CRM114-Status: GOOD (  27.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: DTML <devicetree@vger.kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAxMyBOb3YgMjAxOSBhdCAxNzo1NCwgTHVkb3ZpYyBCQVJSRSA8bHVkb3ZpYy5iYXJy
ZUBzdC5jb20+IHdyb3RlOgo+Cj4KPgo+IExlIDEwLzIxLzE5IMOgIDM6MzUgUE0sIFVsZiBIYW5z
c29uIGEgw6ljcml0IDoKPiA+IE9uIEZyaSwgMTEgT2N0IDIwMTkgYXQgMTU6MTUsIEx1ZG92aWMg
QmFycmUgPGx1ZG92aWMuQmFycmVAc3QuY29tPiB3cm90ZToKPiA+Pgo+ID4+IEZyb206IEx1ZG92
aWMgQmFycmUgPGx1ZG92aWMuYmFycmVAc3QuY29tPgo+ID4+Cj4gPj4gQWZ0ZXIgYSByZXF1ZXN0
IGEgaG9zdCBtYXkgYmUgaW4gZGVhZGxvY2sgc3RhdGUsIGFuZCB3YWl0Cj4gPj4gYSBzcGVjaWZp
YyBhY3Rpb24gdG8gdW5zdHVjayB0aGUgaGFyZHdhcmUgYmxvY2sgYmVmb3JlCj4gPj4gcmUtc2Vu
ZGluZyBhIG5ldyBjb21tYW5kLgo+ID4KPiA+IFJhdGhlciB0aGFuIHRhbGtpbmcgYWJvdXQgInVu
c3R1Y2siIGFuZCAiZGVhZGxvY2siLCBob3cgYWJvdXQgaW5zdGVhZAo+ID4gZGVzY3JpYmluZyB0
aGF0IGFuIE1NQyBjb250cm9sbGVyLCBtYXkgZW5kIHVwIGluIGFuIG5vbi1mdW5jdGlvbmFsCj4g
PiBzdGF0ZSBoYW5naW5nIG9uIHNvbWV0aGluZy4gVGhlbiB0byBhbGxvdyBpdCB0byBzZXJ2ZSBu
ZXcgcmVxdWVzdHMgaXQKPiA+IG5lZWRzIHRvIGJlIHJlc2V0Lgo+ID4KPgo+IE9rLCBkZWFkbG9j
ayBuYW1pbmcgaXMgcGVyaGFwcyB0b28gc3Ryb25naHQgYW5kIHNjYXJ5Lgo+Cj4gPj4KPiA+PiBU
aGlzIHBhdGNoIGFkZHMgYW4gb3B0aW9uYWwgY2FsbGJhY2sgbW1jX2h3X3Vuc3R1Y2sgd2hpY2gK
PiA+PiBhbGxvd3MgdGhlIGhvc3QgdG8gdW5zdHVjayB0aGUgY29udHJvbGxlci4gSW4gb3JkZXIg
dG8gYXZvaWQKPiA+PiBhIGNyaXRpY2FsIGNvbnRleHQsIHRoaXMgY2FsbGJhY2sgbXVzdCBiZSBj
YWxsZWQgd2hlbiB0aGUKPiA+PiByZXF1ZXN0IGlzIGNvbXBsZXRlZC4gRGVwZW5kaW5nIHRoZSBt
bWMgcmVxdWVzdCwgdGhlIGNvbXBsZXRpb24KPiA+PiBmdW5jdGlvbiBpcyBkZWZpbmVkIGJ5IG1y
cS0+ZG9uZSBhbmQgY291bGQgYmUgaW4gYmxvY2suYyBvciBjb3JlLmMuCj4gPgo+ID4gSSB0aGlu
ayBpdCdzIGltcG9ydGFudCB0byBzdGF0ZSBleGFjdGx5IHdoYXQgaXMgZXhwZWN0ZWQgZnJvbSB0
aGUgY29yZQo+ID4gcGVyc3BlY3RpdmUsIGJ5IHRoZSBtbWMgaG9zdCBkcml2ZXIgd2hlbiBpdCBj
YWxscyB0aGlzIG5ldyBob3N0IG9wcy4KPiA+IFdlIG5lZWQgdG8gY2xhcmlmeSB0aGF0Lgo+ID4K
PiA+Pgo+ID4+IG1tY19od191bnN0dWNrIGlzIGNhbGxlZCBpZiB0aGUgaG9zdCByZXR1cm5zIGFu
IGNtZC9zYmMvc3RvcC9kYXRhCj4gPj4gREVBRExLIGVycm9yLgo+ID4KPiA+IFRvIG1lLCB0aGlz
IGFwcHJvYWNoIHNlZW1zIGEgYml0IHVwc2lkZS1kb3duLiBBbHRob3VnaCwgSSBoYXZlIHRvCj4g
PiBhZG1pdCB0aGF0IEkgaGF2ZW4ndCB0aG91Z2h0IHRocm91Z2ggdGhpcyBjb21wbGV0ZWx5IHll
dC4KPiA+Cj4gPiBUaGUgdGhpbmcgaXMsIHRvIG1ha2UgdGhpcyB1c2VmdWwgZm9yIGhvc3QgZHJp
dmVycyBpbiBnZW5lcmFsLCBJCj4gPiBpbnN0ZWFkIHRoaW5rIHdlIG5lZWQgdG8gYWRkIHRpbWVv
dXQgdG8gZWFjaCByZXF1ZXN0IHRoYXQgdGhlIGNvcmUKPiA+IHNlbmRzIHRvIHRoZSBob3N0IGRy
aXZlci4gSW4gb3RoZXIgd29yZHMsIHJhdGhlciB0aGFuIHdhaXRpbmcgZm9yZXZlcgo+ID4gaW4g
dGhlIGNvcmUgZm9yIHRoZSBjb21wbGV0aW9uIHZhcmlhYmxlIHRvIGJlIHNldCwgdmlhIGNhbGxp
bmcKPiA+IHdhaXRfZm9yX2NvbXBsZXRpb24oKSB3ZSBjb3VsZCBjYWxsIHdhaXRfZm9yX2NvbXBs
ZXRpb25fdGltZW91dCgpLiBUaGUKPiA+IHRyaWNreSBwYXJ0IGlzIHRvIGZpZ3VyZSBvdXQgd2hh
dCB0aW1lb3V0IHRvIHVzZSBmb3IgZWFjaCByZXF1ZXN0Lgo+ID4gUGVyaGFwcyB0aGF0IGlzIGV2
ZW4gd2h5IHlvdSBwaWNrZWQgdGhlIGFwcHJvYWNoIGFzIGltcGxlbWVudGVkIGluCj4gPiBAc3Vi
amVjdCBwYXRjaCBpbnN0ZWFkPwo+Cj4gT24gU1RNMzIgU0RNTUMgdmFyaWFudCwgSWYgZGF0YXRp
bWVvdXQgb2NjdXJzIG9uIFIxQiByZXF1ZXN0IHRoZSBEYXRhCj4gUGF0aCBTdGF0ZSBNYWNoaW5l
IHN0YXlzIGluIGJ1c3kgYW5kIG9ubHkgdGhlIERQU00gaXMgbm9uLWZ1bmN0aW9uYWwuCj4gVGhl
IGhhcmR3YXJlIGJsb2NrIHdhaXRzIGEgc29mdHdhcmUgYWN0aW9uIHRvIGFib3J0IHRoZSBEUFNN
Lgo+Cj4gTGlrZSB0aGUgQ1BTTSBzdGF5IGFsaXZlLCB0aGUgZnJhbWV3b3JrIGNhbiBzZW50IHNv
bWUgcmVxdWVzdHMKPiAod2l0aG91dCBkYXRhLCBleGFtcGxlIGNtZDEzOnN0YXR1cykgYmVmb3Jl
IHRvIGhhZCB0aGlzCj4gdGltZW91dCBpc3N1ZS4KPgo+IFBPViBmcmFtZXdvcmsgSSB1bmRlcnN0
YW5kIHRoZSBwb3NzaWJpbGl0eSB0byBoYXZlIGEgY29tcGxldGlvbl90aW1lb3V0LAo+IGZvciBt
b3JlIHNhZmV0eS4gQnV0IGZvciB0aGlzIHNwZWNpZmljIHNkbW1jIGNhc2UsIEknbSBub3QgZmFu
LCBiZWNhdXNlCj4gdGhlIGNvbXBsZXRpb24gdGltZW91dCBlcnJvciB3aWxsIG9jY3VyIHNldmVy
YWwgcmVxdWVzdHMgYWZ0ZXIgdGhlIHJlYWwKPiBpc3N1ZSAod2hpY2ggcHV0IHRoZSBEUFNNIG5v
bi1mdW5jdGlvbmFsKS4gd2hlbiB0aGUgY29tcGxldGlvbiB0aW1lb3V0Cj4gb2NjdXJzIHdlIGNh
bid0IGtub3cgaWYgaXQncyBkdWUgdG8gUjFCIHRpbWVvdXQgb3IgYW4gb3RoZXIgaXNzdWUuCgpS
aWdodCwgSSBzZWUgd2hhdCB5b3UgYXJlIHNheWluZy4gU28gbGV0J3MgZHJvcCB0aGUgYXBwcm9h
Y2ggc3VnZ2VzdGVkCmluICRzdWJqZWN0IHNlcmllcy4KCj4KPiBUbyByZXNvbHZlIHRoZSBTRE1N
QydzIHNwZWNpZmljaXR5LCBJIGNhbiBwcm9wb3NlZCB5b3UgdG8gYWRkIGEgdGhyZWFkZWQKPiBp
cnEgaW4gbW1jaSBkcml2ZXJzIHRvIGFib3J0IHRoZSBEUFNNIGFuZCB0ZXJtaW5hdGUgdGhlIHJl
cXVlc3QuCgpPa2F5LCBzbyB0aGUgdGhyZWFkZWQgSVJRIGhhbmRsZXIgaXMgbmVlZGVkLCBiZWNh
dXNlIHRoZSByZXNldApvcGVyYXRpb24gbWF5IHNsZWVwIChjYW4ndCBiZSBleGVjdXRlZCBpbiBh
dG9taWMgY29udGV4dCkuIFJpZ2h0PwoKVGhhdCBzaG91bGQgd29yaywgYnV0Li4uIGxldCdzIG1v
dmUgdGhlIGRpc2N1c3Npb24gdG8gdGhhdCBwYXRjaCBpbnN0ZWFkLgoKPgo+ID4KPiA+IEFueXdh
eSwgdGhlIHR5cGljYWwgc2NlbmFyaW8gSSBzZWUsIGlzIHRoYXQgdGhlIGhvc3QgZHJpdmVyIGlz
Cj4gPiBoYW5naW5nLCBsaWtlbHkgd2FpdGluZyBmb3IgYW4gSVJRIHRoYXQgbmV2ZXIgZ2V0IHJh
aXNlZC4gU28sIHVubGVzcwo+ID4gaXQgaW1wbGVtZW50cyBpdCBvd24gdmFyaWFudCBvZiBhICJy
ZXF1ZXN0IHRpbWVvdXQiIG1lY2hhbmlzbSwgaXQKPiA+IHNpbXBsZSBpc24ndCBhYmxlIHRvIGNh
bGwgbW1jX3JlcXVlc3RfZG9uZSgpIHRvIGluZm9ybSB0aGUgY29yZSBhYm91dAo+ID4gdGhhdCB0
aGUgcmVxdWVzdCBoYXMgZmFpbGVkLgo+ID4KPiA+IEZvciBjb21tZW50cyB0byB0aGUgY29kZSwg
SSBkZWZlciB0aGF0IHRvIHRoZSBuZXh0IHN0ZXAsIHdoZW4gd2UgaGF2ZQo+ID4gYWdyZWVkIG9u
IHRoZSB3YXkgZm9yd2FyZC4KPiA+Cj4gPiBLaW5kIHJlZ2FyZHMKPiA+IFVmZmUKPiA+CgpLaW5k
IHJlZ2FyZHMKVWZmZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
