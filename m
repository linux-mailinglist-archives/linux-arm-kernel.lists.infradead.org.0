Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E726D1396B
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 13:04:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oj5qSC/d2ul+ZTXXZ0HeMXT1LlWi9jbmH7bIi34tm40=; b=DYtlhMKEZ2OMBI
	fIwGIoBzejXM9kI6Y3X1yG9IVkTS9d/3HA77SNaWfbBPxB4qaRFPJ6i5jpCs7csavQR0iLIEhIBtw
	mokkcRIFws5b3FcI81whC4ldnGMb72CF5f4kujXJd9D48Y1i6mV55QKJNH3naeHJapnO8BIp0LvKs
	suoYAp/ZT+BUPmv1dEL8Phs6eK4ESg16XNZeqgeSXquc8pJgINZq88IfoEWNi/hhY9vTHnvE/we7s
	KILpSZECjPPIDXpV39j6nzDIb++KzjnPmQUvweWuKIesunsHt+zE140DLWhNCaUpKLv7Q4p8UgsIg
	WVkJVkHmM2vwEaw0ClHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMsSa-0005K1-VJ; Sat, 04 May 2019 11:04:04 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMsSU-0005JZ-1z
 for linux-arm-kernel@lists.infradead.org; Sat, 04 May 2019 11:03:59 +0000
Received: by mail-lj1-x243.google.com with SMTP id h21so7246949ljk.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 May 2019 04:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=BiywJZA9r6kxv/OyDdQ+nsf3ks4JUNhEjjCyaz/iKGE=;
 b=Q97G8pZiOy62ZVDNe0KVvckArrkMdxecNMK4C/6pgUuK8qH7i5kTR0Xp9u0nXvwy7h
 ieRz1pH9APKGOrspbwKDycEg93+6W263uNuzYcBeJQYleT8EaeL6QY6XR/yIrk+xtufz
 C6371n8NrtHYFPe6DHKMlYBxBa1EXFXF5t3V276WQnuPj9AFY5iwuk7lSd8RMNRHtAau
 XMzujU6b0I2dH/9Qdfs9Te1PrrHwdrUEIrc0lpC7nPuqmC8A/QxsznKfCrqNVO0iWXQ5
 8Qm1DP/ACg/HV3uBVnYP5tyRc0+y7isFYLES++OZ0zSPeZN0GeWiwiXuoMQX/Cifce8V
 qWJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=BiywJZA9r6kxv/OyDdQ+nsf3ks4JUNhEjjCyaz/iKGE=;
 b=UvHOuEtdBdf5x3woVDKH9Txk4DNKGjjJJy3lI7A0EKGaAF2pZs7PswyTRGO9LR4QV3
 VWYezo+dhsHh2ZIWfU2TT3o4iSwwiPdA0fMTimpCi+UgFPBwp//QrFbI2uB7wva2Yiog
 4RNfLLp2IkgkohCnMgrsBwYmJiAfL8XEQwo5J6bq/wE03rIuzZcf3tEGsrYy9sYEoK6U
 7pqQH7YgGtBCRoNBhVHsuVGkph+XUUiMzNrBzNvARwQkkI+mSwksJHSjKZImEl3dxDjE
 TVTlmiQgN6wKaFL6BIxQRRz/D/22530NJnEK91YD3znDulUL8WMMSw5kMcIjhe0pO0WJ
 F81w==
X-Gm-Message-State: APjAAAX+C2w2tMqH2KzHGrS6uIw8Lb7kseBhfsrkryyBCVzGmZUZC2eN
 VIXtPDm0nYphXiMs6uoN3i+seU1c1gz8xhaZ83U=
X-Google-Smtp-Source: APXvYqxAdM8lMj0YVduKkje1fAP2BJHG25g2COytac2Z1uIxoAVV6UQJjuekl53q0zv8YxsZvrYsyKGgLHP7ZDgHWOA=
X-Received: by 2002:a2e:9188:: with SMTP id f8mr5201827ljg.100.1556967835818; 
 Sat, 04 May 2019 04:03:55 -0700 (PDT)
MIME-Version: 1.0
References: <1556190530-19541-1-git-send-email-liuk@cetca.net.cn>
In-Reply-To: <1556190530-19541-1-git-send-email-liuk@cetca.net.cn>
From: Fabio Estevam <festevam@gmail.com>
Date: Sat, 4 May 2019 08:03:55 -0300
Message-ID: <CAOMZO5BbA6oq8okTR-r800k4XY76XxxEdufd1mjcV6HdTpVotA@mail.gmail.com>
Subject: Re: [PATCHv2 1/2] ARM: dts: imx6sx: Use MX6SX_CLK_ENET for fec 'ahb'
 clock
To: Kay-Liu <liuk@cetca.net.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_040358_101349_B5C59B54 
X-CRM114-Status: GOOD (  23.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgS2F5LUxpdSwKCk9uIFRodSwgQXByIDI1LCAyMDE5IGF0IDg6MDkgQU0gPGxpdWtAY2V0Y2Eu
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
dC5jbj4KPiAtLS0KPiBDaGFuZ2Ugc2luY2UgdjE6Cj4gLWlucHJvdmVkIGNvbW1pdCBsb2cgZGVz
Y3JpcHRpb24KPiAtYWRkIHBsYXRmb3JtIHJlbGF0ZWQgY2xvY2sgY2hhbmdlIGluc3RlYWQgb2Yg
ZGVzY3JpYmUgaXMgaW4gdGhlIGV4dGVybmFsIFVSTAo+Cj4gIGFyY2gvYXJtL2Jvb3QvZHRzL2lt
eDZzeC5kdHNpIHwgNCArKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnN4LmR0
c2kgYi9hcmNoL2FybS9ib290L2R0cy9pbXg2c3guZHRzaQo+IGluZGV4IDViMTZlNjUuLmI4YjIz
YTYgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnN4LmR0c2kKPiArKysgYi9h
cmNoL2FybS9ib290L2R0cy9pbXg2c3guZHRzaQo+IEBAIC05MTksNyArOTE5LDcgQEAKPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGludGVycnVwdHMgPSA8R0lDX1NQSSAxMTggSVJR
X1RZUEVfTEVWRUxfSElHSD4sCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgPEdJQ19TUEkgMTE5IElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjbGtzIElNWDZTWF9DTEtfRU5FVD4sCj4g
LSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8JmNsa3MgSU1YNlNYX0NM
S19FTkVUX0FIQj4sCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8
JmNsa3MgSU1YNlNYX0NMS19FTkVUPiwKClllcywgdGhlcmUgaXMgcmVhbGx5IG5vIElNWDZTWF9D
TEtfRU5FVF9BSEIgYXMgcGVyIHRoZSBSZWZlcm5jZSBNYW51YWwKYW5kIGl0IGlzIHRoZSBzYW1l
IHdlIGRvIG9uIGlteDZxZGwuZHRzaToKClJldmlld2VkLWJ5OiBGYWJpbyBFc3RldmFtIDxmZXN0
ZXZhbUBnbWFpbC5jb20+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
