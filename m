Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 083A29AFAD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 14:37:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pfUeifS4SSqvRK3c35lJXFHSBZYWEu95VXUUPwslpwo=; b=ZOuwnlsAX0jxQv
	QbCIwlwlpLyolUQXPqQujqBM35RRGegSoYfZSJiaE+Z/pfFaG5GcnC/jq7Z54nOfL5SJl8aLYZCZM
	TIvX3/Wpf1BWGD6RoOP1+rMXJTZSWWTR1jnBL+LTVTCRJiEpljuZIOcecF1uT/m+sSZ4XEiyOPWtK
	vFGLfAgBLeqwmGI9kJ159xxoPXvO8GsCJW4WFAxffhqfLSRpv9ByNLyO3TqfQGfEMl6UKxH//ZIWz
	xvAUPoVdQDqARrS5fM4GJWJ4RAF/yafuywfY5GQw/Kot7+hiYR/DzyFSt5FRpc60oFG6PH+z51idZ
	WuqHr275FIVTtEQ/rshQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i18oZ-00077r-4n; Fri, 23 Aug 2019 12:37:11 +0000
Received: from laurent.telenet-ops.be ([2a02:1800:110:4::f00:19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i18oQ-00074K-J5
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 12:37:04 +0000
Received: from ramsan ([84.194.98.4]) by laurent.telenet-ops.be with bizsmtp
 id sccr2000o05gfCL01ccrcg; Fri, 23 Aug 2019 14:36:55 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1i18oF-0006Ya-HF; Fri, 23 Aug 2019 14:36:51 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1i18oF-0004uU-Fx; Fri, 23 Aug 2019 14:36:51 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [PULL 5/5] Renesas DT binding updates for v5.4 (take two)
Date: Fri, 23 Aug 2019 14:36:43 +0200
Message-Id: <20190823123643.18799-6-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190823123643.18799-1-geert+renesas@glider.be>
References: <20190823123643.18799-1-geert+renesas@glider.be>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_053702_795572_AAFB6581 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:19 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-renesas-soc@vger.kernel.org, Simon Horman <horms@verge.net.au>,
 Magnus Damm <magnus.damm@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCA4Y2I3ZWMxNDE4ODY0OWNmMjE1MTQ2
NDA1MDQxM2UyODE0ZmQ3Y2YxOgoKICBkdC1iaW5kaW5nczogY2FuOiByY2FyX2NhbjogQ29tcGxl
dGUgZG9jdW1lbnRhdGlvbiBmb3IgUlovRzJbRU1dICgyMDE5LTA3LTI5IDE1OjM2OjM5ICswMjAw
KQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6CgogIGdpdDovL2dpdC5r
ZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9nZWVydC9yZW5lc2FzLWRldmVsLmdp
dCB0YWdzL3JlbmVzYXMtZHQtYmluZGluZ3MtZm9yLXY1LjQtdGFnMgoKZm9yIHlvdSB0byBmZXRj
aCBjaGFuZ2VzIHVwIHRvIDdhYzJkNTZmNzgzZDZkNTQ2ZTg5YTRlNDRmYjQ2NTMyNjY3YWE3YTU6
CgogIGR0LWJpbmRpbmdzOiBjYW46IHJjYXJfY2FuOiBkb2N1bWVudCByOGE3NzQ3MCBzdXBwb3J0
ICgyMDE5LTA4LTIzIDE0OjI1OjA1ICswMjAwKQoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpSZW5lc2FzIERUIGJpbmRpbmcg
dXBkYXRlcyBmb3IgdjUuNCAodGFrZSB0d28pCgogIC0gUmVuZXNhcyBEVCBiaW5kaW5nIGRvYyBm
aWxlbmFtZSBjbGVhbnVwcywKICAtIFItQ2FyIEdlbjMgYW5kIFJaL0cxIHVwZGF0ZXMgZm9yIHRo
ZSBSLUNhciBDQU4gYW5kIENBTkZEIERUCiAgICBiaW5kaW5ncy4KCi0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KQ2FvIFZhbiBE
b25nICgxKToKICAgICAgZHQtYmluZGluZ3M6IGNhbjogcmNhcl9jYW46IGRvY3VtZW50IHI4YTc3
NDcwIHN1cHBvcnQKCk1hcmVrIFZhc3V0ICgxKToKICAgICAgZHQtYmluZGluZ3M6IGNhbjogcmNh
cl9jYW46IGRvY3VtZW50IHI4YTc3OTkwIHN1cHBvcnQKCk5pa2xhcyBTw7ZkZXJsdW5kICgxKToK
ICAgICAgZHQtYmluZGluZ3M6IHJjYXIte2NzaTIsdmlufTogUmVuYW1lIGJpbmRpbmdzIGRvY3Vt
ZW50YXRpb24gZmlsZXMKClNpbW9uIEhvcm1hbiAoMik6CiAgICAgIGR0LWJpbmRpbmdzOiBSZW5h
bWUgZmlsZSBvZiBEVCBiaW5kaW5ncyBmb3IgUmVuZXNhcyBtZW1vcnkgY29udHJvbGxlcnMKICAg
ICAgZHQtYmluZGluZ3M6IHJjYXItaW1yOiBSZW5hbWUgYmluZGluZ3MgZG9jdW1lbnRhdGlvbiBm
aWxlCgpVbHJpY2ggSGVjaHQgKDIpOgogICAgICBkdC1iaW5kaW5nczogY2FuOiByY2FyX2Nhbjog
ZG9jdW1lbnQgcjhhNzc5OTUgc3VwcG9ydAogICAgICBkdC1iaW5kaW5nczogY2FuOiByY2FyX2Nh
bmZkOiBkb2N1bWVudCByOGE3Nzk5NSBzdXBwb3J0CgogLi4uL21lZGlhL3tyZW5lc2FzLHJjYXIt
Y3NpMi50eHQgPT4gcmVuZXNhcyxjc2kyLnR4dH0gICAgICB8ICAwCiAuLi4vYmluZGluZ3MvbWVk
aWEve3JjYXJfaW1yLnR4dCA9PiByZW5lc2FzLGltci50eHR9ICAgICAgIHwgIDAKIC4uLi9iaW5k
aW5ncy9tZWRpYS97cmNhcl92aW4udHh0ID0+IHJlbmVzYXMsdmluLnR4dH0gICAgICAgfCAgMAog
Li4uL3tyZW5lc2FzLW1lbW9yeS1jb250cm9sbGVycy50eHQgPT4gcmVuZXNhcyxkYnNjLnR4dH0g
ICB8ICAwCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2Nhbi9yY2FyX2Nh
bi50eHQgICAgIHwgIDYgKysrKystCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
bmV0L2Nhbi9yY2FyX2NhbmZkLnR4dCAgIHwgMTQgKysrKysrKy0tLS0tLS0KIE1BSU5UQUlORVJT
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgNCArKy0t
CiA3IGZpbGVzIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQogcmVu
YW1lIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS97cmVuZXNhcyxyY2Fy
LWNzaTIudHh0ID0+IHJlbmVzYXMsY3NpMi50eHR9ICgxMDAlKQogcmVuYW1lIERvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS97cmNhcl9pbXIudHh0ID0+IHJlbmVzYXMsaW1y
LnR4dH0gKDEwMCUpCiByZW5hbWUgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21l
ZGlhL3tyY2FyX3Zpbi50eHQgPT4gcmVuZXNhcyx2aW4udHh0fSAoMTAwJSkKIHJlbmFtZSBEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVtb3J5LWNvbnRyb2xsZXJzL3tyZW5lc2Fz
LW1lbW9yeS1jb250cm9sbGVycy50eHQgPT4gcmVuZXNhcyxkYnNjLnR4dH0gKDEwMCUpCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
