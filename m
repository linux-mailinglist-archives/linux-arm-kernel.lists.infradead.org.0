Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C30691D027
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 21:46:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qMcsuT9MHFLLdgbeiB6HL6oyfsO8JhB7TkStdKc9RTc=; b=m1JPkekeM3ywgO
	pRpvfXpNBavNIMBSsJFSMX0sAwlNylsvpqbDZsltiV0mGI5qgCMrPXMZsb2DpflBnnfoSKSWr8Np/
	khTLdyDC0iAcN/RX7S4GsorX0LlvYnaOXFlJMn5u/FcjSdrVEfFTEuTcEkzGfS2n5a4ESMqHDpJ1/
	YgvG5GLq4C3+zIlTH0V4R2a4CUlAx/V8iVkrPRnnN/WcAoCv75dVG/HXlzUTD9NdQNavACpcry2fZ
	TZaAzQYpwpr5/CKLuIw57Z42+8TL8x0BZA1/X3QQfE/T0ZAPRaieJMavlmiaKJFsIhxgW9fORK9HL
	u3Gzq0F03Gmg++tN3xwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQdNJ-0000uH-Oe; Tue, 14 May 2019 19:46:09 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQdNC-0000tw-6u
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 19:46:03 +0000
Received: by mail-ed1-x542.google.com with SMTP id a8so583989edx.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 12:46:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=SNWKhmqL1RfT8Ocb1OCe8VtXVVSNF6ph0Xhv4SOWB40=;
 b=CvOC26sX0Xespaa+PiqBMpVSVDalmpu07UNwcKEhcgmeP2TDr0wk6JF8RLwrn+q8XC
 tTzs0QE62dfTI68neDTbRlFyFY08xmW0ApwLtoG9MHfKXaTM9op4nNTlAisylxHhICqs
 Zn9bOWMTQWRFqK3iuLsX3ufb/cQ8OIaOscTRNoDTMK6SUPK8xlD5hPKhe737Gv5WMP/e
 8OYFSvpKd5U5A0a7Z5XGR9K3Vzlps8Dd7wEJNK5oGDkIPOgzbRRGDQKBHp39ynhfOUkj
 l0bxU5MA6DYnwb8//D2+Cw6tEhpXw8TMIh0ozArYTv8mAz9lJiTsa0Bb6Fjt4rYaf4Mu
 Yx4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=SNWKhmqL1RfT8Ocb1OCe8VtXVVSNF6ph0Xhv4SOWB40=;
 b=fFlYeRCyekWPmC4yYHraHLTGKf0SfLVfjCvt+gNaNP2vZxp9xDDaiksrc677oaQjpe
 vN+iLxsDhRkLdhnQG0Ty01nOKX1SOqT6HbuLpx999qSSvaif7seDnuvF1abPgAFMuVb+
 2BNczg1FQigUmPtD8IKlCZiOM9aiK4ba+mfuXKGfQAh/+Wxx8EUqyDCfqZhzqLqG9Z49
 lGqCpVISTiqcEJ9U/a4lOCFFWAMv/eRZ3Uwj+w0ybItoBwy/jaT2L7xXPDZsYfz/n+Me
 7ffDa206yujutsASCJbigu6Nzt47VN2pam4ktAFwS0O4iyffY2Hf1h1T/aYyf9avwQ5e
 RB3A==
X-Gm-Message-State: APjAAAW8+d1vOPLBXFP/SnzTDQzdJMF3kekUuqoD/n4el/gI5uicrtWd
 sJkvmnvDBegq8fwN0gO7bIU=
X-Google-Smtp-Source: APXvYqzqsM6YxhwDwuwnA/BDNBMRsL7Bv72pN9sp+FWRDWg10cTe5/0GsN+ZRTKbAmaakhT/NWUJZA==
X-Received: by 2002:a50:9b10:: with SMTP id o16mr37943864edi.229.1557863160506; 
 Tue, 14 May 2019 12:46:00 -0700 (PDT)
Received: from archlinux-i9 ([2a01:4f9:2b:2b84::2])
 by smtp.gmail.com with ESMTPSA id x49sm4911383edm.25.2019.05.14.12.45.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 14 May 2019 12:45:59 -0700 (PDT)
Date: Tue, 14 May 2019 12:45:57 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH] mfd: stmfx: Fix macro definition spelling
Message-ID: <20190514194557.GA12421@archlinux-i9>
References: <20190511012301.2661-1-natechancellor@gmail.com>
 <20190513073059.GH4319@dell> <20190514183900.GA7559@archlinux-i9>
 <20190514185404.GP4319@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514185404.GP4319@dell>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_124602_274723_6068EB42 
X-CRM114-Status: GOOD (  18.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Amelie Delaunay <amelie.delaunay@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXkgMTQsIDIwMTkgYXQgMDc6NTQ6MDRQTSArMDEwMCwgTGVlIEpvbmVzIHdyb3Rl
Ogo+IE9uIFR1ZSwgMTQgTWF5IDIwMTksIE5hdGhhbiBDaGFuY2VsbG9yIHdyb3RlOgo+IAo+ID4g
T24gTW9uLCBNYXkgMTMsIDIwMTkgYXQgMDg6MzA6NTlBTSArMDEwMCwgTGVlIEpvbmVzIHdyb3Rl
Ogo+ID4gPiBPbiBGcmksIDEwIE1heSAyMDE5LCBOYXRoYW4gQ2hhbmNlbGxvciB3cm90ZToKPiA+
ID4gCj4gPiA+ID4gQ2xhbmcgd2FybnM6Cj4gPiA+ID4gCj4gPiA+ID4gSW4gZmlsZSBpbmNsdWRl
ZCBmcm9tIGRyaXZlcnMvbWZkL3N0bWZ4LmM6MTM6Cj4gPiA+ID4gaW5jbHVkZS9saW51eC9tZmQv
c3RtZnguaDo3Ojk6IHdhcm5pbmc6ICdNRkRfU1RNRlhfSCcgaXMgdXNlZCBhcyBhCj4gPiA+ID4g
aGVhZGVyIGd1YXJkIGhlcmUsIGZvbGxvd2VkIGJ5ICNkZWZpbmUgb2YgYSBkaWZmZXJlbnQgbWFj
cm8KPiA+ID4gPiBbLVdoZWFkZXItZ3VhcmRdCj4gPiA+ID4gCj4gPiA+ID4gRml4ZXM6IDA2MjUy
YWRlOTE1NiAoIm1mZDogQWRkIFNUIE11bHRpLUZ1bmN0aW9uIGVYcGFuZGVyIChTVE1GWCkgY29y
ZSBkcml2ZXIiKQo+ID4gPiA+IExpbms6IGh0dHBzOi8vZ2l0aHViLmNvbS9DbGFuZ0J1aWx0TGlu
dXgvbGludXgvaXNzdWVzLzQ3NQo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IE5hdGhhbiBDaGFuY2Vs
bG9yIDxuYXRlY2hhbmNlbGxvckBnbWFpbC5jb20+Cj4gPiA+ID4gLS0tCj4gPiA+ID4gIGluY2x1
ZGUvbGludXgvbWZkL3N0bWZ4LmggfCAyICstCj4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+ID4gPiAKPiA+ID4gQXBwbGllZCwgdGhhbmtzLgo+
ID4gPiAKPiA+IAo+ID4gSGkgTGVlLAo+ID4gCj4gPiBUaGFua3MgZm9yIHBpY2tpbmcgaXQgdXAu
IEl0IHNlZW1zIHRoaXMgZGlkbid0IG1ha2UgaXQgaW50byB5b3VyIE1GRAo+ID4gcHVsbCByZXF1
ZXN0IGZvciA1LjIsIHdhcyB0aGF0IGludGVudGlvbmFsPyBJdCB3b3VsZCBiZSBuaWNlIHRvIGF2
b2lkCj4gPiB0aGlzIHdhcm5pbmcuCj4gCj4gSG1tLi4uIG5vIGl0IHdhcyBub3QgaW50ZW50aW9u
YWwuICBOb3Qgc3VyZSB3aGF0IGhhcHBlbmVkIHRoZXJlLgo+IAo+IEkgd2lsbCBwaWNrIGl0IHVw
IGZvciB0aGUgLXJjcy4KPiAKPiAtLSAKPiBMZWUgSm9uZXMgW+adjueQvOaWr10KPiBMaW5hcm8g
U2VydmljZXMgVGVjaG5pY2FsIExlYWQKPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0
d2FyZSBmb3IgQVJNIFNvQ3MKPiBGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBC
bG9nCgpUaGFuayB5b3UsIEkgYXBwcmVjaWF0ZSBpdCEKCk5hdGhhbgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
