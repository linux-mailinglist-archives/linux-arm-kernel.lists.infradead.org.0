Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BCF818C85F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 08:59:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O7Q2qVHSQfHEFX2Y4+OFzCYc3Oe+6mAsuEb3NVs9A5s=; b=rRw/YQWViWrUxm
	d2nh6rnvxonTECn1/HwEYqMN42rfbNYQzJsDgWCxcSIcCaau9yNYKv4WfsJ4czSStPTqga5jsLWic
	/H0623dk6UMSgQTAE599kh8c8vOFWjACWSYwfKu5r/+BygauLNcCU8A6Nmp3xfbcJKEcXKJLdlFFK
	/q6Z1q/Tnv73MUmf4LTSfyeC/yyLK6j1U39jtV3LoDW5i6IF7bK7ypt+6ABVFqrSGUQQ0utn05tAd
	BxLX0hOJ2F9tKl+XF4MVxr3sGUinnbEZiyIffaXVwff2ODcS3HbrAl2TB1guLzrLMmZQ6O+cqd3sD
	m07g1G44xdh6eYoHM2Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFCYo-00069F-Ey; Fri, 20 Mar 2020 07:59:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFCYg-00068Y-SB
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 07:59:12 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4336320767;
 Fri, 20 Mar 2020 07:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584691149;
 bh=Mszy2lxZVJLrMkR5k80DgVuQoQGtsJlqkm57nqwNUTc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=V+8z5a+aty2pRVXUXTLoXOGEmyXZKGlIVJmT2cm3I2lFjhaBqLgIqFghjcTEfSSR5
 uzf8IbFWB2B8qBJpC+Yz3ASM9OMIMfPxOnwUd7g2gxv3ND36kQ/ew3nYzJgXc9+EcU
 /QFC9GEFfh3DrXP8v7UrOJqf6a5foKYDh0LaxR24=
Date: Fri, 20 Mar 2020 07:59:04 +0000
From: Will Deacon <will@kernel.org>
To: Tuan Phan <tuanphan@amperemail.onmicrosoft.com>
Subject: Re: [PATCH] driver/perf: Add PMU driver for the ARM DMC-620 memory
 controller.
Message-ID: <20200320075904.GA2549@willie-the-truck>
References: <1584491381-31492-1-git-send-email-tuanphan@os.amperecomputing.com>
 <20200319151646.GC4876@lakrids.cambridge.arm.com>
 <23AD5E45-15E3-4487-9B0D-0D9554DD9DE8@amperemail.onmicrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <23AD5E45-15E3-4487-9B0D-0D9554DD9DE8@amperemail.onmicrosoft.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_005910_935081_F168A19F 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Tuan Phan <tuanphan@os.amperecomputing.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXIgMTksIDIwMjAgYXQgMTI6MDM6NDNQTSAtMDcwMCwgVHVhbiBQaGFuIHdyb3Rl
Ogo+ICAgIFBsZWFzZSBmaW5kIG15IGNvbW1lbnRzIGJlbG93Lgo+IAo+ICAgICAgT24gTWFyIDE5
LCAyMDIwLCBhdCA4OjE2IEFNLCBNYXJrIFJ1dGxhbmQgPFsxXW1hcmsucnV0bGFuZEBhcm0uY29t
Pgo+ICAgICAgd3JvdGU6Cj4gICAgICBIaSBUdWFuLAo+IAo+ICAgICAgT24gVHVlLCBNYXIgMTcs
IDIwMjAgYXQgMDU6Mjk6MzhQTSAtMDcwMCwgVHVhbiBQaGFuIHdyb3RlOgo+IAo+ICAgICAgICBE
TUMtNjIwIFBNVSBzdXBwb3J0cyB0b3RhbCAxMCBjb3VudGVycyB3aGljaCBlYWNoIGlzCj4gICAg
ICAgIGluZGVwZW5kZW50bHkgcHJvZ3JhbW1hYmxlIHRvIGRpZmZlcmVudCBldmVudHMgYW5kIGNh
bgo+ICAgICAgICBiZSBzdGFydGVkIGFuZCBzdG9wcGVkIGluZGl2aWR1YWxseS4KPiAKPiAgICAg
IExvb2tpbmcgYXQgdGhlIFRSTSBmb3IgRE1DLTYyMCwgdGhlIFBNVSByZWdpc3RlcnMgYXJlIG5v
dCBpbiBhIHNlcGFyYXRlCj4gICAgICBmcmFtZSBmcm9tIHRoZSBvdGhlciBETUMgY29udHJvbCBy
ZWdpc3RlcnMsIGFuZCBzdGFydCBhdCBvZmZzZXQgMHhBMDAKPiAgICAgIChBS0EgMjU2MCkuIEkg
d291bGQgZ2VuZXJhbGx5IGV4cGVjdCB0aGF0IGFjY2VzcyB0byB0aGUgRE1DIGNvbnRyb2wKPiAg
ICAgIHJlZ2lzdGVycyB3YXMgcmVzdHJpY3RlZCB0byB0aGUgc2VjdXJlIHdvcmxkOyBpcyB0aGF0
IG5vdCB0aGUgY2FzZSBvbgo+ICAgICAgeW91ciBwbGF0Zm9ybT8KPiAKPiAgICAgIEkgYXNrIGJl
Y2F1c2UgaWYgdGhvc2UgYXJlIG5vdCByZXN0cmljdGVkLCB0aGUgTm9ybWFsIHdvcmxkIGNvdWxk
Cj4gICAgICBwb3RlbnRpYWxseSB1bmRlcm1pbmUgdGhlIFNlY3VyZSB3b3JsZCB0aHJvdWdoIHRo
aXMgKGUuZy4gcGxheWluZyB3aXRoCj4gICAgICB0cmFpbmluZyBzZXR0aW5ncywgbWVzc2luZyB3
aXRoIHRoZSBwaHlzaWNhbCBtZW1vcnkgbWFwLCBpbmplY3RpbmcgUkFTCj4gICAgICBlcnJvcnMp
LiBIYXZlIHlvdSBjb25zaWRlcmVkIHRoaXM/Cj4gCj4gICAgPT4gT25seSBQTVUgcmVnaXN0ZXJz
IGNhbiBiZSBhY2Nlc3NlZCB3aXRoaW4gbm9ybWFsIHdvcmxkLiBJIG9ubHkgcGFzcwo+ICAgIFBN
VSByZWdpc3RlcnMgKG9mZnNldCAweEEwMCkgdG8ga2VybmVsIHNvIHNob3VsZG7igJl0IGJlIHBy
b2JsZW0uCgpKdXN0IGEgc3R5bGlzdGljIHRoaW5nIHNpbmNlIHRoZXJlJ3MgYmVlbiBhIGJpdCBv
ZiBiYWNrLWFuZC1mb3J0aCBvbiB0aGlzCnBhdGNoLCBidXQgcGxlYXNlIGNhbiB5b3UgZml4IHlv
dXIgZW1haWwgY2xpZW50IGNvbmZpZ3VyYXRpb24gc28gdGhhdCB0aGUKcmVwbGllcyBhcmUgdGhy
ZWFkZWQgcHJvcGVybHk/ICc9PicgaXMgbm9uLXN0YW5kYXJkIGFuZCBpdCdzIHByZXR0eQpoYXJk
IHRvIHNwb3QgaW4gYSBtYXNzIG9mIEMgY29kZS4gWW91IGNhbiBsb29rIGF0CkRvY3VtZW50YXRp
b24vcHJvY2Vzcy9lbWFpbC1jbGllbnRzLnJzdCBmb3Igc29tZSBpbmZvcm1hdGlvbiBhYm91dApj
b25maWd1cmluZyBjb21tb24gY2xpZW50cy4KCkFwb2xvZ2llcyBpZiB0aGlzIGNvbWVzIGFjcm9z
cyBhcyBwZWRhbnRpYywgYnV0IGl0IG1ha2VzIGEgc3VycHJpc2luZwpkaWZmZXJlbmNlIGluIGhv
dyBlYXN5IGl0IGlzIHRvIGtlZXAgdXAgd2l0aCB0aGUgdGhyZWFkIChhdCBsZWFzdCB0byBtZSku
CgpXaWxsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
