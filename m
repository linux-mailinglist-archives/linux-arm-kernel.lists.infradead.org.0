Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6BA91B0C34
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 15:03:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9vI/n7BUB8KTJIyND/C0cUpFkOApxXeGuElW1vnQWqI=; b=cgSHE3+NqRxpB/
	uB7ONqD4FdFHTQw6YjBeFBQmkRXvlyckGILjB8H9wGziW1GHZzqahcoUHQ9kpS2r5+4PMVwwmlTvf
	vEOXP2WXOUA3N8OkMhCfYYGFgeZIKbWHELvtXQNfblnFoev5dehRGl0pTxqagzQylFij5cRRzvuR/
	sAb0EyyM0xQdIPsLysf9LyT0askNXSG7y9bL+c5/wNj7sDmdn8Ea3fn5spZmrK6f/9THoLE9Om1p9
	wBhjMAEy5IRWvvUDYlBDC5UvorlldIk73ecTSE3fhRy8pY22D8KzQq+iVxd3usOnKhEW2GXtlfdJR
	/vuSlWy9bgb0zUruC/Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQW4c-0005WW-FY; Mon, 20 Apr 2020 13:02:54 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQW2O-0003Md-IW
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 13:00:37 +0000
Received: by mail-wr1-x444.google.com with SMTP id j1so6608996wrt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 06:00:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JGJgY52VtWHQubwdBfphQwyESnYnG9XPXa7p4J9NSzM=;
 b=ALM3XPShYXYfs9OQG5uTSuWv5rP6BcYP+yJY6yZ2eF/LtJ4dRg1ZdO0Lw6694HSTYi
 ZX69aeAK2wWfCapedHfDKkx+C8NUndd2BHXzLZj32tB1vxHBUC6pFzG5YHRSDlQkb1L0
 QqP3jfV+gvxRkuW1GctEISBnbXG72HwcXqlpb8JhpjtPNr1CZDOOi4JTDPFnEpCy0D3Q
 KghHrzwJjGBXRjc5W05tYulwVdf14RS5Ud9tgIrpEPXE31FQccrdzSc0jXBbfign7JqE
 RTKfZOng3Y3HDFNhTtV6g78N5Hby+YnH+RNI4R64TQM8HLsqOPA9xQ8e9aXnFlGsRFba
 i68g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JGJgY52VtWHQubwdBfphQwyESnYnG9XPXa7p4J9NSzM=;
 b=QfEG8HPo249bHz3vwvHXCPfqADI6ZS6KYay/HJIDb1sd/Ryu4MXCu6jvs0WBKQZK5P
 lxFCEnQBPZ6L+bKo9rmppFMtmHHWsZR9Gxbi863L+eQlg2c8ERZk/3l9VGq3DW+PYAQv
 k81HQX3LuwxG0nUbe3UPIz1fAm35Vj+HlD6doJq7A9stS8BQ8rx5hyGA7TtH9uQC9xrl
 4dkRPkhLR08iltxMj+eOUy2bskJZqUS6QjQbHuNMuTDK0A9kn3fT6Hx9yKL5khqttndy
 CjtD9oJVBcALqI3nqdw7b3q1tBzBQ/tPhhnpgpOeFGHNQJ+NIeH9ygPOqsJ5+oK9BK0r
 dk/Q==
X-Gm-Message-State: AGi0PuYRo1aO6rh4/UzRtqY0RC4sZkVev06nR5FaS2I65NaxBYFMAH5h
 jjZrmVR3mCD5S5m6Nk0968Q=
X-Google-Smtp-Source: APiQypKarzo/roM3OnXspVyqy1L0l7XhAIOi6FGXUHQZz+AxpTJnFh7NPjV2F5qKg2QEJX+7BPv+4Q==
X-Received: by 2002:adf:f342:: with SMTP id e2mr17743221wrp.146.1587387634804; 
 Mon, 20 Apr 2020 06:00:34 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:4e7:1fdd:b7c2:b3ab])
 by smtp.gmail.com with ESMTPSA id
 e11sm1081680wrn.87.2020.04.20.06.00.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 06:00:33 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v5 9/9] arm64: dts: allwinner: h6: Enable CPU opp tables for
 Pine H64
Date: Mon, 20 Apr 2020 15:00:21 +0200
Message-Id: <20200420130021.3841-10-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200420130021.3841-1-peron.clem@gmail.com>
References: <20200420130021.3841-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_060036_649135_54891472 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RW5hYmxlIENQVSBhbmQgR1BVIG9wcCB0YWJsZXMgZm9yIFBpbmUgSDY0LgoKVGhpcyBuZWVkcyB0
byBjaGFuZ2UgdGhlIENQVSByZWd1bGF0b3IgbWF4IHZvbHRhZ2UgdG8gZml0CnRoZSBPUFAgdGFi
bGUuCgpBbHNvIGFkZCB0aGUgcmFtcC1kZWxheSBpbmZvcm1hdGlvbiB0byBhdm9pZCBhbnkgb3V0
IG9mIHNwZWMKcnVubmluZyBhcyB0aGUgcmVndWxhdG9yIGlzIHNsb3dlciBhdCByZWFjaGluZyB0
aGUgdm9sdGFnZQpyZXF1ZXN0ZWQgY29tcGFyZSB0byB0aGUgUExMIHJlYWNoaW5nIHRoZSBmcmVx
dWVuY3kuCgpUaGVyZSBpcyBubyBzdWNoIGluZm9ybWF0aW9uIGZvciBBWFA4MDUgYnV0IHNpbWls
YXIgUE1JQyAoQVhQODEzKQpoYXMgYSBEVk0gKER5bmFtaWMgVm9sdGFnZSBzY2FsaW5nIE1hbmFn
ZW1lbnQpIHJhbXAgcmF0ZSBlcXVhbAp0byAyNTAwdVYvdXMuCgpTaWduZWQtb2ZmLWJ5OiBDbMOp
bWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9k
dHMvYWxsd2lubmVyL3N1bjUwaS1oNi1waW5lLWg2NC5kdHMgfCA5ICsrKysrKysrLQogMSBmaWxl
IGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1waW5lLWg2NC5kdHMgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtcGluZS1oNjQuZHRzCmluZGV4IDYz
YTc4NWI1MzRlMS4uYWY4NWIyMDc0ODY3IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L2FsbHdpbm5lci9zdW41MGktaDYtcGluZS1oNjQuZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvYWxsd2lubmVyL3N1bjUwaS1oNi1waW5lLWg2NC5kdHMKQEAgLTQsNiArNCw3IEBACiAvZHRz
LXYxLzsKIAogI2luY2x1ZGUgInN1bjUwaS1oNi5kdHNpIgorI2luY2x1ZGUgInN1bjUwaS1oNi1j
cHUtb3BwLmR0c2kiCiAKICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9ncGlvL2dwaW8uaD4KIApAQCAt
ODAsNiArODEsMTAgQEAKIAl9OwogfTsKIAorJmNwdTAgeworCWNwdS1zdXBwbHkgPSA8JnJlZ19k
Y2RjYT47Cit9OworCiAmZGUgewogCXN0YXR1cyA9ICJva2F5IjsKIH07CkBAIC0yMzgsNyArMjQz
LDggQEAKIAkJCXJlZ19kY2RjYTogZGNkY2EgewogCQkJCXJlZ3VsYXRvci1hbHdheXMtb247CiAJ
CQkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8ODEwMDAwPjsKLQkJCQlyZWd1bGF0b3ItbWF4
LW1pY3Jvdm9sdCA9IDwxMDgwMDAwPjsKKwkJCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwx
MTYwMDAwPjsKKwkJCQlyZWd1bGF0b3ItcmFtcC1kZWxheSA9IDwyNTAwPjsKIAkJCQlyZWd1bGF0
b3ItbmFtZSA9ICJ2ZGQtY3B1IjsKIAkJCX07CiAKQEAgLTI0Niw2ICsyNTIsNyBAQAogCQkJCXJl
Z3VsYXRvci1lbmFibGUtcmFtcC1kZWxheSA9IDwzMjAwMD47CiAJCQkJcmVndWxhdG9yLW1pbi1t
aWNyb3ZvbHQgPSA8ODEwMDAwPjsKIAkJCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxMDgw
MDAwPjsKKwkJCQlyZWd1bGF0b3ItcmFtcC1kZWxheSA9IDwyNTAwPjsKIAkJCQlyZWd1bGF0b3It
bmFtZSA9ICJ2ZGQtZ3B1IjsKIAkJCX07CiAKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
