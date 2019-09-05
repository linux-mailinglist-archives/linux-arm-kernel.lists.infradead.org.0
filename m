Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F239A9E7E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 11:35:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e5GiInsLES6WcZwmagMzvJqIpHPJEX+TVCu5MvOnKcQ=; b=cNoD/hvQ3F2BDR
	4+6GtX2YTMWr7FhJuukZGbrgvJ38+CD7LKbaXmI5CpRo7oEC4SQyD7s9nbuIiXaPaKS7zbALHuT9f
	Q7B+tDwiXoxOsbbjt3j+C1St60n42ffDiSJHDZgIXPWX+Gsu/1sPrIe0Nr252ydaUzr24h8aGn01J
	tpEtDlQRMTAiyKOoVMKdxWfYJrY7MA4WLj1GzwuffLG8Olnbnfj6JJxqliC1HG1PNoUif5bJeF+NA
	qLsDNwsc4XTC0D+soVkOH1KVb+jCBPk2Qa0Yq5FiiMkmSmhAndFswvZ6ORd/dw//WIZunVfP0QxuB
	bTMEIOjWJ0b7GH1nttMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5oAa-0003L9-OW; Thu, 05 Sep 2019 09:35:12 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5oAC-0003Bd-9L
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 09:34:49 +0000
Received: by mail-wr1-x443.google.com with SMTP id g7so1914961wrx.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 02:34:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=pXNJ5zxAZdffoIhjgeNEzW79E8dcv18vdpXa7euQmqw=;
 b=sIWDPSa762NqP0jAqYvtDgXKYGJDvi3INGD/xgBdvJFSKvCGi0oicG9EtoYeblRFIH
 VbYG3uNcqdBzCiaVs5YAHpMFhVsfpQ5Y7jzBuGrP5uP5ndrIhK8RvE5YB+TqjCT/Pqee
 o2FnNt245G4HhUbLeNVwmiC0gfkWavIs1JKKYUG+hVq/G+eqJczbl1u7eBjWvPiOsGRE
 qTD0JVm4lLDxG79xIOJhVLLVOvDQPs+hAH++0sIRB2xNadNOmlTg9VP8ih5lUr1YUUTP
 OP4YiTMiqAe4xI/yI2VK1PRF7lq9AyltPtunxBiWSqv06+MVn60oLAw8qnWkclrJnzWI
 rbqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=pXNJ5zxAZdffoIhjgeNEzW79E8dcv18vdpXa7euQmqw=;
 b=imgR+Izbzaipb9UDjz6XONFQbwDhgVc8exBxhjOZEvr6AbPoFCnAaw5LMUayv0a0Q4
 vV2oZPD/qUqCI0eMa0/5PyzcEQM+aIOecUi8S9PZHLPL0CrsqREllE5rS1dH5/kcQIvK
 0QmnMeCcZDaKZskSey9XtTgO+vORs1HSDhwhzcy/V+3V6jiphEiMuNHp13FsWJN4HSBu
 h4djperP9BWoCdSgVtQkgfeCmb5lhH9R46FtftbiVCLl+XJKnaTnUrn0wU6w4B0PCmOj
 GE9BCLNn+vcNM0jw/DkfMdEXN9c3o1prfwgSGzzuYaHgMHthwttIOL/u3G9dy46KpdEI
 Oaqw==
X-Gm-Message-State: APjAAAXo43d3wqhU6GabPmyYFZ/65jbbFxn3hBtXC2LS877x7UL6w5Ov
 NjYgccJnLfiv4p8lM4JIl+wmV44rKzA=
X-Google-Smtp-Source: APXvYqz+PlZ2++c+1pdnHHC8kczGTCTfRXI8OA/X49x2MsnB2O2SZaoocQz3z6r0C4XzJrFHZuK99g==
X-Received: by 2002:a5d:4247:: with SMTP id s7mr1786602wrr.110.1567676086829; 
 Thu, 05 Sep 2019 02:34:46 -0700 (PDT)
Received: from dell ([95.147.198.36])
 by smtp.gmail.com with ESMTPSA id o9sm2221110wrh.46.2019.09.05.02.34.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 05 Sep 2019 02:34:46 -0700 (PDT)
Date: Thu, 5 Sep 2019 10:34:44 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Wolfram Sang <wsa@the-dreams.de>
Subject: Re: [PATCH 1/2] i2c: qcom-geni: Provide an option to select FIFO
 processing
Message-ID: <20190905093444.GE26880@dell>
References: <20190904113613.14997-1-lee.jones@linaro.org>
 <20190904203548.GC580@tuxbook-pro> <20190904212337.GF23608@ninjato>
 <20190905071103.GX26880@dell> <20190905091617.GC1157@kunai>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190905091617.GC1157@kunai>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_023448_329077_EF564BD6 
X-CRM114-Status: GOOD (  23.99  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, agross@kernel.org,
 robh+dt@kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 alokc@codeaurora.org, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAwNSBTZXAgMjAxOSwgV29sZnJhbSBTYW5nIHdyb3RlOgo+ID4gPiBJdCBsb29rcyBs
aWtlIGEgd29ya2Fyb3VuZCB0byBtZS4gSXQgd291bGQgYmUgaW50ZXJlc3RpbmcgdG8gaGVhciB3
aGljaAo+ID4gPiBJMkMgY2xpZW50IGJyZWFrcyB3aXRoIERNQSBhbmQgaWYgaXQncyBkcml2ZXIg
Y2FuJ3QgYmUgZml4ZWQgc29tZWhvdwo+ID4gPiBpbnN0ZWFkLiBCdXQgZXZlbiBpZiB3ZSBhZ3Jl
ZSBvbiBhIHdvcmthcm91bmQgc2hvcnQgdGVybSwgYWRkaW5nIGEKPiAKPiBTbywgYXJlIHRoZXJl
IGludmVzdGlnYXRpb25zIHJ1bm5pbmcgd2h5IHRoaXMgcmVib290IGhhcHBlbnM/CgpZZXMsIGJ1
dCB0aGV5IGhhdmUgYmVlbiBydW5uaW5nIGZvciBtb250aHMsIGxpdGVyYWxseS4KClVuZm9ydHVu
YXRlbHksIHNpbmNlIHRoZXNlIGFyZSBwcm9kdWN0aW9uIGxldmVsIHBsYXRmb3JtcywgYWxsIG9m
IHRoZQp1c3VhbCBsb3ctbGV2ZWwgZGVidWdnaW5nIGF2ZW51ZXMgKEpUQUcpIGhhdmUgYmVlbiBj
bG9zZWQgb2ZmLiAgQWxzbywKb25seSBhIHZlcnkgc21hbGwgbnVtYmVyIG9mIHBlb3BsZSBoYXZl
IGFjY2VzcyB0byBkb2N1bWVudGF0aW9uLCBidXQKZXZlbiB0aG9zZSB3aG8gYXJlIGluIHBvc3Nl
c3Npb24gYXJlIHN0dW1wZWQuCgpBbmR5IEdyb3NzIGRpZCBoYXZlIG9uZSBpZGVhIGFzIHRvIHdo
YXQgbWlnaHQgYmUgaGFwcGVuaW5nLCBidXQgaXQKdHVybmVkIG91dCB0byBiZSBhIHJlZCBoZXJy
aW5nLgoKPiA+ID4gSXMgdGhlcmUgbm8gb3RoZXIgd2F5IHRvIGRpc2FibGUgRE1BIHdoaWNoIGlz
IGxvY2FsIHRvIHRoaXMgZHJpdmVyIHNvIHdlCj4gPiA+IGNhbiBlYXNpbHkgcmV2ZXJ0IHRoZSB3
b3JrYXJvdW5kIGxhdGVyPwo+ID4gCj4gPiBUaGlzIGlzIHRoZSBtb3N0IGxvY2FsIGxvdy1pbXBh
Y3Qgc29sdXRpb24gKG5vbWVuY2xhdHVyZSBhc2lkZSkuCj4gCj4gSSBkaXNhZ3JlZS4gWW91IGNv
dWxkIHVzZSBvZl9tYWNoaW5lX2lzX2NvbXBhdGlibGUoKSBhbmQgZGlzYWJsZSBETUEgZm9yCj4g
dGhhdCBtYWNoaW5lLiBMZXNzIGltcGFjdCBiZWNhdXNlIHdlIHNhdmUgdGhlIHdvcmthcm91bmQg
YmluZGluZy4KClRoYXQgY291bGQgYWxzbyB3b3JrLgoKPiA+IFRoZSBiZWF1dGlmdWwgdGhpbmcg
YWJvdXQgdGhpcyBhcHByb2FjaCBpcyB0aGF0LCAqaWYqIHRoZSBHZW5pIFNFIERNQQo+IAo+IEkn
ZCBzYXkgJ2FkdmFudGFnZScgaW5zdGVhZCBvZiAnYmVhdXRpZnVsJyA7KQoKT2theSwgInRoZSBh
ZHZhbnRhZ2UgdGhpbmcgYWJvdXQgLi4uIiA7KQoKPiA+IGV2ZXIgc3RhcnRzIHdvcmtpbmcsIHdl
IGNhbiByZW1vdmUgdGhlIEMgY29kZSBhbmQgYW55IG9sZCBwcm9wZXJ0aWVzCj4gPiBsZWZ0IGlu
IG9sZGVyIERUcyBqdXN0IGJlY29tZSBOT09QLiAgT2xkZXIga2VybmVscyB3aXRoIG5ld2VyIERU
cwo+ID4gKGxlc3Mgb2YgYSBwcmlvcml0eSkgKnN0aWxsKiB3b24ndCB3b3JrLCBidXQgdGhleSBk
b24ndCB3b3JrIG5vdwo+ID4gYW55d2F5Lgo+IAo+IFdoaWNoIGlzIGEgY2xlYXIgZGlzYWR2YW50
YWdlIG9mIHRoYXQgc29sdXRpb24uIEl0IHdvbid0IGZpeCBvbGRlcgo+IGtlcm5lbHMuIE15IHN1
Z2dlc3Rpb24gYWJvdmUgc2hvdWxkIGZpeCB0aGVtLCB0b28uCgpOb3Qgc3VyZSBob3cgdGhpcyBp
cyBwb3NzaWJsZS4gIFVubGVzcyB5b3UgbWVhbiBMVFM/Cgo+ID4gVGhlIG9mZmVuZGluZyBsaW5l
IGNhbiBiZSBmb3VuZCBhdCBbMF0uICBUaGVyZSBpcyBubyBvYnZpb3VzIGJ1ZyB0bwo+ID4gZml4
IGFuZCB0aGlzIGNvZGUgb2J2aW91c2x5IHdvcmtzIHdlbGwgb24gc29tZSBvZiB0aGUgaGFyZHdh
cmUKPiA+IHBsYXRmb3JtcyB1c2luZyBpdC4gIEJ1dCBvbiBvdXIgcGxhdGZvcm0gKExlbm92byBZ
b2dhIEM2MzAgLSBRQ29tCj4gPiBTTUQ4NTApIHRoYXQgZmluYWwgY29tbWFuZCwgd2hpY2ggaW5p
dGlhdGVzIHRoZSBETUEgdHJhbnNhY3Rpb24sIGVuZHMKPiA+IHVwIHJlYm9vdGluZyB0aGUgbWFj
aGluZS4KPiAKPiBVbmxlc3Mgd2Uga25vdyB3aHkgdGhlIHJlYm9vdCBoYXBwZW5zIG9uIHlvdXIg
cGxhdGZvcm0sIEknZCBiZSBjYXJlZnVsCj4gd2l0aCBzYXlpbmcgIndvcmsgb2J2aW91c2x5IHdl
bGwiIG9uIG90aGVyIHBsYXRmb3Jtcy4KClNvbWVvbmUgbXVzdCBoYXZlIHRlc3RlZCBpdD8gIFN1
cmVseSAuLi4gOykKCj4gPiBXaXRoIHJlZ2FyZHMgdG8gdGhlIG5vbWVuY2xhdHVyZSwgbXkgb3Jp
Z2luYWwgc3VnZ2VzdGlvbiB3YXMKPiA+ICdxY29tLGdlbmktc2Utbm8tZG1hJy4gIFdvdWxkIHRo
YXQgYmV0dGVyIHN1aXQgeW91ciByZXF1ZXN0Pwo+IAo+IE15IHN1Z2dlc3Rpb246Cj4gCj4gRm9y
IDUuMywgdXNlIG9mX21hY2hpbmVfaXNfY29tcGF0aWJsZSgpIGFuZCB3ZSBiYWNrcG9ydCB0aGF0
LiBGb3IgbGF0ZXIsCj4gdHJ5IHRvIGZpbmQgb3V0IHRoZSByb290IGNhdXNlIGFuZCBmaXggaXQu
IElmIHRoYXQgY2FuJ3QgYmUgZG9uZSwgdHJ5IHRvCj4gc2V0IHVwIGEgZ2VuZXJpYyAiZGlzYWJs
ZS1kbWEiIHByb3BlcnR5IGFuZCB1c2UgaXQuCj4gCj4gV2hhdCBkbyB5b3UgdGhpbmsgYWJvdXQg
dGhhdD8KClNvdW5kcyBva2F5IHRvIG1lLiAgTGV0IG1lIGNvZGUgdGhhdCB1cC4KCi0tIApMZWUg
Sm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5v
cmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBG
YWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
