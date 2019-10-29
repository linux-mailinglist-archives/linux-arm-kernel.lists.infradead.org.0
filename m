Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC17E8885
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 13:43:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I2wAnr4URpUomGOmt4vob2wFALFPaZTU/Rmaajjm3jQ=; b=cCaLxBby8yoOBb
	QxJxmm2GcO8pA6uBjmz0fN63cERG2JlGfmxEEPg9rsyFWnQ1wWYj2i8g6vEQmJlQl2os7oHFWsQkZ
	8d+xd/SM65jwarUaKUT10hD3siF2+9DJPueuUnz7jJmSJUPrP83LiHdeyo7Wc/SZHACUNnBNAOHwl
	DY0fvOEi4UTuXGXWrXc2gqSsjjQtj5E3kqB1OfN9x8JxDNngsl8cfEJaJnb7oW3E8gmxHOG6S7URz
	U2UUxPzWK6GvkmDMo/uhHODxf/AMle3eXvq+p2BpxwxkPt2kxQIbxRdztmt11qYEkpIqAOSKUc1v9
	OF40z6v3TZ7VZ6B4TVew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPQqb-00044M-DG; Tue, 29 Oct 2019 12:43:41 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPQqN-00043y-67
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 12:43:28 +0000
Received: by mail-qt1-x842.google.com with SMTP id o3so19922744qtj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 05:43:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=OMRxOWZpu1dr96++kRLkGqF4JG/vk7voGkpNSd1iKXw=;
 b=ozcm2IWkf2kNtuYCUjt+8ArvFK/2tKRtrBxPUJbunA7rPNlc0HxCY71sOWY0wV6yle
 VMaj+9CPSz7Yh+ObskBaZxF9CqEBImBFo4eqIbA/24KRyE8rBYcXoqKjRR4hwZ0qfPJO
 F0EaQVN+YNPh/tNG58mPvXtcqsJZiw7ZiYHf1FBOuACg8X8xJeJDCtMf8QuKRHKPg2c0
 uNVeP+ABNB3gsrrfXF8eQ2co4oiynkaswFhPcMWQMivdB92SNJhepyCg18vMBP7iW/DD
 8UYO8Qt3O9X5/xm/wHCkzkG+AmSkAdPwsvYNzEjD3JbgHgEwtq8TUO94E8rJy5ospivy
 pi+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=OMRxOWZpu1dr96++kRLkGqF4JG/vk7voGkpNSd1iKXw=;
 b=K0w1TEUg+6iHjnpI0d8IZSP+ZxkbGRH2qfpYMHsf68w5JHT7aWujT3yAaXFkumxIQC
 BPN3ywPL7UAdTrBn5kh2NhWk36/nfJner+zz5ZVfWK1EkZ5+3N2mTaZXOWGg1QVeG0vx
 3pp7NoBjdrJS3h3+VT4tRXzRoJa7C17KcqWEeGdqEDL6pzwCOvo7ohmbCaVTQliYBuq7
 ifkdt2OM3B8yMlF/JiC4qWuch9myZknlYlLpMkJe3I2/jUSQ/pEK3ae/zNLVWh4qx2Ub
 bWTfzQIyFCKl5qnd0hkSmrCDSUVah95GAWo+xlmoSS29EKEEBIL4zSvazq0uF5CanqVH
 DY5A==
X-Gm-Message-State: APjAAAU5BwuNrHxmwsTG4RHC8yS2GPFcvhaHdnXza1ECQ+e39H1hLXRE
 crkSQ1bMGz5C/WwLgp1G9BuA/f36l1Qb0o4brkggYg==
X-Google-Smtp-Source: APXvYqzDWQWqlapgFtGMUJS/HwMqtmBfC0dOaSKIjA060RzLLknu6eGt8PRIEE29kq1TixIMsSkusE9tCw1vWzpaF9o=
X-Received: by 2002:ac8:cc3:: with SMTP id o3mr4052238qti.239.1572353005620;
 Tue, 29 Oct 2019 05:43:25 -0700 (PDT)
MIME-Version: 1.0
References: <20191015084139.8510-1-benjamin.gaignard@st.com>
In-Reply-To: <20191015084139.8510-1-benjamin.gaignard@st.com>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Tue, 29 Oct 2019 13:43:14 +0100
Message-ID: <CA+M3ks51SNOfM9YJFv8wkLDar0qvbwGQVzVwxEVP7T=bGeTcKw@mail.gmail.com>
Subject: Re: [PATCH] arm: kernel: initialize broadcast hrtimer based clock
 event device
To: Benjamin Gaignard <benjamin.gaignard@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_054327_256251_F2C1B387 
X-CRM114-Status: GOOD (  22.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, maz@kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgbWFyLiAxNSBvY3QuIDIwMTkgw6AgMTA6NDIsIEJlbmphbWluIEdhaWduYXJkCjxiZW5qYW1p
bi5nYWlnbmFyZEBzdC5jb20+IGEgw6ljcml0IDoKPgo+IE9uIHBsYXRmb3JtcyBpbXBsZW1lbnRp
bmcgQ1BVIHBvd2VyIG1hbmFnZW1lbnQsIHRoZSBDUFVpZGxlIHN1YnN5c3RlbQo+IGNhbiBhbGxv
dyBDUFVzIHRvIGVudGVyIGlkbGUgc3RhdGVzIHdoZXJlIGxvY2FsIHRpbWVycyBsb2dpYyBpcyBs
b3N0IG9uIHBvd2VyCj4gZG93bi4gVG8ga2VlcCB0aGUgc29mdHdhcmUgdGltZXJzIGZ1bmN0aW9u
YWwgdGhlIGtlcm5lbCByZWxpZXMgb24gYW4KPiBhbHdheXMtb24gYnJvYWRjYXN0IHRpbWVyIHRv
IGJlIHByZXNlbnQgaW4gdGhlIHBsYXRmb3JtIHRvIHJlbGF5IHRoZQo+IGludGVycnVwdCBzaWdu
YWxsaW5nIHRoZSB0aW1lciBleHBpcmllcy4KPgo+IEZvciBwbGF0Zm9ybXMgaW1wbGVtZW50aW5n
IENQVSBjb3JlIGdhdGluZyB0aGF0IGRvIG5vdCBpbXBsZW1lbnQgYW4gYWx3YXlzLW9uCj4gSFcg
dGltZXIgb3IgaW1wbGVtZW50IGl0IGluIGEgYnJva2VuIHdheSwgdGhpcyBwYXRjaCBhZGRzIGNv
ZGUgdG8gaW5pdGlhbGl6ZQo+IHRoZSBrZXJuZWwgaHJ0aW1lciBiYXNlZCBjbG9jayBldmVudCBk
ZXZpY2UgdXBvbiBib290ICh3aGljaCBjYW4gYmUgY2hvc2VuIGFzCj4gdGljayBicm9hZGNhc3Qg
ZGV2aWNlIGJ5IHRoZSBrZXJuZWwpLgo+IEl0IHJlbGllcyBvbiBhIGR5bmFtaWNhbGx5IGNob3Nl
biBDUFUgdG8gYmUgYWx3YXlzIHBvd2VyZWQtdXAuIFRoaXMgQ1BVIHRoZW4KPiByZWxheXMgdGhl
IHRpbWVyIGludGVycnVwdCB0byBDUFVzIGluIGRlZXAtaWRsZSBzdGF0ZXMgdGhyb3VnaCBpdHMg
SFcgbG9jYWwKPiB0aW1lciBkZXZpY2UuCj4KPiBIYXZpbmcgYSBDUFUgYWx3YXlzLW9uIGhhcyBp
bXBsaWNhdGlvbnMgb24gcG93ZXIgbWFuYWdlbWVudCBwbGF0Zm9ybQo+IGNhcGFiaWxpdGllcyBh
bmQgbWFrZXMgQ1BVaWRsZSBzdWJvcHRpbWFsLCBzaW5jZSBhdCBsZWFzdCBhIENQVSBpcyBrZXB0
Cj4gYWx3YXlzIGluIGEgc2hhbGxvdyBpZGxlIHN0YXRlIGJ5IHRoZSBrZXJuZWwgdG8gcmVsYXkg
dGltZXIgaW50ZXJydXB0cywKPiBidXQgYXQgbGVhc3QgbGVhdmVzIHRoZSBrZXJuZWwgd2l0aCBh
IGZ1bmN0aW9uYWwgc3lzdGVtIHdpdGggc29tZSB3b3JraW5nCj4gcG93ZXIgbWFuYWdlbWVudCBj
YXBhYmlsaXRpZXMuCj4KPiBUaGUgaHJ0aW1lciBiYXNlZCBjbG9jayBldmVudCBkZXZpY2UgaXMg
dW5jb25kaXRpb25hbGx5IHJlZ2lzdGVyZWQsIGJ1dAo+IGhhcyB0aGUgbG93ZXN0IHBvc3NpYmxl
IHJhdGluZyBzdWNoIHRoYXQgYW55IGJyb2FkY2FzdC1jYXBhYmxlIEhXIGNsb2NrCj4gZXZlbnQg
ZGV2aWNlIHByZXNlbnQgd2lsbCBiZSBjaG9zZW4gaW4gcHJlZmVyZW5jZSBhcyB0aGUgdGljayBi
cm9hZGNhc3QKPiBkZXZpY2UuCgpHZW50bGUgcGluZywKClRoYW5rcywKQmVuamFtaW4KPgo+IFNp
Z25lZC1vZmYtYnk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBzdC5jb20+
Cj4gLS0tCj4gTm90ZToKPiAtIFRoZSBzYW1lIHJlYXNvbnMgbGVhZCB0byBzYW1lIHBhdGNoIHRo
YW4gZm9yIGFybTY0IHNvIEkgaGF2ZSBjb3B5IHRoZQo+ICAgY29tbWl0IG1lc3NhZ2UgZnJvbTog
OTM1OGQ3NTViZDVjICgiYXJtNjQ6IGtlcm5lbDogaW5pdGlhbGl6ZSBicm9hZGNhc3QKPiAgIGhy
dGltZXIgYmFzZWQgY2xvY2sgZXZlbnQgZGV2aWNlIikKPiAgYXJjaC9hcm0va2VybmVsL3RpbWUu
YyB8IDIgKysKPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdp
dCBhL2FyY2gvYXJtL2tlcm5lbC90aW1lLmMgYi9hcmNoL2FybS9rZXJuZWwvdGltZS5jCj4gaW5k
ZXggYjk5NmIyY2YwNzAzLi5kZGRjN2ViZjRkYjQgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0va2Vy
bmVsL3RpbWUuYwo+ICsrKyBiL2FyY2gvYXJtL2tlcm5lbC90aW1lLmMKPiBAQCAtOSw2ICs5LDcg
QEAKPiAgICogIHJlYWRpbmcgdGhlIFJUQyBhdCBib290dXAsIGV0Yy4uLgo+ICAgKi8KPiAgI2lu
Y2x1ZGUgPGxpbnV4L2Nsay1wcm92aWRlci5oPgo+ICsjaW5jbHVkZSA8bGludXgvY2xvY2tjaGlw
cy5oPgo+ICAjaW5jbHVkZSA8bGludXgvY2xvY2tzb3VyY2UuaD4KPiAgI2luY2x1ZGUgPGxpbnV4
L2Vycm5vLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9leHBvcnQuaD4KPiBAQCAtMTA3LDUgKzEwOCw2
IEBAIHZvaWQgX19pbml0IHRpbWVfaW5pdCh2b2lkKQo+ICAgICAgICAgICAgICAgICBvZl9jbGtf
aW5pdChOVUxMKTsKPiAgI2VuZGlmCj4gICAgICAgICAgICAgICAgIHRpbWVyX3Byb2JlKCk7Cj4g
KyAgICAgICAgICAgICAgIHRpY2tfc2V0dXBfaHJ0aW1lcl9icm9hZGNhc3QoKTsKPiAgICAgICAg
IH0KPiAgfQo+IC0tCj4gMi4xNS4wCj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiBsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
