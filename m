Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3741807D2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 20:18:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2/p7MboMq2bSOR2D519WZFggNMqiiYGs9oRKqWZZiIc=; b=K8cFNAFB9xJVeG
	6vEqCPz5n6nRWXTiJHTJG2G379kjThabJtu4tW8GRiNvdoFu83FUOWS+iOp66+0kNTAXLZP3sFL0D
	z+8muSpX99kjcWo+pO5eNGYJ8beVqjtiNA3Txq5OlswQvqZc2fv4BT5FnaGeVdqJhUOYbbDC9QhAP
	xaB/VlYl4YagwqeG7dmYMtGPiNWhDKm+kW0I6hEG7jlpGt+CpQ6B1wXr5MO9EkohA275xI3LXgBlC
	e/VPm52fQWszIzjly4+WqDlf7Y2G8dv1xfxKZmKgpQDcFZuxsCBsvaZFMOsfjlEDfZ3CMckpMD2Fw
	8daQmCp+Gi7zdRyTwwNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBkOS-0004Gy-NM; Tue, 10 Mar 2020 19:18:20 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBkOK-0004GX-R2
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 19:18:14 +0000
Received: by mail-il1-x143.google.com with SMTP id h3so1783065ils.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 12:18:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=G9Ot2Xjszp51gBGx58sDCr2xmlbyP0UP+3fOehYA85Y=;
 b=X5aIYN6TebDU8ZPHAulU19T+56uXL0NNZOGsZ2yI255jZXTRhANUfEW0pdg3g6V4f+
 RnNpsMdAMBPeInxTjr5X6L3xe1VwWcKooWjXm6sO0/UwBTnGiFVEotJjAGy4W7WC9EOh
 X0/lmano+UjrwmxF4AyezAz3W3gJakMUwozQmF0xQ3xM1c979GC999/a6Vl0NNXX1X1+
 5GXYRtQib/gJQ0A6rJo+nu72qwxWwjUKmAm/vqYPnGGveYzqNCE32bBXOtRmpLK6wre5
 sXzh9F4Gz/wyWM8Y0MxqWuCUHQB0YLZWMbvqlconEwNe6FkfZNRrgaQE/mrA5B/z5Gsy
 cSVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=G9Ot2Xjszp51gBGx58sDCr2xmlbyP0UP+3fOehYA85Y=;
 b=DO3GxtNPDrLzqamCG1pAaNwqJhKLSXJGSOtSRwpRo7jqvbV19MDHpC9l0qj5OLA6Eh
 f+ZLjVpKP0/B+uyme1+NC9Wg5m5i6r7dGj21OOA9YZyZ7Y2LWzo/K5Dm63njDZUQgwwH
 dzjCPGzMBVda5802C9LZTYvjBqm0GmnHlMZ9l0ca/+Quyvf67sd0f19UgGrfXTCRP86Q
 vxXpysPGEu2R7m3rzAnBBcJSMkqqXCU82H/4N07dWnWB8ifx0DUrqCs4CBNmTuvburxl
 hIwrNf8YF4dZGRjeAYAOLN4zLEqTTMxyDI94xTJ4cmLcUneCH3tV0Q0qqT3axpK8xTwQ
 Y+7A==
X-Gm-Message-State: ANhLgQ1OjF7QhLTxEHbxmEHKqN92G9NA9ceTWt+rEPfSg/AHmbCoPtnM
 TIgzm+hkgQBYnupt0ZDV0S1A90YQBRhtOwS5Wcnf0A==
X-Google-Smtp-Source: ADFU+vuBl9jtZKrPN3uOSXR4Nv2qnd2K1O9u2s6kWhC90nd+WCfqnZMbV026ei3A9zreO8ZDOJ/03oYzKw2p+9VWrMk=
X-Received: by 2002:a92:8586:: with SMTP id f128mr10567161ilh.50.1583867891455; 
 Tue, 10 Mar 2020 12:18:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200210162209.23149-1-cleger@kalray.eu>
 <20200302093902.27849-1-cleger@kalray.eu>
 <20200302093902.27849-6-cleger@kalray.eu> <20200302231342.GE262924@yoga>
 <482678048.7666348.1583222551942.JavaMail.zimbra@kalray.eu>
 <20200310000005.GF14744@builder> <20200310152031.GA25781@xps15>
 <371773363.9138477.1583854699708.JavaMail.zimbra@kalray.eu>
In-Reply-To: <371773363.9138477.1583854699708.JavaMail.zimbra@kalray.eu>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 10 Mar 2020 13:18:00 -0600
Message-ID: <CANLsYkx8QhJTozKNpFXiVYGLPpbdBLLAh=arqANHL-xQKLwrew@mail.gmail.com>
Subject: Re: [PATCH v5 5/8] remoteproc: Rename rproc_elf_sanity_check for elf32
To: =?UTF-8?Q?Cl=C3=A9ment_Leger?= <cleger@kalrayinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_121812_915138_79EB9786 
X-CRM114-Status: GOOD (  31.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Loic PALLARDY <loic.pallardy@st.com>,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>, Jonathan Corbet <corbet@lwn.net>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-doc <linux-doc@vger.kernel.org>,
 linux-remoteproc <linux-remoteproc@vger.kernel.org>,
 Patrice Chotard <patrice.chotard@st.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, s-anna <s-anna@ti.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAxMCBNYXIgMjAyMCBhdCAwOTozOCwgQ2zDqW1lbnQgTGVnZXIgPGNsZWdlckBrYWxy
YXlpbmMuY29tPiB3cm90ZToKPgo+IEhpIE1hdGhpZXUsCj4KPiAtLS0tLSBPbiAxMCBNYXIsIDIw
MjAsIGF0IDE2OjIwLCBNYXRoaWV1IFBvaXJpZXIgbWF0aGlldS5wb2lyaWVyQGxpbmFyby5vcmcg
d3JvdGU6Cj4KPiA+IE9uIE1vbiwgTWFyIDA5LCAyMDIwIGF0IDA1OjAwOjA1UE0gLTA3MDAsIEJq
b3JuIEFuZGVyc3NvbiB3cm90ZToKPiA+PiBPbiBUdWUgMDMgTWFyIDAwOjAyIFBTVCAyMDIwLCBD
bD9tZW50IExlZ2VyIHdyb3RlOgo+ID4+Cj4gPj4gPiBIaSBCam9ybiwKPiA+PiA+Cj4gPj4gPiAt
LS0tLSBPbiAzIE1hciwgMjAyMCwgYXQgMDA6MTMsIEJqb3JuIEFuZGVyc3NvbiBiam9ybi5hbmRl
cnNzb25AbGluYXJvLm9yZwo+ID4+ID4gd3JvdGU6Cj4gPj4gPgo+ID4+ID4gPiBPbiBNb24gMDIg
TWFyIDAxOjM4IFBTVCAyMDIwLCBDbGVtZW50IExlZ2VyIHdyb3RlOgo+ID4+ID4gPgo+ID4+ID4g
Pj4gU2luY2UgdGhpcyBmdW5jdGlvbiB3aWxsIGJlIG1vZGlmaWVkIHRvIHN1cHBvcnQgYm90aCBl
bGYzMiBhbmQgZWxmNjQsCj4gPj4gPiA+PiByZW5hbWUgdGhlIGV4aXN0aW5nIG9uZSB0byBlbGYz
MiAod2hpY2ggaXMgdGhlIG9ubHkgc3VwcG9ydGVkIGZvcm1hdAo+ID4+ID4gPj4gYXQgdGhlIG1v
bWVudCkuIFRoaXMgd2lsbCBhbGxvdyBub3QgdG8gaW50cm9kdWNlIHBvc3NpYmxlIHNpZGUgZWZm
ZWN0Cj4gPj4gPiA+PiB3aGVuIGFkZGluZyBlbGY2NCBzdXBwb3J0IChpZTogYWxsIGJhY2tlbmRz
IHdpbGwgc3RpbGwgc3VwcG9ydCBvbmx5Cj4gPj4gPiA+PiBlbGYzMiBpZiBub3QgcmVxdWVzdGVk
IGV4cGxpY2l0ZWx5IHVzaW5nIHJwcm9jX2VsZl9zYW5pdHlfY2hlY2spLgo+ID4+ID4gPj4KPiA+
PiA+ID4KPiA+PiA+ID4gSXMgdGhlcmUgYSByZWFzb24gZm9yIHByZXZlbnRpbmcgRUxGNjQgYmlu
YXJpZXMgYmUgbG9hZGVkPwo+ID4+ID4KPiA+PiA+IEkgZGVjaWRlZCB0byBnbyB0aGlzIHdheSB0
byBsZXQgZHJpdmVyIG1haW50YWluZXIgZGVjaWRlIGlmIHRoZXkgd2FudAo+ID4+ID4gdG8gc3Vw
cG9ydCBlbGY2NCB0byBhdm9pZCBwcm9ibGVtcyB3aXRoIDY0Yml0cyBhZGRyZXNzZXMvc2l6ZXMg
d2hpY2ggZG8KPiA+PiA+IG5vdCBmaXQgaW4gdGhlaXIgbmF0aXZlIHR5cGUgKHNpemVfdCBmb3Ig
aW5zdGFuY2UpLiBUaGlzIGlzIHByb2JhYmx5Cj4gPj4gPiBub3QgZ29pbmcgdG8gaGFwcGVuIGFu
ZCB0aGVyZSBhcmUgYWRkaXRpb25uYWwgY2hlY2tzIGJlZm9yZSBjYWxsaW5nCj4gPj4gPiBycHJv
Y19kYV90b192YS4gQW5kIGFkZHJlc3NlcyBzaG91bGQgYmUgZmlsdGVyZWQgYnkgcnByb2NfZGFf
dG9fdmEuCj4gPj4gPiBTbywgYWN0dWFsbHkgaXQgc2VlbXMgdGhlcmUgaXMgbm8gcmVhc29uIHRv
IGZvcmJpZCBzdXBwb3J0aW5nIGVsZjMyLzY0Cj4gPj4gPiBmb3IgYWxsIGRyaXZlcnMuCj4gPj4g
Pgo+ID4+Cj4gPj4gSSB3YXMgaG9waW5nIHRvIGhlYXIgc29tZSBhZGRpdGlvbmFsIGZlZWRiYWNr
IG9uIHRoaXMgZnJvbSBvdGhlcnMuCj4gPgo+ID4gSSBkaWRuJ3QgZm9sbG93IHVwIG9uIHRoaXMg
b25lIGJlY2F1c2UgSSBhZ3JlZWQgd2l0aCB5b3VyIGFzc2VzbWVudCBhbmQgZGlkbid0Cj4gPiB0
aGluayBpdCB3YXMgbmVlZGVkLgo+ID4KPiA+IFNpbXBseSBwdXQgSSB3b3VsZCByYXRoZXIgc2Vl
IHJwcm9jX2VsZl9zYW5pdHlfY2hlY2soKSBnYWluIHN1cHBvcnQgZm9yIGVsZjY0Cj4gPiBhbmQg
bGV0IHRoZSBwbGF0Zm9ybSBjb2RlIGRlY2lkZSB3aGF0IHRvIGRvIHdpdGggZm9ybWF0IHRoZXkg
ZG9uJ3Qgc3VwcG9ydAo+ID4gcmF0aGVyIHRoYW4gc3Bpbm5pbmcgYSBuZXcgZnVuY3Rpb24uCj4g
Pgo+ID4+Cj4gPj4gSSd2ZSBtZXJnZSB0aGUgcGF0Y2ggYXMgaXMsIGJ1dCB0aGluayBpdCB3b3Vs
ZCBiZSBuaWNlIHRvIGNsZWFuIHRoaXMgdXAKPiA+PiBhbmQganVzdCBoYXZlIHRoZSBkcml2ZXIg
aWdub3JlIGlmIGZlZCBhIDMyIG9yIDY0LWVsZi4KPiA+Cj4gPiBJdCB3b3VsZCBiZSByZWFsbHkg
bmljZSB0byBzZWUgdGhpcyBjbGVhbmVkIHVwIGluIHRpbWUgZm9yIHRoZSBjb21pbmcgbWVyZ2UK
PiA+IHdpbmRvdy4uLgo+Cj4gSSBjb3VsZCBoYXZlIHNlbnQgYSBWNywgYnV0IEJqb3JuIHdhcyBm
YXN0ZXIgdGhhbiBteSBjb21tZW50IDspCj4gQmpvcm4sIElzIHRoZXJlIGFueSB3YXkgdG8gcmV2
ZXJ0IHRoYXQgb3IgaXQncyBhbHJlYWR5IHB1c2hlZCA/Cj4gSSBhbHJlYWR5IGhhdmUgYSBjbGVh
biBWNy4KCkp1c3Qgc2VuZCBhbm90aGVyIHBhdGNoc2V0IHRoYXQgYXBwbGllcyBvbiB0b3Agb2Yg
dGhpcyBvbmUuCgo+Cj4gVGhhbmtzLAo+Cj4gQ2zDqW1lbnQKPgo+ID4KPiA+IFRoYW5rcwo+ID4g
TWF0aGlldQo+ID4KPiA+Pgo+ID4+IFJlZ2FyZHMsCj4gPj4gQmpvcm4KPiA+Pgo+ID4+ID4gUmVn
YXJkcywKPiA+PiA+Cj4gPj4gPiBDbMOpbWVudAo+ID4+ID4KPiA+PiA+ID4KPiA+PiA+ID4gUmVn
YXJkcywKPiA+PiA+ID4gQmpvcm4KPiA+PiA+ID4KPiA+PiA+ID4+IFNpZ25lZC1vZmYtYnk6IENs
ZW1lbnQgTGVnZXIgPGNsZWdlckBrYWxyYXkuZXU+Cj4gPj4gPiA+PiAtLS0KPiA+PiA+ID4+ICBk
cml2ZXJzL3JlbW90ZXByb2MvcmVtb3RlcHJvY19jb3JlLmMgICAgICAgfCAyICstCj4gPj4gPiA+
PiAgZHJpdmVycy9yZW1vdGVwcm9jL3JlbW90ZXByb2NfZWxmX2xvYWRlci5jIHwgNiArKystLS0K
PiA+PiA+ID4+ICBkcml2ZXJzL3JlbW90ZXByb2MvcmVtb3RlcHJvY19pbnRlcm5hbC5oICAgfCAy
ICstCj4gPj4gPiA+PiAgZHJpdmVycy9yZW1vdGVwcm9jL3N0X3JlbW90ZXByb2MuYyAgICAgICAg
IHwgMiArLQo+ID4+ID4gPj4gIGRyaXZlcnMvcmVtb3RlcHJvYy9zdF9zbGltX3Jwcm9jLmMgICAg
ICAgICB8IDIgKy0KPiA+PiA+ID4+ICBkcml2ZXJzL3JlbW90ZXByb2Mvc3RtMzJfcnByb2MuYyAg
ICAgICAgICAgfCAyICstCj4gPj4gPiA+PiAgNiBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMo
KyksIDggZGVsZXRpb25zKC0pCj4gPj4gPiA+Pgo+ID4+ID4gPj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvcmVtb3RlcHJvYy9yZW1vdGVwcm9jX2NvcmUuYwo+ID4+ID4gPj4gYi9kcml2ZXJzL3JlbW90
ZXByb2MvcmVtb3RlcHJvY19jb3JlLmMKPiA+PiA+ID4+IGluZGV4IDRiZmFmNGEzYzRhMy4uOTlm
MGI3OTZmYmM3IDEwMDY0NAo+ID4+ID4gPj4gLS0tIGEvZHJpdmVycy9yZW1vdGVwcm9jL3JlbW90
ZXByb2NfY29yZS5jCj4gPj4gPiA+PiArKysgYi9kcml2ZXJzL3JlbW90ZXByb2MvcmVtb3RlcHJv
Y19jb3JlLmMKPiA+PiA+ID4+IEBAIC0yMDU1LDcgKzIwNTUsNyBAQCBzdHJ1Y3QgcnByb2MgKnJw
cm9jX2FsbG9jKHN0cnVjdCBkZXZpY2UgKmRldiwgY29uc3QgY2hhcgo+ID4+ID4gPj4gKm5hbWUs
Cj4gPj4gPiA+PiAgICAgICAgICAgICAgICAgcnByb2MtPm9wcy0+bG9hZCA9IHJwcm9jX2VsZl9s
b2FkX3NlZ21lbnRzOwo+ID4+ID4gPj4gICAgICAgICAgICAgICAgIHJwcm9jLT5vcHMtPnBhcnNl
X2Z3ID0gcnByb2NfZWxmX2xvYWRfcnNjX3RhYmxlOwo+ID4+ID4gPj4gICAgICAgICAgICAgICAg
IHJwcm9jLT5vcHMtPmZpbmRfbG9hZGVkX3JzY190YWJsZSA9IHJwcm9jX2VsZl9maW5kX2xvYWRl
ZF9yc2NfdGFibGU7Cj4gPj4gPiA+PiAtICAgICAgICAgICAgICAgcnByb2MtPm9wcy0+c2FuaXR5
X2NoZWNrID0gcnByb2NfZWxmX3Nhbml0eV9jaGVjazsKPiA+PiA+ID4+ICsgICAgICAgICAgICAg
ICBycHJvYy0+b3BzLT5zYW5pdHlfY2hlY2sgPSBycHJvY19lbGYzMl9zYW5pdHlfY2hlY2s7Cj4g
Pj4gPiA+PiAgICAgICAgICAgICAgICAgcnByb2MtPm9wcy0+Z2V0X2Jvb3RfYWRkciA9IHJwcm9j
X2VsZl9nZXRfYm9vdF9hZGRyOwo+ID4+ID4gPj4gICAgICAgICB9Cj4gPj4gPiA+Pgo+ID4+ID4g
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcmVtb3RlcHJvYy9yZW1vdGVwcm9jX2VsZl9sb2FkZXIu
Ywo+ID4+ID4gPj4gYi9kcml2ZXJzL3JlbW90ZXByb2MvcmVtb3RlcHJvY19lbGZfbG9hZGVyLmMK
PiA+PiA+ID4+IGluZGV4IGMyYTk3ODNjZmI5YS4uNWE2Nzc0NWYyNjM4IDEwMDY0NAo+ID4+ID4g
Pj4gLS0tIGEvZHJpdmVycy9yZW1vdGVwcm9jL3JlbW90ZXByb2NfZWxmX2xvYWRlci5jCj4gPj4g
PiA+PiArKysgYi9kcml2ZXJzL3JlbW90ZXByb2MvcmVtb3RlcHJvY19lbGZfbG9hZGVyLmMKPiA+
PiA+ID4+IEBAIC0yNSwxMyArMjUsMTMgQEAKPiA+PiA+ID4+ICAjaW5jbHVkZSAicmVtb3RlcHJv
Y19pbnRlcm5hbC5oIgo+ID4+ID4gPj4KPiA+PiA+ID4+ICAvKioKPiA+PiA+ID4+IC0gKiBycHJv
Y19lbGZfc2FuaXR5X2NoZWNrKCkgLSBTYW5pdHkgQ2hlY2sgRUxGIGZpcm13YXJlIGltYWdlCj4g
Pj4gPiA+PiArICogcnByb2NfZWxmX3Nhbml0eV9jaGVjaygpIC0gU2FuaXR5IENoZWNrIEVMRjMy
IGZpcm13YXJlIGltYWdlCj4gPj4gPiA+PiAgICogQHJwcm9jOiB0aGUgcmVtb3RlIHByb2Nlc3Nv
ciBoYW5kbGUKPiA+PiA+ID4+ICAgKiBAZnc6IHRoZSBFTEYgZmlybXdhcmUgaW1hZ2UKPiA+PiA+
ID4+ICAgKgo+ID4+ID4gPj4gICAqIE1ha2Ugc3VyZSB0aGlzIGZ3IGltYWdlIGlzIHNhbmUuCj4g
Pj4gPiA+PiAgICovCj4gPj4gPiA+PiAtaW50IHJwcm9jX2VsZl9zYW5pdHlfY2hlY2soc3RydWN0
IHJwcm9jICpycHJvYywgY29uc3Qgc3RydWN0IGZpcm13YXJlICpmdykKPiA+PiA+ID4+ICtpbnQg
cnByb2NfZWxmMzJfc2FuaXR5X2NoZWNrKHN0cnVjdCBycHJvYyAqcnByb2MsIGNvbnN0IHN0cnVj
dCBmaXJtd2FyZSAqZncpCj4gPj4gPiA+PiAgewo+ID4+ID4gPj4gICAgICAgICBjb25zdCBjaGFy
ICpuYW1lID0gcnByb2MtPmZpcm13YXJlOwo+ID4+ID4gPj4gICAgICAgICBzdHJ1Y3QgZGV2aWNl
ICpkZXYgPSAmcnByb2MtPmRldjsKPiA+PiA+ID4+IEBAIC04OSw3ICs4OSw3IEBAIGludCBycHJv
Y19lbGZfc2FuaXR5X2NoZWNrKHN0cnVjdCBycHJvYyAqcnByb2MsIGNvbnN0IHN0cnVjdAo+ID4+
ID4gPj4gZmlybXdhcmUgKmZ3KQo+ID4+ID4gPj4KPiA+PiA+ID4+ICAgICAgICAgcmV0dXJuIDA7
Cj4gPj4gPiA+PiAgfQo+ID4+ID4gPj4gLUVYUE9SVF9TWU1CT0wocnByb2NfZWxmX3Nhbml0eV9j
aGVjayk7Cj4gPj4gPiA+PiArRVhQT1JUX1NZTUJPTChycHJvY19lbGYzMl9zYW5pdHlfY2hlY2sp
Owo+ID4+ID4gPj4KPiA+PiA+ID4+ICAvKioKPiA+PiA+ID4+ICAgKiBycHJvY19lbGZfZ2V0X2Jv
b3RfYWRkcigpIC0gR2V0IHJwcm9jJ3MgYm9vdCBhZGRyZXNzLgo+ID4+ID4gPj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvcmVtb3RlcHJvYy9yZW1vdGVwcm9jX2ludGVybmFsLmgKPiA+PiA+ID4+IGIv
ZHJpdmVycy9yZW1vdGVwcm9jL3JlbW90ZXByb2NfaW50ZXJuYWwuaAo+ID4+ID4gPj4gaW5kZXgg
MGRlYWU1ZjIzN2I4Li4yODYzOWM1ODhkNTggMTAwNjQ0Cj4gPj4gPiA+PiAtLS0gYS9kcml2ZXJz
L3JlbW90ZXByb2MvcmVtb3RlcHJvY19pbnRlcm5hbC5oCj4gPj4gPiA+PiArKysgYi9kcml2ZXJz
L3JlbW90ZXByb2MvcmVtb3RlcHJvY19pbnRlcm5hbC5oCj4gPj4gPiA+PiBAQCAtNTQsNyArNTQs
NyBAQCB2b2lkICpycHJvY19kYV90b192YShzdHJ1Y3QgcnByb2MgKnJwcm9jLCB1NjQgZGEsIHNp
emVfdCBsZW4pOwo+ID4+ID4gPj4gIHBoeXNfYWRkcl90IHJwcm9jX3ZhX3RvX3BhKHZvaWQgKmNw
dV9hZGRyKTsKPiA+PiA+ID4+ICBpbnQgcnByb2NfdHJpZ2dlcl9yZWNvdmVyeShzdHJ1Y3QgcnBy
b2MgKnJwcm9jKTsKPiA+PiA+ID4+Cj4gPj4gPiA+PiAtaW50IHJwcm9jX2VsZl9zYW5pdHlfY2hl
Y2soc3RydWN0IHJwcm9jICpycHJvYywgY29uc3Qgc3RydWN0IGZpcm13YXJlICpmdyk7Cj4gPj4g
PiA+PiAraW50IHJwcm9jX2VsZjMyX3Nhbml0eV9jaGVjayhzdHJ1Y3QgcnByb2MgKnJwcm9jLCBj
b25zdCBzdHJ1Y3QgZmlybXdhcmUgKmZ3KTsKPiA+PiA+ID4+ICB1NjQgcnByb2NfZWxmX2dldF9i
b290X2FkZHIoc3RydWN0IHJwcm9jICpycHJvYywgY29uc3Qgc3RydWN0IGZpcm13YXJlICpmdyk7
Cj4gPj4gPiA+PiAgaW50IHJwcm9jX2VsZl9sb2FkX3NlZ21lbnRzKHN0cnVjdCBycHJvYyAqcnBy
b2MsIGNvbnN0IHN0cnVjdCBmaXJtd2FyZSAqZncpOwo+ID4+ID4gPj4gIGludCBycHJvY19lbGZf
bG9hZF9yc2NfdGFibGUoc3RydWN0IHJwcm9jICpycHJvYywgY29uc3Qgc3RydWN0IGZpcm13YXJl
ICpmdyk7Cj4gPj4gPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9yZW1vdGVwcm9jL3N0X3JlbW90
ZXByb2MuYwo+ID4+ID4gPj4gYi9kcml2ZXJzL3JlbW90ZXByb2Mvc3RfcmVtb3RlcHJvYy5jCj4g
Pj4gPiA+PiBpbmRleCBhMzI2OGQ5NWE1MGUuLmE2Y2JmYTQ1Mjc2NCAxMDA2NDQKPiA+PiA+ID4+
IC0tLSBhL2RyaXZlcnMvcmVtb3RlcHJvYy9zdF9yZW1vdGVwcm9jLmMKPiA+PiA+ID4+ICsrKyBi
L2RyaXZlcnMvcmVtb3RlcHJvYy9zdF9yZW1vdGVwcm9jLmMKPiA+PiA+ID4+IEBAIC0yMzMsNyAr
MjMzLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBycHJvY19vcHMgc3RfcnByb2Nfb3BzID0gewo+
ID4+ID4gPj4gICAgICAgICAucGFyc2VfZncgICAgICAgICAgICAgICA9IHN0X3Jwcm9jX3BhcnNl
X2Z3LAo+ID4+ID4gPj4gICAgICAgICAubG9hZCAgICAgICAgICAgICAgICAgICA9IHJwcm9jX2Vs
Zl9sb2FkX3NlZ21lbnRzLAo+ID4+ID4gPj4gICAgICAgICAuZmluZF9sb2FkZWRfcnNjX3RhYmxl
ICA9IHJwcm9jX2VsZl9maW5kX2xvYWRlZF9yc2NfdGFibGUsCj4gPj4gPiA+PiAtICAgICAgIC5z
YW5pdHlfY2hlY2sgICAgICAgICAgID0gcnByb2NfZWxmX3Nhbml0eV9jaGVjaywKPiA+PiA+ID4+
ICsgICAgICAgLnNhbml0eV9jaGVjayAgICAgICAgICAgPSBycHJvY19lbGYzMl9zYW5pdHlfY2hl
Y2ssCj4gPj4gPiA+PiAgICAgICAgIC5nZXRfYm9vdF9hZGRyICAgICAgICAgID0gcnByb2NfZWxm
X2dldF9ib290X2FkZHIsCj4gPj4gPiA+PiAgfTsKPiA+PiA+ID4+Cj4gPj4gPiA+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9yZW1vdGVwcm9jL3N0X3NsaW1fcnByb2MuYwo+ID4+ID4gPj4gYi9kcml2
ZXJzL3JlbW90ZXByb2Mvc3Rfc2xpbV9ycHJvYy5jCj4gPj4gPiA+PiBpbmRleCAwOWJjYjRkOGI5
ZTAuLjNjY2E4YjY1YThkYiAxMDA2NDQKPiA+PiA+ID4+IC0tLSBhL2RyaXZlcnMvcmVtb3RlcHJv
Yy9zdF9zbGltX3Jwcm9jLmMKPiA+PiA+ID4+ICsrKyBiL2RyaXZlcnMvcmVtb3RlcHJvYy9zdF9z
bGltX3Jwcm9jLmMKPiA+PiA+ID4+IEBAIC0yMDMsNyArMjAzLDcgQEAgc3RhdGljIGNvbnN0IHN0
cnVjdCBycHJvY19vcHMgc2xpbV9ycHJvY19vcHMgPSB7Cj4gPj4gPiA+PiAgICAgICAgIC5kYV90
b192YSAgICAgICA9IHNsaW1fcnByb2NfZGFfdG9fdmEsCj4gPj4gPiA+PiAgICAgICAgIC5nZXRf
Ym9vdF9hZGRyICA9IHJwcm9jX2VsZl9nZXRfYm9vdF9hZGRyLAo+ID4+ID4gPj4gICAgICAgICAu
bG9hZCAgICAgICAgICAgPSBycHJvY19lbGZfbG9hZF9zZWdtZW50cywKPiA+PiA+ID4+IC0gICAg
ICAgLnNhbml0eV9jaGVjayAgID0gcnByb2NfZWxmX3Nhbml0eV9jaGVjaywKPiA+PiA+ID4+ICsg
ICAgICAgLnNhbml0eV9jaGVjayAgID0gcnByb2NfZWxmMzJfc2FuaXR5X2NoZWNrLAo+ID4+ID4g
Pj4gIH07Cj4gPj4gPiA+Pgo+ID4+ID4gPj4gIC8qKgo+ID4+ID4gPj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcmVtb3RlcHJvYy9zdG0zMl9ycHJvYy5jIGIvZHJpdmVycy9yZW1vdGVwcm9jL3N0bTMy
X3Jwcm9jLmMKPiA+PiA+ID4+IGluZGV4IGExOGY4ODA0NDExMS4uOWE4YjVmNWUyNTcyIDEwMDY0
NAo+ID4+ID4gPj4gLS0tIGEvZHJpdmVycy9yZW1vdGVwcm9jL3N0bTMyX3Jwcm9jLmMKPiA+PiA+
ID4+ICsrKyBiL2RyaXZlcnMvcmVtb3RlcHJvYy9zdG0zMl9ycHJvYy5jCj4gPj4gPiA+PiBAQCAt
NTA1LDcgKzUwNSw3IEBAIHN0YXRpYyBzdHJ1Y3QgcnByb2Nfb3BzIHN0X3Jwcm9jX29wcyA9IHsK
PiA+PiA+ID4+ICAgICAgICAgLmxvYWQgICAgICAgICAgID0gcnByb2NfZWxmX2xvYWRfc2VnbWVu
dHMsCj4gPj4gPiA+PiAgICAgICAgIC5wYXJzZV9mdyAgICAgICA9IHN0bTMyX3Jwcm9jX3BhcnNl
X2Z3LAo+ID4+ID4gPj4gICAgICAgICAuZmluZF9sb2FkZWRfcnNjX3RhYmxlID0gcnByb2NfZWxm
X2ZpbmRfbG9hZGVkX3JzY190YWJsZSwKPiA+PiA+ID4+IC0gICAgICAgLnNhbml0eV9jaGVjayAg
ID0gcnByb2NfZWxmX3Nhbml0eV9jaGVjaywKPiA+PiA+ID4+ICsgICAgICAgLnNhbml0eV9jaGVj
ayAgID0gcnByb2NfZWxmMzJfc2FuaXR5X2NoZWNrLAo+ID4+ID4gPj4gICAgICAgICAuZ2V0X2Jv
b3RfYWRkciAgPSBycHJvY19lbGZfZ2V0X2Jvb3RfYWRkciwKPiA+PiA+ID4+ICB9Owo+ID4+ID4g
Pj4KPiA+PiA+ID4+IC0tCj4gPiA+ID4gPj4gMi4xNS4wLjI3Ni5nODllYTc5OQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
