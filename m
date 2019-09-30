Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78CC1C1CB8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 10:18:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FYLygOxhHXQxsU1SuvIxa338gmA/1a2Z6nJWf2mZ2Wo=; b=AjofH4HsQSZYBH
	8ad9p5fFDMikHD7+KVZctNbuDVwbUGeNDgr7PaK9+plg1xHrKpzLu95NOzTJX6Wu7UZ69ZT1tTH3O
	oa/YabreL+QnzvFwO7OhH3Pd+O9F68JWwovIRNFPYIDUTh0DZEgDIBmU0krYpyRsJ33uW7IJyiMvj
	bZLFSaq3AvOQorvSeHPgwa1vD221ZPAJY3d8dvskSOuwzRZNkhx4OBkl8rjuf3NGbhlY5zWVL1X8X
	U8+10YcNh58BzzGwildn7Czu+pyt12pLGStp72s+bHfDd+wa6U6RDDTuofnWInphhWTNmQ1B8yENs
	C/1Xbna7E1HhuRZWr09Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEqsh-0004zZ-Q8; Mon, 30 Sep 2019 08:18:07 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEqsL-0004ok-JJ
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 08:17:47 +0000
Received: by mail-io1-xd41.google.com with SMTP id w12so7846836iol.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 01:17:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=semihalf-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=TH3m+6Q+0+bfIH6QRVOU2TE/KWS9g6tELRTADf99+UA=;
 b=LA4fpFr0nZtdMQVjGuyfQDf5UUUdTgIIUoHLP7bCHvX433V9UDdKcB5NM8BlyL2WZg
 NlExm1cjwbuJFiKIvrmJV56Bq24wGSYkXh46yP0jR7b+d3Lbf85oEhrjRwy2UIKFAUk1
 K9GujcuOjBxH0WCsUYHg+tHQD/2BdNBf+lmMHeb9CL30Flv3+FHJYNlLJWtaAMyZIQtF
 2NutFHRv+WQ8TE1EBwUU8TJVDYk5ylV2Y1AU7asEiwMyTkpm8KKNMlRDjPN+mJn5xJEX
 90oB98CaeA46xmETxhn1cuFixOLIMb+nTnFZYpmVaUpODcWovGSkG0JRC0aHusqTOaQG
 BU4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=TH3m+6Q+0+bfIH6QRVOU2TE/KWS9g6tELRTADf99+UA=;
 b=MDMXac7SuS3lXTIW7p+LF4kqkk1B1xVtM2wnmk4VXfL2NpbpEkai4+2/uZ5C6lhl8Q
 H5YLbInrrN6HgWTr0rHZGjoOjiVBAm3e/1bKZDXbWbwbFxWSefE5cT2ZEbdzK8ZB5sHi
 kwtbonhz2PpxKBky1coBaLfVgO3zxnmslwo00zVteLJ7V8UfFKgo4sML2QP4UH9mqYvw
 pBoCN3wPDsaJcpZqdTvjY7n+FkVSIloqpL3n46Hamabtt/OtCEXEQ6JQmQKuB344QsM1
 0pOh4w9gjYQU8uIuFILW1QeabD6v0SBm195e3Cvwuziws5xXnAqThjcrG/QoSzly/6WD
 GbFQ==
X-Gm-Message-State: APjAAAXq9AscAk71NKrDXJWFsEuhfejCvqF6g8yU2wiu1bKZCbDJNWPY
 rid24nvs7ocDW8SpCJm79xRoSRbwafCuqNkdg0RNVw==
X-Google-Smtp-Source: APXvYqwklr07magE3aQcrORDcgxIji9A+zij+RfpWhOSRucfuj75w3BNhd/t/1/buyYYoM1GThD215VgoPoqMs42Wk4=
X-Received: by 2002:a05:6e02:882:: with SMTP id
 z2mr19326174ils.131.1569831464105; 
 Mon, 30 Sep 2019 01:17:44 -0700 (PDT)
MIME-Version: 1.0
References: <1563279127-30678-1-git-send-email-jaz@semihalf.com>
In-Reply-To: <1563279127-30678-1-git-send-email-jaz@semihalf.com>
From: Grzegorz Jaszczyk <jaz@semihalf.com>
Date: Mon, 30 Sep 2019 10:17:33 +0200
Message-ID: <CAH76GKMZy7z05Gc9HVDUkpM04+tXMa8xEEMBWMQ7Zx1Bt_B0xQ@mail.gmail.com>
Subject: Re: [PATCH v2] PCI: aardvark: fix big endian support
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, lorenzo.pieralisi@arm.com,
 Bjorn Helgaas <bhelgaas@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_011745_672326_4AD1DD1A 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-pci@vger.kernel.org, Marcin Wojtas <mw@semihalf.com>,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgpJIHdhbnQgdG8ga2luZGx5IHJlbWluZCBhYm91dCB0aGlzIHBhdGNoLgoKQmVzdCBy
ZWdhcmRzLApHcnplZ29yegoKd3QuLCAxNiBsaXAgMjAxOSBvIDE0OjEyIEdyemVnb3J6IEphc3pj
enlrIDxqYXpAc2VtaWhhbGYuY29tPiBuYXBpc2HFgihhKToKPgo+IEluaXRpYWxpc2UgZXZlcnkg
bm90LWJ5dGUgd2lkZSBmaWVsZHMgb2YgZW11bGF0ZWQgcGNpIGJyaWRnZSBjb25maWcKPiBzcGFj
ZSB3aXRoIHByb3BlciBjcHVfdG9fbGUqIG1hY3JvLiBUaGlzIGlzIHJlcXVpcmVkIHNpbmNlIHRo
ZSBzdHJ1Y3R1cmUKPiBkZXNjcmliaW5nIGNvbmZpZyBzcGFjZSBvZiBlbXVsYXRlZCBicmlkZ2Ug
YXNzdW1lcyBsaXR0bGUtZW5kaWFuCj4gY29udmVudGlvbi4KPgo+IFNpZ25lZC1vZmYtYnk6IEdy
emVnb3J6IEphc3pjenlrIDxqYXpAc2VtaWhhbGYuY29tPgo+IC0tLQo+IHYxLT52Mgo+IC0gYWRk
IG1pc3NpbmcgY3B1X3RvX2xlMzIgZm9yIGNsYXNzX3Jldmlzb24gYXNzaWdubWVudCAoaXNzdWVz
IGZvdW5kIGJ5Cj4gVGhvbWFzIFBldGF6em9uaSBhbmQgYWxzbyBkZXRlY3RlZCBieSBTcGFyc2Ug
dG9vbCkuCj4KPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2ktYWFyZHZhcmsuYyB8IDEyICsr
KysrKystLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9u
cygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpLWFhcmR2YXJr
LmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaS1hYXJkdmFyay5jCj4gaW5kZXggMTM0ZTAz
MC4uMTc4ZTkyZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaS1hYXJk
dmFyay5jCj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2ktYWFyZHZhcmsuYwo+IEBA
IC00NzksMTggKzQ3OSwyMCBAQCBzdGF0aWMgdm9pZCBhZHZrX3N3X3BjaV9icmlkZ2VfaW5pdChz
dHJ1Y3QgYWR2a19wY2llICpwY2llKQo+ICB7Cj4gICAgICAgICBzdHJ1Y3QgcGNpX2JyaWRnZV9l
bXVsICpicmlkZ2UgPSAmcGNpZS0+YnJpZGdlOwo+Cj4gLSAgICAgICBicmlkZ2UtPmNvbmYudmVu
ZG9yID0gYWR2a19yZWFkbChwY2llLCBQQ0lFX0NPUkVfREVWX0lEX1JFRykgJiAweGZmZmY7Cj4g
LSAgICAgICBicmlkZ2UtPmNvbmYuZGV2aWNlID0gYWR2a19yZWFkbChwY2llLCBQQ0lFX0NPUkVf
REVWX0lEX1JFRykgPj4gMTY7Cj4gKyAgICAgICBicmlkZ2UtPmNvbmYudmVuZG9yID0KPiArICAg
ICAgICAgICAgICAgY3B1X3RvX2xlMTYoYWR2a19yZWFkbChwY2llLCBQQ0lFX0NPUkVfREVWX0lE
X1JFRykgJiAweGZmZmYpOwo+ICsgICAgICAgYnJpZGdlLT5jb25mLmRldmljZSA9Cj4gKyAgICAg
ICAgICAgICAgIGNwdV90b19sZTE2KGFkdmtfcmVhZGwocGNpZSwgUENJRV9DT1JFX0RFVl9JRF9S
RUcpID4+IDE2KTsKPiAgICAgICAgIGJyaWRnZS0+Y29uZi5jbGFzc19yZXZpc2lvbiA9Cj4gLSAg
ICAgICAgICAgICAgIGFkdmtfcmVhZGwocGNpZSwgUENJRV9DT1JFX0RFVl9SRVZfUkVHKSAmIDB4
ZmY7Cj4gKyAgICAgICAgICAgICAgIGNwdV90b19sZTMyKGFkdmtfcmVhZGwocGNpZSwgUENJRV9D
T1JFX0RFVl9SRVZfUkVHKSAmIDB4ZmYpOwo+Cj4gICAgICAgICAvKiBTdXBwb3J0IDMyIGJpdHMg
SS9PIGFkZHJlc3NpbmcgKi8KPiAgICAgICAgIGJyaWRnZS0+Y29uZi5pb2Jhc2UgPSBQQ0lfSU9f
UkFOR0VfVFlQRV8zMjsKPiAgICAgICAgIGJyaWRnZS0+Y29uZi5pb2xpbWl0ID0gUENJX0lPX1JB
TkdFX1RZUEVfMzI7Cj4KPiAgICAgICAgIC8qIFN1cHBvcnQgNjQgYml0cyBtZW1vcnkgcHJlZiAq
Lwo+IC0gICAgICAgYnJpZGdlLT5jb25mLnByZWZfbWVtX2Jhc2UgPSBQQ0lfUFJFRl9SQU5HRV9U
WVBFXzY0Owo+IC0gICAgICAgYnJpZGdlLT5jb25mLnByZWZfbWVtX2xpbWl0ID0gUENJX1BSRUZf
UkFOR0VfVFlQRV82NDsKPiArICAgICAgIGJyaWRnZS0+Y29uZi5wcmVmX21lbV9iYXNlID0gY3B1
X3RvX2xlMTYoUENJX1BSRUZfUkFOR0VfVFlQRV82NCk7Cj4gKyAgICAgICBicmlkZ2UtPmNvbmYu
cHJlZl9tZW1fbGltaXQgPSBjcHVfdG9fbGUxNihQQ0lfUFJFRl9SQU5HRV9UWVBFXzY0KTsKPgo+
ICAgICAgICAgLyogU3VwcG9ydCBpbnRlcnJ1cHQgQSBmb3IgTVNJIGZlYXR1cmUgKi8KPiAgICAg
ICAgIGJyaWRnZS0+Y29uZi5pbnRwaW4gPSBQQ0lFX0NPUkVfSU5UX0FfQVNTRVJUX0VOQUJMRTsK
PiAtLQo+IDIuNy40Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
