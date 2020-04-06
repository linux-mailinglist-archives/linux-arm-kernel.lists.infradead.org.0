Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18FCA19F21B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 11:10:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/474rI+3+5OtLsURRjd+vXKyd6ieYYbg1YQPJkoSNVs=; b=Ird37yWz4zgUnT
	D5qMC5L9Baeqw/14ox4whwTjqanwyXGlq7t/LFeub6ZLsVt2uLiJlolAbhsO0vYdLO5FTxOsIlU3p
	1GUc+T8bJmrSCGGDpZrcxSElQK6IlUxPr44vQkKXIDXtPuiraWV8B6XAipiOVw63s49LMC/bSgeOk
	gOg+ThiKibUzELnmJuAJYu0lETMcbfkcCwseWkH/03QcvKfHy2RyG3Lu6CZgmo9ADcVP6tSL6l6Fp
	fHZwcjQ6C32xz7q64bFMs5h8TxVjQb7tnGsWd8jVBLIp9+cAY/Wtmu4IsXcyF7vMYMKIOpIhf1vri
	izIxZVqvubbjLAj5qDWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLNlw-0006NZ-Tz; Mon, 06 Apr 2020 09:10:24 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLNlq-0006ND-Ez
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 09:10:19 +0000
Received: by mail-io1-xd41.google.com with SMTP id y14so14918179iol.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 02:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=GIpFRdiLsH923QmyN8wQqcWX+/WhMLr84OozpPJEaUE=;
 b=FkmsW/xQ+XFNOVH8bsSpa35ZszZVS4BIi3STwW48yC47+Y3mnceTZow58CS0jgRcbl
 1Yl3ImvbL1dBSGuQnfOTjy4hZ5i0/X8IRbo7tmWrHRUej0WUf/9bV0TGvlCtCJviiNz2
 Tp9zlpsXdLGHS0NLGsEn/6CU8myL/yHrgsDI/LOstqo/QvF6FKY00rn2OHCS2lzynTCw
 Ad5mlBPrcV/XsuBuMcMyh/VKBAufytMxCy6N8ik7+IPdg2o/akQiCRiOqSxPKi+ryenS
 iNOOIQ8+/0EDZjf0ai2HVaCO2MA+ICpx165GDvumkYzfd1zl1ie+ZgT6naAcLpR7lXwA
 dsHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=GIpFRdiLsH923QmyN8wQqcWX+/WhMLr84OozpPJEaUE=;
 b=L4NXhE/tZqGiXoUH2js2KSPoXyyUjsyPnTcQFoERl4UQewdTsY8gnHvWcn0/uU+6PM
 P8mTKfg+bT8zcI5nEDZDxGY0RbFzcCAgAv937dMn7C7UyFhfBqY45GEi9G8nVNHirpkc
 yZJ+WCzV2KTEoKfWPllJqFUw1w2ID2Fipxyjt+K4apOXscHQOERRlbO4yqbYocm6DrY9
 zltdP4c8hNSdeIT5tiO6DgTSgttglknXcFExj9HZhl3S+6hNpQkjPzJ771mIV9lGZTbg
 V8QFpvJWss6c+1uWbb5khwU7yCDxUkK5vd4SvndgRE8YsEnKJq15dkJU8GYuwDpvzbaE
 cRjg==
X-Gm-Message-State: AGi0PuZ6QQgDmyg5gFvydTBuyPDqjNMZKXrsjB+7JJqyRT8wZnJqgxHb
 JVlJYAlCLWC34wbOyBZDff8tsTB3+dgfHOAisM8=
X-Google-Smtp-Source: APiQypI6WUS4w/Pl7H3i+0Z29uGLfg0BUZ7h87bcQVPI4mu2n4FcYAiepk1wwwunIQdOU5ejrdzdmERAO+JXLVFNamk=
X-Received: by 2002:a6b:14d4:: with SMTP id 203mr3907248iou.123.1586164217295; 
 Mon, 06 Apr 2020 02:10:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200405173601.24331-1-peron.clem@gmail.com>
 <20200405173601.24331-8-peron.clem@gmail.com>
In-Reply-To: <20200405173601.24331-8-peron.clem@gmail.com>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Mon, 6 Apr 2020 11:10:06 +0200
Message-ID: <CAJiuCcdhnCLOfe1t7oFWp8KR+_4gZ-eqpZd7zX1O3OO=5ZMB0w@mail.gmail.com>
Subject: Re: [PATCH v2 7/7] arm64: dts: allwinner: h6: Enable CPU and GPU opp
 tables for Orange Pi boards
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_021018_507105_42EDDE66 
X-CRM114-Status: GOOD (  18.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBTdW4sIDUgQXByIDIwMjAgYXQgMTk6MzYsIENsw6ltZW50IFDDqXJvbiA8cGVyb24u
Y2xlbUBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gRW5hYmxlIENQVSBhbmQgR1BVIG9wcCB0YWJsZXMg
Zm9yIE9yYW5nZSBQaSBib2FyZHMuCj4KPiBUaGlzIG5lZWRzIHRvIGNoYW5nZSB0aGUgQ1BVIHJl
Z3VsYXRvciBtYXggdm9sdGFnZSB0byBmaXQKPiB0aGUgT1BQIHRhYmxlLgo+Cj4gQWxzbyBhZGQg
dGhlIHJhbXAtZGVsYXkgaW5mb3JtYXRpb24gdG8gYXZvaWQgYW55IG91dCBvZiBzcGVjCj4gcnVu
bmluZyBhcyB0aGUgcmVndWxhdG9yIGlzIHNsb3dlciBhdCByZWFjaGluZyB0aGUgdm9sdGFnZQo+
IHJlcXVlc3RlZCBjb21wYXJlIHRvIHRoZSBQTEwgcmVhY2hpbmcgdGhlIGZyZXF1ZW5jeS4KPgo+
IFRoZXJlIGlzIG5vIHN1Y2ggaW5mb3JtYXRpb24gZm9yIEFYUDgwNSBidXQgc2ltaWxhciBQTUlD
IChBWFA4MTMpCj4gaGFzIGEgRFZNIChEeW5hbWljIFZvbHRhZ2Ugc2NhbGluZyBNYW5hZ2VtZW50
KSByYW1wIHJhdGUgZXF1YWwKPiB0byAyNTAwdVYvdXMuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDbMOp
bWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgo+IC0tLQo+ICBhcmNoL2FybTY0L2Jv
b3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtb3JhbmdlcGkuZHRzaSB8IDEwICsrKysrKysrKy0K
PiAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1vcmFuZ2Vw
aS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LW9yYW5nZXBp
LmR0c2kKPiBpbmRleCAzN2Y0YzU3NTk3ZDQuLmYzYmE1MDBjZTRjNiAxMDA2NDQKPiAtLS0gYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtb3JhbmdlcGkuZHRzaQo+ICsr
KyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1vcmFuZ2VwaS5kdHNp
CgpNYWRlIGEgbWlzdGFrZSBoZXJlLgpPbmRyZWogSmlybWFuIHRlc3QgRFZGUyBvbiBPcmFuZ2Ug
UGkgMyBib2FyZCB3aGljaCBpcyBub3QgdGhpcyBkZXZpY2UtdHJlZSBmaWxlLgoKV2lsbCBmaXgg
aW4gVjMuCgpSZWdhcmRzLApDbMOpbWVudAoKPiBAQCAtNSw2ICs1LDggQEAKPiAgL2R0cy12MS87
Cj4KPiAgI2luY2x1ZGUgInN1bjUwaS1oNi5kdHNpIgo+ICsjaW5jbHVkZSAic3VuNTBpLWg2LWNw
dS1vcHAuZHRzaSIKPiArI2luY2x1ZGUgInN1bjUwaS1oNi1ncHUtb3BwLmR0c2kiCj4KPiAgI2lu
Y2x1ZGUgPGR0LWJpbmRpbmdzL2dwaW8vZ3Bpby5oPgo+Cj4gQEAgLTQ1LDYgKzQ3LDEwIEBACj4g
ICAgICAgICB9Owo+ICB9Owo+Cj4gKyZjcHUwIHsKPiArICAgICAgIGNwdS1zdXBwbHkgPSA8JnJl
Z19kY2RjYT47Cj4gK307Cj4gKwo+ICAmZWhjaTAgewo+ICAgICAgICAgc3RhdHVzID0gIm9rYXki
Owo+ICB9Owo+IEBAIC0xNjEsNyArMTY3LDggQEAKPiAgICAgICAgICAgICAgICAgICAgICAgICBy
ZWdfZGNkY2E6IGRjZGNhIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZ3Vs
YXRvci1hbHdheXMtb247Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWd1bGF0
b3ItbWluLW1pY3Jvdm9sdCA9IDw4MTAwMDA+Owo+IC0gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MTA4MDAwMD47Cj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICByZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxMTYwMDAwPjsK
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1yYW1wLWRlbGF5ID0g
PDI1MDA+Owo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxhdG9yLW5hbWUg
PSAidmRkLWNwdSI7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgfTsKPgo+IEBAIC0xNjksNiAr
MTc2LDcgQEAKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1lbmFi
bGUtcmFtcC1kZWxheSA9IDwzMjAwMD47Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICByZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw4MTAwMDA+Owo+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MTA4MDAwMD47Cj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWd1bGF0b3ItcmFtcC1kZWxheSA9IDwyNTAw
PjsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1lID0gInZk
ZC1ncHUiOwo+ICAgICAgICAgICAgICAgICAgICAgICAgIH07Cj4KPiAtLQo+IDIuMjAuMQo+Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
