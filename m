Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 324BB1BF9E8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 15:48:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h5Wmld3gBLLHs0LNOOHmZPPLFldwUrW26v9/WyTdkS0=; b=P30644PifQ38Rs
	m9CC1VJNtj9Z792STtaqCX5VTPk90RL9Xa157RQe3MbsmFzn+bLww1kFWjzt3lceYB/R/RtOcylXV
	5Q+1YIZBI0eLbb+FfpiHbODLVabCW9WFY1Q2O6OeohdspnL8jxmbKRaXkPy99TYA87jdljDck821y
	qiFRNANn+ciXBaeP9WYpCKqKIph0spfSedOh4tOtAlur8EWdjbm20IQkOSah25+m3b2GiaXj1l4zI
	ldTzoEzGa9/N8YCpK/2hynks8IdrOT+kIMyOwQ+j1KZ9Bbcw9KutG7u/8d3TuMXKB2ZyVpsEHFJ/z
	n6kJz5zyWWdj7bIe90SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU9YD-0004aw-0y; Thu, 30 Apr 2020 13:48:29 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU9Y1-0004aC-4X
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 13:48:18 +0000
Received: by mail-io1-xd44.google.com with SMTP id 19so1492233ioz.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 06:48:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=10MZchLKLWnUIx2ECF9AmTSv1/bLhdLwtRVHSCWf8+g=;
 b=QktBavBK6XvPz921HcbrP7hPlPYQsHcjwKAwVazUGuPktYwg0hWVhrpQDMwKYPEpmX
 YQwTWO5Of3YIILrrAN3BaPXufDisF6Wq4gKImopG9EMRx2I4GFwCPFvXcCU1Q/r3SyCK
 uJi79JjeszqUlBm56CTuQbiXv3K9LQxr0nTcaDFYqcuuI+CKspZZULdGBa2qseDI+KTX
 4j9gOTBXn/+ZSYB/6Ng1f0LLtsz/A4F1PlG/FVq4r1PT57FAx+kkMMz+EWVtoiIbdJxY
 UoSV76tlgI32brHrtsqmghmLgL/rphijhheE0iv3sM9DYC9UfpM6aFilTg1n2yGD+etb
 mAlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=10MZchLKLWnUIx2ECF9AmTSv1/bLhdLwtRVHSCWf8+g=;
 b=R04N4dl+oL/LQXgZ3krDWK93+jUYnZXUW/uSCjktqhKPKCitCkBuIUcAKMBwmLmWXk
 3S+UtTfdXRie/5D/5JswGc94uO1yseLcP2EOZpbqvpMJZXyu5fqSszL6MToL1uy7kXvo
 +PtMkPqAZlKSeLDq1LwTvcHXMehd4EK3RFu7KV01WKttrv2w3TZ69q1qzFJWV75eZVxc
 Ew6t8RqNL+gQjk3iOgEWhTqDizFVJ4AlfcxSHkxomYdgy14TNyYk7filBz3RdOZLPUjv
 DEMvw7HrjxvUXffwVJTk+X6Gxhi6N67ReMIvmqa3AizpruI9oheLgzj2Z34cXH8MvIo6
 zuaw==
X-Gm-Message-State: AGi0PuYAy4Pa2DCnzJ1uARq2Uga4XoT3HFylqsaevIUUAVEm89xTO8H7
 ZeUGor/wtR5q70/kJms86mf73Sv675fJfN77VdY=
X-Google-Smtp-Source: APiQypKUewJB7mq7q4jnAnRBE/CzoMbD/Z0qGWJZJ2DU8qcUWhS+0JFArF36tAUwzspubM+J9kD6UrRljIliN6yqnRg=
X-Received: by 2002:a02:3f44:: with SMTP id c4mr1837141jaf.144.1588254495397; 
 Thu, 30 Apr 2020 06:48:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200428142629.8950-1-peron.clem@gmail.com>
 <98246e5d-ebef-bcb5-f0b8-d74b3834b835@arm.com>
 <CAJiuCcco0d_UoWeHqh6oc0rFNAMFynXjLRQ6APsT0WBh7m+GQg@mail.gmail.com>
 <20200428164522.p7ypca7zwocc7alq@gilmour.lan>
In-Reply-To: <20200428164522.p7ypca7zwocc7alq@gilmour.lan>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Thu, 30 Apr 2020 15:48:04 +0200
Message-ID: <CAJiuCce9UDp--XQ=rXPZ5cZyNDMFC3zyq7pnw3ETXkR3=zMWaQ@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH v2] arm64: dts: allwinner: h6: Use dummy
 regulator for Tanix TX6
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_064817_190290_EFE43B16 
X-CRM114-Status: GOOD (  21.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Piotr Oniszczuk <warpme@o2.pl>,
 Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF4aW1lLAoKT24gVHVlLCAyOCBBcHIgMjAyMCBhdCAxODo0NSwgTWF4aW1lIFJpcGFyZCA8
bWF4aW1lQGNlcm5vLnRlY2g+IHdyb3RlOgo+Cj4gT24gVHVlLCBBcHIgMjgsIDIwMjAgYXQgMDY6
MjM6MzVQTSArMDIwMCwgQ2zDqW1lbnQgUMOpcm9uIHdyb3RlOgo+ID4gSGkgUm9iaW4sCj4gPgo+
ID4gT24gVHVlLCAyOCBBcHIgMjAyMCBhdCAxNzoyMSwgUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJw
aHlAYXJtLmNvbT4gd3JvdGU6Cj4gPiA+Cj4gPiA+IE9uIDIwMjAtMDQtMjggMzoyNiBwbSwgQ2zD
qW1lbnQgUMOpcm9uIHdyb3RlOgo+ID4gPiA+IFRhbml4IFRYNiBoYXMgYSBmaXhlZCByZWd1bGF0
b3IuIEFzIERWRlMgaXMgaW5zdHJ1Y3RlZCB0byBjaGFuZ2UKPiA+ID4gPiB2b2x0YWdlIHRvIG1l
ZXQgT1BQIHRhYmxlLCB0aGUgRFZGUyBpcyBub3Qgd29ya2luZyBhcyBleHBlY3RlZC4KPiA+ID4K
PiA+ID4gSG1tLCBpc24ndCB0aGF0IHJlYWxseSBhIGJ1ZyBpbiB0aGUgRFZGUyBjb2RlPyBJIGd1
ZXNzIGl0J3MganVzdCBibGluZGx5Cj4gPiA+IHByb3BhZ2F0aW5nIC1FSU5WQUwgZnJvbSB0aGUg
Zml4ZWQgcmVndWxhdG9ycyBub3QgaW1wbGVtZW50aW5nCj4gPiA+IHNldF92b2x0YWdlLCBidXQg
QUZBSUNTIGl0IGhhcyBubyByZWFsIGV4Y3VzZSBub3QgdG8gYmUgY2xldmVyZXIgYW5kCj4gPiA+
IHN0aWxsIGFsbG93IHN3aXRjaGluZyBmcmVxdWVuY3kgYXMgbG9uZyBhcyB0aGUgdm9sdGFnZSAq
aXMqIGhpZ2ggZW5vdWdoCj4gPiA+IGZvciB0aGUgZ2l2ZW4gT1BQLiBJIHdvbmRlciBob3cgd2Vs
bCBpdCB3b3JrcyBpZiB0aGUgcmVndWxhdG9yIGlzCj4gPiA+IHByb2dyYW1tYWJsZSBidXQgc2hh
cmVkIHdpdGggb3RoZXIgY29uc3VtZXJzLi4uIHRoYXQgY2FzZSBwcm9iYWJseSBjYW4ndAo+ID4g
PiBiZSBoYWNrZWQgYXJvdW5kIGluIERULgo+ID4KPiA+IExpa2UgeW91LCBJIHRob3VnaHQgdGhh
dCB0aGUgRFZGUyB3YXMgY2xldmVyIGVub3VnaCB0byB1bmRlcnN0YW5kIHRoaXMKPiA+IGJ1dCBn
dWVzcyBub3QuLgo+ID4KPiA+IE1heWJlIHRoZXkgYXJlIHNvbWUgY2FzZXMgd2hlcmUgeW91IGRv
bid0IHdhbnQgdG8gbGVhdmUgdGhlIHZvbHRhZ2UgaGlnaCBhbmQKPiA+IHJlZHVjZSB0aGUgZnJl
cXVlbmN5LiBCdXQgSSBkb24ndCBrbm93IHN1Y2ggY2FzZS4KPgo+IEkgYXNzdW1lIHRoZSBpbnRl
bnQgd2FzIHRvIHByZXZlbnQgYSByZWd1bGF0b3IgZHJpdmVyIHRvIG92ZXJzaG9vdCBhbmQgZW5k
IHVwCj4gb3Zlci12b2x0aW5nIHRoZSBDUFUgd2hpY2ggd291bGQgYmUgcHJldHR5IGJhZC4KPgo+
IEkgZ3Vlc3Mgd2UgY291bGQgY2hlY2sgdGhhdCB0aGUgdm9sdGFnZSBpcyBpbiB0aGUgcmFuZ2Ug
b3BwIDwgYWN0dWFsIHZvbHRhZ2UgPAo+IG1heCBvcHAgdm9sdGFnZSA/CgpBcyB0aGlzIGNvdWxk
IHRha2UgbW9yZSB0aW1lIHRoYW4gZXhwZWN0ZWQsCgpDb3VsZCB5b3UgZHJvcCB0aGUgY29tbWl0
IDoKYWRkMWUyN2ZiNzAzZjY1ZjMzMTkxY2NjNzBkZDlkODExMjU0Mzg3Ywphcm02NDogZHRzOiBh
bGx3aW5uZXI6IGg2OiBFbmFibGUgQ1BVIG9wcCB0YWJsZXMgZm9yIFRhbml4IFRYNgoKVGhhbmtz
LApDbGVtZW50Cgo+Cj4gTWF4aW1lCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
