Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E88154C1A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 20:24:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0a1bStgJQTl0X/yAOD1zlBPP+nUhJT+HqIcjQE0QC1w=; b=WafdAELQDrVLvT
	IOxE8aiTXmTZJwagHVbaGVe9c1EVJmktrqqLpdsrwpX+sAMTbH4f9uUqhnTfd4T2qeUmnneMYxZ6a
	jYYgobAwvFNZkJZn4TuwFa2h7gdqAqv3RyQmZo0DOBNs24g1FvUhu+c0Vq0zg4AUOIJkVwS9hp5bk
	cvvzLx6y1REk63Tr6HPESaMdo8hQd5fDt2XhfVsQY3G8prZyzAL+baTuCEuiPpQG/gysgLfIO80uX
	kpb7nWlu46gFXzM6fUrEIvmp8XxPkkRCq+mNruyCMNLlnj+vGVJSKXFc32RG1LMhvCg4WcvV1/ezH
	vGaj5tC1KdxS3pLT410w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izmkm-0002KN-6c; Thu, 06 Feb 2020 19:23:56 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izmke-0002Jd-N8
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 19:23:50 +0000
Received: by mail-vk1-xa42.google.com with SMTP id p191so1938194vkf.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 11:23:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=2t7kk/1bpGDazBh7M5TloR9sVuVnHpzkthWO4hHktzU=;
 b=MGESQ+IxWEt/9Y1lL3WS7J6QtOa7pHsGxDEv6zoGQxpXoKioee+39Ysl5vZ4c45W1o
 nk7zSxpiBM0gCPx3YLVZZovnkssHejQnY2vxOIUXgvQ+nUE97QCC4VRLm0TIOepv+h/k
 5/A9XbflEPqcZTjuHR+DICIfzCf4Jds09wIVxkjjyF8FigS1XE7K8/P9TIZq13UW00Ar
 q3XCbs3/A65vyh9vpOwiOQW9a/l0SFcUA9ubz7oMGPGKWP5ANbZip8azUKHi15C1z32e
 nAu5Sn3eiqQoxTV0aOHDiSvO75+j/PiSHjyYVqJAEAhLrYNiFNzWoWHou+mMTWLo4867
 SKQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=2t7kk/1bpGDazBh7M5TloR9sVuVnHpzkthWO4hHktzU=;
 b=EtAysLsLm4EgA/YGPYXo3s9EXB5QpXdyeKzC6d16YDhR5VE0v8I5PiLn++rvlJQYrN
 Ei7lKOvdNfpU5n3EKjw3xNhEz+QBwWnzeWQycDfzN+g1pZNhbDjP76ehabnLrs+Z4nN8
 tIkftE1FZL+Jx1k2UdZBrPVkSWOKnEpC7yvRg6k1XIvVX87hb7W4mti53dnR4BR6yUsl
 RiWhIf9V5GaFklLltO8llq3mI5alohUF2+S9b+WEwuyLLt2ZuxUjO0QeuyFKy0icjMnK
 gYHBPYZG+GXd6XXeKvYPgJwa9BlqS0AyMfg9yJOLT8EgGFWyi+1DBbFqZHlR5rR8Q9QT
 SfYg==
X-Gm-Message-State: APjAAAVFOTzx3XiiBm3nuII5B7p79hCKzUhC9JRsdCC6mdQx9khV0OvO
 zF0kZf6dP0KYyAHAQ2IegYe6JiXAVi8w/KGTVJ2wVQ==
X-Google-Smtp-Source: APXvYqw0uOUcEtkACNs/U0sJtZSRFEeaRY33nIGAsIIaR8s4C4Kp0W76YvfhYf/D8oYAtyZFNHsWstF/geBfUtugtow=
X-Received: by 2002:ac5:c7a9:: with SMTP id d9mr2720800vkn.79.1581017027140;
 Thu, 06 Feb 2020 11:23:47 -0800 (PST)
MIME-Version: 1.0
References: <20191219172823.1652600-1-anarsoul@gmail.com>
 <CAHLCerPWEDqEE8LRUiO5GpeP+BfnestocndBQq6oXAxVN=+3ow@mail.gmail.com>
 <af5383b5-2dd4-92ab-ded2-f1cde48bb21a@linaro.org>
In-Reply-To: <af5383b5-2dd4-92ab-ded2-f1cde48bb21a@linaro.org>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Fri, 7 Feb 2020 00:53:36 +0530
Message-ID: <CAHLCerPir-7DEpweGZ9qoowm+u3BtDdLyB-B18KibMo9y+Q_DQ@mail.gmail.com>
Subject: Re: [PATCH v8 0/7] add thermal sensor driver for A64, A83T, H3, H5,
 H6, R40
To: Daniel Lezcano <daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_112348_805439_FC2E76A8 
X-CRM114-Status: GOOD (  23.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>,
 Linux PM list <linux-pm@vger.kernel.org>, Yangtao Li <tiny.windzz@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, "David S. Miller" <davem@davemloft.net>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBGZWIgNiwgMjAyMCBhdCAxMDoxNiBQTSBEYW5pZWwgTGV6Y2Fubwo8ZGFuaWVsLmxl
emNhbm9AbGluYXJvLm9yZz4gd3JvdGU6Cj4KPgo+IEhpIEFtaXQsCj4KPiBPbiAwNi8wMi8yMDIw
IDE1OjEzLCBBbWl0IEt1Y2hlcmlhIHdyb3RlOgo+ID4gSGkgVmFzaWx5LAo+ID4KPiA+IEZvciB0
aGlzIGVudGlyZSBzZXJpZXMsIHRoZSBEVFMgZmlsZXMgZG9uJ3QgY29udGFpbiBhbnkgdHJpcCBw
b2ludHMuCj4gPiBEaWQgSSBtaXNzIHNvbWUgb3RoZXIgc2VyaWVzPwo+ID4KPiA+IEF0IGEgbWlu
aW11bSwgeW91IHNob3VsZCBhZGQgc29tZSAiaG90IiBvciAiY3JpdGljYWwiIHRyaXAgcG9pbnRz
Cj4gPiBzaW5jZSB0aGVuIGRvbid0IHJlcXVpcmUgYSBjb29saW5nLW1hcCB3aXRoIHRocm90dGxp
bmcgYWN0aW9ucy4gSWYgeW91Cj4gPiBoYXZlICJwYXNzaXZlIiB0cmlwIHBvaW50cywgdGhlbiB5
b3UgbmVlZCB0byBwcm92aWRlIGNvb2xpbmctbWFwcy4KPgo+IEV4Y2VwdCBJJ20gbWlzdW5kZXJz
dGFuZGluZyB0aGUgYmluZGluZ3MsIGEgdGhlcm1hbCB6b25lIG11c3QgZGVmaW5lCj4gdGhlc2Ug
cmVxdWlyZWQgcHJvcGVydGllczoKPgo+IC0gcG9sbGluZy1kZWxheQo+IC0gcG9sbGluZy1kZWxh
eS1wYXNzaXZlCj4gLSB0aGVybWFsLXNlbnNvcnMKPiAtIHRyaXBzCj4gLSBjb29saW5nLW1hcHMK
ClJpZ2h0LCBleGNlcHQgZm9yIHRoZSBjb29saW5nLW1hcHMuIFRob3NlIGFyZSBleGVtcHRlZCBp
ZiB0aGVyZSBpcyB0aGUKdHJpcCB0eXBlIGlzIG5vdCBwYXNzaXZlLiBUaGF0IGlzIG15IHVuZGVy
c3RhbmRpbmcgb2YgdGhlIGV4aXN0aW5nCmJpbmRpbmdzLgoKVHJpcCB0eXBlIGNyaXRpY2FsIHRy
aWdnZXJzIGEgc2h1dGRvd24gYW5kIHRyaXAgdHlwZSBob3Qgb25seSB0cmlnZ2VycwphIG5vdGlm
aWNhdGlvbiAtIHNlZSB0aGVybWFsX2NvcmUuYzpoYW5kbGVfY3JpdGljYWxfdHJpcHMoKS4gU28g
d2UKb25seSBuZWVkIGNvb2xpbmcgbWFwcyBmb3IgcGFzc2l2ZSB0cmlwIHR5cGVzLgoKPiA+IFNp
bmNlIHRoaXMgc2VyaWVzIGhhcyBiZWVuIG1lcmdlZCwgY291bGQgeW91IHBsZWFzZSBmb2xsb3cg
dXAgd2l0aCBhCj4gPiBmaXh1cCBzZXJpZXMgdG8gYWRkIHRoZSB0cmlwIHBvaW50cz8KPiA+Cj4g
PiBSZWdhcmRzLAo+ID4gQW1pdAo+ID4gcC5zLiBXZSBzaG91bGQgY2F0Y2ggYWxsIHRoaXMgYXV0
b21hdGljYWxseSwgSSdsbCBzZW5kIG91dCB5YW1sCj4gPiBiaW5kaW5ncyBmb3IgdGhlIHRoZXJt
YWwgZnJhbWV3b3JrIHNvb24gdGhhdCBzaG91bGQgY2F0Y2ggdGhpcyBzdHVmZi4KPgo+ICsxCj4K
PiBUaGVyZSB3YXMgYSBzbWFsbCBkaXNjdXNzaW9uIGFib3V0IGNvbnZlcnRpbmcgdGhlIGJpbmRp
bmcgdG8gYSBzY2hlbWE6Cj4KPiBodHRwczovL3d3dy5zcGluaWNzLm5ldC9saXN0cy9kZXZpY2V0
cmVlL21zZzMzMjQyNC5odG1sCgoKQWFoLCBJIG1pc3NlZCB0aGF0LiBJIHN0YXJ0ZWQgd29ya2lu
ZyBvbiBzb21ldGhpbmcgbGFzdCB3ZWVrIHRoYXQKbG9va3Mgc2ltaWxhciB0byB5b3VyIGRpc2N1
c3Npb24uIFB1c2hlZCBhIFdJUCBicmFuY2ggaGVyZVsxXSwgaXQKbG9va3MgbGlrZSBJIGhhZCBh
IHNpbWlsYXIgaWRlYSBvbiBob3cgdG8gc3BsaXQgdGhlIGJpbmRpbmdzLiBIb3BlIHRvCmZpbmlz
aCB0aGlzIHVwIHRvbW9ycm93IGZvciBhbiBSRkMuCgpSZWdhcmRzLApBbWl0CgpbMV0gaHR0cHM6
Ly9naXRodWIuY29tL2lkbGV0aHJlYWQvbGludXgvY29tbWl0cy91cC90aGVybWFsL3lhbWwtY29u
dmVyc2lvbi12MQoKPiA+IE9uIFRodSwgRGVjIDE5LCAyMDE5IGF0IDEwOjU4IFBNIFZhc2lseSBL
aG9ydXpoaWNrIDxhbmFyc291bEBnbWFpbC5jb20+IHdyb3RlOgo+ID4+Cj4gPj4gVGhpcyBwYXRj
aHNldCBhZGRzIGRyaXZlciBmb3IgdGhlcm1hbCBzZW5zb3IgaW4gQTY0LCBBODNULCBIMywgSDUs
Cj4gPj4gSDYgYW5kIFI0MCBTb0NzLgo+ID4+Cj4gPj4gdjg6Cj4gPj4gICAgICAgICAtIFt2YXNp
bHldIEFkZHJlc3MgbW9yZSBNYXhpbWUncyBjb21tZW50cyBmb3IgZHQtc2NoZW1hCj4gPj4gICAg
ICAgICAtIFt2YXNpbHldIEFkZCBteXNlbGYgdG8gTUFJTlRBSU5FUlMgZm9yIHRoZSBkcml2ZXIg
YW5kIHNjaGVtYQo+ID4+ICAgICAgICAgLSBbdmFzaWx5XSBSb3VuZCBjYWxpYnJhdGlvbiBkYXRh
IHNpemUgdG8gd29yZCBib3VuZGFyeSBmb3IgSDYgYW5kIEE2NAo+ID4+ICAgICAgICAgLSBbdmFz
aWx5XSBDaGFuZ2Ugb2Zmc2V0IGZvciBBNjQgc2luY2UgaXQgcmVwb3J0cyB0b28gbG93IHRlbXAg
b3RoZXJ3aXNlLgo+ID4+ICAgICAgICAgICAgICAgICAgICBMaWtlbHkgY29udmVyc2lvbiBmb3Jt
dWxhIGluIHVzZXIgbWFudWFsIGlzIG5vdCBjb3JyZWN0Lgo+ID4+Cj4gPj4gdjc6Cj4gPj4gICAg
ICAgICAtIFt2YXNpbHldIEFkZHJlc3MgTWF4aW1lJ3MgY29tbWVudHMgZm9yIGR0LXNjaGVtYQo+
ID4+ICAgICAgICAgLSBbdmFzaWx5XSBNb3ZlIGNvbW1vbiBwYXJ0IG9mIEgzIGFuZCBINSBkdHMg
aW50byBzdW54aS1oMy1oNS5kdHNpCj4gPj4gICAgICAgICAtIFt2YXNpbHldIEFkZCBNYXhpbWUn
cyBhLWIgdG8gdGhlIGRyaXZlciBwYXRjaAo+ID4+Cj4gPj4gdjY6Cj4gPj4gICAgICAgICAtIFtv
bmRyZWosIHZhc2lseV0gU3F1YXNoIGFsbCBkcml2ZXIgcmVsYXRlZCBjaGFuZ2VzIGludG8gYQo+
ID4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNpbmdsZSBwYXRjaAo+ID4+ICAgICAgICAg
LSBbb25kcmVqXSBSZW5hbWUgY2FsaWIgLT4gY2FsaWJyYXRpb24KPiA+PiAgICAgICAgIC0gW29u
ZHJlal0gRml4IHRoZXJtYWwgem9uZSByZWdpc3RyYXRpb24gY2hlY2sKPiA+PiAgICAgICAgIC0g
W29uZHJlal0gTG93ZXIgcmF0ZSBvZiBzZW5zb3IgZGF0YSBpbnRlcnJ1cHRzIHRvIDQvc2VjL3Nl
bnNvcgo+ID4+ICAgICAgICAgLSBbb25kcmVqXSBSZXdvcmsgc2NhbGUvb2Zmc2V0IHZhbHVlcywg
SDYgY2FsaWJyYXRpb24KPiA+PiAgICAgICAgIC0gW29uZHJlal0gRXhwbGljaXRseSBzZXQgbW9k
IGNsb2NrIHRvIDI0IE1Iego+ID4+ICAgICAgICAgLSBbb25kcmVqXSBTZXQgdW5kb2N1bWVudGVk
IGJpdHMgaW4gQ1RSTDAgZm9yIEg2Cj4gPj4gICAgICAgICAtIFtvbmRyZWpdIEFkZCBzdXBwb3J0
IGZvciBBODNUCj4gPj4gICAgICAgICAtIFtvbmRyZWpdIEFkZCBkdHMgY2hhbmdlcyBmb3IgQTgz
VCwgSDMsIEg1LCBINgo+ID4+ICAgICAgICAgLSBbdmFzaWx5XSBBZGQgZHRzIGNoYW5nZXMgZm9y
IEE2NAo+ID4+ICAgICAgICAgLSBbdmFzaWx5XSBBZGRyZXNzIE1heGltZSdzIGNvbW1lbnRzIGZv
ciBZQU1MIHNjaGVtZQo+ID4+ICAgICAgICAgLSBbdmFzaWx5XSBNYWtlIC5jYWxjX3RlbXAgY2Fs
bGJhY2sgbWFuZGF0b3J5Cj4gPj4gICAgICAgICAtIFt2YXNpbHldIFNldCAubWF4X3JlZ2lzdGVy
IGluIHJlZ21hcCBjb25maWcsIHNvIHJlZ3MgY2FuIGJlCj4gPj4gICAgICAgICAgICAgICAgICAg
IGluc3BlY3RlZCB1c2luZyBkZWJ1Z2ZzCj4gPj4KPiA+PiBPbmRyZWogSmlybWFuICg0KToKPiA+
PiAgIEFSTTogZHRzOiBzdW44aS1hODN0OiBBZGQgdGhlcm1hbCBzZW5zb3IgYW5kIHRoZXJtYWwg
em9uZXMKPiA+PiAgIEFSTTogZHRzOiBzdW44aS1oMzogQWRkIHRoZXJtYWwgc2Vuc29yIGFuZCB0
aGVybWFsIHpvbmVzCj4gPj4gICBhcm02NDogZHRzOiBhbGx3aW5uZXI6IGg1OiBBZGQgdGhlcm1h
bCBzZW5zb3IgYW5kIHRoZXJtYWwgem9uZXMKPiA+PiAgIGFybTY0OiBkdHM6IGFsbHdpbm5lcjog
aDY6IEFkZCB0aGVybWFsIHNlbnNvciBhbmQgdGhlcm1hbCB6b25lcwo+ID4+Cj4gPj4gVmFzaWx5
IEtob3J1emhpY2sgKDEpOgo+ID4+ICAgYXJtNjQ6IGR0czogYWxsd2lubmVyOiBhNjQ6IEFkZCB0
aGVybWFsIHNlbnNvcnMgYW5kIHRoZXJtYWwgem9uZXMKPiA+Pgo+ID4+IFlhbmd0YW8gTGkgKDIp
Ogo+ID4+ICAgdGhlcm1hbDogc3VuOGk6IGFkZCB0aGVybWFsIGRyaXZlciBmb3IgSDYvSDUvSDMv
QTY0L0E4M1QvUjQwCj4gPj4gICBkdC1iaW5kaW5nczogdGhlcm1hbDogYWRkIFlBTUwgc2NoZW1h
IGZvciBzdW44aS10aGVybWFsIGRyaXZlcgo+ID4+ICAgICBiaW5kaW5ncwo+ID4+Cj4gPj4gIC4u
Li90aGVybWFsL2FsbHdpbm5lcixzdW44aS1hODN0LXRocy55YW1sICAgICB8IDE2MCArKysrKwo+
ID4+ICBNQUlOVEFJTkVSUyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDgg
Kwo+ID4+ICBhcmNoL2FybS9ib290L2R0cy9zdW44aS1hODN0LmR0c2kgICAgICAgICAgICAgfCAg
MzYgKwo+ID4+ICBhcmNoL2FybS9ib290L2R0cy9zdW44aS1oMy5kdHNpICAgICAgICAgICAgICAg
fCAgMjAgKwo+ID4+ICBhcmNoL2FybS9ib290L2R0cy9zdW54aS1oMy1oNS5kdHNpICAgICAgICAg
ICAgfCAgIDYgKwo+ID4+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktYTY0
LmR0c2kgfCAgNDIgKysKPiA+PiAgYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBp
LWg1LmR0c2kgIHwgIDI2ICsKPiA+PiAgYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3Vu
NTBpLWg2LmR0c2kgIHwgIDMzICsKPiA+PiAgZHJpdmVycy90aGVybWFsL0tjb25maWcgICAgICAg
ICAgICAgICAgICAgICAgIHwgIDE0ICsKPiA+PiAgZHJpdmVycy90aGVybWFsL01ha2VmaWxlICAg
ICAgICAgICAgICAgICAgICAgIHwgICAxICsKPiA+PiAgZHJpdmVycy90aGVybWFsL3N1bjhpX3Ro
ZXJtYWwuYyAgICAgICAgICAgICAgIHwgNjM5ICsrKysrKysrKysrKysrKysrKwo+ID4+ICAxMSBm
aWxlcyBjaGFuZ2VkLCA5ODUgaW5zZXJ0aW9ucygrKQo+ID4+ICBjcmVhdGUgbW9kZSAxMDA2NDQg
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3RoZXJtYWwvYWxsd2lubmVyLHN1bjhp
LWE4M3QtdGhzLnlhbWwKPiA+PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvdGhlcm1hbC9z
dW44aV90aGVybWFsLmMKPiA+Pgo+ID4+IC0tCj4gPj4gMi4yNC4xCj4gPj4KPgo+Cj4gLS0KPiAg
PGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3
YXJlIGZvciBBUk0gU29Dcwo+Cj4gRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29r
LmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPiA8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xp
bmFyb29yZz4gVHdpdHRlciB8Cj4gPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+
IEJsb2cKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
