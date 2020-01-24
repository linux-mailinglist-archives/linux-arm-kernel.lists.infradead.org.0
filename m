Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C442114769E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 02:22:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z8KDcPzpQET86AoKJGIA45mwvwyCj252Nv2plNzcFak=; b=SM3DC7m9AnJ40E
	iymKyOQD0gwX2OSr4kyU0iuRGU6G6p7p9e8sSJ1ywKm+3iJiJqqMu/Fv0G+OwxD9XvuItC/raQy6e
	MrYUULMuaIxEP+r8228PHKISg7VwMXl1ooOVyAfWgWopQSobj9hGs1oFP6KeCJqZQ8GfWQDKieF2S
	6RdarUCE2EQj28y1qXC+Qt6UjuFiYvh79IOs7r0q5fSB2TYcJry8oVTb1k4tNVUMfQu20bxXzxgl7
	Som3mBvh1Sp3UYOvzLjSui7etEitY9PZGVca2+SgXhFVkv9hf56t+ZJM9IoQEjjyTDR9rrvOjgFWy
	oTB/Ro0LUjNhZs21AShg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iunff-0005ri-Eq; Fri, 24 Jan 2020 01:22:03 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iunfX-0005r5-JK
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 01:21:56 +0000
Received: by mail-qk1-x742.google.com with SMTP id d10so567490qke.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 17:21:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=17LlDvr3P+aPnbiTd/Xv0AEpyX3plN5wLIAiiiLM3JM=;
 b=T9dkl4o2yEUKj+mpTrje5F4r+Sy39rUUnsVelGI8H1iTPAY9q6tnTk2rdnu78ranin
 99U0gCXbQ0OQCO7ibpHdBQz5Lw/mACQcGZDkkH7VDcUUYiR1rmPWJNCcorE5kEOsIyuF
 +HWUw6W8WnOVeB5jH81Wh5l37Sh4JwGP9V1JI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=17LlDvr3P+aPnbiTd/Xv0AEpyX3plN5wLIAiiiLM3JM=;
 b=MIfX1hRGk43/0HndRBHvutQ3BIeWcMOr/iYqktUPbn067QQandjDg4mtdacW3wcOA+
 Eody9hppNkhfCLI9wCvqQVpuYjh1pQuKc8Q4Cdxhl8Z3VaThxRNIhALy8xQBvM4AZcOw
 Ufbi3MzZ8eaKWxH0SNcKVNb4wwOiPG1xS/LR828Hk8+qw9C6iRDtdfponasrLuzR1ntd
 nQMPXGSl/0iQfX+yoFWqO6fkwtn4DycK3I3Ova5R5tAW1qxp9Vbr7U+P6gEopun1qjIN
 rFMWkkh/YCwCkj9LcRmTscNICiVL+yCZvwDiQBtXDQTUF9e7jEulJHgU/DrBWeFCnnvw
 O2aw==
X-Gm-Message-State: APjAAAVnKLt97fxug3UXsUgeiox74TqoYUl//8JIX5au6WYbrwNIPqOC
 CdIHxeOwYsuTtopJQXds8P+Eu3oaw6ldeuUxGA+1Zg==
X-Google-Smtp-Source: APXvYqyNwDovBIOpVeX3aeLO2sskA0EZZmPzVBRqgbojfXQFpYEHw2wY9F00g8420CfluzcZbzVJOCQFPD7svOkBKtQ=
X-Received: by 2002:a37:9dc8:: with SMTP id g191mr322080qke.171.1579828913107; 
 Thu, 23 Jan 2020 17:21:53 -0800 (PST)
MIME-Version: 1.0
References: <20200124011747.18575-1-sashal@kernel.org>
 <20200124011747.18575-5-sashal@kernel.org>
In-Reply-To: <20200124011747.18575-5-sashal@kernel.org>
From: Joel Stanley <joel@jms.id.au>
Date: Fri, 24 Jan 2020 01:21:40 +0000
Message-ID: <CACPK8XeGLW6cm9UV7gqrOF18BzsRBppzLQLY6G=Y2MDj2Yrnhw@mail.gmail.com>
Subject: Re: [PATCH AUTOSEL 4.19 05/11] ARM: config: aspeed-g5: Enable 8250_DW
 quirks
To: Sasha Levin <sashal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_172155_675036_87C75D41 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
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

SEkgU2FzaGEsCgpPbiBGcmksIDI0IEphbiAyMDIwIGF0IDAxOjE3LCBTYXNoYSBMZXZpbiA8c2Fz
aGFsQGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gRnJvbTogSm9lbCBTdGFubGV5IDxqb2VsQGptcy5p
ZC5hdT4KPgo+IFsgVXBzdHJlYW0gY29tbWl0IGE1MzMxYTdhODdlYzgxZDUyMjhiNzQyMWFjZjgz
MWIyZDBjMGRlMjYgXQo+Cj4gVGhpcyBkcml2ZXIgb3B0aW9uIGlzIHVzZWQgYnkgdGhlIEFTVDI2
MDAgQTAgYm9hcmRzIHRvIHdvcmsgYXJvdW5kIGEKPiBoYXJkd2FyZSBpc3N1ZS4KClRoaXMgaGFy
ZHdhcmUgd2FzIG9ubHkgc3VwcG9ydGVkIGZyb20gNS40Kywgc28gSSB0aGluayB3ZSBjYW4gZHJv
cCB0aGlzIHBhdGNoLgoKQ2hlZXJzLAoKSm9lbAoKPgo+IFJldmlld2VkLWJ5OiBDw6lkcmljIExl
IEdvYXRlciA8Y2xnQGthb2Qub3JnPgo+IEFja2VkLWJ5OiBBcm5kIEJlcmdtYW5uIDxhcm5kQGFy
bmRiLmRlPgo+IFNpZ25lZC1vZmYtYnk6IEpvZWwgU3RhbmxleSA8am9lbEBqbXMuaWQuYXU+Cj4g
U2lnbmVkLW9mZi1ieTogU2FzaGEgTGV2aW4gPHNhc2hhbEBrZXJuZWwub3JnPgo+IC0tLQo+ICBh
cmNoL2FybS9jb25maWdzL2FzcGVlZF9nNV9kZWZjb25maWcgfCAxICsKPiAgMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vY29uZmlncy9hc3Bl
ZWRfZzVfZGVmY29uZmlnIGIvYXJjaC9hcm0vY29uZmlncy9hc3BlZWRfZzVfZGVmY29uZmlnCj4g
aW5kZXggMDJmYTNhNDFhZGQ1Yy4uMjQ3YmU2YzIzZDJjNiAxMDA2NDQKPiAtLS0gYS9hcmNoL2Fy
bS9jb25maWdzL2FzcGVlZF9nNV9kZWZjb25maWcKPiArKysgYi9hcmNoL2FybS9jb25maWdzL2Fz
cGVlZF9nNV9kZWZjb25maWcKPiBAQCAtMTM4LDYgKzEzOCw3IEBAIENPTkZJR19TRVJJQUxfODI1
MF9SVU5USU1FX1VBUlRTPTYKPiAgQ09ORklHX1NFUklBTF84MjUwX0VYVEVOREVEPXkKPiAgQ09O
RklHX1NFUklBTF84MjUwX0FTUEVFRF9WVUFSVD15Cj4gIENPTkZJR19TRVJJQUxfODI1MF9TSEFS
RV9JUlE9eQo+ICtDT05GSUdfU0VSSUFMXzgyNTBfRFc9eQo+ICBDT05GSUdfU0VSSUFMX09GX1BM
QVRGT1JNPXkKPiAgQ09ORklHX0FTUEVFRF9LQ1NfSVBNSV9CTUM9eQo+ICBDT05GSUdfQVNQRUVE
X0JUX0lQTUlfQk1DPXkKPiAtLQo+IDIuMjAuMQo+CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
