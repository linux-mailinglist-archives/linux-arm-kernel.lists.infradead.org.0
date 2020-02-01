Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDD214F8B0
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Feb 2020 16:42:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ujwbf8coWb2oBJ2wJZ4jhcA1LPp9SQ8bjgI7B92QzkI=; b=mol3tDKlMellaN
	Iefm4CbXjgdxPDlfpB1ElBLMfyf4/Q3ONHyuAPTZOwnM9myVpi0333gpTqffmbSsrK697+9ZczNkq
	1sjbEKVmD7NGn/yWNMW94xleKN5KXYi/ZAjDQXNmTcXA149Kdt9wfA/YfRUm9suM1sxoKvKy4hJzO
	Rbjjt3BR74ESIvJGJL986mHV4Rtp6atpVFMGKb5YUC58iXhjxOjGRlvox+ZVNtI/uiNlbx7ZXsOo/
	ev6D9sGabv9a5UGYKN6NxgDvH+JbsUQw5aYlIC6Jr2ozCKZHyNJy4yFaIntgQm4cMs5fvoBpzMYLM
	k5ks9iSgd+uYXEQ7Zi1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixuuR-0008MK-Nf; Sat, 01 Feb 2020 15:42:11 +0000
Received: from mail2.vany.ca ([142.54.190.254])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixuuI-0008Ly-Fr; Sat, 01 Feb 2020 15:42:04 +0000
Received: from [192.168.86.184] (209-213-249-209.ded.execulink.com
 [209.213.249.209])
 by mail2.vany.ca (Postfix) with ESMTPSA id B46D3AC01D1;
 Sat,  1 Feb 2020 09:42:00 -0600 (CST)
Subject: Re: [PATCH] arm64: dts: rockchip: Fix rk3328-roc-cc sdmmcio-regulator
To: Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <87imkryz5t.fsf@vany.ca>
 <7b9829b3-e2d2-95b1-03cb-1af7a3c6acad@arm.com>
From: Adam Van Ymeren <adam@vany.ca>
Message-ID: <4a6a9d81-c831-4167-7fbf-64805940fb6f@vany.ca>
Date: Sat, 1 Feb 2020 10:41:59 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Icedove/68.4.1
MIME-Version: 1.0
In-Reply-To: <7b9829b3-e2d2-95b1-03cb-1af7a3c6acad@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200201_074202_566701_87F7889B 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDIwMjAtMDItMDEgNTo1MSBhLm0uLCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4gSGkgQWRhbSwK
Pgo+IE9uIDIwMjAtMDEtMzEgMTE6MzggcG0sIEFkYW0gVmFuIFltZXJlbiB3cm90ZToKPj4gV2l0
aCB0aGlzIGNoYW5nZSB0aGUga2VybmVsIHN1Y2Nlc3NmdWxseSBmaW5kcyB0aGUgU0QgQ2FyZCBh
bmQgY2FuIGxvYWQKPj4gYSByb290ZnMgZnJvbSBpdC7CoCBUZXN0ZWQgb24gaGFyZHdhcmUuCj4+
Cj4+IFNpZ25lZC1vZmYtYnk6IEFkYW0gVmFuIFltZXJlbiA8YWRhbUB2YW55LmNhPgo+Pgo+PiBk
aWZmIC11cHJOIC1YIGxpbnV4LTUuNS9Eb2N1bWVudGF0aW9uL2RvbnRkaWZmCj4+IGxpbnV4LTUu
NS1vcmlnL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LXJvYy1jYy5kdHMKPj4g
bGludXgtNS41L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LXJvYy1jYy5kdHMK
Pj4gLS0tIGxpbnV4LTUuNS1vcmlnL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4
LXJvYy1jYy5kdHPCoMKgwqAKPj4gMjAyMC0wMS0yNiAxOToyMzowMy4wMDAwMDAwMDAgLTA1MDAK
Pj4gKysrIGxpbnV4LTUuNS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1yb2Mt
Y2MuZHRzwqDCoMKgCj4+IDIwMjAtMDEtMzEgMTY6MjY6MzUuMzc3MDc1NDE5IC0wNTAwCj4+IEBA
IC00NCw3ICs0NCw3IEBACj4+IMKgIMKgwqDCoMKgwqAgdmNjX3NkaW86IHNkbW1jaW8tcmVndWxh
dG9yIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAicmVndWxhdG9yLWdwaW8i
Owo+PiAtwqDCoMKgwqDCoMKgwqAgZ3Bpb3MgPSA8JmdyZl9ncGlvIDAgR1BJT19BQ1RJVkVfSElH
SD47Cj4+ICvCoMKgwqDCoMKgwqDCoCBncGlvcyA9IDwmZ3BpbzAgUktfUEQxIEdQSU9fQUNUSVZF
X0hJR0g+Owo+Cj4gR2l2ZW4gdGhhdCB0aGUgUkszMzI4IGRhdGFzaGVldCBoYXMgbm8gbWVudGlv
biBvZiBHUElPMF9EMSBleGlzdGluZyBhdAo+IGFsbCwgaG93IHN1cmUgYXJlIHlvdSB0aGF0IHRo
aXMgaXMgY29ycmVjdCAtIGhhdmUgeW91IHRlc3RlZCBjYXJkcyBpbgo+IGJvdGggMy4zViBhbmQg
MS44ViAoVUhTLTEpIHNpZ25hbGxpbmcgbW9kZXM/Cj4KPiBUaGUgUk9DLVJLMzMyOC1DQyBzY2hl
bWF0aWNzIHNob3cgR1BJT19NVVRFIGJlaW5nIHVzZWQgdG8gYmlhcyB0aGUKPiBmZWVkYmFjayBw
aW4gb2YgYW4gYWRqdXN0YWJsZSByZWd1bGF0b3Igc3VwcGx5aW5nIHRoZSBTRE1NQzAgSS9PCj4g
ZG9tYWluLCBzbyBpdCBzZWVtcyBtb3JlIGxpa2VseSB0aGF0IHRoZSBwaW4gaXMgY29ycmVjdCBi
dXQgdGhlIHN0YXRlcwo+IChvciB0aGUgcG9sYXJpdHkpIGFyZSBiYWNrd2FyZHMuCgoKSG1tIHll
YWggYWZ0ZXIgcmVhZGluZyB0aGUgc2NoZW1hdGljcyB0aGlzIGRvZXNuJ3QgbWFrZSBzZW5zZS7C
oCBJIHRvb2sKaXQgZnJvbSB0aGUgdmVuZG9ycyBzb3VyY2UgdHJlZVsxXSwgYW5kIGl0IGRlZmlu
aXRlbHkgYWxsb3dlZCBteSBzeXN0ZW0KdG8gYm9vdCB3aGVuIGl0IHdvdWxkbid0IGJlZm9yZSwg
YnV0IEkgb25seSB0cmllZCBhIDMuM1YgY2FyZC7CoCBJJ2xsIHRyeQpqdXN0IGNoYW5naW5nIHRo
ZSBwb2xhcml0eS7CoCBJJ2xsIGFsc28gZmluZCBhIFVIUy0xIGNhcmQgYW5kIHRlc3QgdGhhdCwK
YW55IGFkdmljZSBvbiBob3cgdG8gdmVyaWZ5IHRoYXQgaXQncyBydW5uaW5nIGluIHRoZSAxLjhW
IG1vZGU/CgpbMV0KaHR0cHM6Ly9naXRodWIuY29tL0ZpcmVmbHlUZWFtL2tlcm5lbC9ibG9iL3Jr
MzMyOC9maXJlZmx5L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LWZpcmVmbHkt
Y29yZS5kdHNpI0w4OQoKClRoYW5rcyBmb3IgdGhlIHJldmlldyEKCi1BZGFtCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
