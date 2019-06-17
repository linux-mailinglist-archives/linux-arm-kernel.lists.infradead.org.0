Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF72482C8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 14:43:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5A6aKgHHvJpZC243hKM1EMeFw0g+XwRZEkZHUHRjStU=; b=WfmEiUnMkxIlOG
	uxy/K1+WeJJBTH+5rW40d+w2kfuhIiY4g0EY0UbSscXMtEcE5AbkMTUVSyM71r25kLCWG69vsGPwU
	ql6J3FwFylRRiB8hJUsOE6VPzYaDf4zP6Fb1thtE1fVw0U2gyhXjM59QtkALpjcyB6u49koj3BS9R
	MyJG4BS21/gdxOGlXDUdyZKdq4cHOQde+atQvfZD6VPaCxCuovRxJ+0+dJWpSgSOOUjeGxsfNKiBE
	wq5D6pmtJbvxVDrHi4R0T/SordIfBP1qku8q+KxcRU84UEIEEDIm9tkp2TDbbiaFfxalU9Tr3QoQX
	aPL4k6vhZjVhhmgSYK1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcqzD-0008Qa-Go; Mon, 17 Jun 2019 12:43:47 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcqyz-0008QG-GT
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 12:43:34 +0000
Received: by mail-wr1-x443.google.com with SMTP id n4so9761109wrw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 05:43:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=P1JMAByiWsBIg2xS0Ru/2Rbjg5esxyIW8/0UKnvDABY=;
 b=MH+0Kzd+kVWwz79we3RH983ZGAz63gBz5WxY42gnp/UadfYh8co7ER48PeppvVxr8i
 aTcFTMIPaDdj0f1quEEJ4Uc7qMcs4sQBqS4PX5qu8OpmujM3ApsphVPrWUyo9h6QEaGX
 Y4UZLKuTynl6MgSCq9vMJ8C65pXhCk80cvevh4ObOBte/XQgo8Idw5fuQOldKJaQgLA/
 +VKhR5Hfuoie8hc/jjjTcOzWZj+RkyO3RxpHwvSd6ship6DFhwuDZUWyWemuWb9b2OIx
 fzfImRvVf0PgBinXiPy7/56FENKvbx36FxloJ4CdfhT0PiPNh4Q8DwkeZSZdDEN5Sa/f
 /OaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=P1JMAByiWsBIg2xS0Ru/2Rbjg5esxyIW8/0UKnvDABY=;
 b=chWXW7OpqKoPaS81Ja8P/VycvAh2g5fLzEhoneqMpKHAI7T3XGmX8ocpiQnOb58FgH
 5awjWJCSwJ5Dqo+A6zymEK1ZIlZGhD3YDuOZutIMj7bQm6gPh/EGX5AigRKLh274Ydqd
 /uUXnpQguQOrNW0YFVhtNfVgmB7HdHBeHaguqSmj1MyoQV+KrhM4b6shadqWfn9RkSQz
 wXQidIIOlPhIz0clpCTg1u1YXH7cqkKHsmV1yv5Og++A2X4dTfmkjTI4xciqB5T47FEQ
 G9bTLtDtaTKgOl/GtCaCmCya5yhBnAhUw9YoZD87UFLHi15vdo2nSDFssYudNoxTO6s4
 7u8Q==
X-Gm-Message-State: APjAAAX16K2xoG1S9ZMtXO3ZUhyK1Cd1XYT6v7/emFTe91lZIWiwz3bU
 7lhx1ExEssPVNLfGk/kVXLmjZg==
X-Google-Smtp-Source: APXvYqyn8N255V7KB12USAc2GJalrZIuvz2ngM6htxvx9fwGULNgykz/ROyo0tyK26aQzp/GOuXRtg==
X-Received: by 2002:adf:eacd:: with SMTP id o13mr4444853wrn.91.1560775412007; 
 Mon, 17 Jun 2019 05:43:32 -0700 (PDT)
Received: from dell ([2.27.35.243])
 by smtp.gmail.com with ESMTPSA id y184sm9777350wmg.14.2019.06.17.05.43.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 17 Jun 2019 05:43:31 -0700 (PDT)
Date: Mon, 17 Jun 2019 13:43:29 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Felipe Balbi <balbi@kernel.org>
Subject: Re: [PATCH v4 4/6] usb: dwc3: qcom: Add support for booting with ACPI
Message-ID: <20190617124329.GH16364@dell>
References: <20190612142654.9639-1-lee.jones@linaro.org>
 <20190612142654.9639-5-lee.jones@linaro.org>
 <20190617102146.GG16364@dell> <87y320gzp4.fsf@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87y320gzp4.fsf@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_054333_555363_779BBCE2 
X-CRM114-Status: GOOD (  19.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 wsa+renesas@sang-engineering.com, gregkh@linuxfoundation.org,
 linux-gpio@vger.kernel.org, ard.biesheuvel@linaro.org, agross@kernel.org,
 bjorn.andersson@linaro.org, david.brown@linaro.org, alokc@codeaurora.org,
 linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, jlhugo@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAxNyBKdW4gMjAxOSwgRmVsaXBlIEJhbGJpIHdyb3RlOgoKPiBIaSwKPiAKPiBMZWUg
Sm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPiB3cml0ZXM6Cj4gPj4gSW4gTGludXgsIHRoZSBE
V0MzIGNvcmUgZXhpc3RzIGFzIGl0cyBvd24gaW5kZXBlbmRlbnQgcGxhdGZvcm0gZGV2aWNlLgo+
ID4+IFRodXMgd2hlbiBkZXNjcmliaW5nIHJlbGF0aW9uc2hpcHMgaW4gRGV2aWNlIFRyZWUsIHRo
ZSBjdXJyZW50IGRlZmF1bHQKPiA+PiBib290IGNvbmZpZ3VyYXRpb24gdGFibGUgb3B0aW9uLCB0
aGUgRFdDMyBjb3JlIG9mdGVuIHJlc2lkZXMgYXMgYSBjaGlsZAo+ID4+IG9mIHRoZSBwbGF0Zm9y
bSBzcGVjaWZpYyBub2RlLiAgQm90aCBvZiB3aGljaCBhcmUgZ2l2ZW4gdGhlaXIgb3duCj4gPj4g
YWRkcmVzcyBzcGFjZSBkZXNjcmlwdGlvbnMgYW5kIHRoZSBkcml2ZXJzIGNhbiBiZSBtb3N0bHkg
YWdub3N0aWMgdG8KPiA+PiBlYWNoIG90aGVyLgo+ID4+IAo+ID4+IEhvd2V2ZXIsIG90aGVyIE9w
ZXJhdGluZyBTeXN0ZW1zIGhhdmUgdGFrZW4gYSBtb3JlIG1vbm9saXRoaWMgYXBwcm9hY2gsCj4g
Pj4gd2hpY2ggaXMgZXZpZGVudCBpbiB0aGUgY29uZmlndXJhdGlvbiBBQ1BJIHRhYmxlcyBmb3Ig
dGhlIFF1YWxjb21tCj4gPj4gU25hcGRyYWdvbiBTRE04NTAsIHdoZXJlIGFsbCBEV0MzIChjb3Jl
IGFuZCBwbGF0Zm9ybSkgY29tcG9uZW50cyBhcmUKPiA+PiBkZXNjcmliZWQgdW5kZXIgYSBzaW5n
bGUgSU8gbWVtb3J5IHJlZ2lvbi4KPiA+PiAKPiA+PiBUbyBlbnN1cmUgc3VjY2Vzc2Z1bCBib290
aW5nIHVzaW5nIHRoZSBzdXBwbGllZCBBQ1BJIHRhYmxlcywgd2UgbmVlZCB0bwo+ID4+IGRldmlz
ZSBhIHdheSB0byBjaG9wIHVwIHRoZSBhZGRyZXNzIHJlZ2lvbnMgcHJvdmlkZWQgYW5kIHN1YnNl
cXVlbnRseQo+ID4+IHJlZ2lzdGVyIHRoZSBEV0MzIGNvcmUgd2l0aCB0aGUgcmVzdWx0YW50IGlu
Zm9ybWF0aW9uLCB3aGljaCBpcwo+ID4+IHByZWNpc2VseSB3aGF0IHRoaXMgcGF0Y2ggYWltcyB0
byBhY2hpZXZlLgo+ID4+IAo+ID4+IFNpZ25lZC1vZmYtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVz
QGxpbmFyby5vcmc+Cj4gPj4gUmV2aWV3ZWQtYnk6IEJqb3JuIEFuZGVyc3NvbiA8Ympvcm4uYW5k
ZXJzc29uQGxpbmFyby5vcmc+Cj4gPj4gLS0tCj4gPj4gIGRyaXZlcnMvdXNiL2R3YzMvS2NvbmZp
ZyAgICAgfCAgIDIgKy0KPiA+PiAgZHJpdmVycy91c2IvZHdjMy9kd2MzLXFjb20uYyB8IDIwNiAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLQo+ID4+ICAyIGZpbGVzIGNoYW5nZWQs
IDE3OSBpbnNlcnRpb25zKCspLCAyOSBkZWxldGlvbnMoLSkKPiA+Cj4gPiBJJ20gc3RhcnRpbmcg
dG8gZ2V0IGEgbGl0dGxlIHR3aXRjaHkgYWJvdXQgdGhlc2UgcGF0Y2hlcyBub3cuICBEdWUgdG8K
PiA+IHRoZSByZWxlYXNlIGNhZGVuY2Ugb2YgdGhlIGxhcmdlciBMaW51eCBkaXN0cm9zLCBpdCdz
IHByZXR0eSBpbXBvcnRhbnQKPiA+IHRoYXQgdGhlc2UgY2hhbmdlcyBsYW5kIGluIHY1LjMuICBX
aXRob3V0IHRoZW0sIGl0IGlzIGltcG9zc2libGUgdG8KPiA+IGluc3RhbGwgTGludXggb24gc29t
ZSBwcmV0dHkgaGlnaCBwcm9maWxlIGVtZXJnaW5nIHBsYXRmb3Jtcy4KPiA+Cj4gPiBJdCdzIGFs
cmVhZHkgLXJjNSBhbmQgSSdtIGNvbmNlcm5lZCB0aGF0IHdlJ3JlIGdvaW5nIHRvIG1pc3MgdGhl
Cj4gPiBtZXJnZS13aW5kb3cuICBXb3VsZCB5b3UgYmUga2luZCBlbm91Z2ggdG8gcmV2aWV3IHRo
ZXNlIHBhdGNoZXMKPiA+IHBsZWFzZT8gIFRoZSBQaW5jdHJsIGFuZCBJMkMgcGFydHMgb2YgdGhl
IHNldCBoYXZlIGFscmVhZHkgYmVlbgo+ID4gbWVyZ2VkLgo+IAo+IEkgZG9uJ3Qgc2VlbSB0byBo
YXZlIHRoaXMgc2VyaWVzIGluIG15IGluYm94LiBUaGlzIGlzIHRoZSBvbmx5IGVtYWlsIEkKPiBo
YXZlIGluIHRoaXMgc2VyaWVzLgoKSSBkaWQgd29uZGVyLCB3aGljaCBpcyB3aHkgSSBtYWRlIHN1
cmUgSSBzZW50IHRoaXMgdG8geW91ciBJbnRlbAphZGRyZXNzIGFzIHdlbGwuICBJcyB5b3VyIEBr
ZXJuZWwub3JnIGFkZHJlc3MgYnJva2VuPwoKV2lsbCByZS1zZW5kIHRoZSBwYXRjaGVzIHRvIHlv
dXIgSW50ZWwgYWRkcmVzcywgZ2l2ZSBtZSBhIGZldwptaW51dGVzLgoKLS0gCkxlZSBKb25lcyBb
5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIg
T3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29r
IHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
