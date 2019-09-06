Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24205AB20C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 07:26:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:From:To:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B3w5TjyRfUdewm0Qm7lPJxrCUDyy1jEl+jXpTK56hnE=; b=IBCyJTiaKLRQSJ
	6RpGX3xXnXVKVMo07dG5Zj9WIOsdTF8bTk+g4dqzYcsluhLHehC/S2hDEyhCsk+OP5IM0F8QFEKx7
	0Hyww6Tsijlk1qLdS+bcqCWhc3hTg/rnHUXzhoKFRCjmqyUvPgVg8VMjk7wghl4zNkdR6z/2LH66t
	e7LJU2O+RF99oAerR9SsjhPdszwe7VroCAsTq1oe8HqcIDpLLU2c9F1h/7dygr3XLwM9msLq4+e7d
	i4vt9oaUwJfjERlE1RyZqq73VKGK5bVO7/1ujWSNY1n09A7L7l6RtmQkgRZ/JZLg/jsvD9HwaYADg
	WY51d48Eiyj6OzATIt8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i66lP-0003zN-2D; Fri, 06 Sep 2019 05:26:27 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i66lD-0003yz-L9
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 05:26:17 +0000
Received: by mail-pf1-x442.google.com with SMTP id x127so3562391pfb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 22:26:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:to:from:cc:subject:user-agent:date;
 bh=u7691phoxUxEdEhIJ0JOC7Ng9s9hyHBORKH2Von7rlk=;
 b=Z+TBVNB0VSXglybGnbmX3Xg7oWyQb0Uh3ZQmxpzhBQJojSoaGcCNhwffxCs/S7qP7Z
 X6MODDZ+h1RefxIKPN7IeBWDyWbLVcfMP6VSmijghP6yUKXYFwP6+dkTpAYxLGc2HY0f
 LkN0m2IL7Zss46jGMqiX2iCWNvRVay7S2XySo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:to:from:cc:subject
 :user-agent:date;
 bh=u7691phoxUxEdEhIJ0JOC7Ng9s9hyHBORKH2Von7rlk=;
 b=fiWT/ha3L9rCd7nqbMOm19PF6vznUefnknLbZ5yfywxlUQk5s8tMwOEsZQKt13jgH5
 PXPDGkeq+/vQ4kKjcDbPVtzCfhbMwCYZxH82plqDMmhCYsJlqntdrFdUiGsi2SIKqw87
 lt/C3GYLB+zviUdB25/j9xsH+SoNskdWAOhn/tRxwndzWo71ft3VE9nnpDMPfPlG+3cv
 FC0XGuD14yuKgfcdErcl8JsIbk18uapBAarsm1HOB0uQL/pgdOaXIdIdPHuZKOHnbUFc
 m7sRh2bvDn08R7FQOuu8xKD8CJOi+WfRjjtpNAG7Mg2TqzCj9JCqSz0eGpNEhuiXVJXF
 XwYg==
X-Gm-Message-State: APjAAAUaHJZrVwQ7rX9hjMx6pplx0vQUCKp7O7944glDZI0mUepv/mpy
 EayNH36gie3eHAPN5YZ8CQuusg==
X-Google-Smtp-Source: APXvYqxxS2afeG8bx+7q56JsZOG8CWSYjGmdaA830tTQVpcIVkrfr7pzwoEZ4jywfiS5HQVZln95xw==
X-Received: by 2002:a63:590f:: with SMTP id n15mr6506040pgb.190.1567747574583; 
 Thu, 05 Sep 2019 22:26:14 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id s186sm5936916pfb.126.2019.09.05.22.26.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Sep 2019 22:26:13 -0700 (PDT)
Message-ID: <5d71edf5.1c69fb81.1f307.fdd6@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <20190905175802.GA19599@jackp-linux.qualcomm.com>
References: <20190223165218.GB572@tuxbook-pro>
 <5d694878.1c69fb81.5f13b.ec4f@mx.google.com>
 <20190830164520.GK26807@tuxbook-pro>
 <5d696ad2.1c69fb81.977ea.39e5@mx.google.com>
 <f3584f38-dabc-7e7a-d1cb-84c80ed26215@linaro.org>
 <20190903173924.GB9754@jackp-linux.qualcomm.com>
 <5d6edee5.1c69fb81.a3896.1d05@mx.google.com>
 <20190903233410.GQ26807@tuxbook-pro>
 <c9481b7d-4805-25c6-f40f-9cbfc40afc93@linaro.org>
 <20190905175802.GA19599@jackp-linux.qualcomm.com>
To: Jack Pham <jackp@codeaurora.org>,
 Jorge Ramirez <jorge.ramirez-ortiz@linaro.org>
From: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH v4 3/4] dt-bindings: Add Qualcomm USB SuperSpeed PHY
 bindings
User-Agent: alot/0.8.1
Date: Thu, 05 Sep 2019 22:26:12 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_222615_720364_67371B3C 
X-CRM114-Status: GOOD (  21.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, robh@kernel.org, kishon@ti.com,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 khasim.mohammed@linaro.org, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, andy.gross@linaro.org, shawn.guo@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UXVvdGluZyBKYWNrIFBoYW0gKDIwMTktMDktMDUgMTA6NTg6MDIpCj4gSGkgSm9yZ2UsIEJqb3Ju
LAo+IAo+IE9uIFRodSwgU2VwIDA1LCAyMDE5IGF0IDA5OjE4OjU3QU0gKzAyMDAsIEpvcmdlIFJh
bWlyZXogd3JvdGU6Cj4gPiBPbiA5LzQvMTkgMDE6MzQsIEJqb3JuIEFuZGVyc3NvbiB3cm90ZToK
PiA+ID4gT24gVHVlIDAzIFNlcCAxNDo0NSBQRFQgMjAxOSwgU3RlcGhlbiBCb3lkIHdyb3RlOgo+
ID4gPj4gdGhhdCB3b3VsZCBuZWVkIGFuIG9mX3JlZ3VsYXRvcl9nZXQoKSBzb3J0IG9mIEFQSSB0
aGF0IGNhbiBnZXQgdGhlCj4gPiA+PiByZWd1bGF0b3Igb3V0IG9mIHRoZXJlPyBPciB0byBtYWtl
IHRoZSBjb25uZWN0b3IgaW50byBhIHN0cnVjdCBkZXZpY2UKPiA+ID4+IHRoYXQgY2FuIGdldCB0
aGUgcmVndWxhdG9yIG91dCBwZXIgc29tZSBnZW5lcmljIGNvbm5lY3RvciBkcml2ZXIgYW5kCj4g
PiA+PiB0aGVuIHBhc3MgaXQgdGhyb3VnaCB0byB0aGUgVVNCIGNvbnRyb2xsZXIgd2hlbiBpdCBh
c2tzIGZvciBpdC4gTWF5YmUKPiA+ID4+IHRyeSB0byBwcm90b3R5cGUgdGhhdCBvdXQ/Cj4gPiA+
Pgo+ID4gPiAKPiA+ID4gVGhlIGV4YW1wbGVzIGdpdmVuIGluIHRoZSBEVCBiaW5kaW5ncyBkZXNj
cmliZXMgdGhlIGNvbm5lY3RvciBhcyBhIGNoaWxkCj4gPiA+IG9mIGEgUE1JQywgd2l0aCBvZl9n
cmFwaCBzb21laG93IHR5aW5nIGl0IHRvIHRoZSB2YXJpb3VzIGlucHV0cy4gQnV0IGluCj4gPiA+
IHRoZXNlIGV4YW1wbGVzIHZidXMgaXMgaGFuZGxlZCBieSBpbXBsaWNpdGx5IGluc2lkZSB0aGUg
TUZELCB3aGVyZQo+ID4gPiBleHRjb24gaXMgaW5mb3JtZWQgYWJvdXQgdGhlIHBsdWcgZXZlbnQg
dGhleSB0b2dnbGUgdmJ1cyBhcyB3ZWxsLgo+ID4gPiAKPiA+ID4gSW4gb3VyIGNhc2Ugd2UgaGF2
ZSBhIGV4dGNvbi11c2ItZ3BpbyB0byBkZXRlY3QgbW9kZSwgd2hpY2ggcGVyIEpvcmdlJ3MKPiA+
ID4gcHJvcG9zYWwgd2lsbCB0cmlja2xlIGRvd24gdG8gdGhlIFBIWSBhbmQgYmVjb21lIGEgcmVn
dWxhdG9yIGNhbGxzIG9uCj4gPiA+IGVpdGhlciBzb21lIGV4dGVybmFsIHJlZ3VsYXRvciBvciBt
b3JlIHR5cGljYWxseSBvbmUgb2YgdGhlIGNoYXJnZXJzIGluCj4gPiA+IHRoZSBzeXN0ZW0uCj4g
Cj4gSW50ZXJlc3RpbmcgeW91IG1lbnRpb24gZXh0Y29uLXVzYi1ncGlvLiBJIHRob3VnaHQgZXh0
Y29uIGF0IGxlYXN0IGZyb20KPiBiaW5kaW5ncyBwZXJzcGVjdGl2ZSBpcyBwYXNzw4PCqSBub3cu
IE1heWJlIHRoaXMgaXMgd2hhdCB5b3UgbmVlZCAoanVzdAo+IGxhbmRlZCBpbiB1c2ItbmV4dCk6
Cj4gCj4gdXNiOiBjb21tb246IGFkZCBVU0IgR1BJTyBiYXNlZCBjb25uZWN0aW9uIGRldGVjdGlv
biBkcml2ZXIKPiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dp
dC9ncmVna2gvdXNiLmdpdC9jb21taXQvP2g9dXNiLW5leHQmaWQ9NDYwMmYzYmZmMjY2OTAxMmMx
MTQ3ZWVjZmU3NGMxMjE3NjVmNWM1Ngo+IAo+IGR0LWJpbmRpbmdzOiB1c2I6IGFkZCBiaW5kaW5n
IGZvciBVU0IgR1BJTyBiYXNlZCBjb25uZWN0aW9uIGRldGVjdGlvbiBkcml2ZXIKPiBodHRwczov
L2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9ncmVna2gvdXNiLmdpdC9j
b21taXQvP2g9dXNiLW5leHQmaWQ9ZjY1MWM3M2U3MWY1M2Y2NWU5ODQ2Njc3ZDc5ZDhlMTIwNDUy
YjU5Zgo+IAo+IEZvcnR1bmF0ZWx5IHRoaXMgbmV3IGRyaXZlciBtaWdodCBjaGVjayB0aGUgcmln
aHQgYm94ZXMgZm9yIHlvdToKPiAtIHVzYiBjb25uZWN0b3IgYmluZGluZwo+IC0gSUQgZGV0ZWN0
IEdQSU8KPiAtIHZidXMtc3VwcGx5IHJlZ3VsYXRvcgo+IAo+IFdpdGggdGhhdCwgSSB0aGluayB5
b3UgY2FuIGFsc28ga2VlcCB0aGUgY29ubmVjdG9yIHN1Ym5vZGUgb3V0IG9mIHRoZQo+IFNTUEhZ
IG5vZGUgd2VsbCwgYW5kIHNpbWlsYXJseSBnZXQgcmlkIG9mIHRoZSB2YnVzIHRvZ2dsZSBoYW5k
bGluZyBmcm9tCj4gdGhlIFBIWSBkcml2ZXIuCj4gCj4gVGhlIGJpZyB0aGluZyBtaXNzaW5nIG5v
dyBpcyB0aGF0IHRoaXMgZHJpdmVyIHJlcGxhY2VzIGV4dGNvbgo+IGNvbXBsZXRlbHksIHNvIHdl
J2xsIG5lZWQgaGFuZGxpbmcgaW4gZHdjMy9kd2MzLXFjb20gdG8gcmV0cmlldmUgdGhlCj4gcm9s
ZSBzd2l0Y2ggc3RhdGUgdG8ga25vdyB3aGVuIGhvc3QgbW9kZSBpcyBlbnRlcmVkLiBJIHNhdyB0
aGlzIGEgd2hpbGUKPiBiYWNrIGJ1dCBkb24ndCB0aGluayBpdCBnb3QgcGlja2VkIHVwOgo+IAo+
IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTA5MDk5ODEvCj4gCgpZZXMgdGhp
cyBsb29rcyBsaWtlIHRoZSBhcHByb2FjaCB0aGF0IHNob3VsZCBiZSB0YWtlbi4gT25lIHF1ZXN0
aW9uCnRob3VnaCwgaXMgdGhpcyBhIG1pY3JvLWIgY29ubmVjdG9yIG9yIGEgdHlwZS1jIGNvbm5l
Y3RvciBvbiB0aGUgYm9hcmQ/CkkgdGhvdWdodCBpdCB3YXMgYSB0eXBlLWMsIHNvIHRoZW4gdGhp
cyBVU0IgZ3BpbyBiYXNlZCBjb25uZWN0aW9uIGRyaXZlcgppc24ndCBhbiBleGFjdCBmaXQ/CgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
