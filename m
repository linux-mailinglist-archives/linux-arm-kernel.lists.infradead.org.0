Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F25F1476A5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 02:23:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9stgLLoKbwdvtsrxJQm03mCwQXTXXNgt95f3nUPuwXc=; b=Ql4lZat348ZZdN
	JtzpyCRDN/3+m/tqyifHEv03Ao+QP172584FvYtFRTAdm1lOZ9JgYM7qDT7p2Cz0Ff3CcDwtWd0/x
	NP5rmhZuMHDumBI5R/NAMMAzzoQ7NNnTJQHnCsXtOc5UR6BoidP+yOGsWXWPkTJ2qU2SS7sIzVPex
	4LGMUYHJshCGGfLgxCzFlSHHylSb9F2O4+fCTBc+GVXs1+CxWxS7Ek8xODuDzE73YdsYNCjTi6l6x
	T3ti0QfuhbUMlqomYxTSlKVSCXQUamptAJ0WX8RnRl+FM1RVxPfuokL3ecVygMsSrmVEktGHGyZuk
	4GqUPqSjwy0iVNeEOvgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iungX-00068n-Ge; Fri, 24 Jan 2020 01:22:57 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iungN-00067e-7j
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 01:22:48 +0000
Received: by mail-qt1-x843.google.com with SMTP id d5so363786qto.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 17:22:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=phGwo+pDXf6bF+gF8aK5SXhe6NHtsdTb5Ox/q8isBRk=;
 b=ldMSr6BrgSIK0aY1BELR8h72NuIAXhgOVdDnjW8N7nx/HKdDhfOLZr3NLQy6yQ3yIi
 YWiAnx5adD1yMX2mlaqBGRLCX8Cec4O2/h+whOq90/e4Nm98MlfGtuWRtIfJzex80527
 5lkmtfLK+whfgwlnuGZJdPajF59rIS4SRcX4Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=phGwo+pDXf6bF+gF8aK5SXhe6NHtsdTb5Ox/q8isBRk=;
 b=pxIpUTV8pAstDRgzWcYN4mtJuKynViZz7TnuvsoDaYvOSS1qQtzhX6tYWoZWbcGJfm
 wPDN8v8B1X0SggwB8NlZRn/KIOuQgYrqylbyKBdo0SJVSblHE9GXwO0+h/BPOyYdHBBc
 HrRyKcMD13MULTvRRVhW/lCwTmnMOqvJv26+5xdnVqftAg+VVdU0cEqCNSvGAwoyc7No
 /1wsxnzLCbVvczahkwpnefU/idwB7rRaNiQBdcwhMcVJsiA+8c6p36OACtHwt6HKbw6c
 QwwxEd4J900DHNPn3rWNC7HgqXgONd0w+MywTkK2Nnuo8THaLf5I9551YxGukH7UjbHE
 Pw6A==
X-Gm-Message-State: APjAAAWkmoA7F1PwlQ3FdTCf3zqM+9s9h45+AwnbGkCUklaf2//IJKOx
 nnsi6bYj9/CpLp38vuw/xfUAHzxQBaCPvbjYTCE=
X-Google-Smtp-Source: APXvYqxgfz4Zw0PQe3tGHa9Wg4sjEbGekFBUPqOcMg5JxkIQChmOWlM1gWfBxIkoJXDoObnt764EEJ+L6PXnaUm63tA=
X-Received: by 2002:ac8:1ac1:: with SMTP id h1mr1008470qtk.255.1579828965827; 
 Thu, 23 Jan 2020 17:22:45 -0800 (PST)
MIME-Version: 1.0
References: <20200124011808.18801-1-sashal@kernel.org>
In-Reply-To: <20200124011808.18801-1-sashal@kernel.org>
From: Joel Stanley <joel@jms.id.au>
Date: Fri, 24 Jan 2020 01:22:33 +0000
Message-ID: <CACPK8XdNmF0GN_PkXttSmvAVSqUh7FtDzYOD-=LFeL-0=NHOkA@mail.gmail.com>
Subject: Re: [PATCH AUTOSEL 4.9 1/2] ARM: config: aspeed-g5: Enable 8250_DW
 quirks
To: Sasha Levin <sashal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_172247_275797_3D804A20 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 stable@vger.kernel.org, =?UTF-8?Q?C=C3=A9dric_Le_Goater?= <clg@kaod.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAyNCBKYW4gMjAyMCBhdCAwMToxOCwgU2FzaGEgTGV2aW4gPHNhc2hhbEBrZXJuZWwu
b3JnPiB3cm90ZToKPgo+IEZyb206IEpvZWwgU3RhbmxleSA8am9lbEBqbXMuaWQuYXU+Cj4KPiBb
IFVwc3RyZWFtIGNvbW1pdCBhNTMzMWE3YTg3ZWM4MWQ1MjI4Yjc0MjFhY2Y4MzFiMmQwYzBkZTI2
IF0KPgo+IFRoaXMgZHJpdmVyIG9wdGlvbiBpcyB1c2VkIGJ5IHRoZSBBU1QyNjAwIEEwIGJvYXJk
cyB0byB3b3JrIGFyb3VuZCBhCj4gaGFyZHdhcmUgaXNzdWUuCgpUaGlzIGhhcmR3YXJlIHdhcyBv
bmx5IHN1cHBvcnRlZCBmcm9tIDUuNCssIHNvIEkgdGhpbmsgd2UgY2FuIGRyb3AgdGhpcyBwYXRj
aC4KCkNoZWVycywKCkpvZWwKCj4KPiBSZXZpZXdlZC1ieTogQ8OpZHJpYyBMZSBHb2F0ZXIgPGNs
Z0BrYW9kLm9yZz4KPiBBY2tlZC1ieTogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KPiBT
aWduZWQtb2ZmLWJ5OiBKb2VsIFN0YW5sZXkgPGpvZWxAam1zLmlkLmF1Pgo+IFNpZ25lZC1vZmYt
Ynk6IFNhc2hhIExldmluIDxzYXNoYWxAa2VybmVsLm9yZz4KPiAtLS0KPiAgYXJjaC9hcm0vY29u
Zmlncy9hc3BlZWRfZzVfZGVmY29uZmlnIHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKQo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2NvbmZpZ3MvYXNwZWVkX2c1X2RlZmNv
bmZpZyBiL2FyY2gvYXJtL2NvbmZpZ3MvYXNwZWVkX2c1X2RlZmNvbmZpZwo+IGluZGV4IDRmMzY2
YjAzNzBlOTMuLjNmYjZiY2JhNzk5NDIgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vY29uZmlncy9h
c3BlZWRfZzVfZGVmY29uZmlnCj4gKysrIGIvYXJjaC9hcm0vY29uZmlncy9hc3BlZWRfZzVfZGVm
Y29uZmlnCj4gQEAgLTUzLDYgKzUzLDcgQEAgQ09ORklHX1NFUklBTF84MjUwX05SX1VBUlRTPTYK
PiAgQ09ORklHX1NFUklBTF84MjUwX1JVTlRJTUVfVUFSVFM9Ngo+ICBDT05GSUdfU0VSSUFMXzgy
NTBfRVhURU5ERUQ9eQo+ICBDT05GSUdfU0VSSUFMXzgyNTBfU0hBUkVfSVJRPXkKPiArQ09ORklH
X1NFUklBTF84MjUwX0RXPXkKPiAgQ09ORklHX1NFUklBTF9PRl9QTEFURk9STT15Cj4gICMgQ09O
RklHX0hXX1JBTkRPTSBpcyBub3Qgc2V0Cj4gICMgQ09ORklHX1VTQl9TVVBQT1JUIGlzIG5vdCBz
ZXQKPiAtLQo+IDIuMjAuMQo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
