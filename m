Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B3CB4569B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 09:44:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QHD/UMxr4AzWcbkxVrPpScfLmgzY/WzLtOgYIyWcFXE=; b=SPPK/4Sp5b/MWh
	BFewbsPwhkkk2PjgYrZcYTolZwOoxWMhhpHROuCDqRNjEyCSehVCPXKnOaw+kKRB4wV2h5Wff5DJr
	rRH5xrSrUWsMtdv6U4lwSCxZaXVwYOLGQB0k4B0+DgM23sZdro4omynrBaZt36z4DuNYD4t0j6Ecl
	vAG1EE07PczYKHlpCh2ixqtbTYPn5Ukt0bXsAtmgHeWDbLj1id2iE02otCcemGRuRMwotybZtqmHG
	uwJa1FT3YlPk/+9aWw1MU6gSgH/HXQ6YsrJ6Svgyuw4tK5PeHwfqt/w/kUOZW41joeLjk5pxkPYI+
	hFWqoj4n39P1hAbqmGKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbgt9-0006PB-QO; Fri, 14 Jun 2019 07:44:43 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbgsu-0006O6-S5
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 07:44:30 +0000
Received: from localhost (unknown [131.228.32.178])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 6E6FD24000A;
 Fri, 14 Jun 2019 07:43:56 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 <arm@kernel.org>
Subject: [GIT PULL] ARM: mvebu: fixes for v5.2 (#1)
Date: Fri, 14 Jun 2019 09:43:55 +0200
Message-ID: <87imt8pq6c.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_004429_073306_B151E9D3 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpIZXJlIGlzIHRoZSBmaXJzdCBwdWxsIHJlcXVlc3QgZm9yIGZpeGVzIGZvciBtdmVidSBm
b3IgdjUuMi4KCkdyZWdvcnkKClRoZSBmb2xsb3dpbmcgY2hhbmdlcyBzaW5jZSBjb21taXQgYTE4
ODMzOWNhNWEzOTZhY2M1ODhlNTg1MWVkN2UxOWY2NmIwZWJkOToKCiAgTGludXggNS4yLXJjMSAo
MjAxOS0wNS0xOSAxNTo0NzowOSAtMDcwMCkKCmFyZSBhdmFpbGFibGUgaW4gdGhlIEdpdCByZXBv
c2l0b3J5IGF0OgoKICBnaXQ6Ly9naXQuaW5mcmFkZWFkLm9yZy9saW51eC1tdmVidS5naXQgdGFn
cy9tdmVidS1maXhlcy01LjItMQoKZm9yIHlvdSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRvIGNjNTM4
Y2E0MzA4MzcyZTgxYjgyNGJlMDg1NjFjNDY2YjFkNzNiNzI6CgogIEFSTTogbXZlYnVfdjdfZGVm
Y29uZmlnOiBmaXggRXRoZXJuZXQgb24gQ2xlYXJmb2cgKDIwMTktMDYtMTIgMTA6MzY6MzYgKzAy
MDApCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCm12ZWJ1IGZpeGVzIGZvciA1LjIgKHBhcnQgMSkKCkZpeGluZyBkZWZjb25m
aWcgYWxsb3dpbmcgdG8gdXNlIEV0aGVybmV0IGFnYWluIG9uIEFybWFkYSAzOHggYmFzZWQKYm9h
cmRzCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCkphbiBLdW5kcsOhdCAoMSk6CiAgICAgIEFSTTogbXZlYnVfdjdfZGVmY29u
ZmlnOiBmaXggRXRoZXJuZXQgb24gQ2xlYXJmb2cKCiBhcmNoL2FybS9jb25maWdzL212ZWJ1X3Y3
X2RlZmNvbmZpZyB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
