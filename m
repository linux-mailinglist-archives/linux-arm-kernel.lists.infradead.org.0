Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8972412D6FD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 09:13:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=40+RDzXPo6JM0ETrsm3/+q3VJkSBqOo+HL7WGPm3zRk=; b=cLM54QeMHUpNk9
	DN65zS5IStaQ3f/jV+PxK7etL1EdBHodX5UxNwLs8K7JoHQXHhGnq3WJjMAzqlCZL/QlVixHfN9D8
	OOaj3LmvEnmdsNTWnWC7+bz7Q8c57pYll2cL0eJDELTQYXmelrjFFNemo4+6UEZZcLcyl1n7xFJgk
	wzFHnjT+o0QYuDDJjR7BTYC+HftGGnI8onzkwZR8egR+T9sqe4Y55npG1RMpkEnpGlM5uZ+QZPuBs
	l37SX6lPmX1XTkNnZ9pZ94kJAqSTAkN2irHX77DgK2PrKStAgVcp+pCbpD9VwIfBYIgVJwyouKap3
	VYHLVNkyTNigjMM229pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imCeb-000610-6Z; Tue, 31 Dec 2019 08:13:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imCeS-00060L-2m; Tue, 31 Dec 2019 08:13:17 +0000
Received: from PC-kkoz.proceq.com (unknown [213.160.61.66])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 973C0206DA;
 Tue, 31 Dec 2019 08:13:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577779995;
 bh=hfE39/Gv5Iwa6G47MWrgKyKEeO72OE9CD+IYD/ghGHU=;
 h=From:To:Cc:Subject:Date:From;
 b=yMbRBU93KkBocrvNgb3slVR1y+1ZNxeWj4pms4RkCJFCJY7YmCT0tReba7JpEq+4P
 xtj5lYZ2FoIeor0WnuWCY1yxuS95xMH74jmZVMnEkMMiWp6VkDS6/lM6m7ub8mm2YP
 J2wMCnjbX8oFWwbIRelRjOhiBIY94Rpz+oHLLA7E=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] drm/rockchip: Add missing vmalloc header
Date: Tue, 31 Dec 2019 09:12:36 +0100
Message-Id: <1577779956-7612-1-git-send-email-krzk@kernel.org>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_001316_140638_4BFA3747 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Joerg Roedel <joro@8bytes.org>, Douglas Anderson <dianders@chromium.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Eric Auger <eric.auger@redhat.com>,
 iommu@lists.linux-foundation.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIFJvY2tzaGlwIERSTSBHRU0gY29kZSB1c2VzIHZtYXAoKS92dW5tYXAoKSBzbyB2bWFsbG9j
IGhlYWRlciBtdXN0IGJlCmluY2x1ZGVkIHRvIGF2b2lkIHdhcm5pbmdzIGxpa2UgKG9uIElBNjQs
IGNvbXBpbGUgdGVzdGVkKToKCiAgICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBf
ZHJtX2dlbS5jOiBJbiBmdW5jdGlvbiDigJhyb2NrY2hpcF9nZW1fYWxsb2NfaW9tbXXigJk6CiAg
ICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2dlbS5jOjEzNDoyMDogZXJy
b3I6CiAgICAgICAgaW1wbGljaXQgZGVjbGFyYXRpb24gb2YgZnVuY3Rpb24g4oCYdm1hcOKAmSBb
LVdlcnJvcj1pbXBsaWNpdC1mdW5jdGlvbi1kZWNsYXJhdGlvbl0KClJlcG9ydGVkLWJ5OiBrYnVp
bGQgdGVzdCByb2JvdCA8bGtwQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogS3J6eXN6dG9mIEtv
emxvd3NraSA8a3J6a0BrZXJuZWwub3JnPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9y
b2NrY2hpcF9kcm1fZ2VtLmMgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2VtLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2dlbS5jCmluZGV4IDc1ODJk
MGU2YTYwYS4uMGQxODg0Njg0ZGNiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvcm9ja2NoaXBfZHJtX2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2Nr
Y2hpcF9kcm1fZ2VtLmMKQEAgLTYsNiArNiw3IEBACiAKICNpbmNsdWRlIDxsaW51eC9kbWEtYnVm
Lmg+CiAjaW5jbHVkZSA8bGludXgvaW9tbXUuaD4KKyNpbmNsdWRlIDxsaW51eC92bWFsbG9jLmg+
CiAKICNpbmNsdWRlIDxkcm0vZHJtLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9nZW0uaD4KLS0gCjIu
Ny40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
