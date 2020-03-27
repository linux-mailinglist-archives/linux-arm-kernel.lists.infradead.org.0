Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2582C195195
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 07:50:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P9NXJZdp/3yqfYSBp5/wr7IatBMi7oKGfQb6tJXWzbg=; b=pmyQX046t1+XTD
	Ebg+hd33c16sEdRCCTpM7F9gxff5IrrGrSkTMQhPzBIYGzFK0JaDvMEnZX6XdZ0IVuyUW19tGWGdo
	P/8Ukt626zP9HZF1tEdCZxbdCWFLBQCl4T+eriaQmbrlnSBGY5rSqg9GmNcTruS6rUPY0V7jOWYqg
	yy13LrcI6WVGDJv/c+hudCK39WjP7i1co8YKRrWCZRL1VZ1OjzQaQDbCFUy2rkks6cF+AqcCEyg/9
	R6tIJyFO4xYR22kqEE/MaR6ZG4oH5R4j+0nUtMBmj9TnoHSoV/R8D6DZJiaFovMB2i8O9LKo4IaCV
	5olBOVrST3YM1vtPNd4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHioY-0002Js-Jz; Fri, 27 Mar 2020 06:49:58 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHin7-00014k-Kw
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 06:48:31 +0000
Received: by mail-pl1-x643.google.com with SMTP id v23so3093969ply.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 23:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/ziE3u+JHVGjUbo7zvAcqmvTGnTDwDeNLGHtkAuW1SE=;
 b=i/kVRB9h49fSIU/SXBBd76YRq+m2dKmO90EFoN2azRXHRsGFnN8fQwX1bWQShxfMO3
 fsJCr1ApPfPLWPyVmqTHbvnE0/TQ+9Ft1N7AnyEv2Obi+yKqae7pHIiFGbj+dcCs3Qth
 hx/8AA5HN+FRYM8rSleK8Ggvfe0bb3ThM++NY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/ziE3u+JHVGjUbo7zvAcqmvTGnTDwDeNLGHtkAuW1SE=;
 b=Wc+7KckkTzh4Z5CQZPsfhDt1jHrskjoQ4wmRtnMr68rBruyJWutPKQyU9bEpnMnKup
 2pRE1EovG9oMXIuk3JeirjrkuBgTOybvEQvG9p3jb2o1A2pZtJa77iMf+U9LscIVLHyK
 ePLLQPWYse87DfAseoka9phUxh0sUh742z+CuA+sPRz42v9Sq4Ot31iUmPOD0mWSKF2M
 A5Udmu2oDZDG8+FtUaN+/3dSKr/EbUXzBaWLG1w4enr+NF+1+TezBFC8xZ3fTtXW4bVJ
 b2+HcZdiCMZvF9zbFoLSM5qAM0PUM1P2iVlylgNfGwz72u5nukI+7xjhjzuFAvAEI/+/
 xW+w==
X-Gm-Message-State: ANhLgQ3e+9dxdkNINFdy+Jw/9wBZgjmn495GksZ4NTBP8iFKmnNLrfwu
 XnQk3anbqeM/3yWiH+Mk7A5/gg==
X-Google-Smtp-Source: ADFU+vvGmOrrIs+Qj5TkNUJrkUU3G9n3+Tfo2n/9fFwWG4WT0SaqW8ECI8HTyCrm6d42Hjl+wwoUXQ==
X-Received: by 2002:a17:90a:b395:: with SMTP id
 e21mr4362227pjr.33.1585291708788; 
 Thu, 26 Mar 2020 23:48:28 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id e184sm3275892pfh.219.2020.03.26.23.48.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 23:48:27 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v5 6/6] arm64,
 elf: Disable automatic READ_IMPLIES_EXEC for 64-bit address spaces
Date: Thu, 26 Mar 2020 23:48:20 -0700
Message-Id: <20200327064820.12602-7-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200327064820.12602-1-keescook@chromium.org>
References: <20200327064820.12602-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_234829_728724_6BCF32AF 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 Hector Marco-Gisbert <hecmargi@upv.es>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Jason Gunthorpe <jgg@ziepe.ca>,
 Jason Gunthorpe <jgg@mellanox.com>, kernel-hardening@lists.openwall.com,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V2l0aCBhcm02NCA2NC1iaXQgZW52aXJvbm1lbnRzLCB0aGVyZSBzaG91bGQgbmV2ZXIgYmUgYSBu
ZWVkIGZvciBhdXRvbWF0aWMKUkVBRF9JTVBMSUVTX0VYRUMsIGFzIHRoZSBhcmNoaXRlY3R1cmUg
aGFzIGFsd2F5cyBiZWVuIGV4ZWN1dGUtYml0IGF3YXJlCihhcyBpbiwgdGhlIGRlZmF1bHQgbWVt
b3J5IHByb3RlY3Rpb24gc2hvdWxkIGJlIE5YIHVubGVzcyBhIHJlZ2lvbgpleHBsaWNpdGx5IHJl
cXVlc3RzIHRvIGJlIGV4ZWN1dGFibGUpLgoKU3VnZ2VzdGVkLWJ5OiBIZWN0b3IgTWFyY28tR2lz
YmVydCA8aGVjbWFyZ2lAdXB2LmVzPgpTaWduZWQtb2ZmLWJ5OiBLZWVzIENvb2sgPGtlZXNjb29r
QGNocm9taXVtLm9yZz4KUmV2aWV3ZWQtYnk6IEphc29uIEd1bnRob3JwZSA8amdnQG1lbGxhbm94
LmNvbT4KUmV2aWV3ZWQtYnk6IENhdGFsaW4gTWFyaW5hcyA8Y2F0YWxpbi5tYXJpbmFzQGFybS5j
b20+Ci0tLQogYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9lbGYuaCB8IDQgKystLQogZnMvY29tcGF0
X2JpbmZtdF9lbGYuYyAgICAgICB8IDUgKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvaW5jbHVkZS9h
c20vZWxmLmggYi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL2VsZi5oCmluZGV4IDAwNzRlOWZkNjQz
MS4uMGU3ZGY2ZjFlYjdhIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL2VsZi5o
CisrKyBiL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vZWxmLmgKQEAgLTEwNSw3ICsxMDUsNyBAQAog
ICogwqAgwqAgwqAgwqAgwqAgwqAgICDCoENQVSo6IHwgYXJtMzLCoCDCoCAgIHwgYXJtNjQgICAg
ICB8CiAgKiBFTEY6IMKgIMKgIMKgICAgIMKgIMKgIMKgIMKgfCDCoCDCoCDCoCDCoCDCoCDCoHwg
wqAgwqAgwqAgwqAgwqAgwqB8CiAgKiAtLS0tLS0tLS0tLS0tLS0tLS0tLS18LS0tLS0tLS0tLS0t
fC0tLS0tLS0tLS0tLXwKLSAqIG1pc3NpbmcgUFRfR05VX1NUQUNLIHwgZXhlYy1hbGwgwqAgfCBl
eGVjLWFsbCDCoCB8CisgKiBtaXNzaW5nIFBUX0dOVV9TVEFDSyB8IGV4ZWMtYWxsIMKgIHwgZXhl
Yy1ub25lwqAgfAogICogUFRfR05VX1NUQUNLID09IFJXWCDCoHwgZXhlYy1zdGFjayB8IGV4ZWMt
c3RhY2sgfAogICogUFRfR05VX1NUQUNLID09IFJXIMKgIHwgZXhlYy1ub25lICB8IGV4ZWMtbm9u
ZSAgfAogICoKQEAgLTExNyw3ICsxMTcsNyBAQAogICogICphbGwgYXJtNjQgQ1BVcyBzdXBwb3J0
IE5YLCBzbyB0aGVyZSBpcyBubyAibGFja3MgTlgiIGNvbHVtbi4KICAqCiAgKi8KLSNkZWZpbmUg
ZWxmX3JlYWRfaW1wbGllc19leGVjKGV4LCBzdGspCShzdGsgPT0gRVhTVEFDS19ERUZBVUxUKQor
I2RlZmluZSBjb21wYXRfZWxmX3JlYWRfaW1wbGllc19leGVjKGV4LCBzdGspCShzdGsgPT0gRVhT
VEFDS19ERUZBVUxUKQogCiAjZGVmaW5lIENPUkVfRFVNUF9VU0VfUkVHU0VUCiAjZGVmaW5lIEVM
Rl9FWEVDX1BBR0VTSVpFCVBBR0VfU0laRQpkaWZmIC0tZ2l0IGEvZnMvY29tcGF0X2JpbmZtdF9l
bGYuYyBiL2ZzL2NvbXBhdF9iaW5mbXRfZWxmLmMKaW5kZXggYWFhZDRjYTEyMTdlLi4zMDY4ZDU3
NDM2YjMgMTAwNjQ0Ci0tLSBhL2ZzL2NvbXBhdF9iaW5mbXRfZWxmLmMKKysrIGIvZnMvY29tcGF0
X2JpbmZtdF9lbGYuYwpAQCAtMTEzLDYgKzExMywxMSBAQAogI2RlZmluZQlhcmNoX3NldHVwX2Fk
ZGl0aW9uYWxfcGFnZXMgY29tcGF0X2FyY2hfc2V0dXBfYWRkaXRpb25hbF9wYWdlcwogI2VuZGlm
CiAKKyNpZmRlZgljb21wYXRfZWxmX3JlYWRfaW1wbGllc19leGVjCisjdW5kZWYJZWxmX3JlYWRf
aW1wbGllc19leGVjCisjZGVmaW5lCWVsZl9yZWFkX2ltcGxpZXNfZXhlYyBjb21wYXRfZWxmX3Jl
YWRfaW1wbGllc19leGVjCisjZW5kaWYKKwogLyoKICAqIFJlbmFtZSBhIGZldyBvZiB0aGUgc3lt
Ym9scyB0aGF0IGJpbmZtdF9lbGYuYyB3aWxsIGRlZmluZS4KICAqIFRoZXNlIGFyZSBhbGwgbG9j
YWwgc28gdGhlIG5hbWVzIGRvbid0IHJlYWxseSBtYXR0ZXIsIGJ1dCBpdAotLSAKMi4yMC4xCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
