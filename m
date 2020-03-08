Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A94917D4D8
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 17:35:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6eOu3vSZVHXYovRhentrSUNJJVNoYP+36xYhBNFlFD4=; b=C+5IXSk0GEwnol
	WUBT6cEx5Ef8RS6pEeSIrAkVOp/Al0bgOfAYWP00XGBMGyg46P5V8K3cGgW8eJHKDbO2R56YRKrX3
	3E92GD5plIsYTKCvuGne82pvDLO+VgGAk1hG9bc8wqmWBT2OYwi/GZUKSD/zWknU8GnrqKHsCyszf
	F/W6kEru1av3EBryH5NeqRJIud2E2K0e9nlBanWbBvHqwAQiTGABHOszsCw5t6Ef8nu7v3PtPNrji
	s86YWVW4i9mtHK2JrSN3ac0ikh3ua5fbmrkvcpmBTpikHOtDUphWARcJxsiOUdVLzz6KqGVGK69Qz
	CdLhoHu0QoXYak4wCvQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAyti-0002vJ-9F; Sun, 08 Mar 2020 16:35:26 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAyrJ-0000gp-Qh
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 16:33:01 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 79F1FB2F7;
 Sun,  8 Mar 2020 16:32:51 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC 11/11] ARM: dts: sp7021-cpu: Add dummy UART0 clock and interrupt
Date: Sun,  8 Mar 2020 17:32:29 +0100
Message-Id: <20200308163230.4002-12-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20200308163230.4002-1-afaerber@suse.de>
References: <20200308163230.4002-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_093258_066551_8A34E9D3 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org,
 =?UTF-8?q?Wells=20Lu=20=E5=91=82=E8=8A=B3=E9=A8=B0?=
 <wells.lu@sunplus.com>, Dvorkin Dmitry <dvorkin@tibbo.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgotLS0KIGFy
Y2gvYXJtL2Jvb3QvZHRzL3BlbnRhZ3JhbS1zcDcwMjEtYnBpLWYycy5kdHMgfCA3ICsrKysrKysK
IGFyY2gvYXJtL2Jvb3QvZHRzL3BlbnRhZ3JhbS1zcDcwMjEtY3B1LmR0c2kgICAgfCA1ICsrKysr
CiAyIGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2Fy
bS9ib290L2R0cy9wZW50YWdyYW0tc3A3MDIxLWJwaS1mMnMuZHRzIGIvYXJjaC9hcm0vYm9vdC9k
dHMvcGVudGFncmFtLXNwNzAyMS1icGktZjJzLmR0cwppbmRleCAzYzI1YjZlNzlmZTIuLjQ1NTQx
NmNlOWQ4MiAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvcGVudGFncmFtLXNwNzAyMS1i
cGktZjJzLmR0cworKysgYi9hcmNoL2FybS9ib290L2R0cy9wZW50YWdyYW0tc3A3MDIxLWJwaS1m
MnMuZHRzCkBAIC0xNSw4ICsxNSwxNSBAQAogCWNob3NlbiB7CiAJCXN0ZG91dC1wYXRoID0gInNl
cmlhbDA6MTE1MjAwbjgiOwogCX07CisKKwl1YXJ0MF9jbGs6IGNsayB7CisJCWNvbXBhdGlibGUg
PSAiZml4ZWQtY2xvY2siOworCQljbG9jay1mcmVxdWVuY3kgPSA8MjcwMDAwMDA+OworCQkjY2xv
Y2stY2VsbHMgPSA8MD47CisJfTsKIH07CiAKICZ1YXJ0MCB7CiAJc3RhdHVzID0gIm9rYXkiOwor
CWNsb2NrcyA9IDwmdWFydDBfY2xrPjsKIH07CmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0
cy9wZW50YWdyYW0tc3A3MDIxLWNwdS5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvcGVudGFncmFt
LXNwNzAyMS1jcHUuZHRzaQppbmRleCA3ZTQyNGJhYTkyMTQuLjQ4YzU5ODZhMzFlZCAxMDA2NDQK
LS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvcGVudGFncmFtLXNwNzAyMS1jcHUuZHRzaQorKysgYi9h
cmNoL2FybS9ib290L2R0cy9wZW50YWdyYW0tc3A3MDIxLWNwdS5kdHNpCkBAIC04NiwzICs4Niw4
IEBACiAJCSNpbnRlcnJ1cHQtY2VsbHMgPSA8Mj47CiAJfTsKIH07CisKKyZ1YXJ0MCB7CisJaW50
ZXJydXB0LXBhcmVudCA9IDwmaW50Yz47CisJaW50ZXJydXB0cyA9IDw1MyBJUlFfVFlQRV9MRVZF
TF9ISUdIPjsKK307Ci0tIAoyLjE2LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
