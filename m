Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 100C79FF1F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 12:08:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UZ9TT/CF0R2cYPg7Yma6RRV4CzBHhDSOZYivMzqEdgU=; b=IBwVlzHaIRn9Rs
	8YCh9l+ZY8ZbjCdjy36oGsynY4vDEB24gm2VKr5qcephUvXOb+1X5dZ4Du6f7uqniFOpSaMijEMos
	/ool3NK3+lSw5S64r2sfoTx91Kp+mAuO1QtztNbb/0MkkGgh2IgLI9uWlL7ZK7aYJtfP3iYtDdIcu
	rze4yquutOSFQYT7jK8Z/l9rFYyEddkYuQx4/GUXakxfY611Wlqu2w0hhpRJ9T/XTwEauhwkxPZz0
	0/XyilTZbbEthIh/Cq0Oqt2Nem9y98O4XtOvVO65E0SNhRI+oa2fae/hYpy28eC+hmflpHlLlM1B4
	Cf2VxTaOGkkaNg6u/dug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2usE-0003XY-OO; Wed, 28 Aug 2019 10:08:18 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2us1-0003X0-IE
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 10:08:07 +0000
X-Originating-IP: 86.207.98.53
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id C07DDFF804;
 Wed, 28 Aug 2019 10:07:52 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 <arm@kernel.org>, soc@kernel.org
Subject: [GIT PULL] ARM: mvebu: dt for v5.4 (#1)
Date: Wed, 28 Aug 2019 12:07:52 +0200
Message-ID: <878srdzjpj.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_030805_753729_E96BED50 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: Andrew Lunn <andrew@lunn.ch>, linux-kernel@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpIZXJlIGlzIHRoZSBmaXJzdCBwdWxsIHJlcXVlc3QgZm9yIGR0IGZvciBtdmVidSBmb3Ig
djUuNC4KCkdyZWdvcnkKClRoZSBmb2xsb3dpbmcgY2hhbmdlcyBzaW5jZSBjb21taXQgNWY5ZTgz
MmMxMzcwNzUwNDVkMTVjZDY4OTlhYjA1MDVjZmIyY2E0YjoKCiAgTGludXMgNS4zLXJjMSAoMjAx
OS0wNy0yMSAxNDowNTozOCAtMDcwMCkKCmFyZSBhdmFpbGFibGUgaW4gdGhlIEdpdCByZXBvc2l0
b3J5IGF0OgoKICBnaXQ6Ly9naXQuaW5mcmFkZWFkLm9yZy9saW51eC1tdmVidS5naXQgdGFncy9t
dmVidS1kdC01LjQtMQoKZm9yIHlvdSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRvIDY0NDc2MzIyNDE2
OWU5Y2EyZTMwMTBjMjRiZjRiODFhNmJlNjQ5NTk6CgogIEFSTTogZHRzOiBraXJrd29vZDogdHMy
MTk6IGRpc2FibGUgdGhlIFNvQydzIFJUQyAoMjAxOS0wOC0yNyAxNzowNToyNCArMDIwMCkKCi0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KbXZlYnUgZHQgZm9yIDUuNCAocGFydCAxKQoKIC0gRGlzYWJsZSB0aGUga2lya3dvb2Qg
UlRDIHRoYXQgZG9lc24ndCB3b3JrIG9uIHRoZSB0czIxOSBib2FyZAoKLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpVd2UgS2xl
aW5lLUvDtm5pZyAoMSk6CiAgICAgIEFSTTogZHRzOiBraXJrd29vZDogdHMyMTk6IGRpc2FibGUg
dGhlIFNvQydzIFJUQwoKIGFyY2gvYXJtL2Jvb3QvZHRzL2tpcmt3b29kLXRzMjE5LmR0c2kgfCA4
ICsrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCgotLSAKR3JlZ29yeSBD
bGVtZW50LCBCb290bGluCkVtYmVkZGVkIExpbnV4IGFuZCBLZXJuZWwgZW5naW5lZXJpbmcKaHR0
cDovL2Jvb3RsaW4uY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
