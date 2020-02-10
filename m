Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5073F1583B6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 20:31:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jUdQS07ZstOejTP69ESqgOSF40mhIvVYokPrNdc/B3M=; b=c7FacXxQKhXJ8y
	lV0sq5TCAZ2edPljKdwW4T2Q+6Zphjf9k2HfZu8ll6mqmC7k7YSgTyZfUHzCPU559ygGVJyr8zLE4
	9LAfn2vPILX+quiVs5fi6eLwaP+wLWdVTWm1VUaLgXbwppSLWHGWH2drfl3ZmwRcptA7TcJ3x+tcg
	SRtQotao54iX3RDcfByCSabv9GErjHG7zpJRWh0E23mFzutjfjqWRkKKSyu+XuhCuTQTxiMsL3K5+
	SK/zMN+TbsOTlkCyDNEYclnqZT3jZf/FT7CuzqVHIEMD5EJCglCF0P6OZeu9iN3kXARVumTGJ4FYH
	zpgHC3Wc5OKg2rKjJJsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Emg-0006B5-7M; Mon, 10 Feb 2020 19:31:54 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Elp-0005SY-Hy
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 19:31:03 +0000
Received: by mail-ot1-x341.google.com with SMTP id a15so7598336otf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 11:31:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Xgo1yExYE1FoOrHi/q0yB3FWShMft6x5k4WGrQxm170=;
 b=L4WYG666B6q1Et3bcdlnVISVkOrsiaz/021i2HOtSDO+5jbbvUU8qOhFuAJpImd9Of
 tHvcCRS71nZ2E2PCYI1v1I7/5Fx8qC14IBkh3bZudUkhVCFVSTRXv68LgS4rolJ8b7NO
 oy2IjZYniOec+89rewQ3DeqzhHAbfLUi9rvdA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Xgo1yExYE1FoOrHi/q0yB3FWShMft6x5k4WGrQxm170=;
 b=V7g/F8JV0gdlXbq81iXU16quVSMMJkQ6DAFVVsvqyUpOxN1xDa8tJSd9oPECJxKeiI
 M1APrQG3xl5tvBIWIFbVZ+DgWrO6bzcE6BTxwD4GSWqLf33gzoAmcw4KSHG1PLcaR6EW
 2DvEBTGdj4xJPA8VSIsu9QxL60XM3W6ChQ2YveLgBhxbUpSJnvDiY3u/rw3LI9eAkeJg
 Z5mqJcBKbPSC6pWu4S13EYFg4VFYtwUgzKzffa855Yl0vRV7rgzNLTmNWWhORQH2vNkR
 2xNgnGFQreoA7eN9YhdhWDFbcy1KhnlxikwL62nwzbCgDq9b4hf0y7AE7+gleWy4JuJj
 CwJQ==
X-Gm-Message-State: APjAAAXVo17tQpoZ3Sv8PHI4C89Ums46AQEMi0Eaxn7kb0mI7XSc7PPY
 hkGEEyuVFiEB1iXHi4hUhMfBEw==
X-Google-Smtp-Source: APXvYqxrCRbeRObAKsREPcdxJmg1NESdR+jwjL0VLXI5HeLb3NvoJQshGJ4OJNNqOglQAXv1YayQEA==
X-Received: by 2002:a9d:6e8f:: with SMTP id a15mr2204441otr.178.1581363060517; 
 Mon, 10 Feb 2020 11:31:00 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id b145sm356027oii.31.2020.02.10.11.30.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 11:30:58 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Subject: [PATCH v3 4/7] arm32/64, elf: Add tables to document READ_IMPLIES_EXEC
Date: Mon, 10 Feb 2020 11:30:46 -0800
Message-Id: <20200210193049.64362-5-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200210193049.64362-1-keescook@chromium.org>
References: <20200210193049.64362-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_113101_588821_8D31C469 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Jason Gunthorpe <jgg@mellanox.com>, linux-kselftest@vger.kernel.org,
 kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIHRhYmxlcyB0byBkb2N1bWVudCB0aGUgY3VycmVudCBiZWhhdmlvciBvZiBSRUFEX0lNUExJ
RVNfRVhFQyBpbgpwcmVwYXJhdGlvbiBmb3IgY2hhbmdpbmcgdGhlIGJlaGF2aW9yIGZvciBib3Ro
IGFybTY0IGFuZCBhcm0uCgpTaWduZWQtb2ZmLWJ5OiBLZWVzIENvb2sgPGtlZXNjb29rQGNocm9t
aXVtLm9yZz4KLS0tCiBhcmNoL2FybS9rZXJuZWwvZWxmLmMgICAgICAgIHwgMjQgKysrKysrKysr
KysrKysrKysrKysrLS0tCiBhcmNoL2FybTY0L2luY2x1ZGUvYXNtL2VsZi5oIHwgMjAgKysrKysr
KysrKysrKysrKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgNDEgaW5zZXJ0aW9ucygrKSwgMyBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9rZXJuZWwvZWxmLmMgYi9hcmNoL2FybS9r
ZXJuZWwvZWxmLmMKaW5kZXggMTgyNDIyOTgxMzg2Li4yZjY5Y2Y5NzhmZTMgMTAwNjQ0Ci0tLSBh
L2FyY2gvYXJtL2tlcm5lbC9lbGYuYworKysgYi9hcmNoL2FybS9rZXJuZWwvZWxmLmMKQEAgLTc4
LDkgKzc4LDI3IEBAIHZvaWQgZWxmX3NldF9wZXJzb25hbGl0eShjb25zdCBzdHJ1Y3QgZWxmMzJf
aGRyICp4KQogRVhQT1JUX1NZTUJPTChlbGZfc2V0X3BlcnNvbmFsaXR5KTsKIAogLyoKLSAqIFNl
dCBSRUFEX0lNUExJRVNfRVhFQyBpZjoKLSAqICAtIHRoZSBiaW5hcnkgcmVxdWlyZXMgYW4gZXhl
Y3V0YWJsZSBzdGFjawotICogIC0gd2UncmUgcnVubmluZyBvbiBhIENQVSB3aGljaCBkb2Vzbid0
IHN1cHBvcnQgTlguCisgKiBBbiBleGVjdXRhYmxlIGZvciB3aGljaCBlbGZfcmVhZF9pbXBsaWVz
X2V4ZWMoKSByZXR1cm5zIFRSVUUgd2lsbAorICogaGF2ZSB0aGUgUkVBRF9JTVBMSUVTX0VYRUMg
cGVyc29uYWxpdHkgZmxhZyBzZXQgYXV0b21hdGljYWxseS4KKyAqCisgKiBUaGUgZGVjaXNpb24g
cHJvY2VzcyBmb3IgZGV0ZXJtaW5pbmcgdGhlIHJlc3VsdHMgYXJlOgorICoKKyAqIMKgIMKgIMKg
IMKgIMKgIMKgIMKgQ1BVOiB8IGxhY2tzIE5YKiDCoHwgaGFzIE5YICAgICB8CisgKiBFTEY6IMKg
IMKgIMKgIMKgIMKgIMKgIMKgfCDCoCDCoCDCoCDCoCDCoCDCoHwgwqAgwqAgwqAgwqAgwqAgIHwK
KyAqIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS18LS0tLS0tLS0tLS0tfAorICogbWlz
c2luZyBHTlVfU1RBQ0sgfCBleGVjLWFsbCDCoCB8IGV4ZWMtYWxsICDCoHwKKyAqIEdOVV9TVEFD
SyA9PSBSV1ggwqB8IGV4ZWMtYWxsIMKgIHwgZXhlYy1hbGwgIMKgfAorICogR05VX1NUQUNLID09
IFJXIMKgIHwgZXhlYy1hbGwgIMKgfCBleGVjLW5vbmUgIHwKKyAqCisgKiAgZXhlYy1hbGwgIDog
YWxsIFBST1RfUkVBRCB1c2VyIG1hcHBpbmdzIGFyZSBleGVjdXRhYmxlLCBleGNlcHQgd2hlbgor
ICogICAgICAgICAgICAgIGJhY2tlZCBieSBmaWxlcyBvbiBhIG5vZXhlYy1maWxlc3lzdGVtLgor
ICogIGV4ZWMtbm9uZSA6IG9ubHkgUFJPVF9FWEVDIHVzZXIgbWFwcGluZ3MgYXJlIGV4ZWN1dGFi
bGUuCisgKgorICogICp0aGlzIGNvbHVtbiBoYXMgbm8gYXJjaGl0ZWN0dXJhbCBlZmZlY3Q6IE5Y
IG1hcmtpbmdzIGFyZSBpZ25vcmVkIGJ5CisgKiAgIGhhcmR3YXJlLCBidXQgbWF5IGhhdmUgYmVo
YXZpb3JhbCBlZmZlY3RzIHdoZW4gIndhbnRzIFgiIGNvbGxpZGVzIHdpdGgKKyAqICAgImNhbm5v
dCBiZSBYIiBjb25zdHJhaW50cyBpbiBtZW1vcnkgcGVybWlzc2lvbiBmbGFncywgYXMgaW4KKyAq
ICAgaHR0cHM6Ly9sa21sLmtlcm5lbC5vcmcvci8yMDE5MDQxODA1NTc1OS5HQTMxNTVAbWVsbGFu
b3guY29tCisgKgogICovCiBpbnQgYXJtX2VsZl9yZWFkX2ltcGxpZXNfZXhlYyhpbnQgZXhlY3V0
YWJsZV9zdGFjaykKIHsKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vZWxmLmgg
Yi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL2VsZi5oCmluZGV4IGI2MTgwMTcyMDVhMy4uN2ZjNzc5
ZTNmMWVjIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL2VsZi5oCisrKyBiL2Fy
Y2gvYXJtNjQvaW5jbHVkZS9hc20vZWxmLmgKQEAgLTk2LDYgKzk2LDI2IEBACiAgKi8KICNkZWZp
bmUgZWxmX2NoZWNrX2FyY2goeCkJCSgoeCktPmVfbWFjaGluZSA9PSBFTV9BQVJDSDY0KQogCisv
KgorICogQW4gZXhlY3V0YWJsZSBmb3Igd2hpY2ggZWxmX3JlYWRfaW1wbGllc19leGVjKCkgcmV0
dXJucyBUUlVFIHdpbGwKKyAqIGhhdmUgdGhlIFJFQURfSU1QTElFU19FWEVDIHBlcnNvbmFsaXR5
IGZsYWcgc2V0IGF1dG9tYXRpY2FsbHkuCisgKgorICogVGhlIGRlY2lzaW9uIHByb2Nlc3MgZm9y
IGRldGVybWluaW5nIHRoZSByZXN1bHRzIGFyZToKKyAqCisgKiDCoCDCoCDCoCDCoCDCoCDCoMKg
Q1BVKjogfCBhcm0zMsKgIMKgICAgfCBhcm02NCAgICAgIHwKKyAqIEVMRjogwqAgwqAgwqAgwqAg
wqAgwqAgwqB8IMKgIMKgIMKgIMKgIMKgIMKgfCDCoCDCoCDCoCDCoCDCoCDCoHwKKyAqIC0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS18LS0tLS0tLS0tLS0tfAorICogbWlzc2luZyBHTlVf
U1RBQ0sgfCBleGVjLWFsbCDCoCB8IGV4ZWMtYWxsIMKgIHwKKyAqIEdOVV9TVEFDSyA9PSBSV1gg
wqB8IGV4ZWMtYWxsIMKgIHwgZXhlYy1hbGwgwqAgfAorICogR05VX1NUQUNLID09IFJXIMKgIHwg
ZXhlYy1ub25lICB8IGV4ZWMtbm9uZSAgfAorICoKKyAqICBleGVjLWFsbCAgOiBhbGwgUFJPVF9S
RUFEIHVzZXIgbWFwcGluZ3MgYXJlIGV4ZWN1dGFibGUsIGV4Y2VwdCB3aGVuCisgKiAgICAgICAg
ICAgICAgYmFja2VkIGJ5IGZpbGVzIG9uIGEgbm9leGVjLWZpbGVzeXN0ZW0uCisgKiAgZXhlYy1u
b25lIDogb25seSBQUk9UX0VYRUMgdXNlciBtYXBwaW5ncyBhcmUgZXhlY3V0YWJsZS4KKyAqCisg
KiAgKmFsbCBhcm02NCBDUFVzIHN1cHBvcnQgTlgsIHNvIHRoZXJlIGlzIG5vICJsYWNrcyBOWCIg
Y29sdW1uLgorICoKKyAqLwogI2RlZmluZSBlbGZfcmVhZF9pbXBsaWVzX2V4ZWMoZXgsc3RrKQko
c3RrICE9IEVYU1RBQ0tfRElTQUJMRV9YKQogCiAjZGVmaW5lIENPUkVfRFVNUF9VU0VfUkVHU0VU
Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
