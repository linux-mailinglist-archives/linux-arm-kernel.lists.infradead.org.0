Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A09357C3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 09:31:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y9q4nLs1xgKXy/XRsI7QhmP7+NlMmZKxeFx9dPRHGgk=; b=R/SKpzJLlgN9JE
	+EaYFPvE73g/5bMk3m74PMeaSFBdyli61QNHHkmIPA2KwEiiMWLQyA5Ss0f8lJHZ20V2+RgEQn/gZ
	DDfWJiiPjVQ9o64Syt4cI6/uheXzPCSgA9f4hXsDtftcn7Raz8cDFTE5BL45py1eNrnsJMwYp5a4w
	P0mruBubYVSwHQ6m+zgSnTv/MBA/G86mT9tCe71g/8SBg+qEXKT5TNGnCUVXEeYmPpOAJWTtAzhKM
	7RpaSRzVfdkRF4UQPdhrGx9/RAVv6iVal3RMfXYpNP0RhgpaCAGciw42K+A2lU6WHYFRHTtNzyldz
	CdrEr/4ve2cFq8LVKb0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYQOf-0002cL-8m; Wed, 05 Jun 2019 07:31:45 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYQOY-0002br-P9
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 07:31:40 +0000
Received: by mail-wm1-x342.google.com with SMTP id f204so1146662wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 00:31:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=IWnG5mk+FSYYj2lHa0zQw85I3E1T6olPRsvdmWWZtDA=;
 b=LnC7DlOAeqIU6jCar36+vJfnaBNJe7XDi+C9PTCBaCI6KbsqmLbikd0R4ff2IsEJrd
 KXDU+/9i/2/3H1156mWXbRspGIKTixZGHqqBSfwvQSbknV1dXCvlxMJcXa0bwG95q18r
 Dvn1fLNcMEz8cnM83vCka5cC2NsTRflgoRIxCS58wYgGh6EIKIFolkHw6lC0zeqHhwoZ
 C5WhuwIxioR/vJCvvBa8ptAsN2IQYEGK+45vS1tGxq2gI3LCo/PkEGHyPvTx+LBX3umY
 i8BcoGDi3C3mbCMjmj75qj+L1JYcTf2IkZtDp57NqjuyLaG2qdUm2YtKhyXE/eHv5cxy
 4zeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=IWnG5mk+FSYYj2lHa0zQw85I3E1T6olPRsvdmWWZtDA=;
 b=EZgbpNuGZfKnXiSI9rZrj6IOnjr9s/xTydIh265nnPGZPNXXLb6PAcnUoPzn45d2Je
 RtbfiKfkAs1inwX1KudiUvkXDjBbqEpBZQ3OSULUiPln0K6HjumTp6N9eJWtUvUzigOL
 YNnjVd3cRWMTVstBaDlqI/PArqIiHNI1PrK6QzjOR2Ouook++Gh52wVXZkGDweRWcpya
 3+grfaB/LOJz2ZaCytNhmB7KnjVyn/l2DTqWKSYa2MQd8tyQ+YSWmfyg4p+HVDt6+EkZ
 75cygMMfwZ9C7S7Qyd5TeKUyzz9eYZ9g8i4ldMya+uja2THqzcUSiCMUQyhqI45Mdiw5
 jmGw==
X-Gm-Message-State: APjAAAXYLORekwlVyiMHVnmn+O8Zt9BfPXq2pjFP8QHpbNgkyYHujJ0N
 qR7J6kdpvy8k4c5R01GoDSNiAg==
X-Google-Smtp-Source: APXvYqyCnKW0jfvwBVA6aJcAK6VfcLrnJuvLPQVDIWk0oxlDsnBP0uEq+gISa827spE4AsPpgFfkTQ==
X-Received: by 2002:a1c:6c08:: with SMTP id h8mr14401084wmc.62.1559719896073; 
 Wed, 05 Jun 2019 00:31:36 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id u11sm13722491wrn.1.2019.06.05.00.31.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 05 Jun 2019 00:31:35 -0700 (PDT)
Date: Wed, 5 Jun 2019 08:31:33 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH 4/8] pinctrl: qcom: sdm845: Provide ACPI support
Message-ID: <20190605073133.GL4797@dell>
References: <20190604104455.8877-1-lee.jones@linaro.org>
 <20190604104455.8877-4-lee.jones@linaro.org>
 <20190605061721.GK22737@tuxbook-pro>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605061721.GK22737@tuxbook-pro>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_003138_841700_2C8EA61C 
X-CRM114-Status: GOOD (  25.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: balbi@kernel.org, wsa+renesas@sang-engineering.com,
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 david.brown@linaro.org, alokc@codeaurora.org, kramasub@codeaurora.org,
 linux-i2c@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, andy.gross@linaro.org, jlhugo@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAwNCBKdW4gMjAxOSwgQmpvcm4gQW5kZXJzc29uIHdyb3RlOgoKPiBPbiBUdWUgMDQg
SnVuIDAzOjQ0IFBEVCAyMDE5LCBMZWUgSm9uZXMgd3JvdGU6Cj4gCj4gPiBUaGlzIHBhdGNoIHBy
b3ZpZGVzIGJhc2ljIHN1cHBvcnQgZm9yIGJvb3Rpbmcgd2l0aCBBQ1BJIGluc3RlYWQKPiA+IG9m
IHRoZSBjdXJyZW50bHkgc3VwcG9ydGVkIERldmljZSBUcmVlLiAgV2hlbiBkb2luZyBzbyB0aGVy
ZSBhcmUgYQo+ID4gY291cGxlIG9mIGRpZmZlcmVuY2VzIHdoaWNoIHdlIG5lZWQgdG8gdGFrZW4g
aW50byBjb25zaWRlcmF0aW9uLgo+ID4gCj4gPiBGaXJzdGx5LCB0aGUgU0RNODUwIEFDUEkgdGFi
bGVzIG9taXQgaW5mb3JtYXRpb24gcGVydGFpbmluZyB0byB0aGUKPiA+IDQgcmVzZXJ2ZWQgR1BJ
T3Mgb24gdGhlIHBsYXRmb3JtLiAgSWYgTGludXggYXR0ZW1wdHMgdG8gdG91Y2gvCj4gPiBpbml0
aWFsaXNlIGFueSBvZiB0aGVzZSBsaW5lcywgdGhlIGZpcm13YXJlIHdpbGwgcmVzdGFydCB0aGUK
PiA+IHBsYXRmb3JtLgo+ID4gCj4gPiBTZWNvbmRseSwgd2hlbiBib290aW5nIHdpdGggQUNQSSwg
aXQgaXMgZXhwZWN0ZWQgdGhhdCB0aGUgZmlybXdhcmUKPiA+IHdpbGwgc2V0LXVwIHRoaW5ncyBs
aWtlOyBSZWd1bGF0b3JzLCBDbG9ja3MsIFBpbiBGdW5jdGlvbnMsIGV0YyBpbgo+ID4gdGhlaXIg
aWRlYWwgY29uZmlndXJhdGlvbi4gIFRodXMsIHRoZSBwb3NzaWJsZSBQaW4gRnVuY3Rpb25zCj4g
PiBhdmFpbGFibGUgdG8gdGhpcyBwbGF0Zm9ybSBhcmUgbm90IGFkdmVydGlzZWQgd2hlbiBwcm92
aWRpbmcgdGhlCj4gPiBoaWdoZXIgR1BJT0QvUGluY3RybCBBUElzIHdpdGggcGluIGluZm9ybWF0
aW9uLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8u
b3JnPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9waW5jdHJsL3Fjb20vS2NvbmZpZyAgICAgICAgICB8
ICAyICstCj4gPiAgZHJpdmVycy9waW5jdHJsL3Fjb20vcGluY3RybC1zZG04NDUuYyB8IDM1ICsr
KysrKysrKysrKysrKysrKysrKysrKysrLQo+ID4gIDIgZmlsZXMgY2hhbmdlZCwgMzUgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGlu
Y3RybC9xY29tL0tjb25maWcgYi9kcml2ZXJzL3BpbmN0cmwvcWNvbS9LY29uZmlnCj4gPiBpbmRl
eCAyZTY2YWI3MmMxMGIuLmFhZmJlOTMyNDI0ZiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvcGlu
Y3RybC9xY29tL0tjb25maWcKPiA+ICsrKyBiL2RyaXZlcnMvcGluY3RybC9xY29tL0tjb25maWcK
PiA+IEBAIC0xNjgsNyArMTY4LDcgQEAgY29uZmlnIFBJTkNUUkxfU0RNNjYwCj4gPiAgCj4gPiAg
Y29uZmlnIFBJTkNUUkxfU0RNODQ1Cj4gPiAgICAgICAgIHRyaXN0YXRlICJRdWFsY29tbSBUZWNo
bm9sb2dpZXMgSW5jIFNETTg0NSBwaW4gY29udHJvbGxlciBkcml2ZXIiCj4gPiAtICAgICAgIGRl
cGVuZHMgb24gR1BJT0xJQiAmJiBPRgo+ID4gKyAgICAgICBkZXBlbmRzIG9uIEdQSU9MSUIgJiYg
KE9GIHx8IEFDUEkpCj4gPiAgICAgICAgIHNlbGVjdCBQSU5DVFJMX01TTQo+ID4gICAgICAgICBo
ZWxwCj4gPiAgICAgICAgICAgVGhpcyBpcyB0aGUgcGluY3RybCwgcGlubXV4LCBwaW5jb25mIGFu
ZCBncGlvbGliIGRyaXZlciBmb3IgdGhlCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waW5jdHJs
L3Fjb20vcGluY3RybC1zZG04NDUuYyBiL2RyaXZlcnMvcGluY3RybC9xY29tL3BpbmN0cmwtc2Rt
ODQ1LmMKPiA+IGluZGV4IGM5N2YyMGZjYTVmZC4uNzE4OGJlZTNjZjNlIDEwMDY0NAo+ID4gLS0t
IGEvZHJpdmVycy9waW5jdHJsL3Fjb20vcGluY3RybC1zZG04NDUuYwo+ID4gKysrIGIvZHJpdmVy
cy9waW5jdHJsL3Fjb20vcGluY3RybC1zZG04NDUuYwo+ID4gQEAgLTMsNiArMyw3IEBACj4gPiAg
ICogQ29weXJpZ2h0IChjKSAyMDE2LTIwMTgsIFRoZSBMaW51eCBGb3VuZGF0aW9uLiBBbGwgcmln
aHRzIHJlc2VydmVkLgo+ID4gICAqLwo+ID4gIAo+ID4gKyNpbmNsdWRlIDxsaW51eC9hY3BpLmg+
Cj4gPiAgI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgo+ID4gICNpbmNsdWRlIDxsaW51eC9vZi5o
Pgo+ID4gICNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPiA+IEBAIC0xMjc3LDYg
KzEyNzgsMTAgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBtc21fcGluZ3JvdXAgc2RtODQ1X2dyb3Vw
c1tdID0gewo+ID4gIAlVRlNfUkVTRVQodWZzX3Jlc2V0LCAweDk5ZjAwMCksCj4gPiAgfTsKPiA+
ICAKPiA+ICtzdGF0aWMgY29uc3QgaW50IHNkbTg0NV9hY3BpX3Jlc2VydmVkX2dwaW9zW10gPSB7
Cj4gPiArCTAsIDEsIDIsIDMsIDgxLCA4MiwgODMsIDg0LCAtMQo+ID4gK307Cj4gPiArCj4gPiAg
c3RhdGljIGNvbnN0IHN0cnVjdCBtc21fcGluY3RybF9zb2NfZGF0YSBzZG04NDVfcGluY3RybCA9
IHsKPiA+ICAJLnBpbnMgPSBzZG04NDVfcGlucywKPiA+ICAJLm5waW5zID0gQVJSQVlfU0laRShz
ZG04NDVfcGlucyksCj4gPiBAQCAtMTI4NCwxNCArMTI4OSw0MSBAQCBzdGF0aWMgY29uc3Qgc3Ry
dWN0IG1zbV9waW5jdHJsX3NvY19kYXRhIHNkbTg0NV9waW5jdHJsID0gewo+ID4gIAkubmZ1bmN0
aW9ucyA9IEFSUkFZX1NJWkUoc2RtODQ1X2Z1bmN0aW9ucyksCj4gPiAgCS5ncm91cHMgPSBzZG04
NDVfZ3JvdXBzLAo+ID4gIAkubmdyb3VwcyA9IEFSUkFZX1NJWkUoc2RtODQ1X2dyb3VwcyksCj4g
PiArCS5yZXNlcnZlZF9ncGlvcyA9IHNkbTg0NV9hY3BpX3Jlc2VydmVkX2dwaW9zLAo+IAo+IFRo
ZSByZWFzb24gd2h5IHB1dCB0aGVzZSBpbiBEVCBpcyBiZWNhdXNlIHRoZSBsaXN0IGlzIGJvYXJk
L2Zpcm13YXJlCj4gZGVwZW5kZW50LiBFLmcuIHRoZSBmaXJtd2FyZSBvbiBkYjg0NWMgZG9lcyBu
b3Qgc3VwcG9ydCB0aGUgcGVyaXBoZXJhbHMKPiB0aGF0IHNpdHMgb24gdGhlc2UgOCBwaW5zIGFu
ZCBhcyBzdWNoIHRoZXNlIGFyZSBub3QgcmVzZXJ2ZWQuCgpJZiB3ZSBuZWVkIHRvIGJlIG1vcmUg
cGFydGljdWxhciBhYm91dCB3aGljaCBwbGF0Zm9ybShzKSB0aGlzIGFmZmVjdHMsCndlIGNvdWxk
IGFkZCBtYXRjaGluZyBiYXNlZCBvbiB0aGVpciBkaWZmZXJlbmNlcyAoc29tZSBBQ1BJIEhJRCBv
ciBGL1cKdmVyc2lvbi9kZXNjcmlwdG9yLCBldGMpIGFzIGFuZCB3aGVuIHdlIGVuYWJsZSB0aGVt
IGZvciBib290aW5nIHdpdGgKQUNQSS4KCj4gQnV0IGdpdmVuIHRoYXQgdGhlIHR3byBzdHJ1Y3Rz
IGxvb2tzIGlkZW50aWNhbCBub3csIGRpZCB5b3UgcGVyaGFwcyBub3QKPiBpbnRlbmQgdG8gYWRk
LnJlc2VydmVkX2dwaW9zIGZvciB0aGUgbm9uLUFDUEkgY2FzZT8KCkdpdmVuIHlvdXIgZXhhbXBs
ZSBhYm92ZSwgSSB0aGluayBpdCdzIGJlc3QgdGhhdCB3ZSBsZXQgdGhlCmNvbmZpZ3VyYXRpb24g
dGFibGVzIGFkdmVydGlzZSB0aGVzZSBpbiB0aGUgZmlyc3QgaW5zdGFuY2UuICBJIG9ubHkKYWRk
IHRoZW0gaGVyZSBiZWNhdXNlIGl0IGlzIG5vdCBwb3NzaWJsZSB0byBvYnRhaW4gdGhlbSBmcm9t
CmVsc2V3aGVyZS4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRl
Y2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0g
U29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
