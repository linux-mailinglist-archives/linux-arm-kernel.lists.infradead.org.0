Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C36E757DE5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 10:07:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dzkYFdz5l4m4HealmaLAfw3tqv9AiYStlF1IJF15nec=; b=YuBgN57w5Eun3f
	DZFOM9BJhm98kTht+k/ryUCF51E+Npzx5S+gEfZIfgmtP2UtNMS8gW8jL76jMbk/2Q2d7TjPXF0Au
	ze5Ogk5ZeVqmR+v050sg7cF0XwN8VQ8siemoXx0yN9zo/Wh3ITmQFMcboEuyajvKDnfTA/AoulPvl
	M76NyRwBPudcDD5hhZVnD9Sx63f5MJD69AEk/ibMHj6uBtQZfPhw5QC5BRwj5C0LEUVw3/U/1Ab6j
	CaBz5b+NfO9aEibqnBC/5UdkLVRA4gNCb29GqayIK4TA5zIN3N3nJiAEPqgkUWDsE9cgiktuzoelo
	KSvmVwl0SgNr11zj5ozA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgPRN-0001mV-SM; Thu, 27 Jun 2019 08:07:34 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgPR3-0001lL-MD
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 08:07:16 +0000
Received: by mail-wr1-x444.google.com with SMTP id r16so1368690wrl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 01:07:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=65Yo35XiFPzJHHhL+IVlEJTvzr3iM8v/2vYH8mCNG68=;
 b=RaLaB/vhmtmlfyguHgD+KqgPFif4JjgDJzkSH1LbjblGw52YNE5Smk0HsYu50FYxwa
 3WkgHOuhKTFeIzxkrT/C3K2xc4hfUsuxIJX4+O3izj5NOCdorFDiHkC+xr9Slwj4V3tO
 TIUPCFtP3un7zPg3nQ8mz5SCriEEQX8bkGxrPUwdX8+358QezUqsmdRI7HmUYGpsvE4f
 VmU2ahoCO+HgcbqWdOMG27EXxqy5vSbt3yfkpd/icprViBozlRqDcje/YOMGcHFMKU9P
 1K8tJJ3IVIUDZF0snw6SFgmejpuAagh4B0Ce/pTx8f+1uCUPbZ+zqIDGsmcaWHn9i3dd
 zqgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=65Yo35XiFPzJHHhL+IVlEJTvzr3iM8v/2vYH8mCNG68=;
 b=te0iHdJozkZ5kwrMKCozx8HYCuAFO5/ByW97YjIua31BS/+57vpU9SUUQKL5zPukwt
 3YQcTfsoi5kJnOxYIolbH3/bcMWn3bmv5zQmnolkjRd5nPGbO5NCD5tDxpz8oPFArAhl
 eHzoWwQ2xSJRIMO7t4dC4VJE0W19eJeAuxQtDZWlI3umAHIxp+aUhxgxqv9huQRV5nYq
 GLAHdUsVFCz1KMBQ1Rs4YvsgYWp3oBGrlD2g++mdETlwIdrV1JZnjEg6lRmubblur5Gy
 GkH3iHxozAo4weHO2o6wK62YmmlTxpR9bHRbVLyw2lEjBSwL0DvzlkKuKgCtibXisALa
 bCow==
X-Gm-Message-State: APjAAAUt7V/NXVLj6EJMMcWRrVqd0GNq79Gz9r1cFU/aMVjla0xOkT0V
 5tsk8kQgJxTEmf0WlONsH0YnDw==
X-Google-Smtp-Source: APXvYqxRongDcaojMSogOl20g9SFTY5aast1ioQvTyJZQMplEyjxT/H6RRW0dJJzRZMj0J8hfEM58w==
X-Received: by 2002:adf:f050:: with SMTP id t16mr1864516wro.99.1561622831414; 
 Thu, 27 Jun 2019 01:07:11 -0700 (PDT)
Received: from [192.168.0.41] (113.102.130.77.rev.sfr.net. [77.130.102.113])
 by smtp.googlemail.com with ESMTPSA id j32sm2830154wrj.43.2019.06.27.01.07.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Jun 2019 01:07:10 -0700 (PDT)
Subject: Re: [PATCH RESEND V2 1/3] clocksource/drivers/sysctr: Add optional
 clock-frequency property
To: Anson Huang <anson.huang@nxp.com>, "tglx@linutronix.de"
 <tglx@linutronix.de>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 Abel Vesa <abel.vesa@nxp.com>, "ccaione@baylibre.com"
 <ccaione@baylibre.com>, "angus@akkea.ca" <angus@akkea.ca>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <20190623123850.22584-1-Anson.Huang@nxp.com>
 <55abafbd-c010-32b5-6d76-26040830d5b0@linaro.org>
 <DB3PR0402MB3916AB9F2260B0E46CCDDEC0F5E20@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <9c017ba9-ac6b-480b-d1f3-120289343101@linaro.org>
 <DB3PR0402MB3916ED4AB17B6DDD2248DD44F5FD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <8f8aa6e0-5f31-8047-14b5-0e1f65316453@linaro.org>
Date: Thu, 27 Jun 2019 10:07:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <DB3PR0402MB3916ED4AB17B6DDD2248DD44F5FD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_010713_809670_39493F9C 
X-CRM114-Status: GOOD (  17.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjcvMDYvMjAxOSAwMjo0MywgQW5zb24gSHVhbmcgd3JvdGU6Cj4gSGksIERhbmllbAo+IAo+
PiBPbiAyNi8wNi8yMDE5IDAzOjQyLCBBbnNvbiBIdWFuZyB3cm90ZToKPj4+IEhpLCBEYW5pZWwK
Pj4+Cj4+Pj4gT24gMjMvMDYvMjAxOSAxNDozOCwgQW5zb24uSHVhbmdAbnhwLmNvbSB3cm90ZToK
Pj4+Pj4gRnJvbTogQW5zb24gSHVhbmcgPEFuc29uLkh1YW5nQG54cC5jb20+Cj4+Pj4+Cj4+Pj4+
IFN5c3RlbXMgd2hpY2ggdXNlIHBsYXRmb3JtIGRyaXZlciBtb2RlbCBmb3IgY2xvY2sgZHJpdmVy
IHJlcXVpcmUgdGhlCj4+Pj4+IGNsb2NrIGZyZXF1ZW5jeSB0byBiZSBzdXBwbGllZCB2aWEgZGV2
aWNlIHRyZWUgd2hlbiBzeXN0ZW0gY291bnRlcgo+Pj4+PiBkcml2ZXIgaXMgZW5hYmxlZC4KPj4+
Pj4KPj4+Pj4gVGhpcyBpcyBuZWNlc3NhcnkgYXMgaW4gdGhlIHBsYXRmb3JtIGRyaXZlciBtb2Rl
bCB0aGUgb2ZfY2xrCj4+Pj4+IG9wZXJhdGlvbnMgZG8gbm90IHdvcmsgY29ycmVjdGx5IGJlY2F1
c2Ugc3lzdGVtIGNvdW50ZXIgZHJpdmVyIGlzCj4+Pj4+IGluaXRpYWxpemVkIGluIGVhcmx5IHBo
YXNlIG9mIHN5c3RlbSBib290IHVwLCBhbmQgY2xvY2sgZHJpdmVyIHVzaW5nCj4+Pj4+IHBsYXRm
b3JtIGRyaXZlciBtb2RlbCBpcyBOT1QgcmVhZHkgYXQgdGhhdCB0aW1lLCBpdCB3aWxsIGNhdXNl
Cj4+Pj4+IHN5c3RlbSBjb3VudGVyIGRyaXZlciBpbml0aWFsaXphdGlvbiBmYWlsZWQuCj4+Pj4+
Cj4+Pj4+IEFkZCB0aGUgb3B0aW5hbCBjbG9jay1mcmVxdWVuY3kgdG8gdGhlIGRldmljZSB0cmVl
IGJpbmRpbmdzIG9mIHRoZQo+Pj4+PiBOWFAgc3lzdGVtIGNvdW50ZXIsIHNvIHRoZSBmcmVxdWVu
Y3kgY2FuIGJlIGhhbmRlZCBpbiBhbmQgdGhlIG9mX2Nsawo+Pj4+PiBvcGVyYXRpb25zIGNhbiBi
ZSBza2lwcGVkLgo+Pj4+Cj4+Pj4gSXNuJ3QgaXQgcG9zc2libGUgdG8gY3JlYXRlIGEgZml4ZWQt
Y2xvY2sgYW5kIHJlZmVyIHRvIGl0PyBTbyBubyBuZWVkCj4+Pj4gdG8gY3JlYXRlIGEgc3BlY2lm
aWMgYWN0aW9uIGJlZm9yZSBjYWxsaW5nIHRpbWVyX29mX2luaXQoKSA/Cj4+Pj4KPj4+Cj4+PiBB
cyB0aGUgY2xvY2sgbXVzdCBiZSByZWFkeSBiZWZvcmUgdGhlIFRJTUVSX09GX0RFQ0xBUkUsIHNv
IGFkZGluZyBhCj4+PiBDTEtfT0ZfREVDTEFSRV9EUklWRVIgaW4gY2xvY2sgZHJpdmVyIHRvIE9O
TFkgcmVnaXN0ZXIgYSBmaXhlZC1jbG9jaz8KPj4+IFRoZSBzeXN0ZW0gY291bnRlcidzIGZyZXF1
ZW5jeSBhcmUgZGlmZmVyZW50IG9uIGRpZmZlcmVudCBwbGF0Zm9ybXMsCj4+PiBzbyBhZGRpbmcg
Zml4ZWQgY2xvY2sgaW4gc3lzdGVtIGNvdW50ZXIgZHJpdmVyIGlzIE5PVCBhIGdvb2QgaWRlYSwK
Pj4+IE9OTFkgdGhlIERUIG5vZGUgb3IgdGhlIGNsb2NrIGRyaXZlciBjYW4gY3JlYXRlIHRoaXMg
Zml4ZWQgY2xvY2sgYWNjb3JkaW5nIHRvCj4+IHBsYXRmb3JtcywgY2FuIHlvdSBhZHZpc2Ugd2hl
cmUgdG8gY3JlYXRlIHRoaXMgZml4ZWQgY2xvY2sgaXMgYmV0dGVyPwo+Pgo+PiBDYW4geW91IHBv
aW50IG1lIHRvIGEgRFQgd2l0aCB0aGUgIm54cCxzeXNjdHItdGltZXIiID8KPiAKPiBUaGUgRFQg
bm9kZSBvZiBzeXN0ZW0gY291bnRlciBpcyBuZXcgYWRkZWQgaW4gMy8zIG9mIHRoaXMgcGF0Y2gg
c2VyaWVzLCBhbHNvIGNhbiBiZSBmb3VuZAo+IGZyb20gYmVsb3cgbGluazoKPiBodHRwczovL3Bh
dGNod29yay5rZXJuZWwub3JnL3BhdGNoLzExMDExNzAzLwoKU29ycnksIEkgd2FzIHVuY2xlYXIu
IEkgbWVhbnQgYSBwYXRjaCB3aXRoIHRoZSB0aW1lciBkZWZpbmVkIHVzaW5nIGEKY2xvY2sgYXMg
ZGVmaW5lZCBjdXJyZW50bHkgaW4gdGhlIGJpbmRpbmcgKG5vIGNsb2NrLWZyZXF1ZW5jeSkuCgoK
LS0gCiA8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ug
c29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJv
b2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xp
bmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBC
bG9nCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
