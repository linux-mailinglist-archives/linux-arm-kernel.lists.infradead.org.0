Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E79FD1FBDDF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 20:21:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EyuVEPpjfrsiFklnYiAGXpBrY08AH3OVf40kryTNhuI=; b=trSOWLYgZDRU2S
	fDBSTtVSCxSMezq+bxbhbkEXjWuP3m8lvPlZYIENecQlj14P4kTul6BB24BftqrBZQWMjNf+BsrHg
	jlYkjlH+q1krxk0QKWh2ZSxQBaS0fdOoZ63KAx0Ri8F0AZr+hDpMyJcEkhQRdSfJJyEdXVRwq7ReN
	bBULHnY+sdMNuNqK8k0zbltQn6OKYPpHqVLgRnMa3o3+WIEJ3ozJPDV4GxeQQSksWEHbkFJ488SsV
	UuukMCZrvUebmnT3XzcQQ35d+jE3A/1F0uJAuLU+ERWD8fD3MDcbHZ/TSn3zyt2ZHD1XwnYLYVYsd
	KIIquuELP8tN4dNji+XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlGCy-0000pV-JK; Tue, 16 Jun 2020 18:21:16 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlGCq-0000od-5X
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 18:21:10 +0000
Received: by mail-pg1-x541.google.com with SMTP id l24so1005533pgb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 11:21:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=g7lLlvEoTvgmLjDaNGJohAzTK6L4QW2JMDxy1R2U07I=;
 b=k1C+nc35mNiDzLc/LR34YvTox6ks1agGzn3W6Mj5a+xMvsZRhmcQVBKTdMXEwY9isp
 Oq7x2OsRGhqzGg3aCF+C6fKTs+1TI8y9CRFzM9KECTe2gf/+GJnh2VS4D7z1qxqgpnE4
 0NgwtMTMmNI/+LaX7OKJkBdV2QQlobyMvxcleQoPivBhGIvxGAt6/FaU2GWUPQou2yHn
 iGmDg7/cvoq893LJDlgdy/t60Gu3Bb4t7xNW6uKi3ODg2ArtvjIr33HmKZA7rQohZmpd
 P5rdPOB8ooD52gH24Z8Tl8O/PE7GNjdTQslApgkPPltBDVNgqkmyGAgkLn84IbbvI6Qr
 Y/3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=g7lLlvEoTvgmLjDaNGJohAzTK6L4QW2JMDxy1R2U07I=;
 b=ffCsM1ewmP98YqFzvLTAdmRkdvOHRWW+zAKu7s1niM0T6w8t6OOf3jk7NlfpolzeaX
 LoD2gsVmDq5Q1kKBq6NU7tqv2P3zgzXPUUfx2dcFOBoHnvPqpWhWXjBATM15xeYg90s4
 zUi9RYNLptyAYbAzhmESSqtVJI+RAUduieDDEcvueSYpbKdnbqncVRRZ7/LPYJFwUfvV
 KmO3zihc0dpa8Jp+nU+oSvyBBDkRhTgxVLBLC8nhdWiGyQ4KcVJ0BnDi/ddOKXAirakH
 ChBGElkRiT9KWrG87jphkNLf7szUG9N8ZLdO0ehEOwrtrfiO0zj2elybbS9xm8jhoGZ6
 D/2Q==
X-Gm-Message-State: AOAM533O3v3AmTqkkEFPtX1XsgTB2v19QFmW6yeTSF3nPR4SSYNCu5qe
 jFOnfXNjUbmo6KTXeJn2ZwvcqyGF
X-Google-Smtp-Source: ABdhPJwmv2dcMN86tGUhvu18FNgfqKb/uMjls5HdgtO6rxzlCQDlrniJZ7XxJTydspog+2ArpjAXkg==
X-Received: by 2002:a62:4e91:: with SMTP id c139mr3347199pfb.18.1592331666423; 
 Tue, 16 Jun 2020 11:21:06 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id c9sm18385998pfr.72.2020.06.16.11.21.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 Jun 2020 11:21:05 -0700 (PDT)
Subject: Re: [PATCH 1/2] dt-bindings: phy: add bcm63xx-usbh bindings
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>
References: <20200616083408.3426435-1-noltari@gmail.com>
 <20200616083408.3426435-2-noltari@gmail.com>
 <2cc00ff1-f411-1c2d-d2ce-4cc0bfc2ccb5@gmail.com>
 <7E21D795-8D20-4EB1-9758-D2B5BD389F1F@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <e011e0f4-d503-e9fe-8615-69678dd9bdca@gmail.com>
Date: Tue, 16 Jun 2020 11:21:03 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <7E21D795-8D20-4EB1-9758-D2B5BD389F1F@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_112108_209586_BCE3F0AA 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, gregkh@linuxfoundation.org, simon@fire.lp0.eu,
 alcooperx@gmail.com, linux-kernel@vger.kernel.org, krzk@kernel.org,
 kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Philipp Zabel <p.zabel@pengutronix.de>,
 Jonas Gorski <jonas.gorski@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA2LzE2LzIwMjAgMTE6MTAgQU0sIMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyB3cm90ZToK
PiBIZWxsbyBGbG9yaWFuLAo+IAo+PiBFbCAxNiBqdW4gMjAyMCwgYSBsYXMgMTk6MTcsIEZsb3Jp
YW4gRmFpbmVsbGkgPGYuZmFpbmVsbGlAZ21haWwuY29tPiBlc2NyaWJpw7M6Cj4+Cj4+Cj4+Cj4+
IE9uIDYvMTYvMjAyMCAxOjM0IEFNLCDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgd3JvdGU6Cj4+
PiBEb2N1bWVudCBCQ002M3h4IFVTQkggUEhZIGJpbmRpbmdzLgo+Pj4KPj4+IFNpZ25lZC1vZmYt
Ynk6IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+Cj4+PiAtLS0K
Pj4+IC4uLi9iaW5kaW5ncy9waHkvYnJjbSxiY202M3h4LXVzYmgtcGh5LnlhbWwgICB8IDcyICsr
KysrKysrKysrKysrKysrKysKPj4+IDEgZmlsZSBjaGFuZ2VkLCA3MiBpbnNlcnRpb25zKCspCj4+
PiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bo
eS9icmNtLGJjbTYzeHgtdXNiaC1waHkueWFtbAo+Pj4KPj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2JyY20sYmNtNjN4eC11c2JoLXBoeS55YW1s
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9icmNtLGJjbTYzeHgtdXNi
aC1waHkueWFtbAo+Pj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPj4+IGluZGV4IDAwMDAwMDAwMDAw
MC4uM2U3Yzk3Nzk5YjkxCj4+PiAtLS0gL2Rldi9udWxsCj4+PiArKysgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2JyY20sYmNtNjN4eC11c2JoLXBoeS55YW1sCj4+PiBA
QCAtMCwwICsxLDcyIEBACj4+PiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAg
T1IgQlNELTItQ2xhdXNlKQo+Pj4gKyVZQU1MIDEuMgo+Pj4gKy0tLQo+Pj4gKyRpZDogImh0dHA6
Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3BoeS9icmNtLGJjbTYzeHgtdXNiaC1waHkueWFtbCMi
Cj4+PiArJHNjaGVtYTogImh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55
YW1sIyIKPj4+ICsKPj4+ICt0aXRsZTogQkNNNjN4eCBVU0JIIFBIWQo+Pj4gKwo+Pj4gK21haW50
YWluZXJzOgo+Pj4gKyAgLSDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgPG5vbHRhcmlAZ21haWwu
Y29tPgo+Pj4gKwo+Pj4gK3Byb3BlcnRpZXM6Cj4+PiArICBjb21wYXRpYmxlOgo+Pj4gKyAgICBl
bnVtOgo+Pj4gKyAgICAgIC0gYnJjbSxiY202MzE4LXVzYmgtcGh5Cj4+PiArICAgICAgLSBicmNt
LGJjbTYzMjgtdXNiaC1waHkKPj4+ICsgICAgICAtIGJyY20sYmNtNjM1OC11c2JoLXBoeQo+Pj4g
KyAgICAgIC0gYnJjbSxiY202MzYyLXVzYmgtcGh5Cj4+PiArICAgICAgLSBicmNtLGJjbTYzNjgt
dXNiaC1waHkKPj4+ICsgICAgICAtIGJyY20sYmNtNjMyNjgtdXNiaC1waHkKPj4+ICsKPj4+ICsg
IHJlZzoKPj4+ICsgICAgbWF4SXRlbXM6IDEKPj4+ICsKPj4+ICsgIGNsb2NrczoKPj4+ICsgICAg
bWF4SXRlbXM6IDIKPj4+ICsKPj4+ICsgIGNsb2NrLW5hbWVzOgo+Pj4gKyAgICBpdGVtczoKPj4+
ICsgICAgICAtIGNvbnN0OiB1c2JoCj4+PiArICAgICAgLSBjb25zdDogdXNiX3JlZgo+Pj4gKwo+
Pj4gKyAgcmVzZXRzOgo+Pj4gKyAgICBtYXhJdGVtczogMQo+Pj4gKwo+Pj4gKyAgIiNwaHktY2Vs
bHMiOgo+Pj4gKyAgICBjb25zdDogMAo+Pgo+PiBPbiA2MzI4LCB0aGUgc2FtZSByZWdpc3RlciBz
cGFjZSBhbGxvd3MgdGhlIGNvbnRyb2xsaW5nIG9mIHRoZSBVU0IgUEhZCj4+IGluIGVpdGhlciBo
b3N0IG9yIGRldmljZSBtb2RlLCBzbyBJIGJlbGlldmUgeW91IHdvdWxkIG5lZWQgdG8gYWRkIGEK
Pj4gI3BoeS1jZWxscyA9IDEgaW4gb3JkZXIgdG8gZGlzdGluZ3Vpc2ggdGhlIGNvbnN1bWVyICho
b3N0IHZlcnN1cyBkZXZpY2UpCj4+IGlmIHdlIGdldCB0byB0aGUgcG9pbnQgd2hlcmUgZHJpdmVy
cy91c2IvZ2FkZ2V0L3VkYy9iY202M3h4X3VkYy5jCj4+IGJlY29tZXMgRFQgYXdhcmUuCj4gCj4g
SeKAmW0gbm90IHJlYWxseSBzdXJlIGFib3V0IGhvdyBJIHNob3VsZCBkbyB0aGlzIGJlY2F1c2Ug
dGhlcmXigJlzIG5vIGRlZmluaXRpb24gZm9yIGRldmljZSBwaHkgbW9kZSBpbiBkdC1iaW5kaW5n
cy9waHkvcGh5Lmg6Cj4gaHR0cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2Jsb2IvbWFz
dGVyL2luY2x1ZGUvZHQtYmluZGluZ3MvcGh5L3BoeS5oI0wxMwo+IAo+IFdoaWNoIHZhbHVlIHNo
b3VsZCBJIHVzZSBmb3IgZGV2aWNlIG1vZGUgYW5kIHdoaWNoIG9uZSBmb3IgaG9zdD8KCjAgZm9y
IHRoZSBob3N0LCB3aGljaCB3b3VsZCBiZSBlcXVpdmFsZW50IHRvIG5vdCBzcGVjaWZ5aW5nIHRo
ZQpwcm9wZXJ0eSwgYW5kIDEgZm9yIHRoZSBkZXZpY2UuCgo+IFNob3VsZCBJIHN1cHBvcnQgYm90
aCBtb2RlcyBhdCB0aGUgc2FtZSB0aW1lIG9yIGFyZSB0aGV5IGV4Y2x1c2l2ZT8KClRoaXMgaXMg
YW4gT1RHIGNvbnRyb2xsZXIgc28geW91IG5lZWQgdG8gYmUgYWJsZSB0byBkeW5hbWljYWxseQpy
ZS1jb25maWd1cmUgdGhlIFBIWSB0byBiZSBpbiBlaXRoZXIgZGV2aWNlIG9yIGhvc3QgbW9kZSAo
c2VlIGNvbW1lbnQKYWJvdXQgYmNtNjN4eF9zZWxlY3RfcGh5X21vZGUpLCBidXQgdGhlcmUgd291
bGQgbm90IGJlIGJvdGggYXQgdGhlIHNhbWUKdGltZS4KLS0gCkZsb3JpYW4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
