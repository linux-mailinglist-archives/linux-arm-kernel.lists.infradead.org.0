Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6856EC043
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 10:08:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DgXC2eGyslORkIABIcqxcvM1y6Xyr7sn05KHur40wRo=; b=SQsu0lHsOKh5J2
	7qSXuW6OChx5GrTAAjeO+yrSrJArXwMbpD83xQPjnxkfE8Xq6ozCTzQMc1JTnxE6EGsJ1HGKI5c/S
	xIlKbfU8wnIMPJSiXdF9Gh+Tjz+0f1QhwESBPGXl5MvP+I5LLZv28NEf/HT07KKGjDb6SrlD7MffE
	We3giIYQXW8dFijVHnDEqFqgVUxK+SxyHFhlmnbjloOVoI7AV8JCkyghC4BGsC/XN4iKJt/+Q/aJR
	LErFrxIwqnuj1tdRHBQyvf1qbhhu8PvO/4qV+rGOFqm4b7Hg4N12U3R78Ezz5/5FhG9Tzt/WtXl7g
	siMZcpsM7AgOrTbzHT6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQSuX-0000zD-OM; Fri, 01 Nov 2019 09:08:01 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQSuR-0000yr-8N
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 09:07:56 +0000
Received: by mail-wr1-x441.google.com with SMTP id o28so8972548wro.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 02:07:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=zayuLgrU2SwBpXkDAfC9yIWopPaj/yTsmqEo3+k5o+g=;
 b=SsOvMknt1CgP4cY/63FFDv1ZR8D0n+krXXaB5s5xMmzPjmA9CkbyU0N+Ejr+ciaV13
 gR97mDAeA039WaHynZ8ezlNuHhZQpK7DX9WAu7zzrQ6a0270jypZhco6I/26gnBb2jh2
 Y5qUbR05PW9qioLG7ivWKF0bD/CUzuo0sU1VYiONAu+QAXowSbW8Fxf6KH06C6W/r2jK
 bp6z+v64ZuLc8XEj9DutDiV/dxcUXN++oy0ASMO2W98M1+gpyHAx46Ax3HGa1hz9IQlj
 sP1CDeTapR1u4KlRtlTZFoUr2PjV8hSeTspziMOPtFRzPizoOin36lQ5OFFG/NPh3lFB
 5+WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=zayuLgrU2SwBpXkDAfC9yIWopPaj/yTsmqEo3+k5o+g=;
 b=hLPpnliYcfMuvD+OryVg7JI4ShA2G7P4culqVmYkZQ1vcpOpuydXGPODs1I1T7OUpi
 RxlwxZgMz2lTLMNhgcU9h3P3gr4i/2X2Ra5FeeYYMH3QXpXnV4W++vVCJ0/mHqBfmpz4
 HED4fKKIK0KFMi4iHfIv/C9GeT6RNHAh+j639C6Lwci1i5UAHrR8V4zs3YjSpwZVOIhB
 tEbO4VGe1pS2SksfMf/n2nwqjKabV+7JeWduxVlYjtMpmnbmFz58kYZRpg27uHB1iIza
 u++hIfba/4itoiB0mXnSu6vlSUg8KY11O9uqDlP2sVNbJlKJms14Hnoie1Ft8IdAjbnI
 bqZw==
X-Gm-Message-State: APjAAAUSWtbMKxmVfoSvf0ahzRUeOSiOdhuonoNGrDJFuwqzrOIMQPeL
 nBL9gQXCAgXZDiqYwhjbzYOJbg==
X-Google-Smtp-Source: APXvYqyfoMw7OuR1oI2KzzBgFBcp8lQVObfEgf4rxJio3Ka98Rj3xERF8zwG/TDC9/tvnJDSE9vsFw==
X-Received: by 2002:a05:6000:18d:: with SMTP id
 p13mr9509311wrx.396.1572599273351; 
 Fri, 01 Nov 2019 02:07:53 -0700 (PDT)
Received: from dell ([2.31.163.64])
 by smtp.gmail.com with ESMTPSA id n3sm6921838wrr.50.2019.11.01.02.07.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 01 Nov 2019 02:07:52 -0700 (PDT)
Date: Fri, 1 Nov 2019 09:07:51 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Lubomir Rintel <lkundrak@v3.sk>
Subject: Re: [PATCH v2 0/9] Simplify MFD Core
Message-ID: <20191101090751.GH5700@dell>
References: <20191021105822.20271-1-lee.jones@linaro.org>
 <CAK8P3a10w9Xg6U8EgUqPLbucP3A0wc9xO_WNG06LxHrsZkZc1g@mail.gmail.com>
 <e5e7695cc82b4370752f45082be007dbe410c74c.camel@v3.sk>
 <20191021115339.GF4365@dell>
 <ba31d7cb894cb44eacee630e56fae647922f3dc2.camel@v3.sk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ba31d7cb894cb44eacee630e56fae647922f3dc2.camel@v3.sk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_020755_301064_05D3CB96 
X-CRM114-Status: GOOD (  20.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Barry Song <baohua@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 stephan@gerhold.net, Linus Walleij <linus.walleij@linaro.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Daniel Drake <drake@endlessm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 James Cameron <quozl@laptop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAyMSBPY3QgMjAxOSwgTHVib21pciBSaW50ZWwgd3JvdGU6Cj4gT24gTW9uLCAyMDE5
LTEwLTIxIGF0IDEyOjUzICswMTAwLCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiBPbiBNb24sIDIxIE9j
dCAyMDE5LCBMdWJvbWlyIFJpbnRlbCB3cm90ZToKPiA+IAo+ID4gPiBPbiBNb24sIDIwMTktMTAt
MjEgYXQgMTM6MjkgKzAyMDAsIEFybmQgQmVyZ21hbm4gd3JvdGU6Cj4gPiA+ID4gT24gTW9uLCBP
Y3QgMjEsIDIwMTkgYXQgMTI6NTggUE0gTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4g
d3JvdGU6Cj4gPiA+ID4gPiBNRkQgY3VycmVudGx5IGhhcyBvbmUgb3Zlci1jb21wbGljYXRlZCB1
c2VyLiAgQ1M1NTM1IHVzZXMgYSBtaXh0dXJlIG9mCj4gPiA+ID4gPiBjZWxsIGNsb25pbmcsIHJl
ZmVyZW5jZSBjb3VudGluZyBhbmQgc3Vic3lzdGVtLWxldmVsIGNhbGwtYmFja3MgdG8KPiA+ID4g
PiA+IGFjaGlldmUgaXRzIGdvYWwgb2YgcmVxdWVzdGluZyBhbiBJTyBtZW1vcnkgcmVnaW9uIG9u
bHkgb25jZSBhY3Jvc3MgMwo+ID4gPiA+ID4gY29uc3VtZXJzLiAgVGhlIHNhbWUgY2FuIGJlIGFj
aGlldmVkIGJ5IGhhbmRsaW5nIHRoZSByZWdpb24gY2VudHJhbGx5Cj4gPiA+ID4gPiBkdXJpbmcg
dGhlIHBhcmVudCBkZXZpY2UncyAucHJvYmUoKSBzZXF1ZW5jZS4gIFJlbGVhc2luZyBjYW4gYmUg
aGFuZGVkCj4gPiA+ID4gPiBpbiBhIHNpbWlsYXIgd2F5IGR1cmluZyAucmVtb3ZlKCkuCj4gPiA+
ID4gPiAKPiA+ID4gPiA+IFdoaWxlIHdlJ3JlIGhlcmUsIHRha2UgdGhlIG9wcG9ydHVuaXR5IHRv
IHByb3ZpZGUgc29tZSBjbGVhbi11cHMgYW5kCj4gPiA+ID4gPiBlcnJvciBjaGVja2luZyB0byBp
c3N1ZXMgbm90aWNlZCBhbG9uZyB0aGUgd2F5Lgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBUaGlzIGFs
c28gcGF2ZXMgdGhlIHdheSBmb3IgY2xlYW4gY2VsbCBkaXNhYmxpbmcgdmlhIERldmljZSBUcmVl
IGJlaW5nCj4gPiA+ID4gPiBkaXNjdXNzZWQgYXQgWzBdCj4gPiA+ID4gPiAKPiA+ID4gPiA+IFsw
XSBodHRwczovL2xrbWwub3JnL2xrbWwvMjAxOS8xMC8xOC82MTIuCj4gPiA+ID4gCj4gPiA+ID4g
QXMgdGhlIENTNTUzNSBpcyBwcmltYXJpbHkgdXNlZCBvbiB0aGUgT0xQQyBYTzEsIGl0IHdvdWxk
IGJlCj4gPiA+ID4gZ29vZCB0byBoYXZlIHNvbWVvbmUgdGVzdCB0aGUgc2VyaWVzIG9uIHN1Y2gg
YSBtYWNoaW5lLgo+ID4gPiA+IAo+ID4gPiA+IEkndmUgYWRkZWQgYSBmZXcgcGVvcGxlIHRvIENj
IHRoYXQgbWF5IGJlIGFibGUgdG8gaGVscCB0ZXN0IGl0LCBvcgo+ID4gPiA+IGtub3cgc29tZW9u
ZSB3aG8gY2FuLgo+ID4gPiA+IAo+ID4gPiA+IEZvciB0aGUgYWN0dWFsIHBhdGNoZXMsIHNlZQo+
ID4gPiA+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAxOTEwMjExMDU4MjIuMjAyNzEt
MS1sZWUuam9uZXNAbGluYXJvLm9yZy9ULyN0Cj4gPiA+IAo+ID4gPiBUaGFua3MgZm9yIHRoZSBw
b2ludGVyLiBJJ2QgYnkgaGFwcHkgdG8gdGVzdCB0aGlzLgo+ID4gPiAKPiA+ID4gV2hpY2ggdHJl
ZSBkbyB0aGUgcGF0Y2hlcyBhcHBseSB0bz8KPiA+ID4gT3IsIGJldHRlciwgaXMgdGhlcmUgYSB0
cmVlIHdpdGggdGhlIHBhdGNoZXMgYXBwbGllZCB0aGF0IEkgY291bGQgdXNlPwo+ID4gCj4gPiBJ
ZGVhbC4gIFRoYW5rIHlvdS4KPiA+IAo+ID4gaHR0cDovL2dpdC5saW5hcm8ub3JnL3Blb3BsZS9s
ZWUuam9uZXMvbGludXguZ2l0L2xvZy8/aD10b3BpYy9tZmQtcmVtb3ZlLWNsb25lLWNzNTUzNS1t
ZmQKPiAKPiBUaGFua3MuIE15IGJvb3QgYXR0ZW1wdCBlbmRzIHVwIGluIGEgcGFuaWMgWzFdOgoK
TmV3IHBhdGNoZXMgaGF2ZSBiZWVuIGRyYWZ0ZWQsIHJldmlld2VkIGFuZCBwdXNoZWQgdG8gdGhl
IHNhbWUgYnJhbmNoLgoKV291bGQgeW91IGJlIGtpbmQgZW5vdWdoIHRvIGJvb3QgdGVzdCB0aGVt
IGZvciBtZSBwbGVhc2UgTHVibz8KClRJQS4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGlu
YXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNv
ZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBC
bG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
