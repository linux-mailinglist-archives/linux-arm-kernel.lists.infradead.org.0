Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3406E1A4294
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 08:38:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HN4nJombz5mz8Jlw2jszAkuJfZ5IEKoZ+IEhhGL6/hA=; b=Eyijg3JvZAEGN3
	+HcxqBodjzFf/ymhl5t1aEKvXkYZU3T4UlwK3RDkJ6+IAl9+a8jRPuZSE6aHt91Vp255Vw2At4S9C
	owtFu4V7w1hlB1Amq1phZP8AuNF8X7Kfl4qWVnaiMQu8liXmDFDcEzm0hbF5Kqja372Cz+mq49rOa
	MpgkWiSC145xOspnWCtsxiWoDtiKcGBbzDlWQLTSsBnOGNYeT2tN1t2hdcNtcyNXgD9QH5p+oQRGS
	wPnbsJ7nYWRhpT1M8OwVv5Kh3zLklYaApjgaQvPCTB43/B9YSbjOytiHptVKSGkFbgCZU5f1O2HOT
	1Ed5QP0/e0muFuFmmY/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMnJ6-0000nh-Go; Fri, 10 Apr 2020 06:38:28 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMnIx-0000n5-4k
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 06:38:20 +0000
Received: by mail-wm1-x341.google.com with SMTP id f20so1682018wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 23:38:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to:cc:content-transfer-encoding;
 bh=3YosXBMphFBPTyrYk/RdbHSh5tz3MJefldr296tJxNs=;
 b=Vjn+dT6RSkP4SXd4EAigedogTETClRN5OUv8bPPBIdh3k1J0oiDsg0cz7QCHWAh/Fk
 lmpV4KJ7By7X5jZ3FJ/ZBogm50ty6/nQCi5cpzEYS9zqMVlHmUhpbzOszrDmo0wiqg39
 kA/tdHzXAT2K8D001TWOM0KwkXzuqhVxpz42PVyT4EUeH4bg4xQZCf/qtruPHfyecmJD
 Q7DX/s8q8+vzIoqqeyR+VgGCHTQulaPZRdhbq5m1FCXTc53Tu64NZdTdfoUekdXneCT9
 cLDM8Otykr7WH3dOeLe1xnBsgEcQ6eymvkLc/eNqSsnxNMGT7MOwQqMkbEqkwrJArnIp
 MYsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc:content-transfer-encoding;
 bh=3YosXBMphFBPTyrYk/RdbHSh5tz3MJefldr296tJxNs=;
 b=rFcDnzibqXRlTRensqrxxh05SDi7WV7fVUX+DfCJN5iRei/HdodJv79McVsaobuA9O
 im5HVXPd1R9ddCjhClZkcEHrKe9QZ6jM9/wNIh4HEs6nrWia2rtQfcA5xQD9v9DLGLHc
 YfItYOD+gbDkBQABU2pJVUlswB8g67sGZFjKyj6M4z4aDX9ld5KzwUSUHwbYxey0gqip
 vInOQCflFTZhSFdAzBA2isfQW3ILc91UkmoHyuVdDllE2NOoX5eeux41QN8CilikSMab
 xJ3SMnaDSfbdnq3tP1/K7LdAgERQMp2shMOpro+ZsKqqsuBm+vdwDMULsvySM6gULTHI
 1esA==
X-Gm-Message-State: AGi0PuY0dAkdkQrAQO1fdCFP4UstWmezF1eAeYOQzBLcUfSuJ2igwWIo
 1+1zYvGRYEqwYU7Au9vTPW4u3YqsbHEhrguR6dQ=
X-Google-Smtp-Source: APiQypK7Zxq5UBPk31xo9d8jf+3yx4C8bsSl2HgcWjrGBEEO+AUlS3/3ESSX5eYUN3CYt7w5oCzrd/i2IvAZbDw3zg4=
X-Received: by 2002:a7b:c927:: with SMTP id h7mr3520294wml.122.1586500696907; 
 Thu, 09 Apr 2020 23:38:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com>
In-Reply-To: <20200409232728.231527-1-caij2003@gmail.com>
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 10 Apr 2020 08:38:05 +0200
Message-ID: <CA+icZUWJLGfp-UVhXDaCR=Xnce7phE1ffPHC4RzM8mXPhBaV9g@mail.gmail.com>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
To: Jian Cai <caij2003@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_233819_210934_1EC594F3 
X-CRM114-Status: GOOD (  18.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sedat.dilek[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reply-To: sedat.dilek@gmail.com
Cc: Linus Walleij <linus.walleij@linaro.org>, Peter.Smith@arm.com,
 stefan@agner.ch, David Howells <dhowells@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, manojgupta@google.com,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
 ilie.halip@gmail.com, Masahiro Yamada <masahiroy@kernel.org>,
 Russell King <linux@armlinux.org.uk>, Krzysztof Kozlowski <krzk@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, samitolvanen@google.com,
 "Eric W. Biederman" <ebiederm@xmission.com>, Arnd Bergmann <arnd@arndb.de>,
 "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>, jiancai@google.com,
 Doug Anderson <armlinux@m.disordat.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Patrick Bellasi <patrick.bellasi@arm.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Tejun Heo <tj@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBBcHIgMTAsIDIwMjAgYXQgMToyOCBBTSBKaWFuIENhaSA8Y2FpajIwMDNAZ21haWwu
Y29tPiB3cm90ZToKPgo+IGl3bW14dC5TIGNvbnRhaW5zIFhTY2FsZSBpbnN0cnVjdGlvbnMgTExW
TSBBUk0gYmFja2VuZCBkb2VzIG5vdCBzdXBwb3J0Lgo+IFNraXAgdGhpcyBmaWxlIGlmIExMVk0g
aW50ZWdyYXRlZCBhc3NlbW1ibGVyIG9yIExMRCBpcyB1c2VkIHRvIGJ1aWxkIEFSTQo+IGtlcm5l
bC4KPgo+IFNpZ25lZC1vZmYtYnk6IEppYW4gQ2FpIDxjYWlqMjAwM0BnbWFpbC5jb20+Cj4gLS0t
Cj4gIGFyY2gvYXJtL0tjb25maWcgfCAyICstCj4gIGluaXQvS2NvbmZpZyAgICAgfCA2ICsrKysr
Kwo+ICAyIGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Cj4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtL0tjb25maWcgYi9hcmNoL2FybS9LY29uZmlnCj4gaW5kZXgg
NjZhMDRmNmY0Nzc1Li4zOWRlOGZjNjRhNzMgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vS2NvbmZp
Zwo+ICsrKyBiL2FyY2gvYXJtL0tjb25maWcKPiBAQCAtODA0LDcgKzgwNCw3IEBAIHNvdXJjZSAi
YXJjaC9hcm0vbW0vS2NvbmZpZyIKPgo+ICBjb25maWcgSVdNTVhUCj4gICAgICAgICBib29sICJF
bmFibGUgaVdNTVh0IHN1cHBvcnQiCj4gLSAgICAgICBkZXBlbmRzIG9uIENQVV9YU0NBTEUgfHwg
Q1BVX1hTQzMgfHwgQ1BVX01PSEFXSyB8fCBDUFVfUEo0IHx8IENQVV9QSjRCCj4gKyAgICAgICBk
ZXBlbmRzIG9uICFBU19JU19DTEFORyAmJiAhTERfSVNfTExEICYmIChDUFVfWFNDQUxFIHx8IENQ
VV9YU0MzIHx8IENQVV9NT0hBV0sgfHwgQ1BVX1BKNCB8fCBDUFVfUEo0QikKPiAgICAgICAgIGRl
ZmF1bHQgeSBpZiBQWEEyN3ggfHwgUFhBM3h4IHx8IEFSQ0hfTU1QIHx8IENQVV9QSjQgfHwgQ1BV
X1BKNEIKPiAgICAgICAgIGhlbHAKPiAgICAgICAgICAgRW5hYmxlIHN1cHBvcnQgZm9yIGlXTU1Y
dCBjb250ZXh0IHN3aXRjaGluZyBhdCBydW4gdGltZSBpZgo+IGRpZmYgLS1naXQgYS9pbml0L0tj
b25maWcgYi9pbml0L0tjb25maWcKPiBpbmRleCAxYzEyMDU5ZTBmN2UuLmIwYWIzMjcxZTkwMCAx
MDA2NDQKPiAtLS0gYS9pbml0L0tjb25maWcKPiArKysgYi9pbml0L0tjb25maWcKPiBAQCAtMTks
NiArMTksMTIgQEAgY29uZmlnIEdDQ19WRVJTSU9OCj4gIGNvbmZpZyBDQ19JU19DTEFORwo+ICAg
ICAgICAgZGVmX2Jvb2wgJChzdWNjZXNzLCQoQ0MpIC0tdmVyc2lvbiB8IGhlYWQgLW4gMSB8IGdy
ZXAgLXEgY2xhbmcpCj4KPiArY29uZmlnIEFTX0lTX0NMQU5HCj4gKyAgICAgICBkZWZfYm9vbCAk
KHN1Y2Nlc3MsJChBUykgLS12ZXJzaW9uIHwgaGVhZCAtbiAxIHwgZ3JlcCAtcSBjbGFuZykKPiAr
Cj4gK2NvbmZpZyBMRF9JU19MTEQKPiArICAgICAgIGRlZl9ib29sICQoc3VjY2VzcywkKExEKSAt
LXZlcnNpb24gfCBoZWFkIC1uIDEgfCBncmVwIC1xIExMRCkKPiArCj4gIGNvbmZpZyBDTEFOR19W
RVJTSU9OCj4gICAgICAgICBpbnQKPiAgICAgICAgIGRlZmF1bHQgJChzaGVsbCwkKHNyY3RyZWUp
L3NjcmlwdHMvY2xhbmctdmVyc2lvbi5zaCAkKENDKSkKPiAtLQo+IDIuMjYuMC4xMTAuZzIxODNi
YWYwOWMtZ29vZwoKWWVzdGVyZGF5LCB3aGVuIGxvb2tpbmcgdHJvdWdoIGNvbW1pdHMgaW4gTGlu
dXMgdHJlZSwgSSBzYXc6CgoiaW5pdC9rY29uZmlnOiBBZGQgTERfVkVSU0lPTiBLY29uZmlnIgoK
TmljayBoYWQgYSBwYXRjaHNldCB0byBkaXN0aW5ndWlzaCBMSU5LRVIgdmlhIEtjb25maWcgKEkg
Y2Fubm90IGZpbmQKaXQgcmlnaHQgbm93KS4KClNvIHdlIHNob3VsZCBkbyBhbGwgdGhpcyB0aGUg
d2F5IENDX0lTX1hYWCBDQ19WRVJTSU9OIGhhbmRsaW5nIGlzIGRvbmUuCgpJIGp1c3Qgd2FudCB0
byBwb2ludCB0byBbMl0gd2hlcmUgd2UgY2FuIHJld29yayAoc2ltcGxpZnkpIHRoaXMKaGFuZGxp
bmcgZm9yIENDIGFuZCBMRCBoYW5kbGluZyBpbiBhIGZ1cnRoZXIgc3RlcC4KSW4gb25lIG9mIFBl
dGVyIFouIHRyZWUgc29tZW9uZSBzdGFydGVkIHRvIGRvIHNvIChJIHdhcyBpbnNwaXJlZCBieSB0
aGF0KS4KClVuZm9ydHVuYXRlbHksIHRoZSBodW5rIGZyb20gWzFdIGlzIElNSE8gYSBiaXQgbWlz
LXBsYWNlZCBhbmQgQ0MgYW5kCkxEIGhhbmRsaW5nIHNob3VsZCBzdGF5IHRvZ2V0aGVyOgoKQ0Nf
SVNfWFhYIHdoZXJlIFhYWCBpcyBHQ0Mgb3IgQ0xBTkcKQ0NfVkVSU0lPTiB3aGVyZSBDQyBpcyBH
Q0Mgb3IgQ0xBTkcKCkxEX0lTX1hYWCB3aGVyZSBYWFggaXMgQkZEIG9yIEdPTEQgb3IgTExECkxE
X1ZFUlNJT04KCkp1c3QgbXkg4oKsMCwwMi4KClJlZ2FyZHMsCi0gU2VkYXQgLQoKWzFdIGh0dHBz
Oi8vZ2l0Lmtlcm5lbC5vcmcvbGludXMvOTU1M2QxNmZhNjcxYjk2MjFjNWUyODQ3ZDA4YmQ5MGQz
YmUzMzQ5YwpbMl0gaHR0cHM6Ly9naXRodWIuY29tL0NsYW5nQnVpbHRMaW51eC9saW51eC9pc3N1
ZXMvOTQxCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
