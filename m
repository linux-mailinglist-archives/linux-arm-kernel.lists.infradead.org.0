Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F1D0F6D1E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 04:06:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jnTEgwhC2CX31TFGnHfIe26FVsU/oHb5uboSZnLIe/Y=; b=R6Inc8qR6hex0x
	T3nY2QAYfSW0GAAJKQod93uhRpEJSMmV4bGoYBGjTp0W1kbLQt1xIEb8VVIlJOKkmKr6ULghxJcR6
	MHZIh7wMHrLDqpkE3mAwIViscH/zIGPKmG2Xs3kKidp4e1ezb7ptm/hGMjHNSXkyPiyVgYqiCP0f2
	NYUGrtJWmPCxsowBMiMBa1LKq9+aipadawefOGUXTN1BEsluiDvwSVQ+ohbkDtOLXYgEQfUP6UOTE
	jD/HEUzgEZym8fZXAgxpVqC6aukxdUoG+Ek/XSCXNslDlStizbB3zUl/+NRAcV0lQfTHhkFr4zaBr
	LOwdMCP/wiP2ZKjlAh0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU02G-0005LV-Dq; Mon, 11 Nov 2019 03:06:36 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU00c-0002fv-ID; Mon, 11 Nov 2019 03:04:56 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 8DFF5B157;
 Mon, 11 Nov 2019 03:04:50 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH 5/7] ARM: dts: rtd1195: Introduce r-bus
Date: Mon, 11 Nov 2019 04:04:32 +0100
Message-Id: <20191111030434.29977-6-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191111030434.29977-1-afaerber@suse.de>
References: <20191111030434.29977-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_190454_745963_DCF475BE 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TW9kZWwgUmVhbHRlaydzIHJlZ2lzdGVyIGJ1cyBpbiBEVC4KClNpZ25lZC1vZmYtYnk6IEFuZHJl
YXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KLS0tCiBUaGlzIGNvdWxkIGJlIHNxdWFzaGVk
IGludG8gdGhlIG9yaWdpbmFsIFJURDExOTUgcGF0Y2guCiAKIGFyY2gvYXJtL2Jvb3QvZHRzL3J0
ZDExOTUuZHRzaSB8IDUyICsrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDMwIGluc2VydGlvbnMoKyksIDIyIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUuZHRzaSBiL2FyY2gvYXJtL2Jvb3Qv
ZHRzL3J0ZDExOTUuZHRzaQppbmRleCBhOGNjMmQyM2U3ZWYuLjM0Mzk2NDdlY2Y5NyAxMDA2NDQK
LS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5NS5kdHNpCisrKyBiL2FyY2gvYXJtL2Jvb3Qv
ZHRzL3J0ZDExOTUuZHRzaQpAQCAtOTIsMjggKzkyLDM2IEBACiAJCSAgICAgICAgIDwweDE4MTAw
MDAwIDB4MTgxMDAwMDAgMHgwMTAwMDAwMD4sCiAJCSAgICAgICAgIDwweDQwMDAwMDAwIDB4NDAw
MDAwMDAgMHhjMDAwMDAwMD47CiAKLQkJd2R0OiB3YXRjaGRvZ0AxODAwNzY4MCB7Ci0JCQljb21w
YXRpYmxlID0gInJlYWx0ZWsscnRkMTI5NS13YXRjaGRvZyI7Ci0JCQlyZWcgPSA8MHgxODAwNzY4
MCAweDEwMD47Ci0JCQljbG9ja3MgPSA8Jm9zYzI3TT47Ci0JCX07Ci0KLQkJdWFydDA6IHNlcmlh
bEAxODAwNzgwMCB7Ci0JCQljb21wYXRpYmxlID0gInNucHMsZHctYXBiLXVhcnQiOwotCQkJcmVn
ID0gPDB4MTgwMDc4MDAgMHg0MDA+OwotCQkJcmVnLXNoaWZ0ID0gPDI+OwotCQkJcmVnLWlvLXdp
ZHRoID0gPDQ+OwotCQkJY2xvY2stZnJlcXVlbmN5ID0gPDI3MDAwMDAwPjsKLQkJCXN0YXR1cyA9
ICJkaXNhYmxlZCI7Ci0JCX07Ci0KLQkJdWFydDE6IHNlcmlhbEAxODAxYjIwMCB7Ci0JCQljb21w
YXRpYmxlID0gInNucHMsZHctYXBiLXVhcnQiOwotCQkJcmVnID0gPDB4MTgwMWIyMDAgMHgxMDA+
OwotCQkJcmVnLXNoaWZ0ID0gPDI+OwotCQkJcmVnLWlvLXdpZHRoID0gPDQ+OwotCQkJY2xvY2st
ZnJlcXVlbmN5ID0gPDI3MDAwMDAwPjsKLQkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CisJCXJidXM6
IHItYnVzQDE4MDAwMDAwIHsKKwkJCWNvbXBhdGlibGUgPSAic2ltcGxlLWJ1cyI7CisJCQlyZWcg
PSA8MHgxODAwMDAwMCAweDEwMDAwMD47CisJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKKwkJCSNz
aXplLWNlbGxzID0gPDE+OworCQkJcmFuZ2VzID0gPDB4MCAweDE4MDAwMDAwIDB4MTAwMDAwPjsK
KworCQkJd2R0OiB3YXRjaGRvZ0A3NjgwIHsKKwkJCQljb21wYXRpYmxlID0gInJlYWx0ZWsscnRk
MTI5NS13YXRjaGRvZyI7CisJCQkJcmVnID0gPDB4NzY4MCAweDEwMD47CisJCQkJY2xvY2tzID0g
PCZvc2MyN00+OworCQkJfTsKKworCQkJdWFydDA6IHNlcmlhbEA3ODAwIHsKKwkJCQljb21wYXRp
YmxlID0gInNucHMsZHctYXBiLXVhcnQiOworCQkJCXJlZyA9IDwweDc4MDAgMHg0MDA+OworCQkJ
CXJlZy1zaGlmdCA9IDwyPjsKKwkJCQlyZWctaW8td2lkdGggPSA8ND47CisJCQkJY2xvY2stZnJl
cXVlbmN5ID0gPDI3MDAwMDAwPjsKKwkJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOworCQkJfTsKKwor
CQkJdWFydDE6IHNlcmlhbEAxYjIwMCB7CisJCQkJY29tcGF0aWJsZSA9ICJzbnBzLGR3LWFwYi11
YXJ0IjsKKwkJCQlyZWcgPSA8MHgxYjIwMCAweDEwMD47CisJCQkJcmVnLXNoaWZ0ID0gPDI+Owor
CQkJCXJlZy1pby13aWR0aCA9IDw0PjsKKwkJCQljbG9jay1mcmVxdWVuY3kgPSA8MjcwMDAwMDA+
OworCQkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CisJCQl9OwogCQl9OwogCiAJCWdpYzogaW50ZXJy
dXB0LWNvbnRyb2xsZXJAZmYwMTEwMDAgewotLSAKMi4xNi40CgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
