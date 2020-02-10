Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 110F21583BD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 20:32:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5jDWfcDS8+0avPB+xjPlY1J2AJjEz8xtMTIX7iBNcU8=; b=Ytc9gZr+/+M+Uo
	Y+VotyTTJxa5fJ52wvXzBY5NPn8qEA9CT19atzS0yHLGSfGboTkJRK31WPHD/9sFSlxCrfsxzobJb
	Y/z5GlvzUqLOQp11BrtyOtl5VXL+L8/4yL05FYzCVCk62oKtbvI6aj2rvxzcP6JvfmrMBOPxMDyll
	3NnLv+U6Ol9CMFTUUJIeZoRN7Zxft0tCskzZyAGSAqI0jSZ1T+EohnEYenjiSedNya88rtF+x7f7g
	cUXnslFgZwJG1nvDNTEduOABZdou67PZMCuG3OchubyAAy4S8QtHFdx2Rba7DFsKOAntbCmSa0soq
	+anOr8/FE9fJo1PD/CVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1EnH-0006qx-0B; Mon, 10 Feb 2020 19:32:31 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Els-0005UL-9J
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 19:31:06 +0000
Received: by mail-oi1-x241.google.com with SMTP id p125so10316684oif.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 11:31:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vV+4L9n935hAwwy1rny/bKPJmpM6IQkGJafPemnuM6M=;
 b=PoL0XhCMF5RYylDc0l4IgFMeB8xwO+uVffzPYfytDnFxlYeMxyX/mZuQokiRqvLpeB
 3BSmLKsw8Mn0fTOGDf5FiPjNmXvq0HmdnXXBN/WXOAJCOAtbktliwg0Ij4BFjNLNEwz1
 LFDL39Nbv292S1gxIrW8F3TJd9vj+dby5RYxI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vV+4L9n935hAwwy1rny/bKPJmpM6IQkGJafPemnuM6M=;
 b=CnM5Wj5rv8iTn3SwBGw5aW2qN6VKcgPhCMZeuRr9RSDIWPjjlMBCPjZpy//L/L77dk
 P+mSMeyi+PaE58cM8gX/M0ogPssoi+VFovU+qShowsOs13/2QkTz31qWfrMHkZl/FM+C
 nQhVJNMNpR9qirKqKEXTQUQ/xQ2lFubRvL2x9ysK3eZQcKhOyn0fw4HIEFYkTJitjKdR
 J5BixUXg0dxXAMWNPCzr5mS2C1ud9PA2SlsQl12DvR1TTIzNNj+vBsXhLpyS3363hZoO
 gSMZsy+N1DCH2zevTdsLeOL2TRhvwsAsGcSpmGlQpeA01CDn9zN6Zv35JfL3mRgl4vlj
 xbxA==
X-Gm-Message-State: APjAAAUnq4hi4GKo1PEMH1/tPb5PsM3RFrBx+zMaJbGLa9aPsygXxprm
 CL+q+WnJW4Lq+E/tcGYreAlQvw==
X-Google-Smtp-Source: APXvYqxxYA/0/Zbqi4Hv0JHtPdrzzbONYFkwCVp0/iu2hk9k8CQImN2sdfiTosdmQZKPTHVPQ7l30Q==
X-Received: by 2002:aca:5083:: with SMTP id e125mr424241oib.96.1581363063722; 
 Mon, 10 Feb 2020 11:31:03 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id f1sm370846otq.4.2020.02.10.11.31.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 11:31:02 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Subject: [PATCH v3 5/7] arm32/64,
 elf: Split READ_IMPLIES_EXEC from executable GNU_STACK
Date: Mon, 10 Feb 2020 11:30:47 -0800
Message-Id: <20200210193049.64362-6-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200210193049.64362-1-keescook@chromium.org>
References: <20200210193049.64362-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_113104_329404_CF7E5003 
X-CRM114-Status: GOOD (  15.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
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

VGhlIFJFQURfSU1QTElFU19FWEVDIHdvcmstYXJvdW5kIHdhcyBkZXNpZ25lZCBmb3Igb2xkIHRv
b2xjaGFpbnMgdGhhdApsYWNrZWQgdGhlIEVMRiBQVF9HTlVfU1RBQ0sgbWFya2luZyB1bmRlciB0
aGUgYXNzdW1wdGlvbiB0aGF0IHRvb2xjaGFpbnMKdGhhdCBjb3VsZG4ndCBzcGVjaWZ5IGV4ZWN1
dGFibGUgcGVybWlzc2lvbiBmbGFncyBmb3IgdGhlIHN0YWNrIG1heSBub3QKa25vdyBob3cgdG8g
ZG8gaXQgY29ycmVjdGx5IGZvciBhbnkgbWVtb3J5IHJlZ2lvbi4KClRoaXMgbG9naWMgaXMgc2Vu
c2libGUgZm9yIGhhdmluZyBhbmNpZW50IGJpbmFyaWVzIGNvZXhpc3QgaW4gYSBzeXN0ZW0Kd2l0
aCBwb3NzaWJseSBOWCBtZW1vcnksIGJ1dCB3YXMgaW1wbGVtZW50ZWQgaW4gYSB3YXkgdGhhdCBl
cXVhdGVkIGhhdmluZwphIFBUX0dOVV9TVEFDSyBtYXJrZWQgZXhlY3V0YWJsZSBhcyBiZWluZyBh
cyAiYnJva2VuIiBhcyBsYWNraW5nIHRoZQpQVF9HTlVfU1RBQ0sgbWFya2luZyBlbnRpcmVseS4g
VGhpbmdzIGxpa2UgdW5tYXJrZWQgYXNzZW1ibHkgYW5kIHN0YWNrCnRyYW1wb2xpbmVzIG1heSBj
YXVzZSBQVF9HTlVfU1RBQ0sgdG8gbmVlZCBhbiBleGVjdXRhYmxlIGJpdCwgYnV0IHRoZXkKZG8g
bm90IGltcGx5IGFsbCBtYXBwaW5ncyBtdXN0IGJlIGV4ZWN1dGFibGUuCgpUaGlzIGNvbmZ1c2lv
biBoYXMgbGVkIHRvIHNpdHVhdGlvbnMgd2hlcmUgbW9kZXJuIHByb2dyYW1zIHdpdGggZXhwbGlj
aXRseQptYXJrZWQgZXhlY3V0YWJsZSBzdGFjayBhcmUgZm9yY2VkIGludG8gdGhlIFJFQURfSU1Q
TElFU19FWEVDIHN0YXRlIHdoZW4Kbm8gc3VjaCB0aGluZyBpcyBuZWVkZWQuIChBbmQgbGVhZHMg
dG8gdW5leHBlY3RlZCBmYWlsdXJlcyB3aGVuIG1tYXAoKWluZwpyZWdpb25zIG9mIGRldmljZSBk
cml2ZXIgbWVtb3J5IHRoYXQgd2lzaCB0byBkaXNhbGxvdyBWTV9FWEVDWzFdLikKCkluIGxvb2tp
bmcgZm9yIG90aGVyIHJlYXNvbnMgZm9yIHRoZSBSRUFEX0lNUExJRVNfRVhFQyBiZWhhdmlvciwg
SmFubgpIb3JuIG5vdGVkIHRoYXQgZ2xpYmMgdGhyZWFkIHN0YWNrcyBoYXZlIGFsd2F5cyBiZWVu
IG1hcmtlZCBSV1ggKHVudGlsCjIwMDMgd2hlbiB0aGV5IHN0YXJ0ZWQgdHJhY2tpbmcgdGhlIFBU
X0dOVV9TVEFDSyBmbGFnIGluc3RlYWRbMl0pLiBBbmQKbXVzbCBkb2Vzbid0IHN1cHBvcnQgZXhl
Y3V0YWJsZSBzdGFja3MgYXQgYWxsWzNdLiBBcyBzdWNoLCBubyBicmVha2FnZQpmb3IgbXVsdGl0
aHJlYWRlZCBhcHBsaWNhdGlvbnMgaXMgZXhwZWN0ZWQgZnJvbSB0aGlzIGNoYW5nZS4KClRoaXMg
Y2hhbmdlcyBhcm0zMiBhbmQgYXJtNjQgY29tcGF0IHRvZ2V0aGVyLCB0byBrZWVwIGJlaGF2aW9y
IHRoZSBzYW1lLgoKWzFdIGh0dHBzOi8vbGttbC5rZXJuZWwub3JnL3IvMjAxOTA0MTgwNTU3NTku
R0EzMTU1QG1lbGxhbm94LmNvbQpbMl0gaHR0cHM6Ly9zb3VyY2V3YXJlLm9yZy9naXQvP3A9Z2xp
YmMuZ2l0O2E9Y29tbWl0ZGlmZjtoPTU0ZWUxNGIzODgyClszXSBodHRwczovL2xrbWwua2VybmVs
Lm9yZy9yLzIwMTkwNDIzMTkyNTM0LkdOMjM1OTlAYnJpZ2h0cmFpbi5hZXJpZmFsLmN4CgpTdWdn
ZXN0ZWQtYnk6IEhlY3RvciBNYXJjby1HaXNiZXJ0IDxoZWNtYXJnaUB1cHYuZXM+ClNpZ25lZC1v
ZmYtYnk6IEtlZXMgQ29vayA8a2Vlc2Nvb2tAY2hyb21pdW0ub3JnPgotLS0KIGFyY2gvYXJtL2tl
cm5lbC9lbGYuYyAgICAgICAgfCA1ICsrKy0tCiBhcmNoL2FybTY0L2luY2x1ZGUvYXNtL2VsZi5o
IHwgNSArKystLQogMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0va2VybmVsL2VsZi5jIGIvYXJjaC9hcm0va2VybmVs
L2VsZi5jCmluZGV4IDJmNjljZjk3OGZlMy4uNjk2NWE2NzNhMTQxIDEwMDY0NAotLS0gYS9hcmNo
L2FybS9rZXJuZWwvZWxmLmMKKysrIGIvYXJjaC9hcm0va2VybmVsL2VsZi5jCkBAIC04NywxMiAr
ODcsMTMgQEAgRVhQT1JUX1NZTUJPTChlbGZfc2V0X3BlcnNvbmFsaXR5KTsKICAqIEVMRjogwqAg
wqAgwqAgwqAgwqAgwqAgwqB8IMKgIMKgIMKgIMKgIMKgIMKgfCDCoCDCoCDCoCDCoCDCoCAgfAog
ICogLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLXwtLS0tLS0tLS0tLS18CiAgKiBtaXNz
aW5nIEdOVV9TVEFDSyB8IGV4ZWMtYWxsIMKgIHwgZXhlYy1hbGwgIMKgfAotICogR05VX1NUQUNL
ID09IFJXWCDCoHwgZXhlYy1hbGwgwqAgfCBleGVjLWFsbCAgwqB8CisgKiBHTlVfU1RBQ0sgPT0g
UldYIMKgfCBleGVjLWFsbCDCoCB8IGV4ZWMtc3RhY2vCoHwKICAqIEdOVV9TVEFDSyA9PSBSVyDC
oCB8IGV4ZWMtYWxsICDCoHwgZXhlYy1ub25lICB8CiAgKgogICogIGV4ZWMtYWxsICA6IGFsbCBQ
Uk9UX1JFQUQgdXNlciBtYXBwaW5ncyBhcmUgZXhlY3V0YWJsZSwgZXhjZXB0IHdoZW4KICAqICAg
ICAgICAgICAgICBiYWNrZWQgYnkgZmlsZXMgb24gYSBub2V4ZWMtZmlsZXN5c3RlbS4KICAqICBl
eGVjLW5vbmUgOiBvbmx5IFBST1RfRVhFQyB1c2VyIG1hcHBpbmdzIGFyZSBleGVjdXRhYmxlLgor
ICogIGV4ZWMtc3RhY2s6IG9ubHkgdGhlIHN0YWNrIGFuZCBQUk9UX0VYRUMgdXNlciBtYXBwaW5n
cyBhcmUgZXhlY3V0YWJsZS4KICAqCiAgKiAgKnRoaXMgY29sdW1uIGhhcyBubyBhcmNoaXRlY3R1
cmFsIGVmZmVjdDogTlggbWFya2luZ3MgYXJlIGlnbm9yZWQgYnkKICAqICAgaGFyZHdhcmUsIGJ1
dCBtYXkgaGF2ZSBiZWhhdmlvcmFsIGVmZmVjdHMgd2hlbiAid2FudHMgWCIgY29sbGlkZXMgd2l0
aApAQCAtMTAyLDcgKzEwMyw3IEBAIEVYUE9SVF9TWU1CT0woZWxmX3NldF9wZXJzb25hbGl0eSk7
CiAgKi8KIGludCBhcm1fZWxmX3JlYWRfaW1wbGllc19leGVjKGludCBleGVjdXRhYmxlX3N0YWNr
KQogewotCWlmIChleGVjdXRhYmxlX3N0YWNrICE9IEVYU1RBQ0tfRElTQUJMRV9YKQorCWlmIChl
eGVjdXRhYmxlX3N0YWNrID09IEVYU1RBQ0tfREVGQVVMVCkKIAkJcmV0dXJuIDE7CiAJaWYgKGNw
dV9hcmNoaXRlY3R1cmUoKSA8IENQVV9BUkNIX0FSTXY2KQogCQlyZXR1cm4gMTsKZGlmZiAtLWdp
dCBhL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vZWxmLmggYi9hcmNoL2FybTY0L2luY2x1ZGUvYXNt
L2VsZi5oCmluZGV4IDdmYzc3OWUzZjFlYy4uMDNhZGEyOTk4NGE3IDEwMDY0NAotLS0gYS9hcmNo
L2FybTY0L2luY2x1ZGUvYXNtL2VsZi5oCisrKyBiL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vZWxm
LmgKQEAgLTEwNiwxNyArMTA2LDE4IEBACiAgKiBFTEY6IMKgIMKgIMKgIMKgIMKgIMKgIMKgfCDC
oCDCoCDCoCDCoCDCoCDCoHwgwqAgwqAgwqAgwqAgwqAgwqB8CiAgKiAtLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tfC0tLS0tLS0tLS0tLXwKICAqIG1pc3NpbmcgR05VX1NUQUNLIHwgZXhl
Yy1hbGwgwqAgfCBleGVjLWFsbCDCoCB8Ci0gKiBHTlVfU1RBQ0sgPT0gUldYIMKgfCBleGVjLWFs
bCDCoCB8IGV4ZWMtYWxsIMKgIHwKKyAqIEdOVV9TVEFDSyA9PSBSV1ggwqB8IGV4ZWMtc3RhY2sg
fCBleGVjLXN0YWNrIHwKICAqIEdOVV9TVEFDSyA9PSBSVyDCoCB8IGV4ZWMtbm9uZSAgfCBleGVj
LW5vbmUgIHwKICAqCiAgKiAgZXhlYy1hbGwgIDogYWxsIFBST1RfUkVBRCB1c2VyIG1hcHBpbmdz
IGFyZSBleGVjdXRhYmxlLCBleGNlcHQgd2hlbgogICogICAgICAgICAgICAgIGJhY2tlZCBieSBm
aWxlcyBvbiBhIG5vZXhlYy1maWxlc3lzdGVtLgogICogIGV4ZWMtbm9uZSA6IG9ubHkgUFJPVF9F
WEVDIHVzZXIgbWFwcGluZ3MgYXJlIGV4ZWN1dGFibGUuCisgKiAgZXhlYy1zdGFjazogb25seSB0
aGUgc3RhY2sgYW5kIFBST1RfRVhFQyB1c2VyIG1hcHBpbmdzIGFyZSBleGVjdXRhYmxlLgogICoK
ICAqICAqYWxsIGFybTY0IENQVXMgc3VwcG9ydCBOWCwgc28gdGhlcmUgaXMgbm8gImxhY2tzIE5Y
IiBjb2x1bW4uCiAgKgogICovCi0jZGVmaW5lIGVsZl9yZWFkX2ltcGxpZXNfZXhlYyhleCxzdGsp
CShzdGsgIT0gRVhTVEFDS19ESVNBQkxFX1gpCisjZGVmaW5lIGVsZl9yZWFkX2ltcGxpZXNfZXhl
YyhleCxzdGspCShzdGsgPT0gRVhTVEFDS19ERUZBVUxUKQogCiAjZGVmaW5lIENPUkVfRFVNUF9V
U0VfUkVHU0VUCiAjZGVmaW5lIEVMRl9FWEVDX1BBR0VTSVpFCVBBR0VfU0laRQotLSAKMi4yMC4x
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
