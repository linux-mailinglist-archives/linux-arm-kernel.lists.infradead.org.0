Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E2301520DD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 20:13:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w3QqLzook22br2sbWOdZpBQWjQ644AQ3p5QD9fCbFx4=; b=lNzzXfZZX+Y36T
	vVDVW6AVOo7uA1/RmapyO0DZDT3mZ3wPsNoxb4Do2Y8ebk2cTzTdVv0585vf2HnDcMExoOj4Ihx6W
	RIgaojyHYnoS9poIAa+oHR9bmwRYJqwhusypHQV89S+BcpPg6nCvNyLGpJBOk14jATizhnB/iAsOh
	2oyNnYQq2ZVJTt/xiw5VkM9iSXcADSGZpHMTl2CTiJ9CLAW3xtX4g+qj70L6d/VjFkbAXr30fJcYO
	kJzlpBvOUIpRtwgTmuR1tIId0SHCw8qvSZOwE2PNQe0KakwWPbfdYE8XYZgcoZAZqt+uqXMFrcCwH
	bJycd1UqwhU4LALG5A5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz3dl-0007AX-Ms; Tue, 04 Feb 2020 19:13:41 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz3dc-00079c-A9
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 19:13:33 +0000
Received: by mail-qk1-x743.google.com with SMTP id h4so8256505qkm.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Feb 2020 11:13:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=bdX909F5cI382fCwL2BmbcR0X3LXro/I1upGDSYHuzo=;
 b=af9b04eiFve+KyP+LhZf60HCVL8lPPYPwQ3FEmqeZfugnYDSuPcWsvjoIrXPo6YCva
 Sc1FERU+4ZaaJsFfjiA+Ilwn0S5M+WFGlLJYvVeb3SEJ91x2vP63V+QrjbzKaZ7E0Lvs
 QYcF+eLurguVf0WwaTyU99Y9wxY/l/BcQhknatNYVhyeIGROiRm+pSTnMqL7puw8leTx
 YHFXfMcvNO7MNPf2hmS9+TQ1OLDH3/FYxrZWfKKNdej+Bjmyi3nYUvRsQrf5jf4/i9RI
 oHbybLHDDO4NXvJzLAlQulpZD6bxgLg2iOA6Rg9/FtpCBh34ZJ4fUOiUP+PAf/YXIMmn
 cVJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=bdX909F5cI382fCwL2BmbcR0X3LXro/I1upGDSYHuzo=;
 b=T30qNyFox8xfaf1mKi1k6+7ME9eCOG+hmUy5G/G+eX/Vt+TkXc98IbEFIaeAzRKQ5a
 0ms1S5FTTdF/AhYO+hrLk71AE3MyE+om5YvWwoYLe6mePmqvygxAAHJQWWg8sHla4Ldc
 KGF/D71LZ/qfXtAuCtVkdpjg9b2cweTM4RW5iwrj2as9cfqnjvuM7oAl+Plh94raBrJ2
 YzeYGxMbR7JWb1fEXq/h4ZCTqlWupYlM6klEOMjJ7L5Zk5UTB/1vYl1EUHVT0WZu3WQ1
 Lq6dEEJpaza7XYLhnBEStVbHFK3AZsXRkS45ySwwl4hFnzT8qqSMweBvfPcA7tgC4jgu
 dNXg==
X-Gm-Message-State: APjAAAWITBAkCevEVoDY/nLjBG1+e0V1dygfni5NcdDSfaDatBSZlb7Y
 A3cceloZKANQPvyTubhPDzOAqQSF1zmt9q1yGuc=
X-Google-Smtp-Source: APXvYqzL2qBK84KG5kdgM/FLguBsVyHKuNA+SYxiM1gbwqv39K/jDfeV7q5nmkTTa6/okXiRZyHcbl5ya+Yw7DY8LmY=
X-Received: by 2002:a37:63c7:: with SMTP id
 x190mr30030638qkb.232.1580843609003; 
 Tue, 04 Feb 2020 11:13:29 -0800 (PST)
MIME-Version: 1.0
References: <20200128021145.36774-1-palmerdabbelt@google.com>
 <20200128021145.36774-5-palmerdabbelt@google.com>
In-Reply-To: <20200128021145.36774-5-palmerdabbelt@google.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Tue, 4 Feb 2020 20:13:17 +0100
Message-ID: <CAJ+HfNjkacY-KStgGJMgvQh2=2OsMnH6Saij+nAPBqQrSJcNWw@mail.gmail.com>
Subject: Re: [PATCH 4/4] arm64: bpf: Elide some moves to a0 after calls
To: Palmer Dabbelt <palmerdabbelt@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_111332_353660_930EBE21 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bjorn.topel[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Song Liu <songliubraving@fb.com>, Andrii Nakryiko <andriin@fb.com>,
 Daniel Borkmann <daniel@iogearbox.net>, kernel-team@android.com,
 zlim.lnx@gmail.com, Shuah Khan <shuah@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux@googlegroups.com, Netdev <netdev@vger.kernel.org>,
 linux-kselftest@vger.kernel.org, catalin.marinas@arm.com,
 Yonghong Song <yhs@fb.com>, bpf <bpf@vger.kernel.org>, will@kernel.org,
 Martin KaFai Lau <kafai@fb.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAyOCBKYW4gMjAyMCBhdCAwMzoxNSwgUGFsbWVyIERhYmJlbHQgPHBhbG1lcmRhYmJl
bHRAZ29vZ2xlLmNvbT4gd3JvdGU6Cj4KPiBPbiBhcm02NCwgdGhlIEJQRiBmdW5jdGlvbiBBQkkg
ZG9lc24ndCBtYXRjaCB0aGUgQyBmdW5jdGlvbiBBQkkuICBTcGVjaWZpY2FsbHksCj4gYXJtNjQg
ZW5jb2RlcyBjYWxscyBhcyBgYTAgPSBmKGEwLCBhMSwgLi4uKWAgd2hpbGUgQlBGIGVuY29kZXMg
Y2FsbHMgYXMKPiBgQlBGX1JFR18wID0gZihCUEZfUkVHXzEsIEJQRl9SRUdfMiwgLi4uKWAuICBU
aGlzIGRpc2NyZXBhbmN5IHJlc3VsdHMgaW4KPiBmdW5jdGlvbiBjYWxscyBiZWluZyBlbmNvZGVk
IGFzIGEgdHdvIG9wZXJhdGlvbnMgc2VxdWVuY2UgdGhhdCBmaXJzdCBkb2VzIGEgQwo+IEFCSSBj
YWxscyBhbmQgdGhlbiBtb3ZlcyB0aGUgcmV0dXJuIHJlZ2lzdGVyIGludG8gdGhlIHJpZ2h0IHBs
YWNlLiAgVGhpcwo+IHJlc3VsdHMgaW4gb25lIGV4dHJhIGluc3RydWN0aW9uIGZvciBldmVyeSBm
dW5jdGlvbiBjYWxsLgo+CgpJdCdzIGEgbG90IG9mIGV4dHJhIHdvcmsgZm9yIG9uZSByZWctdG8t
cmVnIG1vdmUsIGJ1dCBpdCBhbHdheXMKYW5ub3llZCBtZSBpbiB0aGUgUklTQy1WIEpJVC4gOi0p
IFNvLCBpZiBpdCAqY2FuKiBiZSBhdm9pZGVkLCB3aHkgbm90LgoKWy4uLl0KPgo+ICtzdGF0aWMg
aW50IGRlYWRfcmVnaXN0ZXIoY29uc3Qgc3RydWN0IGppdF9jdHggKmN0eCwgaW50IG9mZnNldCwg
aW50IGJwZl9yZWcpCgpHaXZlbiB0aGF0IGEgbG90IG9mIGFyY2hzIChSSVNDLVYsIGFybT8sIE1J
UFM/KSBtaWdodCBiZW5lZml0IGZyb20KdGhpcywgaXQgd291bGQgYmUgbmljZSBpZiBpdCBjb3Vs
ZCBiZSBtYWRlIGdlbmVyaWMgKGl0IGFscmVhZHkgaXMKcHJldHR5IG11Y2gpLCBhbmQgbW92ZWQg
dG8ga2VybmVsL2JwZi4KCj4gK3sKPiArICAgICAgIGNvbnN0IHN0cnVjdCBicGZfcHJvZyAqcHJv
ZyA9IGN0eC0+cHJvZzsKPiArICAgICAgIGludCBpOwo+ICsKPiArICAgICAgIGZvciAoaSA9IG9m
ZnNldDsgaSA8IHByb2ctPmxlbjsgKytpKSB7Cj4gKyAgICAgICAgICAgICAgIGNvbnN0IHN0cnVj
dCBicGZfaW5zbiAqaW5zbiA9ICZwcm9nLT5pbnNuc2lbaV07Cj4gKyAgICAgICAgICAgICAgIGNv
bnN0IHU4IGNvZGUgPSBpbnNuLT5jb2RlOwo+ICsgICAgICAgICAgICAgICBjb25zdCB1OCBicGZf
ZHN0ID0gaW5zbi0+ZHN0X3JlZzsKPiArICAgICAgICAgICAgICAgY29uc3QgdTggYnBmX3NyYyA9
IGluc24tPnNyY19yZWc7Cj4gKyAgICAgICAgICAgICAgIGNvbnN0IGludCB3cml0ZXNfZHN0ID0g
ISgoY29kZSAmIEJQRl9TVCkgfHwgKGNvZGUgJiBCUEZfU1RYKQo+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfHwgKGNvZGUgJiBCUEZfSk1QMzIpIHx8IChjb2RlICYg
QlBGX0pNUCkpOwo+ICsgICAgICAgICAgICAgICBjb25zdCBpbnQgcmVhZHNfZHN0ICA9ICEoKGNv
ZGUgJiBCUEZfTEQpKTsKPiArICAgICAgICAgICAgICAgY29uc3QgaW50IHJlYWRzX3NyYyAgPSB0
cnVlOwo+ICsKPiArICAgICAgICAgICAgICAgLyogQ2FsbHMgYXJlIGEgYml0IHNwZWNpYWwgaW4g
dGhhdCB0aGV5IGNsb2JiZXIgYSBidW5jaCBvZiByZWdpc2Vycy4gKi8KPiArICAgICAgICAgICAg
ICAgaWYgKChjb2RlICYgKEJQRl9KTVAgfCBCUEZfQ0FMTCkpIHx8IChjb2RlICYgKEJQRl9KTVAg
fCBCUEZfVEFJTF9DQUxMKSkpCj4gKyAgICAgICAgICAgICAgICAgICAgICAgaWYgKChicGZfcmVn
ID49IEJQRl9SRUdfMCkgJiYgKGJwZl9yZWcgPD0gQlBGX1JFR181KSkKPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHJldHVybiBmYWxzZTsKPiArCj4gKyAgICAgICAgICAgICAgIC8q
IFJlZ2lzdGVycyB0aGF0IGFyZSByZWFkIGJlZm9yZSB0aGV5J3JlIHdyaXR0ZW4gYXJlIGFsaXZl
Lgo+ICsgICAgICAgICAgICAgICAgKiBNb3N0IG9wY29kZXMgYXJlIG9mIHRoZSBmb3JtIERTVCA9
IERFU1Qgb3AgU1JDLCBidXQgdGhlcmUKPiArICAgICAgICAgICAgICAgICogYXJlIHNvbWUgZXhj
ZXB0aW9ucy4qLwo+ICsgICAgICAgICAgICAgICBpZiAoYnBmX3NyYyA9PSBicGZfcmVnICYmIHJl
YWRzX3NyYykKPiArICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gZmFsc2U7Cj4gKwo+ICsg
ICAgICAgICAgICAgICBpZiAoYnBmX2RzdCA9PSBicGZfcmVnICYmIHJlYWRzX2RzdCkKPiArICAg
ICAgICAgICAgICAgICAgICAgICByZXR1cm4gZmFsc2U7Cj4gKwo+ICsgICAgICAgICAgICAgICBp
ZiAoYnBmX2RzdCA9PSBicGZfcmVnICYmIHdyaXRlc19kc3QpCj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgcmV0dXJuIHRydWU7Cj4gKwo+ICsgICAgICAgICAgICAgICAvKiBNb3N0IEJQRiBpbnN0
cnVjdGlvbnMgYXJlIDggYml0cyBsb25nLCBidXQgc29tZSBhciAxNiBiaXRzCj4gKyAgICAgICAg
ICAgICAgICAqIGxvbmcuICovCgpBIGJ1bmNoIG9mIHNwZWxsaW5nIGVycm9ycyBhYm92ZS4KCgpD
aGVlcnMsCkJqw7ZybgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
