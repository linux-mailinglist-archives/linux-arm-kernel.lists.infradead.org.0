Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3D1198D7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 09:16:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AT6ZoiKH7k5YxRfjLnGamFKHrM77EmEhiQcyoSJmwRQ=; b=WNRxc5TLlhsY1p
	wpyn77y+DUUAK0s2nh3IKMRLx+4qKo4sE6945D7rQ4mq2+OxLuTyeLVdsucvV/27qOTl4djZ+CajZ
	sHebQMr91V3kvRPTtykLM8m5mys5lrJb0XeeEb/dSjEfuE6livF6lKDac8CDEHJjUBxt34j/7EWQx
	UozN/htnGLlGH/4er30gqYHLZNhqsDgiSMFcUQMAkxyqdXz+XO7bIY8LQtvPixt5dnuWFf7pf2cyI
	qS6dcsD12biOTiLzbhKb5EyB47MTkGqWfsBWNEBrYtgKgAB1SHH14jOcNF2aNGk5oy9PBYDnxbiUg
	RqtPRn1obRe8BFrx6zoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOzlt-0002l1-Ra; Fri, 10 May 2019 07:16:45 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOzlk-0002kX-8S
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 07:16:38 +0000
Received: by mail-wm1-x343.google.com with SMTP id f204so758435wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 May 2019 00:16:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=JvTnepYea0EBsHjZpph8FxtYlM4OPmMVBMIjktcmeVM=;
 b=cTVa3xp4hXBoZyNXrz0uNxHmzZiNUJbTL+zYRUNb5Kp7iDXGPDo/Qwf/AIQNvql+z1
 TNjnQyNXYNfOcVp1naNqLyp7JnkYXPiGmm7uW0pXrOuuy3ErZ+IOtyd7T9NGKUWs15+z
 QY8WPl1qTvbOjwGdfYngu0PbbEwqcfiCeU+VGc9xKWI4luR6PWMvrmPJCAlBXymKuDTa
 8nT/9wThav6hqA2g8NyuKGMbwFsewaoYYbw3aIQewGFEg/x6nXkpL2jcSY76SjEaa4tm
 skaXfrXagfMko40tR+Mbk3toK0awX0PY9AO9usxErzdPoBI3/b/yOLZBFOG4BL03vBy4
 TGiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JvTnepYea0EBsHjZpph8FxtYlM4OPmMVBMIjktcmeVM=;
 b=ly0xs3CAlhpS4v+pkpyJG8Ao87Lh/HDDvfsJWEU1E7y9P0P/yRrA2Cz6XtZf94Df/X
 buZV6Zola3GhpAVrAb+iUl8MTtzNG94Y8TYPs9YyyEbPUatkkGXwZnBmpXrZAxZTfElJ
 an8sPu5kJ7+u468r22wq6Le+fifwoDJLP33N7na80pBK0mZ8c/JeEsRHvHJfFUkywDDb
 1hRRVjKhN3gsLHBj57IqTQ8Tf+vMNeUz2dLpf9HGwvmfqllBtRgdYUOWSDhR504eikMq
 5OjjSEs7z7JTgJSbj8mubmo5nbCYv9Cp+BO1+CMzoY6QjIjhWZuhzcbrr/IBvUEr3PZt
 ZwMw==
X-Gm-Message-State: APjAAAW/M5E7PEX2jQ94+GaKqIPF1WOCWqWOJ7flaUnEdtv+TwrEbnGE
 XCbRV26zbYFLCjSHlq0v10eDSg==
X-Google-Smtp-Source: APXvYqz67ixtb5Kj+lW57C/bg64GF8kDMDU5xV9ktI11Srq5D7jgxo/wcrgpIrmML8Jc5rcrWgf1PA==
X-Received: by 2002:a1c:80d7:: with SMTP id b206mr5606595wmd.48.1557472594154; 
 Fri, 10 May 2019 00:16:34 -0700 (PDT)
Received: from [192.168.0.41] (sju31-1-78-210-255-2.fbx.proxad.net.
 [78.210.255.2])
 by smtp.googlemail.com with ESMTPSA id i18sm6521170wro.36.2019.05.10.00.16.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 May 2019 00:16:33 -0700 (PDT)
Subject: Re: [EXT] Re: [PATCH v6] arm64: dts: ls1088a: add one more thermal
 zone node
To: Andy Tang <andy.tang@nxp.com>, Shawn Guo <shawnguo@kernel.org>
References: <20190423022507.34969-1-andy.tang@nxp.com>
 <20190510031335.GD15856@dragon>
 <VI1PR04MB4333D24227603D1497BA3CB9F30C0@VI1PR04MB4333.eurprd04.prod.outlook.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <9fb2e306-38c7-2af7-5470-ff5bc4e23370@linaro.org>
Date: Fri, 10 May 2019 09:16:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB4333D24227603D1497BA3CB9F30C0@VI1PR04MB4333.eurprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_001636_306223_C9C95018 
X-CRM114-Status: GOOD (  20.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "edubezval@gmail.com" <edubezval@gmail.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "rui.zhang@intel.com" <rui.zhang@intel.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gbk"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTAvMDUvMjAxOSAwNTo0MCwgQW5keSBUYW5nIHdyb3RlOgo+PiAtLS0tLU9yaWdpbmFsIE1l
c3NhZ2UtLS0tLQo+PiBGcm9tOiBTaGF3biBHdW8gPHNoYXduZ3VvQGtlcm5lbC5vcmc+Cj4+IFNl
bnQ6IDIwMTnE6jXUwjEwyNUgMTE6MTQKPj4gVG86IEFuZHkgVGFuZyA8YW5keS50YW5nQG54cC5j
b20+Cj4+IENjOiBMZW8gTGkgPGxlb3lhbmcubGlAbnhwLmNvbT47IHJvYmgrZHRAa2VybmVsLm9y
ZzsKPj4gbWFyay5ydXRsYW5kQGFybS5jb207IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZzsKPj4gZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2Vy
Lmtlcm5lbC5vcmc7Cj4+IGxpbnV4LXBtQHZnZXIua2VybmVsLm9yZzsgZGFuaWVsLmxlemNhbm9A
bGluYXJvLm9yZzsgcnVpLnpoYW5nQGludGVsLmNvbTsKPj4gZWR1YmV6dmFsQGdtYWlsLmNvbQo+
PiBTdWJqZWN0OiBbRVhUXSBSZTogW1BBVENIIHY2XSBhcm02NDogZHRzOiBsczEwODhhOiBhZGQg
b25lIG1vcmUgdGhlcm1hbAo+PiB6b25lIG5vZGUKPj4KPj4gQ2F1dGlvbjogRVhUIEVtYWlsCj4+
Cj4+IE9uIFR1ZSwgQXByIDIzLCAyMDE5IGF0IDEwOjI1OjA3QU0gKzA4MDAsIFl1YW50aWFuIFRh
bmcgd3JvdGU6Cj4+PiBMczEwODhhIGhhcyAyIHRoZXJtYWwgc2Vuc29ycywgY29yZSBjbHVzdGVy
IGFuZCBTb0MgcGxhdGZvcm0uIENvcmUKPj4+IGNsdXN0ZXIgc2Vuc29yIGlzIHVzZWQgdG8gbW9u
aXRvciB0aGUgdGVtcGVyYXR1cmUgb2YgY29yZSBhbmQgU29DCj4+PiBwbGF0Zm9ybSBpcyBmb3Ig
cGxhdGZvcm0uIFRoZSBjdXJyZW50IGR0cyBvbmx5IHN1cHBvcnQgdGhlIGZpcnN0IHNlbnNvci4K
Pj4+IFRoaXMgcGF0Y2ggYWRkcyB0aGUgc2Vjb25kIHNlbnNvciBub2RlIHRvIGR0cyB0byBlbmFi
bGUgaXQuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogWXVhbnRpYW4gVGFuZyA8YW5keS50YW5nQG54
cC5jb20+Cj4+PiAtLS0KPj4+IHY2Ogo+Pj4gICAgICAgICAtIGFkZCBjb29saW5nIGRldmljZSBt
YXAgdG8gY3B1MC03IGluIHBsYXRmb3JtIG5vZGUuCj4gSSBsaWtlIHRvIGV4cGxhaW4gYSBsaXR0
bGUuIEkgdGhpbmsgaXQgbWFrZXMgc2Vuc2UgdGhhdCBtdWx0aXBsZSB0aGVybWFsIHpvbmUgbWFw
IHRvIHNhbWUgY29vbGluZyBkZXZpY2UuIAo+IEluIHRoaXMgd2F5LCBubyBtYXR0ZXIgd2hpY2gg
dGhlcm1hbCB6b25lIHJhaXNlcyBhIHRlbXAgYWxhcm0sIGl0IGNhbiBjYWxsIGNvb2xpbmcgZGV2
aWNlIHRvIGNoaWxsIG91dC4KPiBJIGFsc28gYXNrZWQgY3B1ZnJlcSBtYWludGFpbmVyIGFib3V0
IHRoZSBjb29saW5nIG1hcCBpc3N1ZSwgaGUgdGhpbmsgaXQgd291bGQgYmUgZmluZS4KPiBJIGhh
dmUgdGVzdGVkIGFuZCBubyBpc3N1ZSBmb3VuZC4gCj4gCj4gRGFuaWVsLCB3aGF0J3MgeW91ciB0
aG91Z2h0PwoKSWYgdGhlcmUgYXJlIG11bHRpcGxlIHRoZXJtYWwgem9uZXMsIHRoZXkgd2lsbCBi
ZSBtYW5hZ2VkIGJ5IGRpZmZlcmVudAppbnN0YW5jZXMgb2YgYSB0aGVybWFsIGdvdmVybm9yLiBF
YWNoIGluc3RhbmNlcyB3aWxsIGFjdCBvbiB0aGUgc2hhcmVkCmNvb2xpbmcgZGV2aWNlIGFuZCB3
aWxsIGNvbGxpZGUgaW4gdGhlaXIgZGVjaXNpb25zOgoKIC0gSWYgdGhlIHNlbnNvcnMgYXJlIGNs
b3NlZCwgdGhlaXIgYmVoYXZpb3Igd2lsbCBiZSBzaW1pbGFyIHJlZ2FyZGluZwp0aGUgdGVtcGVy
YXR1cmUuIFRoZSBnb3Zlcm5vcnMgbWF5IHRha2UgdGhlIHNhbWUgZGVjaXNpb24gZm9yIHRoZQpj
b29saW5nIGRldmljZS4gQnV0IGluIHN1Y2ggY2FzZSBoYXZpbmcganVzdCBvbmUgdGhlcm1hbCB6
b25lIG1hbmFnZWQgaXMKZW5vdWdoLgoKIC0gSWYgdGhlIHNlbnNvcnMgYXJlIG5vdCBjbG9zZWQs
IHRoZWlyIGJlaGF2aW9yIHdpbGwgYmUgZGlmZmVyZW50CnJlZ2FyZGluZyB0aGUgdGVtcGVyYXR1
cmUuIFRoZSBnb3Zlcm5vcnMgd2lsbCB0YWtlIGRpZmZlcmVudCBkZWNpc2lvbgpyZWdhcmRpbmcg
dGhlIGNvb2xpbmcgZGV2aWNlIChvbmUgd2lsbCBkZWNyZWFzZSB0aGUgZnJlcSwgb3RoZXIgd2ls
bAppbmNyZWFzZSB0aGUgZnJlcSkuCgpBcyB0aGUgdGhlcm1hbCBnb3Zlcm5vcnMgYXJlIG5vdCBh
YmxlIHRvIG1hbmFnZSBzZXZlcmFsIHRoZXJtYWwgem9uZXMKYW5kIHRoZXJlIGlzIG9uZSBjb29s
aW5nIGRldmljZSAodGhlIGNwdSBjb29saW5nIGRldmljZSksIHRoaXMgc2V0dXAKd29uJ3Qgd29y
ayBhcyBleHBlY3RlZCBJTU8uCgpUaGUgc2V0dXAgbWFraW5nIHNlbnNlIGlzIGhhdmluZyBhIHRo
ZXJtYWwgem9uZSBwZXIgJ2NsdXN0ZXInIGFuZCBhCmNvb2xpbmcgZGV2aWNlIHBlciAnY2x1c3Rl
cicuIFRoYXQgbWVhbnMgdGhlIHBsYXRmb3JtIGhhcyBvbmUgY2xvY2sgbGluZQpwZXIgJ2NsdXN0
ZXInLiBUaGUgdGhlcm1hbCBtYW5hZ2VtZW50IGhhcHBlbnMgaW4gYSBzZWxmLWNvbnRhaW5lZAp0
aGVybWFsIHpvbmUgKG9uZSBjb29saW5nIGRldmljZSAtIG9uZSBnb3Zlcm5vciAtIG9uZSB0aGVy
bWFsIHpvbmUpLgoKSW4gdGhlIGNhc2Ugb2YgSE1QLCBvdGhlciBjb21iaW5hdGlvbnMgYXJlIHBv
c3NpYmxlIHRvIGJlIG9wdGltYWwuCgoKCi0tIAogPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExp
bmFyby5vcmcgqaYgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGlu
YXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8
aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3Lmxp
bmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
