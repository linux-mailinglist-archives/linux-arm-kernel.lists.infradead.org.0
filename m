Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E3E01FD768
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 23:36:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Um7Cgd5LUWV5uxP3jADCAYC3MQ1wixf0X+UcQcPDmd0=; b=ACygytXwWfI61R
	hq/hFVmoSo3/25UveJspR/l1cu5zzlhmfs95DmNht/bjOWxKqL9Zk1E84+w6weP0Psq0lWPH7U6+0
	ihc6G3E0RBWsuPaacPV4/5r9Xw+WOkVtMpqUyKNyc0h/5K+gGsAaXrUjoLbkLF1Wfb5qn/W5cIUx1
	wgBtUwPsK2Ts36LxEjNMYLRXxG0o2xv7Hw4lh9Z3ljuNC/kph2FoYRzb9kxUBfdolL2swPqNhut8+
	pF5wpglqJ7gPQcE4ov9T2jiYDeazDlClwh02MGGW/tcta1LYjaIs02+sB7Mcr3sIQgL6OlcuPxGCt
	67JUn0v8SYnFhR434J3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlfj8-0002fw-1F; Wed, 17 Jun 2020 21:36:11 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlfiz-0002fU-AX
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 21:36:02 +0000
Received: by mail-pl1-x641.google.com with SMTP id 35so1549468ple.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 14:36:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=byMpenmEXb5a4s4WAANKsP7CLHm8UjXMOFTysLJaeCQ=;
 b=U2sAFd8udhnyEe0FRgvauCJ3bAkQ8+OyWASvnhTwMaLGMlzEDa89g7bpUwoR3G8qU3
 JfvQkfAXmxetbQbwJpAWucSSf8KGFQ5K5/8cRjGE/y+oORL5+lKdXoDAVfgFYwxknha6
 NnjweLXlncqNH9Nb5wYJdB55dodqqFhowF/Y9qrrxNeexowfpZrc2vW8EKtXjEqMbbWU
 Uzl4j9tJJhem04+ZH3NitCK0nJcRNgQ4ejVmpAozAj7kmaQzIWz2lQQnbaE/gaSzF3iG
 ERbuBczyyc9KdRS6uX5iZMotg6O22mzDhU5+6e+tOqiGwi21OjP4l6IjXLlkH/bz0CGz
 Pd6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=byMpenmEXb5a4s4WAANKsP7CLHm8UjXMOFTysLJaeCQ=;
 b=pVnqggGXOdVV8ZC84Z1F8cgEcsFRF3sH84Ov9Ep6+NU3s3gA5/vGvj82eLidFwdZfH
 U/ky6BHzRvAj35v8s+H45ztd4y5kTe/4uXf1MUuoTS/FmzYj81F/NiGAsTJwBXeaul+H
 UA1fS8mE6EoVR5bHA4ZsrdZ9VCKeceuSDANeWmDfV/xQIw7NZnHUbyD3EVEWg85oL+qV
 vxDQhyM+ee0oNYo+/ubtzWrAH+WfUF0kFYYjGL7oCXySInkUFr9yAmG4besc9EnIAGhI
 OS7P67Fu60fo151wWyn1PfV44zbzGoixzlsP8Wx+YlTLlG6B9pUXliir3VYCEXMyvFeU
 GRwg==
X-Gm-Message-State: AOAM531TBrp6J4trFLhwliyB2KtzLmb24upcjsiwb2arIsZ2rhmpNRIF
 osF1W56dfhKE3f5WpSoJKbb4Kx5m
X-Google-Smtp-Source: ABdhPJycPAHh4Oq7/Vgn/6SEn6o9Wwjc8tdJk9NSQcvuEwtVl1vUo4Fjs5jWBqHQ7jPSzJnrvHBAqg==
X-Received: by 2002:a17:90a:778c:: with SMTP id
 v12mr1037637pjk.34.1592429760254; 
 Wed, 17 Jun 2020 14:36:00 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id n4sm774980pfq.9.2020.06.17.14.35.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Jun 2020 14:35:59 -0700 (PDT)
Subject: Re: [PATCH 1/2] dt-bindings: phy: add bcm63xx-usbh bindings
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>
References: <20200616083408.3426435-1-noltari@gmail.com>
 <20200616083408.3426435-2-noltari@gmail.com>
 <2cc00ff1-f411-1c2d-d2ce-4cc0bfc2ccb5@gmail.com>
 <F5FC8442-319A-48A7-BEEA-92C0EADE6BDA@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <d289fb29-3491-080c-0615-b956e5c37f3e@gmail.com>
Date: Wed, 17 Jun 2020 14:35:57 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <F5FC8442-319A-48A7-BEEA-92C0EADE6BDA@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_143601_379529_5A46AED8 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, gregkh@linuxfoundation.org, alcooperx@gmail.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, kishon@ti.com, vkoul@kernel.org,
 robh+dt@kernel.org, bcm-kernel-feedback-list@broadcom.com,
 p.zabel@pengutronix.de, Jonas Gorski <jonas.gorski@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA2LzE3LzIwMjAgNDoxNiBBTSwgw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIHdyb3RlOgo+
PiBPbiA2MzI4LCB0aGUgc2FtZSByZWdpc3RlciBzcGFjZSBhbGxvd3MgdGhlIGNvbnRyb2xsaW5n
IG9mIHRoZSBVU0IgUEhZCj4+IGluIGVpdGhlciBob3N0IG9yIGRldmljZSBtb2RlLCBzbyBJIGJl
bGlldmUgeW91IHdvdWxkIG5lZWQgdG8gYWRkIGEKPj4gI3BoeS1jZWxscyA9IDEgaW4gb3JkZXIg
dG8gZGlzdGluZ3Vpc2ggdGhlIGNvbnN1bWVyIChob3N0IHZlcnN1cyBkZXZpY2UpCj4+IGlmIHdl
IGdldCB0byB0aGUgcG9pbnQgd2hlcmUgZHJpdmVycy91c2IvZ2FkZ2V0L3VkYy9iY202M3h4X3Vk
Yy5jCj4+IGJlY29tZXMgRFQgYXdhcmUuCj4gCj4gSeKAmXZlIGp1c3QgcmVhbGl6ZWQgdGhhdCBJ
IGhhdmUgaW1wbGVtZW50ZWQgdGhpcyB3cm9uZyBpbiB2MywgYmVjYXVzZSBJIGltcGxlbWVudGVk
IHRoZSBTd2FwQ29udHJvbCBVU0JfREVWSUNFX1NFTCB2YWx1ZSwgYW5kIHlvdSBtZWFudCB0aGUg
VVRNSUNvbnRyb2wxIFVTQl9ERVZJQ0VfTU9ERV9TRUwgdmFsdWUuCgpSaWdodCB0aGF0IGlzIHRo
ZSByZWdpc3RlciBJIHdhcyByZWZlcnJpbmcgdG8uCgo+IFNvIEkgaGF2ZSBhIGNvdXBsZSBvZiBx
dWVzdGlvbnMgYWJvdXQgdGhpcywgYmVjYXVzZSBJIGhhdmVu4oCZdCBnb3QgYW55IGJjbTYzeHgg
d2l0aCB1c2IgZGV2aWNlIGNvbmZpZ3VyYXRpb24gdG8gdGVzdDoKPiAtIElzIFVTQl9ERVZJQ0Vf
U0VMIGFsc28gbmVlZGVkIGluIFN3YXBDb250cm9sIG9yIGRvIHdlIG9ubHkgbmVlZCBVU0JfREVW
SUNFX01PREVfU0VMIGluIFVUTUlDb250cm9sMT8KCkl0IGxvb2tzIGxpa2UgaXQgZGVwZW5kcyBv
biB0aGUgZGV2aWNlLCBmb3IgNjMxOCBhbmQgNjMyNjgsIHRoZXJlIGlzClVTQl9ERVZJQ0VfTU9E
RV9TRUwgZGVmaW5lZCwgYnV0IG5vdCBmb3IgNjMyOCwgNjM2MiBvciA2MzY4IGZvcgppbnN0YW5j
ZS4gTm90ZSB0aGF0IFVTQl9ERVZJQ0VfTU9ERV9TRUwgaXMgcmVsZXZhbnQgZm9yIHBvcnQgMiBv
bmx5IGZvcgo2MzE4IGFuZCA2MzI2OCB3aGVyZWFzIHRoZSBVVE1JX0NPTlRST0wxIGFwcGVhcnMg
dG8gYmUgZm9yIGFueSBwb3J0LgoKPiAtIEFyZSB0aGUgcmVzdCBvZiB0aGUgaG9zdCB2YWx1ZXMg
bmVlZGVkIHdoZW4gY29uZmlndXJlZCBpbiBkZXZpY2UgbW9kZT8gU2hvdWxkIEkgb25seSBzZXQg
dGhlIGRldmljZSB2YWx1ZXMgd2hlbiBpbiBkZXZpY2UgbW9kZT8KClRoZXkgY291bGQgcHJvYmFi
bHkgYmUgY29uZmlndXJlZCBhbHRob3VnaCBJIGFtIG5vdCBzdXJlIHRoZXkgc3VyZSB0aGV5Cndp
bGwgYmUgdXNlZCBhdCBhbGwsIGl0J3MgYmVlbiBhIHdoaWxlIHNpbmNlIEkgbG9va2VkIGF0IHRo
aXMgKG92ZXIgOAp5ZWFycykuCgpJIGRvbid0IGtub3cgaWYgeW91IGhhdmUgYW55IGJvYXJkIHdp
dGggVVNCIGRldmljZSBtb2RlIGNhcGFiaWxpdHksIGlmCnlvdSBkbyBub3QgcGxlYXNlIGVtYWls
IHByaXZhdGVseSBhbmQgSSB3aWxsIHNoaXAgeW91IG9uZS4KLS0gCkZsb3JpYW4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
