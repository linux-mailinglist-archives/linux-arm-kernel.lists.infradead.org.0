Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA2F1EBEC6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 17:09:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dbvxx+Z0d1gdiCgA41r6HL5ChSgKhr5FFng0L7V9cZ4=; b=S6KMBVGOcGaiP3
	gHwGPpr/gOaBjVO51A3Z5paNaYJvHAnwTvTIB9cf/qtEMmvDq4pJMCSJ2ruPwYKY2Yu6ObwKctDn9
	AXkN/jKMveJOdl1kCkS0dnOZ97Kvj3VEAhnv47iDmrp2N393YNDU8q9cQKSN8Wmk/FcHHYQRB+ctV
	Bwi7+DNhORC+Isjr2AHaD2/tTkajzSwe8MuhLfflc/h2rtZuUFz1S6kILWNUdXvnRCK0wWs2b4160
	IDmCWSY8QCufidyHru2/DS7jfasXfHnI3RUvx6RNda5u4RsvrvHWc7aPblc3GsNCExMxHugYPE40y
	0+f2Mbr1qe7zrd+PPgrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg8Xx-0004Wb-7Y; Tue, 02 Jun 2020 15:09:45 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg8Xq-0004Vs-4i
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 15:09:39 +0000
Received: by mail-qv1-xf44.google.com with SMTP id er17so1910676qvb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 08:09:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=j1hs0sbBhFcDQ7MR3XFZ4Ba55z2Q7IxLUQ5YveNBojk=;
 b=ObqB132WsPXJQaYMlGIcR0AVfl9JSbInH4CY0PmjmgmBn/u/f07H1aWiAeXK+tqPwK
 dsi2xIus1EfNIFc8TnKO12+MaLjeALY5mTkCc5jTuZWl2xxCvcIFOQtCaYTUUSSr5lFS
 irXV1vv7pUCClzlnyIvArLtNRtxquZeHjdA6yuYkQ/sOqdiyKEqcLJv7MP6Q+Ru1DIxB
 NDg/hPpNABJmZkiuJeiUcc3n/dq5qhmzBxCuETJkfQixY+1PkSml2NBXExJqUtaq0Q13
 NnEL7udrGjSMXHjfO0aAX4GwThwsArSj4m0rRa161hcPO0kqhqJKMKUh51pZA1Idf6f9
 Y+Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=j1hs0sbBhFcDQ7MR3XFZ4Ba55z2Q7IxLUQ5YveNBojk=;
 b=HENs+5UnVNtYZ2BwqmY2CJoLAWboM4jhO5vz5Tls9Uco7V+vXvwVlZb+kMxSNYImj6
 cAT7ZCFmrr+JjZSjfC7r9ljpLb7HQ6aozvTrnnKIBM/+di/9kVykH9R1o41d9vU6vkmm
 eKi2QiFJEavcAdAWtDjHPgYAuClrm2BaiLmupEBGGOkuMHOF2T/Tp0x2xO5B8vBetQ6B
 Yl/G2Gab2h39aB6DbakKYNFzR1PRuOCBWvsmvGVyPC59gW5fETKljpk4V50ShgCwcRhg
 +oG+jXiETItnJIwED3hf5zm8xKdIkbe6akv067y+F6O0r/gNzJzTA4gatn1sIwrVXSpN
 vUMw==
X-Gm-Message-State: AOAM532w959ZfTCNXx1enh/9MGBwYLb7NIg1kNXcQvx+T/0/utAWfIg2
 ZOwMqZqkyC385Z+R/nmO74lEtw==
X-Google-Smtp-Source: ABdhPJz40ktC4+yWqh4CbuxGehjGDMZQSaC+ZGAuKWO/SoimNA3jsxKP6JWqviN4fsFr2AA2mux8bw==
X-Received: by 2002:a0c:9021:: with SMTP id o30mr23107357qvo.177.1591110576105; 
 Tue, 02 Jun 2020 08:09:36 -0700 (PDT)
Received: from skullcanyon ([192.222.193.21])
 by smtp.gmail.com with ESMTPSA id i94sm2871202qtd.2.2020.06.02.08.09.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Jun 2020 08:09:34 -0700 (PDT)
Message-ID: <21733d1ad3c2f79a5646b4f1c541dfabda0978be.camel@ndufresne.ca>
Subject: Re: [PATCH] media: s5p-mfc: set V4L2_BUF_FLAG_LAST flag on final
 buffer
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Andriy Gelman <andriy.gelman@gmail.com>
Date: Tue, 02 Jun 2020 11:09:33 -0400
In-Reply-To: <20200502194052.485-1-andriy.gelman@gmail.com>
References: <20200502194052.485-1-andriy.gelman@gmail.com>
User-Agent: Evolution 3.36.2 (3.36.2-1.fc32) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_080938_206801_88076C82 
X-CRM114-Status: GOOD (  20.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrzej Hajda <a.hajda@samsung.com>, Kamil Debski <kamil@wypas.org>,
 linux-kernel@vger.kernel.org, Jeongtae Park <jtp.park@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5kcml5LAoKdGhhbmtzIGZvciB5b3UgcGF0Y2guCgpMZSBzYW1lZGkgMDIgbWFpIDIwMjAg
w6AgMTU6NDAgLTA0MDAsIEFuZHJpeSBHZWxtYW4gYSDDqWNyaXQgOgo+IEZyb206IEFuZHJpeSBH
ZWxtYW4gPGFuZHJpeS5nZWxtYW5AZ21haWwuY29tPgo+IAo+IEFzIHBlciBWNEwyIGFwaSwgdGhl
IGZpbmFsIGJ1ZmZlciBzaG91bGQgc2V0IFY0TDJfQlVGX0ZMQUdfTEFTVCBmbGFnLgo+IAo+IFNp
Z25lZC1vZmYtYnk6IEFuZHJpeSBHZWxtYW4gPGFuZHJpeS5nZWxtYW5AZ21haWwuY29tPgo+IC0t
LQo+ICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3M1cC1tZmMvczVwX21mYy5jIHwgMSArCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3M1cC1tZmMvczVwX21mYy5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9z
NXAtbWZjL3M1cF9tZmMuYwo+IGluZGV4IDVjMmEyM2I5NTNhNC4uYjNkOWIzYTUyM2ZlIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vczVwLW1mYy9zNXBfbWZjLmMKPiArKysg
Yi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3M1cC1tZmMvczVwX21mYy5jCj4gQEAgLTYxNCw2ICs2
MTQsNyBAQCBzdGF0aWMgdm9pZCBzNXBfbWZjX2hhbmRsZV9zdHJlYW1fY29tcGxldGUoc3RydWN0
IHM1cF9tZmNfY3R4ICpjdHgpCj4gIAkJbGlzdF9kZWwoJm1iX2VudHJ5LT5saXN0KTsKPiAgCQlj
dHgtPmRzdF9xdWV1ZV9jbnQtLTsKPiAgCQl2YjJfc2V0X3BsYW5lX3BheWxvYWQoJm1iX2VudHJ5
LT5iLT52YjJfYnVmLCAwLCAwKTsKPiArCQltYl9lbnRyeS0+Yi0+ZmxhZ3MgfD0gVjRMMl9CVUZf
RkxBR19MQVNUOwo+ICAJCXZiMl9idWZmZXJfZG9uZSgmbWJfZW50cnktPmItPnZiMl9idWYsIFZC
Ml9CVUZfU1RBVEVfRE9ORSk7CgpUaGUgZW1wdHkgYnVmZmVyIGlzIG9ubHkgdGhlcmUgZm9yIGJh
Y2t3YXJkIGNvbXBhdGliaWxpdHkuIEFzIHRoZSBzcGVjCnNheXMsIHVzZXJzcGFjZSBzaG91bGQg
Y29tcGxldGVseSBpZ25vcmUgdGhpcyBidWZmZXIuIEkgYmV0IGl0IHdpbGwKc3RpbGwgaGF2ZSB0
aGUgZWZmZWN0IHRvIHNldCBsYXN0X2J1ZmZlcl9kZXF1ZXVlZCA9IHRydWUgaW4gdmIyLAp1bmJs
b2NraW5nIHBvbGwoKSBvcGVyYXRpb25zIGFuZCBhbGxvd2luZyBmb3IgdGhlIHF1ZXVlIHRvIHVu
YmxvY2sgYW5kCnJldHVybiBFUElQRSBvbiBmdXJ0aGVyIERRQlVGLgoKUGVyaGFwcyB5b3Ugc2hv
dWxkIG1ha2Ugc3VyZSB0aGUgaWYgYm90aCB0aGUgc3JjIGFuZCBkc3QgcXVldWVzIGFyZQplbXB0
eS9kb25lIGJ5IHRoZSB0aW1lIGNtZF9zdG9wIGlzIGNhbGxlZCBpdCB3aWxsIHN0aWxsIHdvcmsu
IE90aGVyCmRyaXZlcnMgc2VlbXMgdG8gaGFuZGxlIHRoaXMsIGJ1dCB0aGlzIG9uZSBkb2VzIG5v
dCBzZWVtcyB0byBoYXZlIGEKc3BlY2lhbCBjYXNlIGZvciB0aGF0LCB3aGljaCBtYXkgaGFuZyB1
c2Vyc3BhY2UgaW4gYSBkaWZmZXJlbnQgd2F5LgoKV2hhdCB5b3Ugc2hvdWxkIGRvIHRvIHZlcmlm
eSB0aGlzIHBhdGNoIGlzIGNvcnJlY3QsIGFuZCB0aGF0IHlvdXIKdXNlcnBhY2UgZG9lcyBub3Qg
cmVseSBvbiBsZWdhY3kgcGF0aCBpcyB0aGF0IGl0IHNob3VsZCBhbHdheXMgYmUgYWJsZQp0byBk
ZXRlY3QgdGhlIGVuZCBvZiB0aGUgZHJhaW4gd2l0aCBhIEVQSVBFIG9uIERRQlVGLiBMQVNUX0JV
RiBpcyBqdXN0CmFuIGVhcmx5IHNpZ25hbGxpbmcsIGJ1dCBtYXkgbm90IG9jY3VyIGlmIHRoZXJl
IHdhcyBub3RoaW5nIGxlZnQgdG8KcHJvZHVjZSAoZXhjZXB0IGZvciBNRkMgd2hpY2ggbWF5YmUg
YmUgY3JhZnRpbmcgYSBidWZmZXIgaW4gYWxsIGNhc2VzLApidXQgdGhhdCdzIGdvaW5nIGEgcm91
bmR0cmlwIHRocm91Z2ggdGhlIEhXLCB3aGljaCBpcyBub3QgY2xlYXIgd2lsbAp3b3JrIGlmIHRo
ZSBkc3QgcXVldWUgd2FzIGVtcHR5KS4KCkFzIHNoYXJlZCBvbiBJUkMsIHlvdSBoYXZlIHNlbnQg
dGhlc2UgcGF0Y2ggdG8gRkZNUEVHOgoKaHR0cHM6Ly9wYXRjaHdvcmsuZmZtcGVnLm9yZy9wcm9q
ZWN0L2ZmbXBlZy9wYXRjaC8yMDIwMDQyOTIxMjk0Mi4yODc5Ny0yLWFuZHJpeS5nZWxtYW5AZ21h
aWwuY29tLwoKVGhpcyBzaG91bGQgaGF2ZSBiZWVuIGNsYXJpZmllZCBhcyBzdXBwb3J0aW5nIGxl
Z2FjeSBkcml2ZXJzIC8gb2xkZXIKa2VybmVsIHdpdGggU2Ftc3VuZyBkcml2ZXIuIFNlZW1zIGxp
a2UgYSBmYWlyIHBhdGNoLiBBbmQgeW91IGFkZGVkOgoKaHR0cHM6Ly9wYXRjaHdvcmsuZmZtcGVn
Lm9yZy9wcm9qZWN0L2ZmbXBlZy9wYXRjaC8yMDIwMDQyOTIxMjk0Mi4yODc5Ny0xLWFuZHJpeS5n
ZWxtYW5AZ21haWwuY29tLwoKVGhpcyBvbmUgc2hvdWxkIG1heWJlIGFkZCB0aGUgY2xhcmlmaWNh
dGlvbiB0aGF0IHRoaXMgaXMgYW4Kb3B0aW1pemF0aW9uIHRvIHNraXAgYW4gZXh0cmEgcG9sbC9k
cWJ1ZiBkYW5jZSwgYnV0IHRoYXQgZW5kIG9mCmRyYWluaW5nIHdpbGwgdWx0aW1hdGVseSBiZSBj
YXRjaGVkIGJ5IEVQSVBFIG9uIGRxYnVmIGZvciB0aGUgZGVzY3JpYmVkCmNhc2VzLiBSZW1haW5z
IHZhbGlkIGVuaGFuY2VtZW50IHRvIGZmbXBlZyBpbWhvLgoKPiAgCX0KPiAgCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
