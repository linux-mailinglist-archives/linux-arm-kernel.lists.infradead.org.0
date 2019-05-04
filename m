Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4275F13965
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 13:01:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A6xEWTb1o2lrv/vKn1cF48TzvQwjDHk+DNkirrHIg64=; b=Dkl4aLYFNjklB6
	MLOoEUqTDuJvG7tgse4nSpQ94nBMTHWK50guiDH/vmGbNfzXTNn30pNIaowG5yJnZKrXl7jsKG0xs
	WrSob1DiyWt5KirhFAbWpwf8oIh1MULu6m9bKmL38yCF99CegjVLu5uXn/4FgKhM82WpeuigA1UBg
	HlkGmIwPdA8GW7MDXgANoZb96RljOU1fuf31AFYDPwLqeTJ+5V5+rm1RyOZVE1Shu6+0Use3p6mhp
	oTOdrbcAScnW0rFOUwP0PPeetMbUWFh/a1ZF2uR9Q13L9q4V1AQIpMDghDgPzsbleHHUo2tIraNGT
	XzuSDXlNrCp7t47rA+Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMsQI-00052U-RD; Sat, 04 May 2019 11:01:42 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMsQB-00051h-8v
 for linux-arm-kernel@lists.infradead.org; Sat, 04 May 2019 11:01:36 +0000
Received: by mail-lf1-x142.google.com with SMTP id u17so6104852lfi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 May 2019 04:01:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ATLiVoBxxhEOS8NvRMpVfm5vp0+xIW6FH1duvNVR9Kc=;
 b=riV8JEozmHsz1uD5VmVavAtEwwNzMYJxpNxhpAg1JpSnZp7niXJBdOEsWf4OWCpTQ1
 SwL3TzEzZWyTlMj1uDlrhWadFFJvEHLVyJu5L10G4RKgkHmTOO5iOrZpT1+7rIKetI/1
 pVvjivPdighZuIA6hmDPkrD7zI0Fb/rly2K2h439HKSZrKfDk4XwIM4p6buyEIlp11ou
 FMfG4Plm5VhQA1Tgui1k6EvqOfuAJstYZQnc1xynM/W2hRWnv4bgCjIANw1kFRg9s9vI
 VM3QeMg5cM+U6uGUIGjRXxG2uz58tZSSoNVm2kXiqJ8cGgIl1UehspMRyRTIedw3JMHf
 rWHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ATLiVoBxxhEOS8NvRMpVfm5vp0+xIW6FH1duvNVR9Kc=;
 b=OMifWBLwcfbCvYhJc8JnzuVA3TbnKcVKuYBFwqOQA9V6A7mfIopISWflGBUGl2KBJ3
 xQy0FRZINNbVB1i/f3W31T/6wv7cwqTLWqUn35tQxOeXSgnsF43JxHcMnMFAPYb/9Jkt
 xXC4SCGiD0Ep6I/OydnHop/xQIvS7WWKs+n3dBj9rrM4v5Ht0BZJplVEDUI02093DlmH
 Ebn7gVf6hQ28WyOwSwR7SJ5MlOhXqbm3pvurEYnDBTk5x5iWQAENDDK7fKmbrWgCOzWg
 bEXXjcOpAI7VULZ5C0+DZuHaCTWiPpy6clz+0SGCViran8Mc4nlOLFDBHiRl83Y8f8yp
 cXZQ==
X-Gm-Message-State: APjAAAUNZhc7Ldgly4wJV3Hfah4us0E6QzJS9YzB7kzNXGnFYr4sPMJA
 G8U8v1i5cKFhEsqxtwwXLgAJfg3ZKSp/QoyJl8s=
X-Google-Smtp-Source: APXvYqzH5Ak7RQ55w0jmSuQwoqPOIw9XWF1XR9OwgNlmv9dSRHmaVwCW1d/wpdTvIu9yqSxaHmFDH+iPeFVnzosIBnU=
X-Received: by 2002:a19:c7c3:: with SMTP id x186mr8350944lff.107.1556967690885; 
 Sat, 04 May 2019 04:01:30 -0700 (PDT)
MIME-Version: 1.0
References: <1556190810-19690-1-git-send-email-liuk@cetca.net.cn>
In-Reply-To: <1556190810-19690-1-git-send-email-liuk@cetca.net.cn>
From: Fabio Estevam <festevam@gmail.com>
Date: Sat, 4 May 2019 08:01:30 -0300
Message-ID: <CAOMZO5AM-Ee_8ScFEk3hSrujKqH2+XiLHPto3ES3r9AbDkUnkg@mail.gmail.com>
Subject: Re: [PATCHv2 2/2] clk: imx6sx: Remove unexisting IMX6SX_CLK_ENET_AHB
 clock
To: Kay-Liu <liuk@cetca.net.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_040135_316563_42B5179C 
X-CRM114-Status: GOOD (  17.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rob Herring <robh@kernel.org>, Yongcai Huang <Anson.Huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>, tiny.windzz@gmail.com,
 root <root@localhost.localdomain>, NXP Linux Team <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgS2F5LUxpdSwKCk9uIFRodSwgQXByIDI1LCAyMDE5IGF0IDg6MTQgQU0gPGxpdWtAY2V0Y2Eu
bmV0LmNuPiB3cm90ZToKPgo+IEZyb206IEtheS1MaXUgPGxpdWtAY2V0Y2EubmV0LmNuPgo+Cj4g
VGhlIGlteDZzeCdzIGR0cyBmaWxlIGRlZmluZXMgZml2ZSBjbG9ja3MgZm9yIGZlYywgdGhlCj4g
J2FoYidjbG9jaydzIHZhbHVlIGlzIElNWDZTWF9DTEtfRU5FVF9BSEIsIGJ1dCBpbiB0aGUKPiBp
Lk1YNlNYIFJlZmVyZW5jZSBNYW51YWwgdGhlcmUgaXMgbm8gc3VjaCBlbmV0IGFoYiBjbG9jaywK
PiB0aGVyZSBpcyBvbmx5IG9uZSAiZW5ldCBjbG9jayIgaW4gdGhlIENDTV9DQ0dSMyByZWdpc3Rl
cgo+IHdoaWNoIGlzIGNvbnRyb2xsZWQgYnkgYml0cyA1LTQsIHRoZSBlbmV0IGNsb2NrIGlzIGRl
ZmluZWQKPiBmb3IgdGhlICdpcGcnIGNsb2NrLCB0aGlzIGNhbiBjYXVzZSBwcm9ibGVtLgo+IFRo
ZSBvcmlnaW5hbCBwaGVub21lbm9uIGlzIHVzaW5nIGlteDYtc29sb3ggcHJvY2Vzc29yIGFuZAo+
IE1hcnZlbCA4OEU2MzkwIHN3aXRjaCB3aXRoIGxpbnV4IE9TLCB0aGUga2VybmVsIHdpbGwgaGFu
Zwo+IGR1cmluZyB0aGUgc3RhcnR1cCBvZiB0aGUgbGludXggT1MuCj4gQWZ0ZXIgYW5hbHl6aW5n
IHRoZSBwaGVub21lbm9uLCB0aGUgcmVhc29uIG9mIENQVSBoYW5nIGlzCj4gcmVhZC93cml0ZSBl
bmV0IG1vZHVsZSdzIHJlZ2lzdGVyIHdoZW4gdGhlIGVuZXQgY2xvY2sKPiBpcyBkaXNhYmxlZC4g
VGhlIGtlcm5lbCBjb2RlIHRyeSB0byBhdm9pZHMgdGhlIHByb2JsZW0KPiBieSByZXN1bWUgZW5l
dCBjbG9jayBiZWZvcmUgcmVhZC93cml0ZSBlbmV0IHJlZ2lzdGVyLgo+IEJ1dCB0aGUgZW5ldCBt
b2R1bGUncyBjbG9jayBjb25maWcgd2lsbCBjYXVzZSBhIHNwZWNpYWwKPiBlbnZpcm9ubWVudCB3
aGljaCBjYW4gYnlwYXNzIHRoZSBjbG9jayByZXN1bWUgbWVjaGFuaXNtLgo+IFRoZSBDUFUgaGFz
IG9ubHkgb25lIGVuZXQgY2xvY2ssIGFmdGVyIGtlcm5lbCBwYXJzZXMKPiB0aGUgZHRzIGZpbGUs
IHRoZSB0d28gY2xvY2sgdmFyaWFibGVzICdpcGcnIGFuZCAnYWhiJwo+IGZpbm5hbHkgcG9pbnQg
dG8gdGhlIHNhbWUgZW5ldCBjbG9jayByZWdpc3Rlci4gVGhpcyB3aWxsCj4gY2F1c2UgZW5ldCBj
bG9jayBiZSBkaXNhYmxlZCBhZnRlciBmZWMgcHJvYmUgb3Zlci4KPiBCZWNhdXNlIHRoZSBwb3dl
ciBzYXZpbmcgbW9kdWxlIHdpbGwgYWZmZWN0IHRoZSBCVUcsIHNvCj4gdGhlcmUgYXJlIHR3byBz
aXR1YXRpb25zIGZvciB0aGlzIHByb2JsZW06Cj4gMSlUdXJuIG9mZiBwb3dlciBzYXZpbmcKPiBU
dXJuIG9mZiBwb3dlciBzYXZpbmcgbWVhbnMgdGhhdCB0aGUgcmVzdW1lIG1lY2hhbmlzbSBpcwo+
IGRpc2FibGVkLCBzbyBhZnRlciBmZWMgcHJvYmUgb3ZlciBpZiBhbnkgb25lIHJlYWQvd3JpdGUK
PiBlbmV0IG1vZHVsZSdzIHJlZ2lzdGVyLCB0aGUgQ1BVIHdpbGwgaGFuZyBiZWNhdXNlIG5vIG9u
ZQo+IGNvdWxkIHJlc3VtZSB0aGUgZW5ldCBjbG9jay4KPiAyKVR1cm4gb24gcG93ZXIgc2F2aW5n
Cj4gVHVybiBvbiBwb3dlciBzYXZpbmcgY291bGQgcmVzdW1lIGVuZXQgY2xvY2sgYmVmb3JlCj4g
cmVhZC93cml0ZSBlbmV0IHJlZ2lzdGVyIGJ5IGVuYWJsZSAnaXBnJyBjbGssIHRoaXMgd2lsbAo+
IGNhdXNlICdhaGInIHZhcmlhYmxlIHN0YXRlIGFuZCBlbmV0IGNsb2NrIHJlZ2lzdGVyIHZhbHVl
Cj4gZG9uJ3QgbWF0Y2guSWYgYW55IHRhc2sgcmVhZC93cml0ZSBlbmV0IGF0IGEgaGlnaAo+IGZy
ZXF1ZW50bHksIHRoZSBrZXJuZWwgd2lsbCBrZWVwIHJlc3VtZSBzdGF0ZSBhbmQgbmV2ZXIKPiBl
bnRlciBzdXNwZW5kIHByb2Nlc3MsIHRoaXMgbWVhbnMgdGhhdCB0aGUga2VybmVsIHdpbGwKPiBv
bmx5IG1vZGlmaWVzIHRoZSByZWdpc3RlciB2YWx1ZSBkdXJpbmcgdGhlIGZpcnN0IHJlc3VtZS4K
PiBCdXQgdGhlIGtlcm5lbCBpbml0IHdpbGwgY2hlY2sgdW51c2VkIGNsb2NrIHZhcmlhYmxlIGlu
Cj4gdGhlIGxhdGUgaW5pdGNhbGwsIHRoZSAnYWhiJyBjbG9jayB3aWxsIGJlIHRyZWF0ZWQgYXMK
PiB1bnVzZWQsIGF0IHRoaXMgdGltZSwgdGhlIGVuZXQgY2xvY2sgd2lsbCBiZSBkaXNhYmxlZAo+
IGJ5cGFzcyB0aGUgcmVzdW1lIG1lY2hhbmlzbSwgdGhlbiB0aGUgbmV4dCByZWFkL3dyaXRlCj4g
ZW5ldCBtb2R1bGUncyByZWdpc3RlciB3aWxsIGNhdXNlIHRoZSBDUFUgaGFuZy4KPiBQcm9wb3Nl
ZCBzb2x1dGlvbiBpcyBkZWxldGUgdGhlICdhaGInIGNsb2NrJ3MgZGVmaW5pdGlvbgo+IGluIHRo
ZSBjbGstaW14NnN4LmMsIGFuZCBtb2RpZnkgZmVjIGRldmljZeKAmXMgY2xvY2tzIGluCj4gdGhl
IGR0cyBmaWxlLCBwb2ludCDigJhhaGLigJkgZnJvbSBJTVg2U1hfQ0xLX0VORVRfQUhCIHRvCj4g
SU1YNlNYX0NMS19FTkVUCj4KPiBTaWduZWQtb2ZmLWJ5OiBLYXktTGl1IDxsaXVrQGNldGNhLm5l
dC5jbj4KClRoaXMgbWF0Y2hlcyB0aGUgbXg2c3ggcmVmZXJlbmNlIG1hbnVhbDoKClJldmlld2Vk
LWJ5OiBGYWJpbyBFc3RldmFtIDxmZXN0dGV2YW1AZ21haWwuY29tPgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
