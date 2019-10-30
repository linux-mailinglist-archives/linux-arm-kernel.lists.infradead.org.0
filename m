Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B922E9C85
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 14:41:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r+lNtLBUGdMsgGNzq2J/wQJW8G7flVxdABUkFjOTU8k=; b=oysgXt8kaSuXJ1
	yPNDNzvBLZSGmrMI+RTawl2Qisc3fWaL9qK1M0dhs34jOOm8dwAVqVpWPH9mkNiVFL2maVUKJ53Yz
	gVwrowmhuFaNl36pS5j/oHj8Dw8kdVXkiO5ntbvvYk6kKN/zEoSHtyHGLdIiFPzHIAq67vLoIAuAx
	XYBa6RxdluxfrkMg1n74+Eo6dkNN5+jyFOAeLyCZ9dYzp7xBv9bhcCazExJHMz758Bkogblj6DA/I
	NfpTHZCtS5SK0ROMKTHcYqVc/GfDv8IXotvcx4jZNEkuekKkwMuED1fH77t8GvzG+0xi8SfAwKwTy
	r/ltlHtLaRAmH40VRBiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPoET-0002rF-DM; Wed, 30 Oct 2019 13:41:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPoEF-0002pZ-AP; Wed, 30 Oct 2019 13:41:40 +0000
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
 [209.85.160.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C36FA20578;
 Wed, 30 Oct 2019 13:41:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572442898;
 bh=gtW9lBCHYSFLzLt+Y4vmNjY6RQBl1PYhNCIRW411fKc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=qCzNF72OeP2yuN1QKyh6EUkCPtUFmV81uFCIM7opTvJ32zih6iZmaGaUNtB/Y/Uud
 WjtXNnKa1N4TR7U3GasW9G0wvuSWnYkB5Z8ne+R1sX1ofja5IEEaPigV4fQEQ5nHGo
 p+2o3pZYQRi/+siGUEPmVKcIL7jZMxxSCuGOj2tc=
Received: by mail-qt1-f171.google.com with SMTP id x14so3265539qtq.3;
 Wed, 30 Oct 2019 06:41:38 -0700 (PDT)
X-Gm-Message-State: APjAAAUYHvMHzKsi0jzei23/oTeoK6H8Ws29ofkuGengvjaf45zWPzfe
 cPgCy69ltBAaxSwCrWFMCXQaQ+4HtpOgaO+OCA==
X-Google-Smtp-Source: APXvYqyJeRtrj4NZxrAmhQbZidXzHwq5bToWSyEa3h/U5Q+Iht3Q5hsqUkNeSn9TlIsy2IbzfHVQdj+AQkyb4d9plRc=
X-Received: by 2002:ac8:4791:: with SMTP id k17mr80313qtq.136.1572442897886;
 Wed, 30 Oct 2019 06:41:37 -0700 (PDT)
MIME-Version: 1.0
References: <1571983984-11771-1-git-send-email-xingyu.chen@amlogic.com>
 <1571983984-11771-3-git-send-email-xingyu.chen@amlogic.com>
 <20191025203030.GA28391@bogus>
 <1914e315-3cb7-9251-f871-0024e0e4f68b@amlogic.com>
 <CAL_JsqLr-Cgu4yZFGTfO=qpFPLBZ1gb-1+DZ35eQX3dUsadm4g@mail.gmail.com>
 <2808a8c9-a835-2706-f300-0deb924d3686@amlogic.com>
In-Reply-To: <2808a8c9-a835-2706-f300-0deb924d3686@amlogic.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 30 Oct 2019 08:41:26 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKwmF1Ygbjiteq42t5xaG75vG-=hZYq=S-8e=s0m2FiWA@mail.gmail.com>
Message-ID: <CAL_JsqKwmF1Ygbjiteq42t5xaG75vG-=hZYq=S-8e=s0m2FiWA@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] dt-bindings: watchdog: add new binding for meson
 secure watchdog
To: Xingyu Chen <xingyu.chen@amlogic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_064139_398896_708A51BE 
X-CRM114-Status: GOOD (  18.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Qianggui Song <qianggui.song@amlogic.com>, devicetree@vger.kernel.org,
 LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jian Hu <jian.hu@amlogic.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBPY3QgMzAsIDIwMTkgYXQgNzo1OSBBTSBYaW5neXUgQ2hlbiA8eGluZ3l1LmNoZW5A
YW1sb2dpYy5jb20+IHdyb3RlOgo+Cj4gSGksUm9iCj4KPiBPbiAyMDE5LzEwLzMwIDQ6NTEsIFJv
YiBIZXJyaW5nIHdyb3RlOgo+ID4gT24gTW9uLCBPY3QgMjgsIDIwMTkgYXQgMzozNSBBTSBYaW5n
eXUgQ2hlbiA8eGluZ3l1LmNoZW5AYW1sb2dpYy5jb20+IHdyb3RlOgo+ID4+Cj4gPj4gSGksIFJv
Ygo+ID4+Cj4gPj4gT24gMjAxOS8xMC8yNiA0OjMwLCBSb2IgSGVycmluZyB3cm90ZToKPiA+Pj4g
T24gRnJpLCBPY3QgMjUsIDIwMTkgYXQgMDI6MTM6MDJQTSArMDgwMCwgWGluZ3l1IENoZW4gd3Jv
dGU6Cj4gPj4+PiBUaGUgYmluZGluZyB0YXJnZXRzIHRoZSBNZXNvbi1BL0Mgc2VyaWVzIGNvbXBh
dGlibGUgU29DcywgaW4gd2hpY2ggdGhlCj4gPj4+PiB3YXRjaGRvZyByZWdpc3RlcnMgYXJlIGlu
IHNlY3VyZSB3b3JsZC4KPiA+Pj4+Cj4gPj4+PiBTaWduZWQtb2ZmLWJ5OiBYaW5neXUgQ2hlbiA8
eGluZ3l1LmNoZW5AYW1sb2dpYy5jb20+Cj4gPj4+PiAtLS0KPiA+Pj4+ICAgIC4uLi9iaW5kaW5n
cy93YXRjaGRvZy9hbWxvZ2ljLG1lc29uLXNlYy13ZHQueWFtbCAgIHwgMzQgKysrKysrKysrKysr
KysrKysrKysrKwo+ID4+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDM0IGluc2VydGlvbnMoKykKPiA+
Pj4+ICAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3Mvd2F0Y2hkb2cvYW1sb2dpYyxtZXNvbi1zZWMtd2R0LnlhbWwKPiA+Pj4+Cj4gPj4+PiBkaWZm
IC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3dhdGNoZG9nL2FtbG9n
aWMsbWVzb24tc2VjLXdkdC55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3dhdGNoZG9nL2FtbG9naWMsbWVzb24tc2VjLXdkdC55YW1sCj4gPj4+PiBuZXcgZmlsZSBtb2Rl
IDEwMDY0NAo+ID4+Pj4gaW5kZXggMDAwMDAwMDAuLjBiYmM4MDcKPiA+Pj4+IC0tLSAvZGV2L251
bGwKPiA+Pj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy93YXRjaGRv
Zy9hbWxvZ2ljLG1lc29uLXNlYy13ZHQueWFtbAo+ID4+Pj4gQEAgLTAsMCArMSwzNCBAQAo+ID4+
Pj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wKyBPUiBNSVQpCj4gPj4+PiAr
IyBDb3B5cmlnaHQgKGMpIDIwMTkgQW1sb2dpYywgSW5jCj4gPj4+PiArJVlBTUwgMS4yCj4gPj4+
PiArLS0tCj4gPj4+PiArJGlkOiAiaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvcG93ZXIv
YW1sb2dpYyxtZXNvbi1zZWMtd2R0LnlhbWwjIgo+ID4+Pj4gKyRzY2hlbWE6ICJodHRwOi8vZGV2
aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMiCj4gPj4+PiArCj4gPj4+PiArdGl0
bGU6IEFtbG9naWMgTWVzb24gU2VjdXJlIFdhdGNoZG9nIFRpbWVyCj4gPj4+PiArCj4gPj4+PiAr
bWFpbnRhaW5lcnM6Cj4gPj4+PiArICAtIFhpbmd5dSBDaGVuIDx4aW5neXUuY2hlbkBhbWxvZ2lj
LmNvbT4KPiA+Pj4+ICsKPiA+Pj4+ICtkZXNjcmlwdGlvbjogfCsKPiA+Pj4+ICsgIFNlY3VyZSBX
YXRjaGRvZyBUaW1lciB1c2VkIGluIE1lc29uLUEvQyBzZXJpZXMgQ29tcGF0aWJsZSBTb0NzCj4g
Pj4+PiArCj4gPj4+PiArcHJvcGVydGllczoKPiA+Pj4+ICsgIGNvbXBhdGlibGU6Cj4gPj4+PiAr
ICAgIGVudW06Cj4gPj4+PiArICAgICAgLSBhbWxvZ2ljLG1lc29uLXNlYy13ZHQKPiA+Pj4KPiA+
Pj4gSWYgdGhlcmUgYXJlIG5vIG90aGVyIHByb3BlcnRpZXMsIHRoZW4geW91IGRvbid0IG5lZWQg
dGhpcy4gSnVzdCBoYXZlCj4gPj4+IHRoZSBzZWN1cmUgZmlybXdhcmUgZHJpdmVyIGluc3RhbnRp
YXRlIHRoZSB3YXRjaGRvZy4KPiA+PiBJJ2FtIHZlcnkgc29ycnkgaSBkb24ndCB1bmRlcnN0YW5k
IGhvdyB0byBpbml0aWFsaXplIHRoZSB3YXRjaGRvZyBkcml2ZXIKPiA+PiBpZiB0aGUgY29tcGF0
aWJsZSBwcm9wZXJ0eSBpcyByZW1vdmVkLCBDb3VsZCB5b3UgZ2l2ZSBtZSBtb3JlCj4gPj4gc3Vn
Z2VzdGlvbnMgb3IgZXhhbXBsZXMg77yfIFRoYW5rIHlvdSB2ZXJ5IG11Y2guCj4gPgo+ID4gcGxh
dGZvcm1fZGV2aWNlX3JlZ2lzdGVyX3NpbXBsZSgpIGZyb20gdGhlIHNlY3VyZSBmaXJtd2FyZSBk
cml2ZXIuCj4gVGhhbmtzIGZvciB5b3VyIGhlbHAuIFRoZSBkZXZpY2Ugbm9kZSBvZiB3ZHQgbG9v
a3MgdXNlbGVzcyBpZiBJIHVzZSB0aGlzCj4gZnVuY3Rpb24gdG8gcmVnaXN0ZXIgZGV2aWNlLiBp
ZiBzbywgaG93IHNob3VsZCBJIGdldCB0aGUgcG9pbnRlciB0bwo+IHNlY3VyZS1tb25pdG9yIGlu
IHdkdCBkcml2ZXIgPyBvciBzaG91bGQgSSB1c2UgZGlyZWN0bHkgYXJtX3NtY2NjIHRvCj4gYWNj
ZXNzIHRoZSBzZWNmdyA/CgpZb3UgY2FuIHVzZSBvZl9maW5kX2NvbXBhdGlibGVfbm9kZSgpLiBU
aGVyZSBzaG91bGQgb25seSBiZSBvbmUgZmlybXdhcmUgbm9kZS4KClJvYgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
