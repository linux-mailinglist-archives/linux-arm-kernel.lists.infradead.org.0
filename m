Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B2CA36228
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 19:16:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+rjJGi2QAZL7+EFoQM/YWW7MWhuZhCUzDkD6caz8/dE=; b=W3pZ2YodW8MMwd
	D7hc7aJFFdqvmmD3avPnvsR070gfh30mficxWOnN0rzUiqWhNfCRv1fOkPxqhpOFR5oRNWhnRfPLK
	13oqQc1ReHonTncFJmN73FB2ccdq0JwlRbYHEDJ/BC098PnFxf7trL1B2v67F7g73lI4AahxD0ase
	28g3u0UdsRKkzxIMDa+5l2KZxdDBbEYTWDXPm8nZDfsmfExcQFQ2c0Ytxbo3CtXFTElYC+hNGOOh2
	iD4v6X7q68BISjwoOREuY+fewSa5xT/zbtptjA7QP5usXwKYp5GIKIIwYAGNz6tCwp0f25Ns3lhde
	ar5W/WVnpAPY14pGILaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYZWP-0000nO-Ko; Wed, 05 Jun 2019 17:16:21 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYZWF-0000ma-Uv
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 17:16:15 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 51E64607CA; Wed,  5 Jun 2019 17:16:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559754971;
 bh=FdlcBmhv22cQY8wMK0PgQ3r93qrONz476UJE+bJjDO4=;
 h=From:To:Subject:Date:From;
 b=Ieo5tQpi9gySz3Ixsi3ysw/ZxCGrXrVPG1DnZnWoOY3QMYtvBeZ5rkVxtQeZ32OC+
 x2+YTZuVvItNudc2oKLRCuuxXK3ZQiu5LDku4aV9SApDbJZqlc5CgOWIt0dV8BrvxL
 Fo6jLfoOTW3sXoUiki4hA4kRwzwJS8PJbdiLNITw=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from srichara-linux.qualcomm.com
 (blr-c-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: sricharan@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 8C14E6063A;
 Wed,  5 Jun 2019 17:16:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559754970;
 bh=FdlcBmhv22cQY8wMK0PgQ3r93qrONz476UJE+bJjDO4=;
 h=From:To:Subject:Date:From;
 b=cLqKEbMtwDbOXwdDl5cANUaP7t18uBCbMBe4k5vi9oKe/Tm7pAM1uwQUWgomgI7TX
 m0i+G52gG6GFw3vJCjGbUyodA8b6wDNQFyjG6b/BTOG46yiPZNBmAfriaFsZfecH/K
 Cs1KlvCAP5UjUe/G7yjje9LlepUmjCfaU9NrMzB4=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 8C14E6063A
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=sricharan@codeaurora.org
From: Sricharan R <sricharan@codeaurora.org>
To: robh+dt@kernel.org, sboyd@codeaurora.org, linus.walleij@linaro.org,
 agross@kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/6] Add minimal boot support for IPQ6018
Date: Wed,  5 Jun 2019 22:45:55 +0530
Message-Id: <1559754961-26783-1-git-send-email-sricharan@codeaurora.org>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_101612_027020_3549CF2C 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIElQUTYwMTggaXMgUXVhbGNvbW3igJlzIDgwMi4xMWF4IFNvQyBmb3IgUm91dGVycywKR2F0
ZXdheXMgYW5kIEFjY2VzcyBQb2ludHMuCgpUaGlzIHNlcmllcyBhZGRzIG1pbmltYWwgYm9hcmQg
Ym9vdCBzdXBwb3J0IGZvciBpcHE2MDE4LWNwMDEKYm9hcmQuCgpTcmljaGFyYW4gUiAoNik6CiAg
cGluY3RybDogcWNvbTogQWRkIGlwcTYwMTggcGluY3RybCBkcml2ZXIKICBkdC1iaW5kaW5nczog
cWNvbTogQWRkIGlwcTYwMTggYmluZGluZ3MKICBjbGs6IHFjb206IEFkZCBEVCBiaW5kaW5ncyBm
b3IgaXBxNjAxOCBnY2MgY2xvY2sgY29udHJvbGxlcgogIGNsazogcWNvbTogQWRkIGlwcTYwMTgg
R2xvYmFsIENsb2NrIENvbnRyb2xsZXIgc3VwcG9ydAogIGFybTY0OiBkdHM6IEFkZCBpcHE2MDE4
IFNvQyBhbmQgQ1AwMSBib2FyZCBzdXBwb3J0CiAgYXJtNjQ6IGRlZmNvbmZpZzogRW5hYmxlIHFj
b20gaXBxNjAxOCBjbG9jayBhbmQgcGluY3RybAoKIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9hcm0vcWNvbS55YW1sICAgIHwgICAgMiArCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5n
cy9jbG9jay9xY29tLGdjYy50eHQgICAgICAgICB8ICAgIDEgKwogYXJjaC9hcm02NC9ib290L2R0
cy9xY29tL01ha2VmaWxlICAgICAgICAgICAgICAgICAgfCAgICAxICsKIGFyY2gvYXJtNjQvYm9v
dC9kdHMvcWNvbS9pcHE2MDE4LWNwMDEtYzEuZHRzICAgICAgIHwgICAzNSArCiBhcmNoL2FybTY0
L2Jvb3QvZHRzL3Fjb20vaXBxNjAxOC5kdHNpICAgICAgICAgICAgICB8ICAyMzEgKwogYXJjaC9h
cm02NC9jb25maWdzL2RlZmNvbmZpZyAgICAgICAgICAgICAgICAgICAgICAgfCAgICAyICsKIGRy
aXZlcnMvY2xrL3Fjb20vS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgOSAr
CiBkcml2ZXJzL2Nsay9xY29tL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAg
IDEgKwogZHJpdmVycy9jbGsvcWNvbS9nY2MtaXBxNjAxOC5jICAgICAgICAgICAgICAgICAgICAg
fCA1MjY3ICsrKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL3BpbmN0cmwvcWNvbS9LY29uZmln
ICAgICAgICAgICAgICAgICAgICAgICB8ICAgMTAgKwogZHJpdmVycy9waW5jdHJsL3Fjb20vTWFr
ZWZpbGUgICAgICAgICAgICAgICAgICAgICAgfCAgICAxICsKIGRyaXZlcnMvcGluY3RybC9xY29t
L3BpbmN0cmwtaXBxNjAxOC5jICAgICAgICAgICAgIHwgMTE4MyArKysrKwogaW5jbHVkZS9kdC1i
aW5kaW5ncy9jbG9jay9xY29tLGdjYy1pcHE2MDE4LmggICAgICAgfCAgNDA1ICsrCiAxMyBmaWxl
cyBjaGFuZ2VkLCA3MTQ4IGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3Fjb20vaXBxNjAxOC1jcDAxLWMxLmR0cwogY3JlYXRlIG1vZGUgMTAwNjQ0
IGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9pcHE2MDE4LmR0c2kKIGNyZWF0ZSBtb2RlIDEwMDY0
NCBkcml2ZXJzL2Nsay9xY29tL2djYy1pcHE2MDE4LmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2
ZXJzL3BpbmN0cmwvcWNvbS9waW5jdHJsLWlwcTYwMTguYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGlu
Y2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svcWNvbSxnY2MtaXBxNjAxOC5oCgotLSAKUVVBTENPTU0g
SU5ESUEsIG9uIGJlaGFsZiBvZiBRdWFsY29tbSBJbm5vdmF0aW9uIENlbnRlciwgSW5jLiBpcyBh
IG1lbWJlciBvZiBDb2RlIEF1cm9yYSBGb3J1bSwgaG9zdGVkIGJ5IFRoZSBMaW51eCBGb3VuZGF0
aW9uCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
