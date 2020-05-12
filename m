Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA03A1CF45B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 14:30:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+IZUepY6OIJB3C8Q4JvgU3377s5V2niYYZ96r/BbdFo=; b=JhY3E4nV+JGfRL
	lP6mtsl2ji9Ovi4fWy4lf7ohCmDt401zSUeV75slnemOJFq1NUndULe2xHqZ9tEtJdgjK96Xa7RK7
	37PwjzjdMXcOqZVJ9HM4/aHxd1ZyaR5RAvm0QgbnRp7eAWj9NWAA83b5tSQdrEknntwyw002OMby4
	KJqwRf62I32n43wk6QtfmbFyyQ8P5BbGxu0SCHEpbGfC86lDMFLdvQkrfDEs+oI1JWrqGGjKK4RRI
	2t0cNePZbbKtdE008H9C1G1FTozLIQwICmzFlZIz7aka3a/vVNxmlDiZcMqqVtJX/HKmG9vOlXODM
	D3jEpJA/AA0gJohmVkfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYU2m-0000fD-96; Tue, 12 May 2020 12:29:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYU2R-0000Um-Gm
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 12:29:37 +0000
Received: from kozik-lap.mshome.net (unknown [194.230.155.237])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2001C20747;
 Tue, 12 May 2020 12:29:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589286575;
 bh=VUejPub+hGyoKz/W9jwQpeJMaOIj2rENfmrgVQ+Hezg=;
 h=From:List-Id:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=xZvVv4jJZsC7SCQ1NwkbzMHgW3OZF+83Vbly1Rt26G87drkSuJygOCIlJ96gH6OUN
 tdwhH8GJO2tgBQ31H8MTynfRLRFSrq+lFIyy7dt9sMk2x/DOWZ1hx/Vh/UxWldLevM
 ys2S00YDN4UF5SnhIsaME/Vg+LIeB44m+fIqPark=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL 2/3] ARM: dts: samsung: dt for v5.8
Date: Tue, 12 May 2020 14:29:21 +0200
Message-Id: <20200512122922.5700-2-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512122922.5700-1-krzk@kernel.org>
References: <20200512122922.5700-1-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_052935_597136_B85ABDC6 
X-CRM114-Status: GOOD (  15.20  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-samsung-soc@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpRdWl0ZSBiaWcgc2V0IG9mIGNoYW5nZXMsIGJ1dCBtb3N0bHkgc21hbGwgaW1wcm92ZW1l
bnRzIGFuZCBvbmUgbmV3IGJvYXJkLiBTZWUKdGhlIHRhZyBtZXNzYWdlIGJlbG93LgoKQmVzdCBy
ZWdhcmRzLApLcnp5c3p0b2YKCgpUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0IDhm
M2Q5ZjM1NDI4Njc0NWM3NTEzNzRmNWYxZmNhZmVlNmIzZjMxMzY6CgogIExpbnV4IDUuNy1yYzEg
KDIwMjAtMDQtMTIgMTI6MzU6NTUgLTA3MDApCgphcmUgYXZhaWxhYmxlIGluIHRoZSBHaXQgcmVw
b3NpdG9yeSBhdDoKCiAgaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5l
bC9naXQva3J6ay9saW51eC5naXQgdGFncy9zYW1zdW5nLWR0LTUuOAoKZm9yIHlvdSB0byBmZXRj
aCBjaGFuZ2VzIHVwIHRvIGM5ZWQ0MzZmZDY5YjI5NjAwMWZjY2FhODQ2OWYzMjliZTNhMTJhOTY6
CgogIEFSTTogZHRzOiBzNXB2MjEwOiBTZXQgTUFYODk5OCBHUElPIHB1bGxzIG9uIEFyaWVzIGJv
YXJkcyAoMjAyMC0wNS0wNCAxNzoxMzowNCArMDIwMCkKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KU2Ftc3VuZyBEVFMgQVJN
IGNoYW5nZXMgZm9yIHY1LjgKCjEuIEFkZCBEVFMgZm9yIEV4eW5vczQyMTAtYmFzZWQgU2Ftc3Vu
ZyBHYWxheHkgUzIgKEdULUk5MTAwKQogICBtb2JpbGUgcGhvbmUsCjIuIEVuYWJsZSBXaUZpIGFu
ZCBCbHVldG9vdGggaW4gbXVsdGlwbGUgYm9hcmRzLAozLiBBZGQgbmV3IGZlYXR1cmVzIHRvIFM1
UHYyMTAtYmFzZWQgQXJpZXMgZmFtaWx5IG9mIG1vYmlsZSBwaG9uZXMKICAgKGUuZy4gU2Ftc3Vu
ZyBHYWxheHkgUyk6IG5lY2Vzc2FyeSBjb25maWd1cmF0aW9uIGZvciBzdXNwZW5kLCBhdWRpbwog
ICBzdXBwb3J0LCBVU0IgbXV4LCB0b3VjaCBrZXlzLCBwYW5lbCwgaTJjLWdwaW8gYWRhcHRlcnMs
IEZNIHJhZGlvLCBBREMsCjQuIE1hbnkgbWlub3IgZml4ZXMgKGUuZy4gR1BJTyBwb2xhcml0eSwg
aW50ZXJydXB0cykuCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tCkpvbmF0aGFuIEJha2tlciAoMTcpOgogICAgICBBUk06IGR0
czogczVwdjIxMDogQWRkIGhlbHBlciBkZWZpbmUgZm9yIHNsZWVwIGdwaW8gY29uZmlnCiAgICAg
IEFSTTogZHRzOiBzNXB2MjEwOiBBZGQgc2xlZXAgR1BJTyBjb25maWd1cmF0aW9uIGZvciBGYXNj
aW5hdGU0RwogICAgICBBUk06IGR0czogczVwdjIxMDogQWRkIHNsZWVwIEdQSU8gY29uZmlndXJh
dGlvbiBmb3IgR2FsYXh5IFMKICAgICAgQVJNOiBkdHM6IHM1cHYyMTA6IENvcnJlY3QgZ3BpIHBp
bmN0cmwgbm9kZSBuYW1lCiAgICAgIEFSTTogZHRzOiBzNXB2MjEwOiBTZXQga2VlcC1wb3dlci1p
bi1zdXNwZW5kIGZvciBTREhDSTEgb24gQXJpZXMKICAgICAgQVJNOiBkdHM6IHM1cHYyMTA6IERp
c2FibGUgcHVsbHMgb24gR1BJTyBJMkMgYWRhcHRlcnMgZm9yIEFyaWVzCiAgICAgIEFSTTogZHRz
OiBzNXB2MjEwOiBBZGQgV004OTk0IHN1cHBvcnQgdG8gQXJpZXMgYm9hcmRzCiAgICAgIEFSTTog
ZHRzOiBzNXB2MjEwOiBBZGQgRlNBOTQ4MCBzdXBwb3J0IHRvIEFyaWVzIGJvYXJkcwogICAgICBB
Uk06IGR0czogczVwdjIxMDogQWRkIHRvdWNoa2V5IHN1cHBvcnQgdG8gQXJpZXMgYm9hcmRzCiAg
ICAgIEFSTTogZHRzOiBzNXB2MjEwOiBBZGQgcGFuZWwgc3VwcG9ydCB0byBBcmllcyBib2FyZHMK
ICAgICAgQVJNOiBkdHM6IHM1cHYyMTA6IEFkZCByZW1haW5pbmcgaTJjLWdwaW8gYWRhcHRlcnMg
dG8gQXJpZXMgYm9hcmRzCiAgICAgIEFSTTogZHRzOiBzNXB2MjEwOiBEaXNhYmxlIHB1bGwgZm9y
IHZpYnJhdG9yIGVuYWJsZSBHUElPIG9uIEFyaWVzIGJvYXJkcwogICAgICBBUk06IGR0czogczVw
djIxMDogQWRkIGFuIEFEQyBub2RlCiAgICAgIEFSTTogZHRzOiBzNXB2MjEwOiBFbmFibGUgQURD
IG9uIEFyaWVzIGJvYXJkcwogICAgICBBUk06IGR0czogczVwdjIxMDogQXNzaWduIGNsb2NrcyB0
byBNTUMgZGV2aWNlcyBvbiBBcmllcyBib2FyZHMKICAgICAgQVJNOiBkdHM6IHM1cHYyMTA6IENv
cnJlY3QgRklNQyBkZWZpbml0aW9ucwogICAgICBBUk06IGR0czogczVwdjIxMDogU2V0IE1BWDg5
OTggR1BJTyBwdWxscyBvbiBBcmllcyBib2FyZHMKCk1hcmVrIFN6eXByb3dza2kgKDkpOgogICAg
ICBBUk06IGR0czogZXh5bm9zOiBFbmFibGUgQmx1ZXRvb3RoIHN1cHBvcnQgZm9yIFJpbmF0byBi
b2FyZAogICAgICBBUk06IGR0czogZXh5bm9zOiBFbmFibGUgV0xBTiBzdXBwb3J0IGZvciB0aGUg
VHJhdHMgYm9hcmQKICAgICAgQVJNOiBkdHM6IGV4eW5vczogRml4IEdQSU8gcG9sYXJpdHkgZm9y
IHRociBHYWxheHlTMyBDTTM2NjUxIHNlbnNvcidzIGJ1cwogICAgICBBUk06IGR0czogZXh5bm9z
OiBDb252ZXJ0IHRvIG5ldyBpMmMtZ3BpbyBiaW5kaW5ncwogICAgICBBUk06IGR0czogZXh5bm9z
OiBDb3JyZWN0IHJlZ3VsYXRvciBuYW1lcwogICAgICBBUk06IGR0czogZXh5bm9zOiBDb3JyZWN0
IHRoZSBNQVg4OTk3IGludGVycnVwdHMgb24gdGhlIFRyYXRzIGJvYXJkCiAgICAgIEFSTTogZHRz
OiBleHlub3M6IFJlbW92ZSB1c2VsZXNzIGFkZHJlc3Mvc2l6ZSBjZWxscyBmb3IgbXNoY18wIG9u
IFJpbmF0bwogICAgICBBUk06IGR0czogZXh5bm9zOiBFbmFibGUgV0xBTiBzdXBwb3J0IGZvciB0
aGUgUmluYXRvIGJvYXJkCiAgICAgIEFSTTogZHRzOiBleHlub3M6IEVuYWJsZSBXTEFOIHN1cHBv
cnQgZm9yIHRoZSBVbml2ZXJzYWxDMjEwIGJvYXJkCgpQYXVsIENlcmN1ZWlsICgxKToKICAgICAg
ZHQtYmluZGluZ3M6IGFybTogc2Ftc3VuZzogQWRkIGNvbXBhdGlibGUgc3RyaW5nIGZvciB0aGUg
R2FsYXh5IFMyCgpQYXdlxYIgQ2htaWVsICgxKToKICAgICAgQVJNOiBkdHM6IHM1cHYyMTA6IEFk
ZCBzaTQ3MHggRk0gcmFkaW8gdG8gR2FsYXh5IFMKClN0ZW5raW4gRXZnZW5peSAoMSk6CiAgICAg
IEFSTTogZHRzOiBleHlub3M6IEFkZCBkZXZpY2V0cmVlIGZpbGUgZm9yIHRoZSBHYWxheHkgUzIK
CiAuLi4vYmluZGluZ3MvYXJtL3NhbXN1bmcvc2Ftc3VuZy1ib2FyZHMueWFtbCAgICAgICB8ICAg
MSArCiBhcmNoL2FybS9ib290L2R0cy9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgICB8
ICAgMSArCiBhcmNoL2FybS9ib290L2R0cy9leHlub3MzMjUwLW1vbmsuZHRzICAgICAgICAgICAg
ICB8ICAgMyArLQogYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zMzI1MC1yaW5hdG8uZHRzICAgICAg
ICAgICAgfCAgNDggKy0KIGFyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQyMTAtaTkxMDAuZHRzICAg
ICAgICAgICAgIHwgNzY4ICsrKysrKysrKysrKysrKysrKysrKwogYXJjaC9hcm0vYm9vdC9kdHMv
ZXh5bm9zNDIxMC1vcmlnZW4uZHRzICAgICAgICAgICAgfCAgIDcgKy0KIGFyY2gvYXJtL2Jvb3Qv
ZHRzL2V4eW5vczQyMTAtdHJhdHMuZHRzICAgICAgICAgICAgIHwgIDQxICstCiBhcmNoL2FybS9i
b290L2R0cy9leHlub3M0MjEwLXVuaXZlcnNhbF9jMjEwLmR0cyAgICB8ICAzMyArLQogYXJjaC9h
cm0vYm9vdC9kdHMvZXh5bm9zNDQxMi1nYWxheHktczMuZHRzaSAgICAgICAgfCAgIDYgKy0KIGFy
Y2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTItbWlkYXMuZHRzaSAgICAgICAgICAgIHwgIDE3ICst
CiBhcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLW9kcm9pZC1jb21tb24uZHRzaSAgICB8ICAg
OCArLQogYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi1vcmlnZW4uZHRzICAgICAgICAgICAg
fCAgMTQgKy0KIGFyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczUyNTAtYXJuZGFsZS5kdHMgICAgICAg
ICAgIHwgIDEzICstCiBhcmNoL2FybS9ib290L2R0cy9leHlub3M1NDIwLWFybmRhbGUtb2N0YS5k
dHMgICAgICB8ICAgMiArLQogYXJjaC9hcm0vYm9vdC9kdHMvczVwdjIxMC1hcmllcy5kdHNpICAg
ICAgICAgICAgICAgfCAzNTkgKysrKysrKysrLQogYXJjaC9hcm0vYm9vdC9kdHMvczVwdjIxMC1m
YXNjaW5hdGU0Zy5kdHMgICAgICAgICAgfCAyNDkgKysrKysrKwogYXJjaC9hcm0vYm9vdC9kdHMv
czVwdjIxMC1nYWxheHlzLmR0cyAgICAgICAgICAgICAgfCAyOTIgKysrKysrKysKIGFyY2gvYXJt
L2Jvb3QvZHRzL3M1cHYyMTAtcGluY3RybC5kdHNpICAgICAgICAgICAgIHwgICA5ICstCiBhcmNo
L2FybS9ib290L2R0cy9zNXB2MjEwLmR0c2kgICAgICAgICAgICAgICAgICAgICB8ICAyMyArLQog
MTkgZmlsZXMgY2hhbmdlZCwgMTgyMCBpbnNlcnRpb25zKCspLCA3NCBkZWxldGlvbnMoLSkKIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9ib290L2R0cy9leHlub3M0MjEwLWk5MTAwLmR0cwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
