Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B38D162ACE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 17:39:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EAgKX/Rtx9ZDJg303UAS5IPEMXGhkPBXAYBjKgSb0w0=; b=O5vi5Wd/cA+CYd
	r+Jk0cLU5SctbPDrM6mOqfq0S4q+x/QWU/Cf0MS4maFqoAeUQcTCbB/Brqul1JA6Qw9c6eVFwIrzT
	KyyvIw57scu3+4965VgqEKj5zfWfLCKbsX0rdXyCCnTnJN3VrULxcdwJ5j6xvG3He//3+SmR2fSFX
	3ynrK5et3QF2ZEcztxz9jkoDazKL7dGHOmwyRPcYUqBXy1CaATqMfXmrhTUdFbOLohE4gCS4qJIxi
	rUCe8iiEEhj8laJMbazTDn/+Fl67kzpuF5SCKO+pnL6oI9WZqP/tgJy5R0wH+ted5l1cFOD6y2x3E
	puCOr0ENp0ADuwzOnzxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j45tj-0003Cg-2L; Tue, 18 Feb 2020 16:38:59 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j45tZ-0003CM-Or
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 16:38:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1582043923;
 bh=IVqXr+uGnPkGBbiJMPcgDjV0gt1/2BJIB3tZaSUyyaI=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=HB3MdirmzLWQ1eotKO/Ult0RApNyzTgD8D1ARKawYM/AyUqYViqKKZbbiBey3Vo0t
 viqMcHpDl5Bloh+iFaRuogzg7hI/1c0d+tZXr1hpOHrfTL9PYpfupfauxfLT1ONUnF
 ESFJtxfCCABeBYsTzmPEZ3aOUrkTWFj6hmHx644A=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from longitude ([5.146.194.223]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MTRMs-1is6xj0oVY-00TiE8; Tue, 18
 Feb 2020 17:38:43 +0100
From: =?UTF-8?q?Jonathan=20Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
To: linux-doc@vger.kernel.org
Subject: [PATCH] docs: arm: tcm: Fix a few typos
Date: Tue, 18 Feb 2020 17:38:25 +0100
Message-Id: <20200218163829.13066-1-j.neuschaefer@gmx.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:XsnEgpb0SMbuM6bL4zw9xAPjlpTKAnjPflEqQ3J0j4jlcSGxCbZ
 ANaFs1yeZ10GIpUxF52R2meypAxdC/N+swCiqGyaNjGTdWxJ7lXMpXESWc4is4Htsy19NVq
 0EW3MKKqgG/EgSJR+nxqH+taN0rgKr595qJeIQSUccK/rJGzSzhO32uPMCqfZ4quAk7QSWQ
 b3B8iuyvRySJUxuqicw8Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:VJyloGK0TWI=:xint09mz6iPT/v6ozwcg6+
 y0gDM9MM4dx6qUkOSDO2l8ymL/L1Gmf/Rw1XF6LmVy6aMpwQ5BGsGjxsY5om928qgJIGwNSZF
 JhRNMHInPAkkA04TDO9MlaklWI4ijAR0hJgpdb+rld/S9g9q26rG/uvweGK//CV7LFQUd4bZv
 CIuSF78wd+KHUWdU23OMWdBAiLPzBhf4cgC+AFn9YpfWaa67c9bxuegQlNvhkKtN2XSvbDDJr
 aQ6VbNEGJfZc3prxlVZgVO4Odf7I2yMPWonbQv3+VmsrGCFvgSj2wxoe2Gl5ZEXRsWub8n84Z
 a8toFrF7CLgNJGgZcnleQzOyw6jGNm+UnDEif6mdmT//ZuIa8retKh99tTRgD5ygWIHAEbS8d
 S410ipOyKZiiqg1y0bjEZXZv4itk3SoikDq1rBH+8H8JrWug3OSbagVDV+1ouP6loNsYrcohB
 XY4XlsuclYQ8kzroebgkrhYiLTlMpVYQZLS/Tg0DKPY6X4XB2pCYPAsFPT9KYSkF7167+P3Qo
 8nJJ/lOy26mtLk7rY9ma7+/Upri6nESIGfgR7S0FPDR3123w1typcXZD6Tr7yy6/AlH8HWqla
 QI6QybP6U3kDKa5T9d4d9j2gBK2mBXSNcCQSEVnr2/UgKy5SW18ix76u/s0Wq/Kx0whKeMKqR
 RaqEegg4A1OZPeWXNwbG8fHvoMwCassZmAjWx+8aitMY6H8xmWZvkH4b41j93Ke3xhhwWKaWk
 IwvM6y4ZDwdIaF79SeOm0wXWRRb/82hS5xjoIctOyzUn2uCFY28hL0t7Gq/9Grqjdj6t3rSqz
 A1m14PzWDE1hQaBdTZ2coT+3aByODiT1vwhpBKpKMJ/+kkyI8gHULZHN2EIV4fFaHR0HHRl1n
 YDkQOJNAndC7NLU/CaEjN4afMovz7L9fK0h5XpkSPYTKwrnVkOXmtDDKbenmnfWatW29lrbbK
 KKywXZ3BdcFvqokZ/dH1ndBqxJiuczqKluBihB694mcHpKrtFD7cblpW34pzZKg2rq/PJFXeW
 /FD3u0xBAB8GY34nNE8TNl8vwZJPHBqNcgn30h/zd8feg86qvssicTRc91kY47oREjYwFhqtg
 Q+nnzzsEoS5k8GN034IFzx4peR+rQ2myX8LSU8oC1P2iA6i6icQgW1XTMrBXtTjX2MYTK88WP
 ljWouDSpJdTO53nxcT8VK0IABbWajxOUsb1VEIZxnCMlfupH77dK8P4egZYgNVvzZFJP5BxSZ
 k3ZZYzGq41bBfNFxI
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_083850_144586_D83AE95D 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.15 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [5.146.194.223 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [j.neuschaefer[at]gmx.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jonathan Corbet <corbet@lwn.net>, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org,
 =?UTF-8?q?Jonathan=20Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U2lnbmVkLW9mZi1ieTogSm9uYXRoYW4gTmV1c2Now6RmZXIgPGoubmV1c2NoYWVmZXJAZ214Lm5l
dD4KLS0tCiBEb2N1bWVudGF0aW9uL2FybS90Y20ucnN0IHwgNiArKystLS0KIDEgZmlsZSBjaGFu
Z2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvRG9jdW1l
bnRhdGlvbi9hcm0vdGNtLnJzdCBiL0RvY3VtZW50YXRpb24vYXJtL3RjbS5yc3QKaW5kZXggZWZm
ZDljN2JjOTY4Li5iMjU2Zjk3ODM4ODMgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vYXJtL3Rj
bS5yc3QKKysrIGIvRG9jdW1lbnRhdGlvbi9hcm0vdGNtLnJzdApAQCAtNCwxOCArNCwxOCBAQCBB
Uk0gVENNIChUaWdodGx5LUNvdXBsZWQgTWVtb3J5KSBoYW5kbGluZyBpbiBMaW51eAoKIFdyaXR0
ZW4gYnkgTGludXMgV2FsbGVpaiA8bGludXMud2FsbGVpakBzdGVyaWNzc29uLmNvbT4KCi1Tb21l
IEFSTSBTb0M6cyBoYXZlIGEgc28tY2FsbGVkIFRDTSAoVGlnaHRseS1Db3VwbGVkIE1lbW9yeSku
CitTb21lIEFSTSBTb0NzIGhhdmUgYSBzby1jYWxsZWQgVENNIChUaWdodGx5LUNvdXBsZWQgTWVt
b3J5KS4KIFRoaXMgaXMgdXN1YWxseSBqdXN0IGEgZmV3ICg0LTY0KSBLaUIgb2YgUkFNIGluc2lk
ZSB0aGUgQVJNCiBwcm9jZXNzb3IuCgotRHVlIHRvIGJlaW5nIGVtYmVkZGVkIGluc2lkZSB0aGUg
Q1BVIFRoZSBUQ00gaGFzIGEKK0R1ZSB0byBiZWluZyBlbWJlZGRlZCBpbnNpZGUgdGhlIENQVSwg
dGhlIFRDTSBoYXMgYQogSGFydmFyZC1hcmNoaXRlY3R1cmUsIHNvIHRoZXJlIGlzIGFuIElUQ00g
KGluc3RydWN0aW9uIFRDTSkKIGFuZCBhIERUQ00gKGRhdGEgVENNKS4gVGhlIERUQ00gY2FuIG5v
dCBjb250YWluIGFueQogaW5zdHJ1Y3Rpb25zLCBidXQgdGhlIElUQ00gY2FuIGFjdHVhbGx5IGNv
bnRhaW4gZGF0YS4KIFRoZSBzaXplIG9mIERUQ00gb3IgSVRDTSBpcyBtaW5pbXVtIDRLaUIgc28g
dGhlIHR5cGljYWwKIG1pbmltdW0gY29uZmlndXJhdGlvbiBpcyA0S2lCIElUQ00gYW5kIDRLaUIg
RFRDTS4KCi1BUk0gQ1BVOnMgaGF2ZSBzcGVjaWFsIHJlZ2lzdGVycyB0byByZWFkIG91dCBzdGF0
dXMsIHBoeXNpY2FsCitBUk0gQ1BVcyBoYXZlIHNwZWNpYWwgcmVnaXN0ZXJzIHRvIHJlYWQgb3V0
IHN0YXR1cywgcGh5c2ljYWwKIGxvY2F0aW9uIGFuZCBzaXplIG9mIFRDTSBtZW1vcmllcy4gYXJj
aC9hcm0vaW5jbHVkZS9hc20vY3B1dHlwZS5oCiBkZWZpbmVzIGEgQ1BVSURfVENNIHJlZ2lzdGVy
IHRoYXQgeW91IGNhbiByZWFkIG91dCBmcm9tIHRoZQogc3lzdGVtIGNvbnRyb2wgY29wcm9jZXNz
b3IuIERvY3VtZW50YXRpb24gZnJvbSBBUk0gY2FuIGJlIGZvdW5kCi0tCjIuMjAuMQoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
