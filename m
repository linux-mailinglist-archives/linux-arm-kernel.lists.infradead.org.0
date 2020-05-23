Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F01801DF460
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 05:26:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wUzNPbny9jhzpmRipb0P505bjwhkiOOamMc8uSSFzJE=; b=gzWWYqhnI/XWBv
	eWpyrc07M77xRzqKsB4K5HiIGmONzF0o1fHj4jN5lXW1zkiHUjMqbUS9cDn41TFVKirtmB/04QE1z
	nSslkkPWV1VO7zL8VB4MVyBB7Ad0xmpH8mVEp8/vB/zTfgWwJOwjTM2c1QkL8ZyKMiYKCtshdoxJZ
	hyiEkga3cQUxV+Mlx9Mi7zgvVS/2BfUFiWghqBnIi9xApU9X5UfNBoqsG2iorYxbFta/jDhhBxY3m
	xzfPYo6V0+AeYv2YZhcN3aSISYsxOe1z2kytnePZ6AQbGVIhImMRwFCGimLK/qZq7xkrfvd3HaM6k
	HKrSDKn9T4WK6uA+/DNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcKo2-0001SC-3V; Sat, 23 May 2020 03:26:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcKmw-0000lO-Hc
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 03:25:32 +0000
Received: from localhost.localdomain (80.251.214.228.16clouds.com
 [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8F205207FB;
 Sat, 23 May 2020 03:25:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590204330;
 bh=3WdTmOuKf6fFvVXSqYttIJJ/VtEzIFW5ujo2Ca2bRME=;
 h=From:List-Id:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lIZQ45XBzNsJKeLkJvaDthpohtVvDrVOtIXOAQM+SKV/TTMSfuDp43q7qdo+iGk01
 /QuMbWGPaivDNhMQNog7PtCHCLwQMDeqpizaXzmdqEcEFUf6kSWfdu9qnBDM8chPew
 msa7LbBWZKfAHaxFsEhc12TYPlNa4fB9WbR2Iv4Y=
From: Shawn Guo <shawnguo@kernel.org>
To: soc@kernel.org,
	arm@kernel.org
Subject: [GIT PULL 4/6] i.MX device tree changes for 5.8
Date: Sat, 23 May 2020 11:25:14 +0800
Message-Id: <20200523032516.11016-4-shawnguo@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200523032516.11016-1-shawnguo@kernel.org>
References: <20200523032516.11016-1-shawnguo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_202530_644354_6C1FDB7F 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Shawn Guo <shawnguo@kernel.org>, Stefan Agner <stefan@agner.ch>,
 Li Yang <leoyang.li@nxp.com>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCA4ZjNkOWYzNTQyODY3NDVjNzUxMzc0
ZjVmMWZjYWZlZTZiM2YzMTM2OgoKICBMaW51eCA1LjctcmMxICgyMDIwLTA0LTEyIDEyOjM1OjU1
IC0wNzAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6CgogIGdpdDov
L2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9zaGF3bmd1by9saW51eC5n
aXQgdGFncy9pbXgtZHQtNS44Cgpmb3IgeW91IHRvIGZldGNoIGNoYW5nZXMgdXAgdG8gMTAzNTE1
ZDkxODMyYmI4MzcxNTljMzdmMGNiNjlkNTlkNjhhMWRjMjoKCiAgQVJNOiBkdHM6IGlteDUzLWN4
OTAyMDogR3JvdXAgcG9ydCBkZWZpbml0aW9ucyBmb3IgdGhlIGR2aS1jb252ZXJ0ZXIgKDIwMjAt
MDUtMjAgMTA6NTc6MTQgKzA4MDApCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCmkuTVggZGV2aWNlIHRyZWUgY2hhbmdlcyBm
b3IgNS44OgoKLSBBIHNlcmllcyBmcm9tIEFuc29uIEh1YW5nIHVwZGF0aW5nIFNSQyBkZXZpY2Vz
IHRvIG1hdGNoIGJpbmRpbmdzCiAgc2NoZW1hIGRlZmluaXRpb24uCi0gQ29ycmVjdCBDUFUgc3Vw
cGx5IG5hbWUgYW5kIGFkZCBjcHUxIHN1cHBseSBmb3IgaS5NWDdELgotIENvbnZlcnQgdGhlcm1h
bCBkZXZpY2UgdG8gdXNlIG52bWVtIGludGVyZmFjZSB0byBnZXQgZnVzZSBkYXRhCiAgZm9yIGlt
eDZxZGwgYW5kIGlteDZzbC4KLSBBIHNlcmllcyBmcm9tIFRpbSBIYXJ2ZXkgdG8gdXBkYXRlIGlt
eDZxZGwtZ3cgZGV2aWNlcywgYWRkaW5nIHN1cHBvcnQKICBvZiBMU005RFMxIElJTyBpbXUvbWFn
biwgVVNCIE9URywgYmNtNDMzMC1idCwgZXRjLgotIEFkZCBpbnB1dCBNVVggZm9yIEVORVQyIE1E
SU8gaW50byBJTVg3RCBwaW4gZnVuY3Rpb25zLgotIE1pc2MgcmFuZG9tIGRldmljZSBhZGRpdGlv
biBvciB1cGRhdGUuCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tCkFuZHJlYXMgS2VtbmFkZSAoMSk6CiAgICAgIEFSTTogZHRz
OiBlNjBrMDI6IGFkZCBpbnRlcnJ1cHQgZm9yIFBNSUMKCkFuc29uIEh1YW5nICg5KToKICAgICAg
QVJNOiBkdHM6IGlteDc6IENvcnJlY3QgQ1BVIHN1cHBseSBuYW1lCiAgICAgIEFSTTogZHRzOiBp
bXg3ZDogQWRkIGNwdTEgc3VwcGx5CiAgICAgIEFSTTogZHRzOiBpbXg1MTogQWRkIHNyYyBub2Rl
IGludGVycnVwdAogICAgICBBUk06IGR0czogaW14NTM6IEFkZCBzcmMgbm9kZSBpbnRlcnJ1cHQK
ICAgICAgQVJNOiBkdHM6IGlteDZxZGw6IFVzZSBudm1lbSBpbnRlcmZhY2UgdG8gZ2V0IGZ1c2Ug
ZGF0YQogICAgICBBUk06IGR0czogaW14NnNsOiBVc2UgbnZtZW0gaW50ZXJmYWNlIHRvIGdldCBm
dXNlIGRhdGEKICAgICAgQVJNOiBkdHM6IGlteDogbWFrZSBzcmMgbm9kZSBuYW1lIGdlbmVyaWMK
ICAgICAgQVJNOiBkdHM6IGlteDUwOiBBZGQgc3JjIG5vZGUgaW50ZXJydXB0CiAgICAgIEFSTTog
ZHRzOiBpbXg1OiBtYWtlIHNyYyBub2RlIG5hbWUgZ2VuZXJpYwoKRmFiaW8gRXN0ZXZhbSAoMSk6
CiAgICAgIEFSTTogZHRzOiBpbXg1MDogUmVtb3ZlIHVudXNlZCBpb211eGMtZ3ByIG5vZGUKCkln
b3IgT3Bhbml1ayAoMSk6CiAgICAgIEFSTTogZHRzOiBjb2xpYnJpOiBpbnRyb2R1Y2UgZGV2aWNl
IHRyZWVzIHdpdGggVUhTLUkgc3VwcG9ydAoKS3VsZGVlcCBTaW5naCAoMSk6CiAgICAgIGFybTog
ZHRzOiBsczEwMjFhdHdyOiBBZGQgUVNQSSBub2RlIHByb3BlcnRpZXMKCk1hcmVrIFZhc3V0ICgx
KToKICAgICAgQVJNOiBkdHM6IGlteDZxLWRoY29tOiBBZGQgREggNTYwLTIwMCBkaXNwbGF5IHVu
aXQgc3VwcG9ydAoKUmljYXJkbyBDYcOxdWVsbyAoMSk6CiAgICAgIEFSTTogZHRzOiBpbXg1My1j
eDkwMjA6IEdyb3VwIHBvcnQgZGVmaW5pdGlvbnMgZm9yIHRoZSBkdmktY29udmVydGVyCgpSdXNz
ZWxsIEtpbmcgKDEpOgogICAgICBBUk06IGR0czogaW14Ni1zci1zb206IGFkZCBldGhlcm5ldCBQ
SFkgY29uZmlndXJhdGlvbgoKU3RlZmZlbiBUcnVtdHJhciAoMSk6CiAgICAgIEFSTTogZHRzOiBp
bXg3ZC1waW5mdW5jOiBhZGQgaW5wdXQgbXV4IGZvciBFTkVUMiBtZGlvCgpUaW0gSGFydmV5ICg1
KToKICAgICAgQVJNOiBkdHM6IGlteDZxZGwtZ3c1NTJ4OiBhZGQgVVNCIE9URyBzdXBwb3J0CiAg
ICAgIEFSTTogZHRzOiBpbXg2cWRsLWd3NTYweDogYWRkIGxzbTlkczEgaWlvIGltdS9tYWduIHN1
cHBvcnQKICAgICAgQVJNOiBkdHM6IGlteDZxZGwtZ3c1OTA0OiBhZGQgbHNtOWRzMSBpaW8gaW11
L21hZ24gc3VwcG9ydAogICAgICBBUk06IGR0czogaW14NnFkbC1ndzU5MTA6IGFkZCBzdXBwb3J0
IGZvciBiY200MzMwLWJ0CiAgICAgIEFSTTogZHRzOiBpbXg2cWRsLWd3NTkxMDogZml4IHdsYW4g
cmVndWxhdG9yCgogYXJjaC9hcm0vYm9vdC9kdHMvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAg
ICAgICB8ICAgMSArCiBhcmNoL2FybS9ib290L2R0cy9lNjBrMDIuZHRzaSAgICAgICAgICAgICAg
ICAgICAgIHwgICAyICsKIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDUwLmR0c2kgICAgICAgICAgICAg
ICAgICAgICAgfCAgIDggKy0KIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDUxLmR0c2kgICAgICAgICAg
ICAgICAgICAgICAgfCAgIDMgKy0KIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDUzLWN4OTAyMC5kdHMg
ICAgICAgICAgICAgICAgfCAgMjUgKystLS0KIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDUzLmR0c2kg
ICAgICAgICAgICAgICAgICAgICAgfCAgIDMgKy0KIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDZkbC1j
b2xpYnJpLXYxXzEtZXZhbC12My5kdHMgfCAgMzEgKysrKysrCiBhcmNoL2FybS9ib290L2R0cy9p
bXg2cS1kaGNvbS1wZGsyLmR0cyAgICAgICAgICAgIHwgMTE1ICsrKysrKysrKysrKysrKysrKysr
Ky0KIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDZxZGwtY29saWJyaS12MV8xLXVocy5kdHNpICAgfCAg
NDQgKysrKysrKysrCiBhcmNoL2FybS9ib290L2R0cy9pbXg2cWRsLWNvbGlicmkuZHRzaSAgICAg
ICAgICAgIHwgIDExICsrLQogYXJjaC9hcm0vYm9vdC9kdHMvaW14NnFkbC1ndzU1MnguZHRzaSAg
ICAgICAgICAgICB8ICAxNCArKysKIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDZxZGwtZ3c1NjB4LmR0
c2kgICAgICAgICAgICAgfCAgMzEgKysrKysrCiBhcmNoL2FybS9ib290L2R0cy9pbXg2cWRsLWd3
NTkwNC5kdHNpICAgICAgICAgICAgIHwgIDMxICsrKysrKwogYXJjaC9hcm0vYm9vdC9kdHMvaW14
NnFkbC1ndzU5MTAuZHRzaSAgICAgICAgICAgICB8ICAzNSArKystLS0tCiBhcmNoL2FybS9ib290
L2R0cy9pbXg2cWRsLXNyLXNvbS5kdHNpICAgICAgICAgICAgIHwgIDExICsrKwogYXJjaC9hcm0v
Ym9vdC9kdHMvaW14NnFkbC5kdHNpICAgICAgICAgICAgICAgICAgICB8ICAxMyArKy0KIGFyY2gv
YXJtL2Jvb3QvZHRzL2lteDZzbC5kdHNpICAgICAgICAgICAgICAgICAgICAgfCAgMTMgKystCiBh
cmNoL2FybS9ib290L2R0cy9pbXg2c3guZHRzaSAgICAgICAgICAgICAgICAgICAgIHwgICAyICst
CiBhcmNoL2FybS9ib290L2R0cy9pbXg2dWwuZHRzaSAgICAgICAgICAgICAgICAgICAgIHwgICAy
ICstCiBhcmNoL2FybS9ib290L2R0cy9pbXg3LXRxbWE3LmR0c2kgICAgICAgICAgICAgICAgIHwg
ICAyICstCiBhcmNoL2FybS9ib290L2R0cy9pbXg3ZC1jbC1zb20taW14Ny5kdHMgICAgICAgICAg
IHwgICA0ICsKIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDdkLWNvbGlicmkuZHRzaSAgICAgICAgICAg
ICAgfCAgIDQgKwogYXJjaC9hcm0vYm9vdC9kdHMvaW14N2Qtbml0cm9nZW43LmR0cyAgICAgICAg
ICAgICB8ICAgNCArCiBhcmNoL2FybS9ib290L2R0cy9pbXg3ZC1waW5mdW5jLmggICAgICAgICAg
ICAgICAgIHwgICAyICstCiBhcmNoL2FybS9ib290L2R0cy9pbXg3ZC1zZGIuZHRzICAgICAgICAg
ICAgICAgICAgIHwgICA0ICsKIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDdkLXRxbWE3LmR0c2kgICAg
ICAgICAgICAgICAgfCAgIDQgKwogYXJjaC9hcm0vYm9vdC9kdHMvaW14N2QtemlpLXJtdTIuZHRz
ICAgICAgICAgICAgICB8ICAgMiArLQogYXJjaC9hcm0vYm9vdC9kdHMvaW14N2QtemlpLXJwdTIu
ZHRzICAgICAgICAgICAgICB8ICAgMiArLQogYXJjaC9hcm0vYm9vdC9kdHMvaW14N3MuZHRzaSAg
ICAgICAgICAgICAgICAgICAgICB8ICAgMiArLQogYXJjaC9hcm0vYm9vdC9kdHMvbHMxMDIxYS10
d3IuZHRzICAgICAgICAgICAgICAgICB8ICAxNCArKysKIDMwIGZpbGVzIGNoYW5nZWQsIDM4NCBp
bnNlcnRpb25zKCspLCA1NSBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2Fy
bS9ib290L2R0cy9pbXg2ZGwtY29saWJyaS12MV8xLWV2YWwtdjMuZHRzCiBjcmVhdGUgbW9kZSAx
MDA2NDQgYXJjaC9hcm0vYm9vdC9kdHMvaW14NnFkbC1jb2xpYnJpLXYxXzEtdWhzLmR0c2kKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
