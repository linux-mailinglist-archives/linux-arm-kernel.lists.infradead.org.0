Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE361BB93E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 10:54:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7/HU3m9o5bLP4AVBO5eQyguL89DOlidAyCNpF3xLSMM=; b=coGqST2wg5VEj2
	xnB6Z9pV/5MTnTEH4E7uVim2DtIJ4FegbsPTgiV+sXcr+S/AUFRV7dvVfWmC06y39JjBrPeCzBt9u
	YDanssBJgUno0eazGW1fK4Eoiieq6OxA6+DUX4I90JhXf1tjtIuhox2+nFf3oknGE0OjAphq+L+13
	OVXQUTxxWfsnMTF20IGZAtBCLoQAKn0ub9qr91cJcN6h4d2uPT+wC0Qj8Njr/MKcRYEANnLNhzqLZ
	nx7wxa5xOd4ek44wFYFI9PxGYu4oWS9v87EOobi4BzJUYsCfJLy5bGmsQUJ1R7DgwjkVG6pqjxuNC
	1mSxQ7Vq9aeeFVE+mSMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTM0T-0003is-Au; Tue, 28 Apr 2020 08:54:21 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTM0K-0003iB-3X
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 08:54:13 +0000
Received: by mail-il1-x141.google.com with SMTP id e8so19489393ilm.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 01:54:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=dDgulWnHGZo56l/rwtjNPISMYmw8h8PKUdGgHUf/qbQ=;
 b=bsFvHtQgLA9U5xzZknhx5MWq1lav+iBhrlYLLy/RFrIxJCCZYXtPdiI9CYGPsOpUb4
 PbUMU8veALBn6Ielw6gMIuf1TIhd+jknAnEWCaC+XToSiri5IjsszZMqLqnfSZxLFzgI
 FOg+4Rn9cs6ReBn8ouy2wMpXsv0fr7I6z6ppQCOidhy3SVghFEXyjZMh2gJyeNSCpXdi
 g/9/6GDL4+DD6aLVJr82+aCYgGlY3ewCkCeOA3qhN8HGEPrQkDAsp+xEguvzAzqjBVzr
 48nhVLmXLA6gqeccxuLl+oSLxT6fxlwaXxMCwsZodpX/bN/8W+tkxYVFuSU0WBBIu7hn
 WeTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=dDgulWnHGZo56l/rwtjNPISMYmw8h8PKUdGgHUf/qbQ=;
 b=W5cIbDXEesAlvBgxXzZ7j7y5P/Vib8DkZDcwPVi3u5k/ULabDylon2Ffe4rmwYg2l2
 wEKKHDcp66d6bWZ4bxb2dgNqZEH4+P7NTw06u3L2pOgrq36AcAukKDJK5LgbBC9mdJNp
 pxObnBwaitFW5/1pTDxe4emiQCUVx151K21QD88+s6+lFQnruXYe0rgsExYdRykxgnXV
 n8VpJdr9v5Zf/Fbkcx9Y1sqs1shjapuPliF28A7q00lOdwK2qJCXnMxx1fwS3aE6TZ1Z
 cSRIL3hvOAUG5V/NrSZjGJJ8JQ5TCLZkjwtO7aH38D1A1p1iSk7DHQYXcYAXI2vvGXx1
 Ywbw==
X-Gm-Message-State: AGi0PuansIeJ+f4ZKKYvBDvwiBVo2oYolRW+BjaR9ZLWE7CZC791dSL/
 YbR3MuWNh1Y928Ge1VfVPbtUwCl3H9ARHan9yfE=
X-Google-Smtp-Source: APiQypLjn+quin05VpI7eccg9aPBvq4rkesUHFhJvzeuZEXRWkfxI9E/S60HRrWJ9MxsyWnLP/SFJNPDcKrdHUSAbTY=
X-Received: by 2002:a92:d151:: with SMTP id t17mr3585764ilg.35.1588064051274; 
 Tue, 28 Apr 2020 01:54:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200426120442.11560-1-peron.clem@gmail.com>
 <20200426120442.11560-5-peron.clem@gmail.com>
 <20200428080020.35qcuylwq2ylmubu@gilmour.lan>
In-Reply-To: <20200428080020.35qcuylwq2ylmubu@gilmour.lan>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Tue, 28 Apr 2020 10:54:00 +0200
Message-ID: <CAJiuCcc2LQ4L36KSfO8iLVFBUO6k+zsZFX+_Ovm_10PoWO4AsA@mail.gmail.com>
Subject: Re: [PATCH 4/7] arm64: dts: allwinner: a64: Add HDMI audio
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_015412_153066_3183C171 
X-CRM114-Status: GOOD (  18.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Takashi Iwai <tiwai@suse.com>,
 Rob Herring <robh+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Marcus Cooper <codekipper@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF4aW1lLAoKT24gVHVlLCAyOCBBcHIgMjAyMCBhdCAxMDowMCwgTWF4aW1lIFJpcGFyZCA8
bWF4aW1lQGNlcm5vLnRlY2g+IHdyb3RlOgo+Cj4gT24gU3VuLCBBcHIgMjYsIDIwMjAgYXQgMDI6
MDQ6MzlQTSArMDIwMCwgQ2zDqW1lbnQgUMOpcm9uIHdyb3RlOgo+ID4gRnJvbTogTWFyY3VzIENv
b3BlciA8Y29kZWtpcHBlckBnbWFpbC5jb20+Cj4gPgo+ID4gQWRkIGEgc2ltcGxlLXNvdW5kY2Fy
ZCB0byBsaW5rIGF1ZGlvIGJldHdlZW4gSERNSSBhbmQgSTJTLgo+ID4KPiA+IFNpZ25lZC1vZmYt
Ynk6IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5ldD4KPiA+IFNpZ25lZC1v
ZmYtYnk6IE1hcmN1cyBDb29wZXIgPGNvZGVraXBwZXJAZ21haWwuY29tPgo+ID4gU2lnbmVkLW9m
Zi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4g
IGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1hNjQuZHRzaSB8IDIxICsrKysr
KysrKysrKysrKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKQo+ID4K
PiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktYTY0
LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktYTY0LmR0c2kKPiA+
IGluZGV4IGU1NmUxZTNkNGI3My4uMDhhYjZiNWU3MmE1IDEwMDY0NAo+ID4gLS0tIGEvYXJjaC9h
cm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWE2NC5kdHNpCj4gPiArKysgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktYTY0LmR0c2kKPiA+IEBAIC0xMDIsNiArMTAy
LDI1IEBACj4gPiAgICAgICAgICAgICAgIHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gPiAgICAgICB9
Owo+ID4KPiA+ICsgICAgIGhkbWlfc291bmQ6IGhkbWktc291bmQgewo+ID4gKyAgICAgICAgICAg
ICBjb21wYXRpYmxlID0gInNpbXBsZS1hdWRpby1jYXJkIjsKPiA+ICsgICAgICAgICAgICAgc2lt
cGxlLWF1ZGlvLWNhcmQsZm9ybWF0ID0gImkycyI7Cj4gPiArICAgICAgICAgICAgIHNpbXBsZS1h
dWRpby1jYXJkLG5hbWUgPSAiYWxsd2lubmVyLGhkbWkiOwo+Cj4gSSdtIG5vdCBzdXJlIHdoYXQg
dGhlIHVzdWFsIGNhcmQgbmFtZSBzaG91bGQgYmUgbGlrZSB0aG91Z2guIEkgd291bGQgYXNzdW1l
IHRoYXQKPiB0aGlzIHNob3VsZCBiZSBzb21ldGhpbmcgc3BlY2lmaWMgZW5vdWdoIHNvIHRoYXQg
eW91J3JlIGFibGUgdG8gZGlmZmVyZW50aWF0ZQo+IGJldHdlZW4gYm9hcmRzIC8gU29DIHNvIHRo
YXQgdGhlIHVzZXJzcGFjZSBjYW4gY2hvb3NlIGEgZGlmZmVyZW50IGNvbmZpZ3VyYXRpb24KPiBi
YXNlZCBvbiBpdD8KCkkgcmVhbGx5IGRvbid0IGtub3cgd2hhdCB3ZSBzaG91bGQgdXNlIGhlcmUs
CkkganVzdCBoYXZlIGEgbG9vayBhdCBvdGhlciBTb0M6CnJrMzMyODogIkhETUkiCnJrMzM5OTog
ImhkbWktc291bmQiCnI4YTc3NGMwLWNhdDg3NDogIkNBVDg3NCBIRE1JIHNvdW5kIgoKQnV0IG1h
eWJlIGl0J3MgdGltZSB0byBpbnRyb2R1Y2UgcHJvcGVyIG5hbWU6CldoYXQgYWJvdXQgOgpzdW41
MGktYTY0LWhkbWkKc3VuNTBpLWg2LWhkbWkKSG93IHNob3VsZCB3ZSBoYW5kbGUgdGhpcyB3aXRo
IGgzIC8gaDUgPwpzZXR0aW5ncyB0aGUgc2ltcGxlLWF1ZGlvLWNhcmQsbmFtZSBpbiBlYWNoIFNv
QyBkdHM/Ck9yIHVzaW5nIHN1bjUwaS1oMy1oZG1pIGFzIHRoZXkgYXJlIGJvdGggaWRlbnRpY2Fs
PwoKUmVnYXJkcywKQ2xlbWVudAoKCj4KPiBJZiBzbywgaXQncyByZWFsbHkgdG9vIGdlbmVyaWMu
Cj4KPiBNYXhpbWUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
