Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 600DB15BBCB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 10:38:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KwRCO2XNaNQuA1yY/vAv3TxsX7fxYoEf2abM+SCHcds=; b=h823kARonpb41b
	yPNxb20LO4crhqGYNGjMc00YIEI+BoktskwXDiejn+02Y0tO4/YjmZxcVd54JSoF2sv3SPlWhivh1
	USRaPJVAmnOJSUguxMPKozml34tkJJRkhLZleNdtYWXYE7JqhLXigs3F8guNANAwoe6LPseQ1p2KW
	zInUSq3m6hQ8u/tO4QOAwQ7npQj8z8OnmOZQ4a2ac9TA126wL2ShygYyH8uZP8rX6sBBIrwDZsDqW
	xeHnaz3DXXxraeiU4VO8NBza8VG3XApZa8krj6clR/ZcEip5iyoC8gPSZL+LMt15LSScG0JFb/p/P
	34Nk1xrTb87YR2nTQGGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Awf-0005Kv-CI; Thu, 13 Feb 2020 09:38:05 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2AwP-0005KR-3v
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 09:37:50 +0000
Received: by mail-lj1-x244.google.com with SMTP id q8so5807116ljb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 01:37:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=abAWSR2K9H6Y7+jBghj7Y02LAAu4P/DFtVh1G9MzXxs=;
 b=QijSSUZmAvV9r/UmfLRddFu/lj5MAcoPgRZbVa3v9j5jiiATXWzyL/BvURW3lz3KW7
 iMjlFqEHYvawzlPHLR/6TBOqcOgIPA8kR1X2nWq5kW9cvm8JEMkz8Q9hVcUSVr23HHE4
 ZwjkFtmmfIky8bGKUhfgRMyi8KT/hNbFyFmrU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=abAWSR2K9H6Y7+jBghj7Y02LAAu4P/DFtVh1G9MzXxs=;
 b=VbDxMhtep+sHZ48nXjgNuPpEOBYT9vrchVn/iNatTj5igBFfKcO6FqpIp2Q0wp8kN9
 QCR4xJ4ql/9Yqabbi3H6AoKjGqxvIOsq5qB1Wh2ropGCOkIxZQWl4BL+v3pO1q3BmFkC
 WV09G43hicgmqEFHAIgB595WrOmxLInudmRBFI0A26cBdkC2PBFbVeSgJVVvSoYo31B2
 IaFnThQCneauVVYp8g/P7KksmqJe7swDEdjbPkZXgeetALFiekKA4XI8uNNa2Y+SPm3h
 eSwIQ6nA8G5lbNczvNDl484VgXfEoZ/W2RCIz6SC9rQ20d1EShOhLTckrUFirqc3WHyp
 3WCQ==
X-Gm-Message-State: APjAAAUzbheQhiXIbxMQeOF5IuJKbP9qPp4Mya3XM9wLjoS7r69hfH4x
 iV0/7gyOnw9KYoMYYxQAlpeY4PRLPLf0Ia78
X-Google-Smtp-Source: APXvYqyZFOrtSR7eABF1EXRChiVl4lCT5gyFw0WU8p2xdTyGdZA18sFRm59BfuNt7mQK9C5WtPUKtw==
X-Received: by 2002:a05:651c:232:: with SMTP id
 z18mr11013557ljn.85.1581586666416; 
 Thu, 13 Feb 2020 01:37:46 -0800 (PST)
Received: from [172.16.11.50] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id r9sm1151939lfc.72.2020.02.13.01.37.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 13 Feb 2020 01:37:45 -0800 (PST)
Subject: Re: [Regression 5.6-rc1][Bisected b6231ea2b3c6] Powerpc 8xx doesn't
 boot anymore
To: Christophe Leroy <christophe.leroy@c-s.fr>, Li Yang <leoyang.li@nxp.com>, 
 Qiang Zhao <qiang.zhao@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <0d45fa64-51ee-0052-cb34-58c770c5b3ce@c-s.fr>
 <aee10440-c244-7c93-d3bb-fd29d8a83be4@c-s.fr>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <59487f8a-fd2e-703d-d954-d263f756a3a0@rasmusvillemoes.dk>
Date: Thu, 13 Feb 2020 10:37:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <aee10440-c244-7c93-d3bb-fd29d8a83be4@c-s.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_013749_194748_7286DB4F 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Scott Wood <oss@buserror.net>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTIvMDIvMjAyMCAxNS41MCwgQ2hyaXN0b3BoZSBMZXJveSB3cm90ZToKPiAKPiAKPiBPbiAw
Mi8xMi8yMDIwIDAyOjI0IFBNLCBDaHJpc3RvcGhlIExlcm95IHdyb3RlOgoKPj4gSW4geW91ciBj
b21taXQgdGV4dCB5b3UgZXhwbGFpbiB0aGF0IGNwbV9tdXJhbV9pbml0KCkgaXMgY2FsbGVkIHZp
YQo+PiBzdWJzeXNfaW5pdGNhbGwuIEJ1dCBjb25zb2xlIGluaXQgaXMgZG9uZSBiZWZvcmUgdGhh
dCwgc28gaXQgY2Fubm90IHdvcmsuCj4+Cj4+IERvIHlvdSBoYXZlIGEgZml4IGZvciB0aGF0ID8K
Pj4KPiAKPiBUaGUgZm9sbG93aW5nIHBhdGNoIGFsbG93cyBwb3dlcnBjIDh4eCB0byBib290IGFn
YWluLiBEb24ndCBrbm93IGlmCj4gdGhhdCdzIHRoZSBnb29kIHBsYWNlIGFuZCB3YXkgdG8gZG8g
dGhlIGZpeCB0aG91Z2guCj4gCj4gLS0tCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdHR5L3Nlcmlh
bC9jcG1fdWFydC9jcG1fdWFydF9jb3JlLmMKPiBiL2RyaXZlcnMvdHR5L3NlcmlhbC9jcG1fdWFy
dC9jcG1fdWFydF9jb3JlLmMKPiBpbmRleCA0Y2FiZGVkODM5MGIuLjM0MWQ2ODJlYzZlYiAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL3R0eS9zZXJpYWwvY3BtX3VhcnQvY3BtX3VhcnRfY29yZS5jCj4g
KysrIGIvZHJpdmVycy90dHkvc2VyaWFsL2NwbV91YXJ0L2NwbV91YXJ0X2NvcmUuYwo+IEBAIC0x
MzUxLDYgKzEzNTEsNyBAQCBzdGF0aWMgaW50IF9faW5pdCBjcG1fdWFydF9jb25zb2xlX3NldHVw
KHN0cnVjdAo+IGNvbnNvbGUgKmNvLCBjaGFyICpvcHRpb25zKQo+IMKgwqDCoMKgwqDCoMKgwqAg
Y2xyYml0czMyKCZwaW5mby0+c2NjcC0+c2NjX2dzbXJsLCBTQ0NfR1NNUkxfRU5SIHwgU0NDX0dT
TVJMX0VOVCk7Cj4gwqDCoMKgwqAgfQo+IAo+ICvCoMKgwqAgY3BtX211cmFtX2luaXQoKTsKPiDC
oMKgwqDCoCByZXQgPSBjcG1fdWFydF9hbGxvY2J1ZihwaW5mbywgMSk7Cj4gCj4gwqDCoMKgwqAg
aWYgKHJldCkKCkhtbSwgdGhhdCBzZWVtcyB0byBiZSBhIHNvbWV3aGF0IHJhbmRvbSBwbGFjZSwg
bWFraW5nIGl0IGhhcmQgdG8gc2VlCnRoYXQgaXQgaXMgaW5kZWVkIGVhcmx5IGVub3VnaC4gV291
bGQgaXQgd29yayB0byBwdXQgaXQgaW5zaWRlIHRoZQpjb25zb2xlX2luaXRjYWxsIHRoYXQgcmVn
aXN0ZXJzIHRoZSBjcG0gY29uc29sZT8gSS5lLgoKc3RhdGljIGludCBfX2luaXQgY3BtX3VhcnRf
Y29uc29sZV9pbml0KHZvaWQpCnsKKyAgICAgICBjcG1fbXVyYW1faW5pdCgpOwogICAgICAgIHJl
Z2lzdGVyX2NvbnNvbGUoJmNwbV9zY2NfdWFydF9jb25zb2xlKTsKICAgICAgICByZXR1cm4gMDsK
fQoKY29uc29sZV9pbml0Y2FsbChjcG1fdWFydF9jb25zb2xlX2luaXQpOwoKUmFzbXVzCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
