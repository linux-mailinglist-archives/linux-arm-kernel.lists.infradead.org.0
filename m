Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42605D2F08
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 18:53:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o5k82PmzGBh+J6XHgMc4bpSIiBv0IM22n4vYAz2n2Pw=; b=PyYUk3C4YFiheY
	XRYcD62W/TW0WJ7nffU57OGbwBv07WUXE/JrJ0Fcc0H+52WADX4lIHO5ydEzMMthLnEpFrKyymUhD
	VsuokoZ3V5LMJ5noBxAk8+++d8rQDy57M7eb5Cd+InlR3o0LXIbXp0wwCS6unyAn/uqkQ5oqHwGjr
	Jxqp3+LweC9nErujOPebFT/fi6JoEPtaFbGki/UTyIsXJl9vKPQxxovX8a1xHQQXD8QIULyeHd+AU
	DHI1P2td5KWTh/8yHMaDrytrla+BxjVQxcAo5Bmtl/dc0Yjhva/CloHIXSXCehB4S8RXw63Wi+oOG
	mSrwHLmegXQIwP6Z1bcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIbh0-0005Dy-BY; Thu, 10 Oct 2019 16:53:34 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIbg2-0004Rm-9G
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 16:52:36 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id CED6D20094E;
 Thu, 10 Oct 2019 18:52:29 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C0E702007DF;
 Thu, 10 Oct 2019 18:52:29 +0200 (CEST)
Received: from fsr-ub1664-026.ea.freescale.net
 (fsr-ub1664-026.ea.freescale.net [10.171.81.59])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 1319F2060B;
 Thu, 10 Oct 2019 18:52:29 +0200 (CEST)
From: Stefan-Gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: corbet@lwn.net, robh+dt@kernel.org, mark.rutland@arm.com,
 gregkh@linuxfoundation.org, catalin.marinas@arm.com, will@kernel.org,
 shawnguo@kernel.org, leoyang.li@nxp.com
Subject: [PATCH v6 1/5] dt-bindings: arm: fsl: Add the S32V234-EVB board
Date: Thu, 10 Oct 2019 19:52:24 +0300
Message-Id: <1570726348-6420-2-git-send-email-stefan-gabriel.mirea@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570726348-6420-1-git-send-email-stefan-gabriel.mirea@nxp.com>
References: <1570726348-6420-1-git-send-email-stefan-gabriel.mirea@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_095234_457409_BB99BE57 
X-CRM114-Status: UNSURE (   7.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org,
 =?UTF-8?q?Eddy=20Petri=C8=99or?= <eddy.petrisor@nxp.com>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, jslaby@suse.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogRWRkeSBQZXRyaciZb3IgPGVkZHkucGV0cmlzb3JAbnhwLmNvbT4KCkFkZCBlbnRyeSBm
b3IgdGhlIE5YUCBTMzJWMjM0IEN1c3RvbWVyIEV2YWx1YXRpb24gQm9hcmQgdG8gdGhlIGJvYXJk
L1NvQwpiaW5kaW5ncy4KClNpZ25lZC1vZmYtYnk6IEVkZHkgUGV0cmnImW9yIDxlZGR5LnBldHJp
c29yQG54cC5jb20+ClNpZ25lZC1vZmYtYnk6IFN0ZWZhbi1HYWJyaWVsIE1pcmVhIDxzdGVmYW4t
Z2FicmllbC5taXJlYUBueHAuY29tPgpSZXZpZXdlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2Vy
bmVsLm9yZz4KLS0tCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL2ZzbC55
YW1sIHwgNiArKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKCmRpZmYgLS1n
aXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL2ZzbC55YW1sIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9mc2wueWFtbAppbmRleCAxYjRiNGU2
NTczYjUuLmMyMTFmNGY4MmUyNSAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2FybS9mc2wueWFtbAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvYXJtL2ZzbC55YW1sCkBAIC0zMzUsNCArMzM1LDEwIEBAIHByb3BlcnRpZXM6CiAgICAg
ICAgICAgICAgIC0gZnNsLGxzMjA4OGEtcmRiCiAgICAgICAgICAgLSBjb25zdDogZnNsLGxzMjA4
OGEKIAorICAgICAgLSBkZXNjcmlwdGlvbjogUzMyVjIzNCBiYXNlZCBCb2FyZHMKKyAgICAgICAg
aXRlbXM6CisgICAgICAgICAgLSBlbnVtOgorICAgICAgICAgICAgICAtIGZzbCxzMzJ2MjM0LWV2
YiAgICAgICAgICAgIyBTMzJWMjM0LUVWQjIgQ3VzdG9tZXIgRXZhbHVhdGlvbiBCb2FyZAorICAg
ICAgICAgIC0gY29uc3Q6IGZzbCxzMzJ2MjM0CisKIC4uLgotLSAKMi4yMi4wCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
