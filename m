Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E603E223E4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 May 2019 17:24:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uRkd2stHQpyiaseHoYR4B7ciX93jSyQdiutj6ccyzg8=; b=GtLRaUxx8xFQ8v
	k56UcLli+5S2FzY4sSDUUOYBgRYHwgNYOJ/Nrubn9fpezHX86XMRNBxVwXpR9NAMP+ox4wyllvrxF
	T/xBxvkpZkcOP9voUrH6itEyWkNgovq3d7eoiY+tAHVCaAGUA7LLXR4o5M3CqvAZHs2+/xlhgf0R1
	OKwkrL4EzaI2C1gJTrUL3UjstM5fU7yDL/UjuNVjfg1ax43prP9ju3+9XHSp2LaTD+nbodMVPjA+n
	WZaxNalrqJcKW170UUvnQXTFFSVP+YKKbig5BIhJ4kzpvCXv//bStGwWLIZEW/1hKlGcnFyQ/TETa
	AIjha896A2K0vvHUMZaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hS1CL-0002qu-EM; Sat, 18 May 2019 15:24:33 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hS1Bt-0002SM-Ld
 for linux-arm-kernel@lists.infradead.org; Sat, 18 May 2019 15:24:06 +0000
Received: by mail-wr1-x443.google.com with SMTP id d9so10057797wrx.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 May 2019 08:24:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Bb8Bn0y+CHkNYqfSnrMuHBOIqxCSSqYL5uC9ndXvfLI=;
 b=YJvJzE8B607TcqWfmR2HLQphkJm9SE3zbJRtpyjGKpWqRUoWvyYyXBNALxBeck8CZU
 wFpmPWFl7CXhTi3OP3/J3vFChLsmRGk5rKV93tGHhHHmwYmdbt+w7LQjwkp6SChh8ZOz
 KIhgvg+fN8iebcIEtx9myUJbkp8Pm0joy8NEuttW4o8IIebGLtBMmZd12VxDq68e8WRD
 cIR3SS+rC3yGYj0U9QZc00panRva8ZmQYzz3qt1Bqc12z/BV127bjkxtcZv1qturh1ab
 qclWPpzdWgLPz7a2B6sKdczS1011N+mSYyj6PmcVxngVVoTJY18rHzNLAs/Yg945AiUe
 v13A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Bb8Bn0y+CHkNYqfSnrMuHBOIqxCSSqYL5uC9ndXvfLI=;
 b=uVNgUUfbB7EEiXnGOlku3pxnEzUgfUum6M7fgNOZUdwRxCNf7JJmIEbQFHW6ZpVKBu
 xnvzkYD7vXEpdNxtcw0IRKgj2k+H1izDzUgs4arALRXWUdVAzNatVojZIFL9FnZYxGeT
 Wog72nhtmaXZKgQAjrwrjdhc/P6umrxfgDnKMHPH7MPTGhnuvDoISlSxdjpwoH5PQTUx
 Q6LtGvJh+W0lIhcyeb/ZvCmVlTrUHnfkZ4KEbvJ/4ILpbkWCYMZjvPkE1+/CNFXMXCvC
 oXUrXV6xrsogIknrEiyXLahTLtqEbFFIMhVuYNlvriZWvFlMihXnPox/7+++oqCirFDs
 alsA==
X-Gm-Message-State: APjAAAVU9TujjWFPbkxofcnHPzUnr78t3bc2Vl0pOF/FCK8jxmXkB4Eq
 qz+liZH/ipopubi88/TZGgc=
X-Google-Smtp-Source: APXvYqwraU8AxaqS3mZw38+RWJj7AnEEFKolLI0/MvACckD7cZowCZ5K2daKWy0xFhWR+ZnQkVcxoA==
X-Received: by 2002:a5d:62c2:: with SMTP id o2mr19950394wrv.254.1558193043978; 
 Sat, 18 May 2019 08:24:03 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id j190sm12934836wmb.19.2019.05.18.08.24.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 18 May 2019 08:24:03 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v3 2/4] arm64: dts: allwinner: h6: add watchdog node
Date: Sat, 18 May 2019 17:23:53 +0200
Message-Id: <20190518152355.11134-3-peron.clem@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190518152355.11134-1-peron.clem@gmail.com>
References: <20190518152355.11134-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190518_082405_704039_6D3EA971 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-watchdog@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsd2lubmVyIEg2IGhhcyBhIHdhdGNob2cgbm9kZSB3aGljaCBzZWVtcyBicm9rZW4Kb24gc29t
ZSBib2FyZHMuCgpUZXN0IGhhcyBiZWVuIHBlcmZvcm1lZCBvbiBzZXZlcmFsIGJvYXJkcy4KCkNo
ZW4tWXUgVHNhaSBib2FyZHM6ClBpbmUgSDY0IC0gSDY0NDhCQSA3NzgyID0+IE9LCk9yYW5nZVBp
IExpdGUgMiAtIEg4MDY4QkEgNjFDMiA9PiBLTwoKTWFydGluIEF5b3R0ZSBib2FyZHM6ClBpbmUg
SDY0IC0gSDgwNjlCQSA2ODkyID0+IE9LCk9yYW5nZVBpIDMgLSBIQTA0N0JBIDY5VzIgPT4gS08K
T3JhbmdlUGkgT25lIFBsdXMgLSBINzMxMEJBIDY4NDIgPT4gS08KT3JhbmdlUGkgTGl0ZTIgLSBI
NjQ0OEJBIDY2NjIgPT4gS08KCkNsw6ltZW50IFDDqXJvbiBib2FyZDoKQmVlbGluayBHUzEgLSBI
NzMwOUJBIDY4NDIgPT4gS08KCkFzIGl0IHNlZW1zIG5vdCBmaXhhYmxlIGZvciBub3csIGRlY2xh
cmUgdGhlIG5vZGUKYnV0IGxlYXZlIGl0IGRpc2FibGUgd2l0aCBhIGNvbW1lbnQuCgpTaWduZWQt
b2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgotLS0KIGFyY2gv
YXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpIHwgMTAgKysrKysrKysrKwog
MSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
YWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpCmluZGV4IDE2YzVjM2QwZmQ4MS4uNjBiNDdmMjNiMmY1
IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRz
aQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQpAQCAt
MjA4LDYgKzIwOCwxNiBAQAogCQkJcmVnID0gPDB4MDMwMDYwMDAgMHg0MDA+OwogCQl9OwogCisJ
CXdhdGNoZG9nOiB3YXRjaGRvZ0AzMDA5MGEwIHsKKwkJCWNvbXBhdGlibGUgPSAiYWxsd2lubmVy
LHN1bjUwaS1oNi13ZHQiLAorCQkJCSAgICAgImFsbHdpbm5lcixzdW41MGktYTY0LXdkdCIsCisJ
CQkJICAgICAiYWxsd2lubmVyLHN1bjZpLWEzMS13ZHQiOworCQkJcmVnID0gPDB4MDMwMDkwYTAg
MHgyMD47CisJCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgNTAgSVJRX1RZUEVfTEVWRUxfSElHSD47
CisJCQkvKiBCcm9rZW4gb24gc29tZSBINiBib2FyZHMgKi8KKwkJCXN0YXR1cyA9ICJkaXNhYmxl
ZCI7CisJCX07CisKIAkJcGlvOiBwaW5jdHJsQDMwMGIwMDAgewogCQkJY29tcGF0aWJsZSA9ICJh
bGx3aW5uZXIsc3VuNTBpLWg2LXBpbmN0cmwiOwogCQkJcmVnID0gPDB4MDMwMGIwMDAgMHg0MDA+
OwotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
