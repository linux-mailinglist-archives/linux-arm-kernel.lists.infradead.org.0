Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 146E3195188
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 07:48:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nrDLXRQ/e71NRVPdZJY46WYis6nRvLjEsTGB3J9T6P8=; b=sway2hZiZJPyfP
	MWwvRGSQR0yNbAzZ2Jcq/wrf0bShANiUO+qhAZDL4G1lnv96ImwOUlfVAQl6/zMB7GlUNfMn9PpRa
	WRAy22JiGFtKVxZ3SOdhTKPWnoCvST3u9hJqW1dh78N3TzRNtdYs8kEkfS9imuDXLO0tTuCX9ub8/
	yA+3KWffqldv80kpmgy5IsxH7+w4HuXHbvoI9gX29+dVkBEgLIC/uCx/8fA3/rU1npvFFUW0P04ax
	HdE5e5h8N9v82S6UZTm8FaTBFRpjyPgJCGM0Hc/nBTi2lRGqGo3+xH/INLbrvXluwSEXFPMWl7k3f
	GNniTvKuN4/6LXaFP02A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHinF-00013s-JX; Fri, 27 Mar 2020 06:48:37 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHin3-00012U-FL
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 06:48:26 +0000
Received: by mail-pf1-x442.google.com with SMTP id j1so4069054pfe.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 23:48:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RpYBuJfY08WhjaxaukJkaddMj0LXmdHxotG0jM4ptqg=;
 b=QNhpPzdqJpCei279jTF+h/ObhmvlR6FTP7G9SeLHFQQYYYl/hOo7K7A4ahYZW9rBTi
 CxTyqKu7s/VDnh0YhGgfs7LNY7Bn+lOco0Y3SE1ZH7MyzXiWqcevIJXEgNfXB9RcIubp
 WtzpdKV9R1aShxwRNBzHJ6OLnP2DSIhS0HLyA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RpYBuJfY08WhjaxaukJkaddMj0LXmdHxotG0jM4ptqg=;
 b=cHcHKBd/bGYay+L7isD/QFaUmBTF//woYDwuSioInvjE/c5YlsN9mnhK9WC6p3jVUE
 ZVMbmcx3NG6YRfyILNFrR959Q5QF4+P3ZFxHajG9yLP9gDdT51xxvwh/QuogkaLJsr4M
 WlUZXn5C2IS089OuV/JmFBoSwMOlNNZXE+AS9MTiNVHbyFIXfG1LnT8gP7ZQFwxVaDWt
 gIV8vHz9CquVpfbGjLJhEp9EgFELm0Nzf0jh/yj5QPwQNkDN/13l2gxKRxN7Q3/wMRnc
 g1aH36pE9l7J7rwGGedcPRmiOXN1xX6ryatpqabcDht4kn9z78CA9V42a7JdbRSP1mWN
 oJhg==
X-Gm-Message-State: ANhLgQ0jeQCw9Uvp2dFUNjizQjwJYiqv+YdlWBCkPkUWYeajtwDZYcTR
 fmxjQ3ej+09ehyJw2eaubJcr+A==
X-Google-Smtp-Source: ADFU+vsCyDBR9n7viFoDu0Ekx+5WslhiT7XTciFmLxv2z4EAe6/t7zwz9Rj+ofshsa0IFDSE5S7sOw==
X-Received: by 2002:a62:75d0:: with SMTP id q199mr13127618pfc.72.1585291704670; 
 Thu, 26 Mar 2020 23:48:24 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id g14sm3227306pfb.131.2020.03.26.23.48.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 23:48:23 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v5 3/6] x86/elf: Disable automatic READ_IMPLIES_EXEC for
 64-bit address spaces
Date: Thu, 26 Mar 2020 23:48:17 -0700
Message-Id: <20200327064820.12602-4-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200327064820.12602-1-keescook@chromium.org>
References: <20200327064820.12602-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_234825_538402_16FB512F 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

V2l0aCBtb2Rlcm4geDg2IDY0LWJpdCBlbnZpcm9ubWVudHMsIHRoZXJlIHNob3VsZCBuZXZlciBi
ZSBhIG5lZWQgZm9yCmF1dG9tYXRpYyBSRUFEX0lNUExJRVNfRVhFQywgYXMgdGhlIGFyY2hpdGVj
dHVyZSBpcyBpbnRlbmRlZCB0byBhbHdheXMKYmUgZXhlY3V0ZS1iaXQgYXdhcmUgKGFzIGluLCB0
aGUgZGVmYXVsdCBtZW1vcnkgcHJvdGVjdGlvbiBzaG91bGQgYmUgTlgKdW5sZXNzIGEgcmVnaW9u
IGV4cGxpY2l0bHkgcmVxdWVzdHMgdG8gYmUgZXhlY3V0YWJsZSkuCgpUaGVyZSB3ZXJlIHZlcnkg
b2xkIHg4Nl82NCBzeXN0ZW1zIHRoYXQgbGFja2VkIHRoZSBOWCBiaXQsIGJ1dCBmb3IgdGhvc2Us
CnRoZSBOWCBiaXQgaXMsIG9idmlvdXNseSwgdW5lbmZvcmNlYWJsZSwgc28gdGhlc2UgY2hhbmdl
cyBzaG91bGQgaGF2ZQpubyBpbXBhY3Qgb24gdGhlbS4KClN1Z2dlc3RlZC1ieTogSGVjdG9yIE1h
cmNvLUdpc2JlcnQgPGhlY21hcmdpQHVwdi5lcz4KU2lnbmVkLW9mZi1ieTogS2VlcyBDb29rIDxr
ZWVzY29va0BjaHJvbWl1bS5vcmc+ClJldmlld2VkLWJ5OiBKYXNvbiBHdW50aG9ycGUgPGpnZ0Bt
ZWxsYW5veC5jb20+Ci0tLQogYXJjaC94ODYvaW5jbHVkZS9hc20vZWxmLmggfCA0ICsrLS0KIDEg
ZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvYXJjaC94ODYvaW5jbHVkZS9hc20vZWxmLmggYi9hcmNoL3g4Ni9pbmNsdWRlL2FzbS9lbGYu
aAppbmRleCAzOTdhMWM3NDQzM2UuLjQ1MmJlZWQ3ODkyYiAxMDA2NDQKLS0tIGEvYXJjaC94ODYv
aW5jbHVkZS9hc20vZWxmLmgKKysrIGIvYXJjaC94ODYvaW5jbHVkZS9hc20vZWxmLmgKQEAgLTI4
Nyw3ICsyODcsNyBAQCBleHRlcm4gdTMyIGVsZl9od2NhcDI7CiAgKiDCoCDCoCDCoCDCoCDCoCDC
oCAgICDCoENQVTogfCBsYWNrcyBOWCogwqB8IGhhcyBOWCwgaWEzMiDCoCDCoCB8IGhhcyBOWCwg
eDg2XzY0IHwKICAqIEVMRjogwqAgwqAgwqAgwqAgICAgwqAgwqAgwqB8IMKgIMKgIMKgIMKgIMKg
IMKgfCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHwgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB8
CiAgKiAtLS0tLS0tLS0tLS0tLS0tLS0tLS18LS0tLS0tLS0tLS0tfC0tLS0tLS0tLS0tLS0tLS0t
LXwtLS0tLS0tLS0tLS0tLS0tfAotICogbWlzc2luZyBQVF9HTlVfU1RBQ0sgfCBleGVjLWFsbCDC
oCB8IGV4ZWMtYWxsIMKgIMKgIMKgIMKgIHwgZXhlYy1hbGwgwqAgwqAgwqAgfAorICogbWlzc2lu
ZyBQVF9HTlVfU1RBQ0sgfCBleGVjLWFsbCDCoCB8IGV4ZWMtYWxsIMKgIMKgIMKgIMKgIHwgZXhl
Yy1ub25lwqAgwqAgwqAgfAogICogUFRfR05VX1NUQUNLID09IFJXWCDCoHwgZXhlYy1zdGFjayB8
IGV4ZWMtc3RhY2sgwqAgwqAgwqAgfCBleGVjLXN0YWNrIMKgIMKgIHwKICAqIFBUX0dOVV9TVEFD
SyA9PSBSVyDCoCB8IGV4ZWMtbm9uZSDCoHwgZXhlYy1ub25lIMKgIMKgIMKgIMKgfCBleGVjLW5v
bmUgwqAgwqAgwqB8CiAgKgpAQCAtMzAzLDcgKzMwMyw3IEBAIGV4dGVybiB1MzIgZWxmX2h3Y2Fw
MjsKICAqCiAgKi8KICNkZWZpbmUgZWxmX3JlYWRfaW1wbGllc19leGVjKGV4LCBleGVjdXRhYmxl
X3N0YWNrKQlcCi0JKGV4ZWN1dGFibGVfc3RhY2sgPT0gRVhTVEFDS19ERUZBVUxUKQorCShtbWFw
X2lzX2lhMzIoKSAmJiBleGVjdXRhYmxlX3N0YWNrID09IEVYU1RBQ0tfREVGQVVMVCkKIAogc3Ry
dWN0IHRhc2tfc3RydWN0OwogCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
